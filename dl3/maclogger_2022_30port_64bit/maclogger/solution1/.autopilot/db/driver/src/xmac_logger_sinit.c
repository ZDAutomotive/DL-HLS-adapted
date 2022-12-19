// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xmac_logger.h"

extern XMac_logger_Config XMac_logger_ConfigTable[];

XMac_logger_Config *XMac_logger_LookupConfig(u16 DeviceId) {
	XMac_logger_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMAC_LOGGER_NUM_INSTANCES; Index++) {
		if (XMac_logger_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMac_logger_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMac_logger_Initialize(XMac_logger *InstancePtr, u16 DeviceId) {
	XMac_logger_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMac_logger_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMac_logger_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

