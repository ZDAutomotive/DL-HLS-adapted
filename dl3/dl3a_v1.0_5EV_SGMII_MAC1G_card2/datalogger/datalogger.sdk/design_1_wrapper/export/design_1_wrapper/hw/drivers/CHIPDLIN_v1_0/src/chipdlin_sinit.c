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
* @file chipdlin_sinit.c
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
* Looks up the device configuration based on the unique device ID. The table
* contains the configuration info for each device in the system.
*
* @param	DeviceId contains the ID of the device
*
* @return	A pointer to the configuration structure or NULL if the
*		specified device is not in the system.
*
* @note		None.
*
******************************************************************************/
ChipDLIN_Config *ChipDLIN_LookupConfig(u16 DeviceId)
{
	ChipDLIN_Config *CfgPtr = NULL;

	u32 Index;

	for (Index = 0U; Index < (u32)XPAR_CHIPDLIN_NUM_INSTANCES; Index++) {
		if (ChipDLIN_ConfigTable[Index].DeviceId == DeviceId) {
			CfgPtr = &ChipDLIN_ConfigTable[Index];
			break;
		}
	}

	return (ChipDLIN_Config *)CfgPtr;
}


/****************************************************************************/
/**
*
* Initializes a specific CHIPDLIN instance such that it is ready to be used.
*
* @param	InstancePtr is a pointer to the CHIPDLIN instance .
* @param	DeviceId is the unique id of the device controlled by this
*		CHIPDLIN instance. Passing in a device id associates the
*		generic CHIPDLIN instance to a specific device, as chosen
*		by the caller or application developer.
*
* @return
*
* 		- XST_SUCCESS if initialization was successful
* 		- XST_DEVICE_NOT_FOUND if the device ID could not be found in
*		the configuration table
*
* @note		None.
*
*****************************************************************************/
int ChipDLIN_Initialize(ChipDLIN_Inst *InstancePtr, u16 DeviceId)
{
	ChipDLIN_Config *ConfigPtr;

	/*
	 * Assert validates the input arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);

	/*
	 * Lookup the device configuration in the temporary CROM table. Use this
	 * configuration info down below when initializing this component
	 */
	ConfigPtr = ChipDLIN_LookupConfig(DeviceId);
	if (ConfigPtr == (ChipDLIN_Config *)NULL) {
		return XST_DEVICE_NOT_FOUND;
	}

	return ChipDLIN_CfgInitialize(InstancePtr, ConfigPtr,
					ConfigPtr->BaseAddress);
}

/** @} */
