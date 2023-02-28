/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xstatus.h"
#include "xuartns550_l.h"
#include "dlin.h"

#define UART_BASEADDR		XPAR_UARTNS550_0_BASEADDR
#define UART_CLOCK_HZ		XPAR_UARTNS550_0_CLOCK_FREQ_HZ
#define UART_BAUDRATE		19200   /* Baud Rate */

#define XUartNs550_IsTransmit(BaseAddress)			\
	(XUartNs550_GetLineStatusReg(BaseAddress) & XUN_LSR_TX_EMPTY)

#define DEV_AXI_OFFSET XPAR_CHIPDLIN_1_S00_AXI_BASEADDR
#define DEV_AXI_SIZE   0x0000FFFF //space to be allocated for device

#define BREAK_CNT 49000

typedef struct
{
	uint8_t id;
	uint8_t size;
	uint8_t data[9];
}frames_t;

//DLIN initialization
dlin_t *dlin_inst=(dlin_t *)(DEV_AXI_OFFSET);

frames_t frames[4];

//----------------------------------------------------------------------------
//----------------------------------------------------------------------------
void init_frames()
{
int i=0;
  frames[i].id = 0x11;
  frames[i].size = 1;
  frames[i].data[0] = 0x54;

  i++;
  frames[i].id = 0x8E;
  frames[i].size = 9;
  frames[i].data[0] = 0x8F;
  frames[i].data[1] = 0x00;
  frames[i].data[2] = 0x00;
  frames[i].data[3] = 0x00;
  frames[i].data[4] = 0x11;
  frames[i].data[5] = 0x00;
  frames[i].data[6] = 0x00;
  frames[i].data[7] = 0x0C;
  frames[i].data[8] = 0xC4; // CRC

  i++;
  frames[i].id = 0xBA; // 0x3A and parity
  frames[i].size = 3;
  frames[i].data[0] = 0x00;
  frames[i].data[1] = 0xFE;
  frames[i].data[2] = 0x46; // CRC

  i++;
  frames[i].id = 0x0D;
  frames[i].size = 5;
  frames[i].data[0] = 0x7E;
  frames[i].data[1] = 0x01;
  frames[i].data[2] = 0x7E;
  frames[i].data[3] = 0x00;
  frames[i].data[4] = 0xF4;
}

//----------------------------------------------------------------------------
//----------------------------------------------------------------------------
void uart_send_header(uint8_t id)
{
    //AXI_UART550 configuration
    XUartNs550_SetLineControlReg(UART_BASEADDR, XUN_LCR_8_DATA_BITS);
    XUartNs550_WriteReg(UART_BASEADDR, XUN_LCR_OFFSET, XUN_LCR_SET_BREAK);

    //Break generation - LIN specific, at least 8 times the length of the upcoming delimiter
    for (volatile uint32_t i=0;i<BREAK_CNT;i++);

    //Clear XUN_LCR_SET_BREAK bit, normal operation
    XUartNs550_SetLineControlReg(UART_BASEADDR, XUN_LCR_8_DATA_BITS);

    //AXI_UART550 configuration
    XUartNs550_SetBaud(UART_BASEADDR, UART_CLOCK_HZ, UART_BAUDRATE);
    XUartNs550_SendByte(UART_BASEADDR, 0x55);
    XUartNs550_SendByte(UART_BASEADDR, id);
}

//----------------------------------------------------------------------------
//----------------------------------------------------------------------------
void  dlin_wait_for_header(volatile uint8_t *status)
{
	//Pooling - check until LID flag set - header received
	while(1)
	{
		//printf("%02X\n", *)
		*status = dlin_inst->lcr;
		if (*status&0x01)
			break;
	}
}

//----------------------------------------------------------------------------
//----------------------------------------------------------------------------
uint8_t dlin_wait_for_ready()
{
	volatile uint8_t status;
	//Pooling - check until LID flag set - header received
	while(1)
	{
		status = dlin_inst->lcr;
		if (status&0x06)
			return status;
	}
}

//----------------------------------------------------------------------------
//----------------------------------------------------------------------------
void dlin_display_regs()
{
	printf(" LID  LER   LSR   DLL   DLH  LBS \n");
	printf(" %02X    %02X    %02X    %02X    %02X   %02X\n", dlin_inst->lid, dlin_inst->ler, dlin_inst->lcr, dlin_inst->baud.divl, dlin_inst->baud.divh, dlin_inst->lbs);
}


