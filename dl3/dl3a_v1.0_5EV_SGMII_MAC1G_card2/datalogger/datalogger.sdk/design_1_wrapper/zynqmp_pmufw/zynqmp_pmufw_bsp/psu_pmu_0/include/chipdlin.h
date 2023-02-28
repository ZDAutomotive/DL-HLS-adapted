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
/****************************************************************************/
/**
*
* @file chipdlin.h
* @addtogroup chipdil_v1_06
* @{
* @details
*
*
* @note
*
* The default configuration for the LIN after initialization is:
*
* - 19,200 bps or CHIPDLIN_DFT_BAUDRATE if defined
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

#ifndef CHIPDLIN_H		/* prevent circular inclusions */
#define CHIPDLIN_H		/* by using protection macros */

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files ********************************/

#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "chipdlin_hw.h"
#include "xplatform_info.h"

/************************** Constant Definitions ****************************/



#define CHIPDLIN_DFT_BAUDRATE  19200U   /* Default baud rate */


/** @name Configuration options
 * @{
 */
/**
 * These constants specify the options that may be set or retrieved
 * with the driver, each is a unique bit mask such that multiple options
 * may be specified.  These constants indicate the available options
 * in active state.
 *
 */

/**
 * @brief List DLIN commands executed by DLIN device.
 */ 
typedef enum {
	DLIN_CMD_ABORT,
	DLIN_CMD_SEND_HEADER,
	DLIN_CMD_RESPONSE_TX,
	DLIN_CMD_RESPONSE_RX,
	DLIN_CMD_WAKEUP,
	DLIN_CMD_LOG
} dlin_cmd_t;


/* @} */




/**************************** Type Definitions ******************************/

/**
 * This typedef contains configuration information for the device.
 */
typedef struct {
	u16 DeviceId;	 /**< Unique ID  of device */
	u32 BaseAddress; /**< Base address of device (IPIF) */
	u32 InputClockHz;	/**< Input clock frequency */
} ChipDLIN_Config;

/**
 * The following data type is used to manage the buffers that are handled
 * when sending and receiving data.
 */
typedef struct {
	u8 *FrameBytePtr;
	unsigned int BuffBytes;
} ChipDLIN_Buffer;

/**
 * The following data type is used to store LIN frame.
 */
#define LIN_MAX_DATA_NUM  8
#define LIN_CHECKSUM_LEN  1

typedef struct
{
	u8 lid;                     /* LIN LID */
	u8 data_size;               /* LIN frame data size */
	u8 data[LIN_MAX_DATA_NUM+LIN_CHECKSUM_LEN];  /* LIN frame data */
	u8 checksum;                /* LIN frame checksum */
} ChipDLIN_Frame;

/**
 * The ChipDLIN driver instance data structure. A pointer to an instance data
 * structure is passed around by functions to refer to a specific driver
 * instance.
 */
typedef struct {
	ChipDLIN_Config Config;	/* Configuration data structure */
	u32 IsReady;		/* Device is initialized and ready */

	u32 BaseAddress;   /* Device base address */
	u32 InputClockHz;  /* Input clock */
	u32 BaudRate;		/* Current baud rate */

	ChipDLIN_Frame SendFrame;
	ChipDLIN_Frame RcvFrame;

/* Modified for porting to Linux, 2019-09-12 */
    u32 PhyBaseAddress;  /* save original physical address */
	int mmappedData;     /* mapped page address */
	int mem_fd;           /* memory map file handle */
/* end of modification, 2019-09-12 */	
} ChipDLIN_Inst;


/***************** Macros (Inline Functions) Definitions ********************/

/***************** Function Prototype Definitions ********************/
int ChipDLIN_CfgInitialize(ChipDLIN_Inst *InstancePtr,
					ChipDLIN_Config *Config,
					UINTPTR EffectiveAddr);
void dlin_sendCommand(ChipDLIN_Inst *InstancePtr, dlin_cmd_t cmd, uint8_t ms, u8 lin13, u8 len);
void dlin_enableAutoIncBuffer(ChipDLIN_Inst *InstancePtr);
void dlin_disnableAutoIncBuffer(ChipDLIN_Inst *InstancePtr);
void dlin_setBufferIndex(ChipDLIN_Inst *InstancePtr, u8 v);
void dlin_writeBuffer(ChipDLIN_Inst *InstancePtr, u8 *dat, u8 len);
void dlin_readBuffer(ChipDLIN_Inst *InstancePtr, u8 *dat, u8 len);
void dlin_readLID(ChipDLIN_Inst *InstancePtr, u8 *dat);
void dlin_writeLID(ChipDLIN_Inst *InstancePtr, u8 dat);
void dlin_setBaudrate(ChipDLIN_Inst *InstancePtr, u32 clock, u32 baud);
void dlin_setBaudrate_sync(ChipDLIN_Inst *InstancePtr, u32 clock, u32 baud);
void dlin_setHDR(ChipDLIN_Inst *InstancePtr, u16 hdr);
int dlin_selfTest(ChipDLIN_Inst *InstancePtr);
int dlin_wait_for_header(ChipDLIN_Inst *InstancePtr, dlin_lsr_t *status, dlin_ler_t *error);
int dlin_wait_for_ready(ChipDLIN_Inst *InstancePtr, dlin_lsr_t *status, dlin_ler_t *error);
int dlin_wait_for_sync(ChipDLIN_Inst *InstancePtr, dlin_lsr_t *status, dlin_ler_t *error);
void dlin_resetBuffer(ChipDLIN_Inst *InstancePtr);
void dlin_clearLid(ChipDLIN_Inst *InstancePtr);
void dlin_display_regs(ChipDLIN_Inst *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif /* end of protection macro */
/** @} */
