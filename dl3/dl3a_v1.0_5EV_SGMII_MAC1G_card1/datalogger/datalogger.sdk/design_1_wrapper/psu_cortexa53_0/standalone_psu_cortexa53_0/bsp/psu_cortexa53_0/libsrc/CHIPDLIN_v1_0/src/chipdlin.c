/******************************************************************************
*
* Copyright (C) 2012 - 2020 ZD Automotive GmbH.  All rights reserved.
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
/*****************************************************************************/
/**
*
* @file chipdlin.c
* @addtogroup chipdlin_v1_06
* @{
*
* This header file contains the hardware interface of an ChipDlin device.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who    Date	Changes
* ----- ------ -------- ----------------------------------------------
* 1.00	guo    2019/09/21 First Release
*
* </pre>
*
*****************************************************************************/

/***************************** Include Files ********************************/

#include "xstatus.h"
#include "xparameters.h"
#include "chipdlin.h"

/************************** Constant Definitions ****************************/

/**************************** Type Definitions ******************************/

/***************** Macros (Inline Functions) Definitions ********************/

/************************** Variable Definitions ****************************/
extern ChipDLIN_Config ChipDLIN_ConfigTable[XPAR_CHIPDLIN_NUM_INSTANCES];

/************************** Function Prototypes *****************************/

/****************************************************************************/
/**
*
* Initializes a specific ChipDLIN instance such that it is ready to be used.
*
* @param 	InstancePtr is a pointer to the ChipDLIN instance.
* @param 	Config is a reference to a structure containing information
*		about a specific ChipDLIN device.
* @param 	EffectiveAddr is the device base address in the virtual memory
*		address	space. The caller is responsible for keeping the
*		address mapping from EffectiveAddr to the device physical base
*		address unchanged once this function is invoked. Unexpected
*		errors may occur if the address mapping changes after this
*		function is called. If address translation is not used,
*		use Config->BaseAddress for this parameters, passing the
*		physical address instead.
*
* @return
* 		- XST_SUCCESS if initialization was successful.
* 		- XST_FAIL if initialization was error.
*
* @note		None.
*
*****************************************************************************/
int ChipDLIN_CfgInitialize(ChipDLIN_Inst *InstancePtr,
					ChipDLIN_Config *Config,
					UINTPTR EffectiveAddr)
{
	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);

	/*
	 * Setup the data that is from the configuration information
	 */
	InstancePtr->BaseAddress = EffectiveAddr;
	InstancePtr->InputClockHz = Config->InputClockHz;
	InstancePtr->BaudRate = CHIPDLIN_DFT_BAUDRATE;

	/*
	 * Initialize the instance data to some default values
	 */
	InstancePtr->SendFrame.lid = 0;
	InstancePtr->SendFrame.data_size = 0;

	InstancePtr->RcvFrame.lid = 0;
	InstancePtr->RcvFrame.data_size = 0;


	/*
	 * Indicate the instance is now ready to use, initialized without error
	 */
	InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

	/*
	 * Set the default Baud rate here, can be changed prior to
	 * starting the device.
	 * So no need to set in initilization function.
	 */
/*	dlin_setBaudrate(InstancePtr, InstancePtr->InputClockHz, InstancePtr->BaudRate); */

	return XST_SUCCESS;
}


/** @} */

					
//----------------------------------------------------------------------------
//----------------------------------------------------------------------------
void dlin_sendCommand(ChipDLIN_Inst *InstancePtr, dlin_cmd_t cmd, uint8_t ms, u8 lin13, u8 len)
{
  uint8_t tmp;
  switch (cmd)
  {
    case DLIN_CMD_ABORT:
      ChipDLIN_WriteReg_LCR(InstancePtr->BaseAddress, 0);
      break;

    case DLIN_CMD_SEND_HEADER:
      if (ms)
      {
        tmp = 0x81;                                 // master mode, Send header command
        tmp += (lin13) ? 1 : 0;                     // LIN13 Checksum
        tmp += (lin13) ? 0x3C : ((len & 0xF)<<2);   // set size
        ChipDLIN_WriteReg_LCR(InstancePtr->BaseAddress, tmp); // write to LCR register
      }
      break;

    case DLIN_CMD_RESPONSE_TX:
    case DLIN_CMD_RESPONSE_RX:
      tmp = (ms) ? 0x80 : 0x00;                     // set master/slave mode
      tmp += (lin13) ? 1 : 0;                       // LIN13 Checksum
      tmp += (lin13) ? 0x3C : ((len & 0xF)<<2);     // set size
      tmp += (cmd==DLIN_CMD_RESPONSE_TX) ? 0x2 : 0x3;    // set response type
	  ChipDLIN_WriteReg_LCR(InstancePtr->BaseAddress, tmp); // write to LCR register
      break;

    case DLIN_CMD_WAKEUP:
      tmp = (ms) ? 0x80 : 0x00;                     // set master/slave mode
      tmp += (lin13) ? 1 : 0;                       // LIN13 Checksum
      tmp += 0x35;                                  // switch to wake-up mode
	  ChipDLIN_WriteReg_LCR(InstancePtr->BaseAddress, tmp); // write to LCR register
      break;

    case DLIN_CMD_LOG:
      tmp = (ms) ? 0x80 : 0x00;                     // set master/slave mode
      tmp += (lin13) ? 1 : 0;                       // LIN13 Checksum
      tmp += 0x3B;                                  // switch to log mode
	  ChipDLIN_WriteReg_LCR(InstancePtr->BaseAddress, tmp); // write to LCR register
      break;

    default:
      break;
  }
}



