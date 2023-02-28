// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xclu.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XClu_CfgInitialize(XClu *InstancePtr, XClu_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->En_BaseAddress = ConfigPtr->En_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XClu_Start(XClu *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClu_ReadReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_AP_CTRL) & 0x80;
    XClu_WriteReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_AP_CTRL, Data | 0x01);
}

u32 XClu_IsDone(XClu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClu_ReadReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XClu_IsIdle(XClu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClu_ReadReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XClu_IsReady(XClu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClu_ReadReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XClu_EnableAutoRestart(XClu *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XClu_WriteReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_AP_CTRL, 0x80);
}

void XClu_DisableAutoRestart(XClu *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XClu_WriteReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_AP_CTRL, 0);
}

void XClu_Set_can_ptr(XClu *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XClu_WriteReg(InstancePtr->Control_BaseAddress, XCLU_CONTROL_ADDR_CAN_PTR_DATA, (u32)(Data));
    XClu_WriteReg(InstancePtr->Control_BaseAddress, XCLU_CONTROL_ADDR_CAN_PTR_DATA + 4, (u32)(Data >> 32));
}

u64 XClu_Get_can_ptr(XClu *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClu_ReadReg(InstancePtr->Control_BaseAddress, XCLU_CONTROL_ADDR_CAN_PTR_DATA);
    Data += (u64)XClu_ReadReg(InstancePtr->Control_BaseAddress, XCLU_CONTROL_ADDR_CAN_PTR_DATA + 4) << 32;
    return Data;
}

void XClu_Set_uart_ptr(XClu *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XClu_WriteReg(InstancePtr->Control_BaseAddress, XCLU_CONTROL_ADDR_UART_PTR_DATA, (u32)(Data));
    XClu_WriteReg(InstancePtr->Control_BaseAddress, XCLU_CONTROL_ADDR_UART_PTR_DATA + 4, (u32)(Data >> 32));
}

u64 XClu_Get_uart_ptr(XClu *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClu_ReadReg(InstancePtr->Control_BaseAddress, XCLU_CONTROL_ADDR_UART_PTR_DATA);
    Data += (u64)XClu_ReadReg(InstancePtr->Control_BaseAddress, XCLU_CONTROL_ADDR_UART_PTR_DATA + 4) << 32;
    return Data;
}

void XClu_Set_lin_ptr(XClu *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XClu_WriteReg(InstancePtr->Control_BaseAddress, XCLU_CONTROL_ADDR_LIN_PTR_DATA, (u32)(Data));
    XClu_WriteReg(InstancePtr->Control_BaseAddress, XCLU_CONTROL_ADDR_LIN_PTR_DATA + 4, (u32)(Data >> 32));
}

u64 XClu_Get_lin_ptr(XClu *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClu_ReadReg(InstancePtr->Control_BaseAddress, XCLU_CONTROL_ADDR_LIN_PTR_DATA);
    Data += (u64)XClu_ReadReg(InstancePtr->Control_BaseAddress, XCLU_CONTROL_ADDR_LIN_PTR_DATA + 4) << 32;
    return Data;
}

void XClu_Set_can_ddr(XClu *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XClu_WriteReg(InstancePtr->Control_BaseAddress, XCLU_CONTROL_ADDR_CAN_DDR_DATA, (u32)(Data));
    XClu_WriteReg(InstancePtr->Control_BaseAddress, XCLU_CONTROL_ADDR_CAN_DDR_DATA + 4, (u32)(Data >> 32));
}

u64 XClu_Get_can_ddr(XClu *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClu_ReadReg(InstancePtr->Control_BaseAddress, XCLU_CONTROL_ADDR_CAN_DDR_DATA);
    Data += (u64)XClu_ReadReg(InstancePtr->Control_BaseAddress, XCLU_CONTROL_ADDR_CAN_DDR_DATA + 4) << 32;
    return Data;
}

void XClu_Set_uart_ddr(XClu *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XClu_WriteReg(InstancePtr->Control_BaseAddress, XCLU_CONTROL_ADDR_UART_DDR_DATA, (u32)(Data));
    XClu_WriteReg(InstancePtr->Control_BaseAddress, XCLU_CONTROL_ADDR_UART_DDR_DATA + 4, (u32)(Data >> 32));
}

u64 XClu_Get_uart_ddr(XClu *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClu_ReadReg(InstancePtr->Control_BaseAddress, XCLU_CONTROL_ADDR_UART_DDR_DATA);
    Data += (u64)XClu_ReadReg(InstancePtr->Control_BaseAddress, XCLU_CONTROL_ADDR_UART_DDR_DATA + 4) << 32;
    return Data;
}

void XClu_Set_lin_ddr(XClu *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XClu_WriteReg(InstancePtr->Control_BaseAddress, XCLU_CONTROL_ADDR_LIN_DDR_DATA, (u32)(Data));
    XClu_WriteReg(InstancePtr->Control_BaseAddress, XCLU_CONTROL_ADDR_LIN_DDR_DATA + 4, (u32)(Data >> 32));
}

u64 XClu_Get_lin_ddr(XClu *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClu_ReadReg(InstancePtr->Control_BaseAddress, XCLU_CONTROL_ADDR_LIN_DDR_DATA);
    Data += (u64)XClu_ReadReg(InstancePtr->Control_BaseAddress, XCLU_CONTROL_ADDR_LIN_DDR_DATA + 4) << 32;
    return Data;
}

void XClu_Set_received_can_i(XClu *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XClu_WriteReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_RECEIVED_CAN_I_DATA, Data);
}

