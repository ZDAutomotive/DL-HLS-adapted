// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xtimestamp.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XTimestamp_CfgInitialize(XTimestamp *InstancePtr, XTimestamp_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ts_base_BaseAddress = ConfigPtr->Ts_base_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XTimestamp_Start(XTimestamp *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTimestamp_ReadReg(InstancePtr->Ts_base_BaseAddress, XTIMESTAMP_TS_BASE_ADDR_AP_CTRL) & 0x80;
    XTimestamp_WriteReg(InstancePtr->Ts_base_BaseAddress, XTIMESTAMP_TS_BASE_ADDR_AP_CTRL, Data | 0x01);
}

u32 XTimestamp_IsDone(XTimestamp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTimestamp_ReadReg(InstancePtr->Ts_base_BaseAddress, XTIMESTAMP_TS_BASE_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XTimestamp_IsIdle(XTimestamp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTimestamp_ReadReg(InstancePtr->Ts_base_BaseAddress, XTIMESTAMP_TS_BASE_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XTimestamp_IsReady(XTimestamp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTimestamp_ReadReg(InstancePtr->Ts_base_BaseAddress, XTIMESTAMP_TS_BASE_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XTimestamp_EnableAutoRestart(XTimestamp *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTimestamp_WriteReg(InstancePtr->Ts_base_BaseAddress, XTIMESTAMP_TS_BASE_ADDR_AP_CTRL, 0x80);
}

void XTimestamp_DisableAutoRestart(XTimestamp *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTimestamp_WriteReg(InstancePtr->Ts_base_BaseAddress, XTIMESTAMP_TS_BASE_ADDR_AP_CTRL, 0);
}

void XTimestamp_Set_ts_base(XTimestamp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTimestamp_WriteReg(InstancePtr->Ts_base_BaseAddress, XTIMESTAMP_TS_BASE_ADDR_TS_BASE_DATA, Data);
}

u32 XTimestamp_Get_ts_base(XTimestamp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTimestamp_ReadReg(InstancePtr->Ts_base_BaseAddress, XTIMESTAMP_TS_BASE_ADDR_TS_BASE_DATA);
    return Data;
}

u32 XTimestamp_Get_timestamp_high(XTimestamp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTimestamp_ReadReg(InstancePtr->Ts_base_BaseAddress, XTIMESTAMP_TS_BASE_ADDR_TIMESTAMP_HIGH_DATA);
    return Data;
}

u32 XTimestamp_Get_timestamp_high_vld(XTimestamp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTimestamp_ReadReg(InstancePtr->Ts_base_BaseAddress, XTIMESTAMP_TS_BASE_ADDR_TIMESTAMP_HIGH_CTRL);
    return Data & 0x1;
}

u32 XTimestamp_Get_timestamp_low(XTimestamp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTimestamp_ReadReg(InstancePtr->Ts_base_BaseAddress, XTIMESTAMP_TS_BASE_ADDR_TIMESTAMP_LOW_DATA);
    return Data;
}

u32 XTimestamp_Get_timestamp_low_vld(XTimestamp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTimestamp_ReadReg(InstancePtr->Ts_base_BaseAddress, XTIMESTAMP_TS_BASE_ADDR_TIMESTAMP_LOW_CTRL);
    return Data & 0x1;
}

void XTimestamp_Set_ts_base_10ns(XTimestamp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTimestamp_WriteReg(InstancePtr->Ts_base_BaseAddress, XTIMESTAMP_TS_BASE_ADDR_TS_BASE_10NS_DATA, Data);
}

u32 XTimestamp_Get_ts_base_10ns(XTimestamp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTimestamp_ReadReg(InstancePtr->Ts_base_BaseAddress, XTIMESTAMP_TS_BASE_ADDR_TS_BASE_10NS_DATA);
    return Data;
}

u64 XTimestamp_Get_timestamp_ps(XTimestamp *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTimestamp_ReadReg(InstancePtr->Ts_base_BaseAddress, XTIMESTAMP_TS_BASE_ADDR_TIMESTAMP_PS_DATA);
    Data += (u64)XTimestamp_ReadReg(InstancePtr->Ts_base_BaseAddress, XTIMESTAMP_TS_BASE_ADDR_TIMESTAMP_PS_DATA + 4) << 32;
    return Data;
}

u32 XTimestamp_Get_timestamp_ps_vld(XTimestamp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTimestamp_ReadReg(InstancePtr->Ts_base_BaseAddress, XTIMESTAMP_TS_BASE_ADDR_TIMESTAMP_PS_CTRL);
    return Data & 0x1;
}

void XTimestamp_InterruptGlobalEnable(XTimestamp *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTimestamp_WriteReg(InstancePtr->Ts_base_BaseAddress, XTIMESTAMP_TS_BASE_ADDR_GIE, 1);
}

void XTimestamp_InterruptGlobalDisable(XTimestamp *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTimestamp_WriteReg(InstancePtr->Ts_base_BaseAddress, XTIMESTAMP_TS_BASE_ADDR_GIE, 0);
}

void XTimestamp_InterruptEnable(XTimestamp *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTimestamp_ReadReg(InstancePtr->Ts_base_BaseAddress, XTIMESTAMP_TS_BASE_ADDR_IER);
    XTimestamp_WriteReg(InstancePtr->Ts_base_BaseAddress, XTIMESTAMP_TS_BASE_ADDR_IER, Register | Mask);
}

void XTimestamp_InterruptDisable(XTimestamp *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTimestamp_ReadReg(InstancePtr->Ts_base_BaseAddress, XTIMESTAMP_TS_BASE_ADDR_IER);
    XTimestamp_WriteReg(InstancePtr->Ts_base_BaseAddress, XTIMESTAMP_TS_BASE_ADDR_IER, Register & (~Mask));
}

void XTimestamp_InterruptClear(XTimestamp *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTimestamp_WriteReg(InstancePtr->Ts_base_BaseAddress, XTIMESTAMP_TS_BASE_ADDR_ISR, Mask);
}

u32 XTimestamp_InterruptGetEnabled(XTimestamp *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTimestamp_ReadReg(InstancePtr->Ts_base_BaseAddress, XTIMESTAMP_TS_BASE_ADDR_IER);
}

u32 XTimestamp_InterruptGetStatus(XTimestamp *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTimestamp_ReadReg(InstancePtr->Ts_base_BaseAddress, XTIMESTAMP_TS_BASE_ADDR_ISR);
}

