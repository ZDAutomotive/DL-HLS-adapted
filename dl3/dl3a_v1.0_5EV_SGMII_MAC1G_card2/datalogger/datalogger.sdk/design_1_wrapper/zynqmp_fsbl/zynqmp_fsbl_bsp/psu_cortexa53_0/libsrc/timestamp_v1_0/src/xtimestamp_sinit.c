// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xtimestamp.h"

extern XTimestamp_Config XTimestamp_ConfigTable[];

XTimestamp_Config *XTimestamp_LookupConfig(u16 DeviceId) {
	XTimestamp_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XTIMESTAMP_NUM_INSTANCES; Index++) {
		if (XTimestamp_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XTimestamp_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XTimestamp_Initialize(XTimestamp *InstancePtr, u16 DeviceId) {
	XTimestamp_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XTimestamp_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XTimestamp_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