//----------------------------------------------------------------------------
//----------------------------------------------------------------------------
void log_test()
{
	uint8_t i=0;
	uint8_t j;
	volatile uint8_t status;

	uint8_t log_size;

	while(1)
	{
	    dlin_inst->lsel.index=0x0;
	    uart_send_header(frames[i].id);
	    dlin_wait_for_header(&status);
	    printf("LSR=%02X LID=%02X LSR=%02X ", dlin_inst->lcr, dlin_inst->lid, dlin_inst->lcr);
	    dlin_inst->lcr=0x3B;             // Control - set slave mode, RX response command and switch log mode on

	    for(j=0; j<frames[i].size; j++)
	    {
	    	XUartNs550_SendByte(UART_BASEADDR, frames[i].data[j]);
	    }

	    status = dlin_wait_for_ready();

	    log_size=((status&0xF0)>>4);
	    printf("LSR=%02X LER=%02X   DATA: ", status, dlin_inst->ler);


	    for(j=0; j<8; j++)
	    {

	    	if (j<(log_size-1))
	    	{
	    	  printf("%02X ", dlin_inst->lbuf);
	    	}
	    	else
	    	  printf("   ");
	    }
	    printf(" CRC=%02X\n", dlin_inst->lbuf);

	    i = (i==3)?0: i+1;
	}
}

int main()
{
	uint8_t status, status2;
    int j;
    uint8_t data_to_send[8]={'D', 'C', 'D', ' ', 'T', 'E', 'S', 'T'}; //DLIN max 8 Bytes at once
    int data_size=sizeof(data_to_send);
    int recv_data_size=0;

    init_platform();

    printf("\n\n");
    printf("++++++++++++++++++++++++++++++++++++++++\n");
    printf("DLIN demo \n");
    printf("++++++++++++++++++++++++++++++++++++++++\n\n");
    init_frames();


    //DLIN configuration - Master send header
    printf("Initialization :\n");
    dlin_inst->lid=0x00;             // LIN ID
    dlin_inst->baud.divh=0x00;       // BAUDRATE DIVIDER
    dlin_inst->baud.divl=0x00;       // BAUDRATE DIVIDER
    dlin_inst->hdr.hdrh=0;
    dlin_inst->hdr.hdrl=0;
    dlin_inst->lbs=0;
    dlin_display_regs();


//////////////////////////////////////////////////////////////////////////////////////////////////////
//DLIN automatic baud rate detection test
//////////////////////////////////////////////////////////////////////////////////////////////////////

    printf("\nBit rate autodetection test\n");
    dlin_inst->lcr=0x31;             // Control - set slave mode and automatic bit rate detection

    uart_send_header(0x92);
    dlin_wait_for_header(&status);
    dlin_display_regs();
//////////////////////////////////////////////////////////////////////////////////////////////////////
//DLIN receive data test
//////////////////////////////////////////////////////////////////////////////////////////////////////
    printf("\nFrame receive test\n");

    uart_send_header(0x92);
    dlin_wait_for_header(&status);

    dlin_inst->lsel.index=0x0;
    dlin_inst->lsel.ainc=1;           // Auto-increment FIFO
    dlin_inst->lcr=0x23;             // Control - set slave mode, receive 8 bytes and set RX response command


    for(int j=0; j<sizeof(data_to_send); j++){
    	XUartNs550_SendByte(UART_BASEADDR, data_to_send[j]);
    }
    XUartNs550_SendByte(UART_BASEADDR, 0x40); //Pre-computed CRC

    dlin_wait_for_ready();
    dlin_display_regs();
    printf("Received data :\n");
	dlin_inst->lsel.index=0x0;
    for(j=0; j<sizeof(data_to_send); j++){
    	printf("%d. %c\n", j, dlin_inst->lbuf);
    }

//////////////////////////////////////////////////////////////////////////////////////////////////////
//DLIN log mode test
//////////////////////////////////////////////////////////////////////////////////////////////////////
    printf("\nLog mode test\n");
    log_test();

//////////////////////////////////////////////////////////////////////////////////////////////////////
//DLIN sleep mode test
//////////////////////////////////////////////////////////////////////////////////////////////////////
    dlin_inst->baud.divh=0x01;       // BAUDRATE DIVIDER
    dlin_inst->baud.divl=0x46;       // BAUDRATE DIVIDER
	dlin_inst->idtl.idt=0x03;
	dlin_inst->idth.idtrun=1;
	while(1){};

    cleanup_platform();
    return 0;
}