/**
 * @brief Enable automatic increment buffer. After this function has been performed, the internal buffer index is automatically incremented each time the LBUF register is accessed. 
 * @param *InstancePtr Pointer to DLIN device
 */
void dlin_enableAutoIncBuffer(ChipDLIN_Inst *InstancePtr)
{ 
	u8 data=0;
	dlin_lsel_t *tmp;

	tmp = (dlin_lsel_t *)&data;
	
	tmp->index = 0;
	tmp->ainc = 1;
    ChipDLIN_WriteReg_LSEL(InstancePtr->BaseAddress, data);
}

/**
 * @brief Disable automatic increment buffer. After executing this function, the internal buffer index must be addressed in order to read/write consecutive bytes.
 * @param *InstancePtr Pointer to DLIN device
 */
void dlin_disnableAutoIncBuffer(ChipDLIN_Inst *InstancePtr)
{
	u8 data=0;
	dlin_lsel_t *tmp;

	tmp = (dlin_lsel_t *)&data;
	
    tmp->index = 0;
    tmp->ainc = 0;
	ChipDLIN_WriteReg_LSEL(InstancePtr->BaseAddress, (u8)data);
}

/**
 * @brief Set buffer index 
 * @param *ChipDLIN_Instlin Pointer to DLIN device
 * @param v Buffer index
 */
void dlin_setBufferIndex(ChipDLIN_Inst *InstancePtr, u8 v)
{
	u8 data;
	dlin_lsel_t *tmp;

	tmp = (dlin_lsel_t *)&data;

	data = ChipDLIN_ReadReg_LSEL(InstancePtr->BaseAddress);
	
    tmp->index = v;
	ChipDLIN_WriteReg_LSEL(InstancePtr->BaseAddress, data);
}


//----------------------------------------------------------------------------
//----------------------------------------------------------------------------
void dlin_writeBuffer(ChipDLIN_Inst *InstancePtr, u8 *dat, u8 len)
{
  dlin_enableAutoIncBuffer(InstancePtr);

  while(len--)
  {
    ChipDLIN_WriteReg_LBUF(InstancePtr->BaseAddress, *dat++);
  }
}

//----------------------------------------------------------------------------
//----------------------------------------------------------------------------
void dlin_readBuffer(ChipDLIN_Inst *InstancePtr, u8 *dat, u8 len)
{
  dlin_enableAutoIncBuffer(InstancePtr);

  while(len--)
  {
    *dat++ = ChipDLIN_ReadReg_LBUF(InstancePtr->BaseAddress);
  }

}

//----------------------------------------------------------------------------
void dlin_resetBuffer(ChipDLIN_Inst *InstancePtr)
{
  dlin_setBufferIndex(InstancePtr, 0);
}

//----------------------------------------------------------------------------
//----------------------------------------------------------------------------
void dlin_readLID(ChipDLIN_Inst *InstancePtr, u8 *dat)
{
    *dat = (ChipDLIN_ReadReg_LID(InstancePtr->BaseAddress)) & CHIPDLIN_LID_MASK;
}

void dlin_writeLID(ChipDLIN_Inst *InstancePtr, u8 dat)
{
    ChipDLIN_WriteReg_LID(InstancePtr->BaseAddress, (dat & CHIPDLIN_LID_MASK));
}

void dlin_clearLid(ChipDLIN_Inst *InstancePtr)
{
	int data;
	data = ChipDLIN_ReadReg_LID(InstancePtr->BaseAddress);
}

//----------------------------------------------------------------------------
//----------------------------------------------------------------------------
void dlin_setBaudrate(ChipDLIN_Inst *InstancePtr, u32 clock, u32 baud)
{
  u32 tmp = (clock/(16*baud));

  ChipDLIN_WriteReg_DLL(InstancePtr->BaseAddress, (uint8_t)(tmp & 0xFF));  
  ChipDLIN_WriteReg_DLH(InstancePtr->BaseAddress, (uint8_t)((tmp & 0x7FFF)>>8));   
}

void dlin_setBaudrate_sync(ChipDLIN_Inst *InstancePtr, u32 clock, u32 baud)
{
  dlin_lsr_t status;
  dlin_ler_t error;

  uint32_t tmp = (clock/(16*baud));

  ChipDLIN_WriteReg_DLL(InstancePtr->BaseAddress, (uint8_t)(tmp & 0xFF));  
  ChipDLIN_WriteReg_DLH(InstancePtr->BaseAddress, (uint8_t)(((tmp & 0x7FFF)>>8) | CHIPDLIN_BAUD_SYNC) );
  /* wait for sync */
  dlin_wait_for_sync(InstancePtr, &status, &error);

}