u32 XClu_Get_received_can_i(XClu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClu_ReadReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_RECEIVED_CAN_I_DATA);
    return Data;
}

u32 XClu_Get_received_can_o(XClu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClu_ReadReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_RECEIVED_CAN_O_DATA);
    return Data;
}

u32 XClu_Get_received_can_o_vld(XClu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClu_ReadReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_RECEIVED_CAN_O_CTRL);
    return Data & 0x1;
}

void XClu_Set_received_uart_i(XClu *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XClu_WriteReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_RECEIVED_UART_I_DATA, Data);
}

u32 XClu_Get_received_uart_i(XClu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClu_ReadReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_RECEIVED_UART_I_DATA);
    return Data;
}

u32 XClu_Get_received_uart_o(XClu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClu_ReadReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_RECEIVED_UART_O_DATA);
    return Data;
}

u32 XClu_Get_received_uart_o_vld(XClu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClu_ReadReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_RECEIVED_UART_O_CTRL);
    return Data & 0x1;
}

void XClu_Set_received_lin_i(XClu *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XClu_WriteReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_RECEIVED_LIN_I_DATA, Data);
}

u32 XClu_Get_received_lin_i(XClu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClu_ReadReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_RECEIVED_LIN_I_DATA);
    return Data;
}

u32 XClu_Get_received_lin_o(XClu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClu_ReadReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_RECEIVED_LIN_O_DATA);
    return Data;
}

u32 XClu_Get_received_lin_o_vld(XClu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClu_ReadReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_RECEIVED_LIN_O_CTRL);
    return Data & 0x1;
}

void XClu_Set_can_en(XClu *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XClu_WriteReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_CAN_EN_DATA, Data);
}

u32 XClu_Get_can_en(XClu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClu_ReadReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_CAN_EN_DATA);
    return Data;
}

void XClu_Set_uart_en(XClu *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XClu_WriteReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_UART_EN_DATA, Data);
}

u32 XClu_Get_uart_en(XClu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClu_ReadReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_UART_EN_DATA);
    return Data;
}

void XClu_Set_lin_en(XClu *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XClu_WriteReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_LIN_EN_DATA, Data);
}

u32 XClu_Get_lin_en(XClu *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClu_ReadReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_LIN_EN_DATA);
    return Data;
}

void XClu_InterruptGlobalEnable(XClu *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XClu_WriteReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_GIE, 1);
}

void XClu_InterruptGlobalDisable(XClu *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XClu_WriteReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_GIE, 0);
}

void XClu_InterruptEnable(XClu *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XClu_ReadReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_IER);
    XClu_WriteReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_IER, Register | Mask);
}

void XClu_InterruptDisable(XClu *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XClu_ReadReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_IER);
    XClu_WriteReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_IER, Register & (~Mask));
}

void XClu_InterruptClear(XClu *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XClu_WriteReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_ISR, Mask);
}

u32 XClu_InterruptGetEnabled(XClu *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XClu_ReadReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_IER);
}

u32 XClu_InterruptGetStatus(XClu *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XClu_ReadReg(InstancePtr->En_BaseAddress, XCLU_EN_ADDR_ISR);
}

