// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xclu.h"

extern XClu_Config XClu_ConfigTable[];

XClu_Config *XClu_LookupConfig(u16 DeviceId) {
	XClu_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCLU_NUM_INSTANCES; Index++) {
		if (XClu_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XClu_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XClu_Initialize(XClu *InstancePtr, u16 DeviceId) {
	XClu_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XClu_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XClu_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