//----------------------------------------------------------------------------
//----------------------------------------------------------------------------
void dlin_setHDR(ChipDLIN_Inst *InstancePtr, u16 hdr)
{
  ChipDLIN_WriteReg_HDRL(InstancePtr->BaseAddress, (uint8_t)(hdr & 0xFF));
  ChipDLIN_WriteReg_HDRH(InstancePtr->BaseAddress, (uint8_t)((hdr & 0xFFFF)>>8));
}


//----------------------------------------------------------------------------
//----------------------------------------------------------------------------
int dlin_selfTest(ChipDLIN_Inst *InstancePtr)
{
	u8 test_val = 0x2A; //0010_1010
	int ret = XST_SUCCESS;

    ChipDLIN_WriteReg_LID(InstancePtr->BaseAddress, test_val);  	

	if( ChipDLIN_ReadReg_LID(InstancePtr->BaseAddress)!= test_val)
		ret = XST_FAILURE;
	else{
		ret = XST_SUCCESS;
		 ChipDLIN_WriteReg_LID(InstancePtr->BaseAddress, 0x0);; // reset to default
	}

	return ret;
}

//**********************added by Guo, 2910-07-06******************************
//----------------------------------------------------------------------------
#if 1
int dlin_wait_for_header(ChipDLIN_Inst *InstancePtr, dlin_lsr_t *status, dlin_ler_t *error)
{
    int i=0;

	//Pooling - check until LID flag set - header received
//	while(1)
    for(i=0; i<50; i++)
	{
		*( (uint8_t *)status ) = ChipDLIN_ReadReg_LSR(InstancePtr->BaseAddress);
		*error = ChipDLIN_ReadReg_LER(InstancePtr->BaseAddress);       /* clear error status */
		if ( status->lid ) {
//			xil_printf("LSR: 0x%02X (flag_lid=%d), LER: 0x%02X\r\n",
//					*status, status->lid, *error);
			return XST_SUCCESS;
		}
	}

    return XST_FAILURE;
}
#else
uint8_t dlin_wait_for_header(dlin_t *dlin, dlin_lsr_t *status, dlin_ler_t *error)
{
	//Pooling - check until LID flag set - header received
	while(1)
	{
		*( (uint8_t *)status ) = dlin->lcr;

		if ( status->lid | status->err )
			*error = dlin->ler;       /* clear error status */
			return 0;
	}
}
#endif

//----------------------------------------------------------------------------
//----------------------------------------------------------------------------
#if 1
int dlin_wait_for_ready(ChipDLIN_Inst *InstancePtr, dlin_lsr_t *status, dlin_ler_t *error)
{
    int i=0;

	//Pooling - check until RDY flag set - idle state
//	while(1)
    for(i=0; i<50; i++)
	{
		*( (uint8_t *)status ) = ChipDLIN_ReadReg_LSR(InstancePtr->BaseAddress);

		if (status->rdy || status->err || status->abort )
		{
			*error = ChipDLIN_ReadReg_LER(InstancePtr->BaseAddress);	   /* read error status */
			return XST_SUCCESS;
		}
	} /* while */

    return XST_FAILURE;
}
#else
uint8_t dlin_wait_for_ready(dlin_t *dlin, dlin_lsr_t *status, dlin_ler_t *error)
{
	//Pooling - check until RDY flag set - idle state
	while(1)
	{
		*( (uint8_t *)status ) = dlin->lcr;
		*error = dlin->ler;       /* clear error status */
		if (status->rdy )
		{
			return 0;
		}
	} /* while */
}
#endif

//----------------------------------------------------------------------------
int dlin_wait_for_sync(ChipDLIN_Inst *InstancePtr, dlin_lsr_t *status, dlin_ler_t *error)
{
	//Pooling - check until LID flag set - header received
	while(1)
	{
		*( (uint8_t *)status ) = ChipDLIN_ReadReg_LSR(InstancePtr->BaseAddress);
		*error = ChipDLIN_ReadReg_LER(InstancePtr->BaseAddress);       /* clear error status */
		
		if ( !(*error & SYNCER) )
			return XST_SUCCESS;
	}
}




//----------------------------------------------------------------------------
//----------------------------------------------------------------------------
void dlin_display_regs(ChipDLIN_Inst *InstancePtr)
{
	printf(" LID   LER    LSR    DLL    DLH    LBS\r\n");
	printf(" %02X    %02X    %02X    %02X    %02X   %02X\r\n",
		ChipDLIN_ReadReg_LID(InstancePtr->BaseAddress),
		ChipDLIN_ReadReg_LER(InstancePtr->BaseAddress),
		ChipDLIN_ReadReg_LSR(InstancePtr->BaseAddress), 
		ChipDLIN_ReadReg_DLL(InstancePtr->BaseAddress),
		ChipDLIN_ReadReg_DLH(InstancePtr->BaseAddress),
		ChipDLIN_ReadReg_LBS(InstancePtr->BaseAddress));
}

