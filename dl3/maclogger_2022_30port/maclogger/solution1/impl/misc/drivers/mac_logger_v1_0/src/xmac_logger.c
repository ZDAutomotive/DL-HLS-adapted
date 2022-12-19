// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xmac_logger.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMac_logger_CfgInitialize(XMac_logger *InstancePtr, XMac_logger_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMac_logger_Start(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_AP_CTRL) & 0x80;
    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMac_logger_IsDone(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMac_logger_IsIdle(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMac_logger_IsReady(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMac_logger_Continue(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_AP_CTRL) & 0x80;
    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_AP_CTRL, Data | 0x10);
}

void XMac_logger_EnableAutoRestart(XMac_logger *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_AP_CTRL, 0x80);
}

void XMac_logger_DisableAutoRestart(XMac_logger *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_AP_CTRL, 0);
}

void XMac_logger_Set_fifo(XMac_logger *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_FIFO_DATA, (u32)(Data));
    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_FIFO_DATA + 4, (u32)(Data >> 32));
}

u64 XMac_logger_Get_fifo(XMac_logger *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_FIFO_DATA);
    Data += (u64)XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_FIFO_DATA + 4) << 32;
    return Data;
}

void XMac_logger_Set_fifo_axi_full_offset(XMac_logger *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_FIFO_AXI_FULL_OFFSET_DATA, (u32)(Data));
    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_FIFO_AXI_FULL_OFFSET_DATA + 4, (u32)(Data >> 32));
}

u64 XMac_logger_Get_fifo_axi_full_offset(XMac_logger *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_FIFO_AXI_FULL_OFFSET_DATA);
    Data += (u64)XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_FIFO_AXI_FULL_OFFSET_DATA + 4) << 32;
    return Data;
}

void XMac_logger_Set_ddr(XMac_logger *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_DDR_DATA, (u32)(Data));
    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_DDR_DATA + 4, (u32)(Data >> 32));
}

u64 XMac_logger_Get_ddr(XMac_logger *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_DDR_DATA);
    Data += (u64)XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_DDR_DATA + 4) << 32;
    return Data;
}

void XMac_logger_Set_driver(XMac_logger *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_DRIVER_DATA, (u32)(Data));
    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_DRIVER_DATA + 4, (u32)(Data >> 32));
}

u64 XMac_logger_Get_driver(XMac_logger *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_DRIVER_DATA);
    Data += (u64)XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_DRIVER_DATA + 4) << 32;
    return Data;
}

void XMac_logger_Set_status(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_STATUS_DATA, Data);
}

u32 XMac_logger_Get_status(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_STATUS_DATA);
    return Data;
}

void XMac_logger_Set_writeStatus(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_WRITESTATUS_DATA, Data);
}

u32 XMac_logger_Get_writeStatus(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_WRITESTATUS_DATA);
    return Data;
}

void XMac_logger_Set_logger_vlan_enable_mask(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_LOGGER_VLAN_ENABLE_MASK_DATA, Data);
}

u32 XMac_logger_Get_logger_vlan_enable_mask(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_LOGGER_VLAN_ENABLE_MASK_DATA);
    return Data;
}

u32 XMac_logger_Get_vlan100_received(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN100_RECEIVED_DATA);
    return Data;
}

u32 XMac_logger_Get_vlan100_received_vld(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN100_RECEIVED_CTRL);
    return Data & 0x1;
}

u32 XMac_logger_Get_vlan101_received(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN101_RECEIVED_DATA);
    return Data;
}

u32 XMac_logger_Get_vlan101_received_vld(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN101_RECEIVED_CTRL);
    return Data & 0x1;
}

u32 XMac_logger_Get_vlan102_received(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN102_RECEIVED_DATA);
    return Data;
}

u32 XMac_logger_Get_vlan102_received_vld(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN102_RECEIVED_CTRL);
    return Data & 0x1;
}

u32 XMac_logger_Get_vlan103_received(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN103_RECEIVED_DATA);
    return Data;
}

u32 XMac_logger_Get_vlan103_received_vld(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN103_RECEIVED_CTRL);
    return Data & 0x1;
}

u32 XMac_logger_Get_vlan104_received(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN104_RECEIVED_DATA);
    return Data;
}

u32 XMac_logger_Get_vlan104_received_vld(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN104_RECEIVED_CTRL);
    return Data & 0x1;
}

u32 XMac_logger_Get_vlan105_received(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN105_RECEIVED_DATA);
    return Data;
}

u32 XMac_logger_Get_vlan105_received_vld(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN105_RECEIVED_CTRL);
    return Data & 0x1;
}

u32 XMac_logger_Get_vlan106_received(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN106_RECEIVED_DATA);
    return Data;
}

u32 XMac_logger_Get_vlan106_received_vld(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN106_RECEIVED_CTRL);
    return Data & 0x1;
}

u32 XMac_logger_Get_vlan107_received(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN107_RECEIVED_DATA);
    return Data;
}

u32 XMac_logger_Get_vlan107_received_vld(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN107_RECEIVED_CTRL);
    return Data & 0x1;
}

u32 XMac_logger_Get_vlan108_received(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN108_RECEIVED_DATA);
    return Data;
}

u32 XMac_logger_Get_vlan108_received_vld(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN108_RECEIVED_CTRL);
    return Data & 0x1;
}

u32 XMac_logger_Get_vlan109_received(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN109_RECEIVED_DATA);
    return Data;
}

u32 XMac_logger_Get_vlan109_received_vld(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN109_RECEIVED_CTRL);
    return Data & 0x1;
}

u32 XMac_logger_Get_vlan110_received(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN110_RECEIVED_DATA);
    return Data;
}

u32 XMac_logger_Get_vlan110_received_vld(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN110_RECEIVED_CTRL);
    return Data & 0x1;
}

u32 XMac_logger_Get_vlan111_received(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN111_RECEIVED_DATA);
    return Data;
}

u32 XMac_logger_Get_vlan111_received_vld(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN111_RECEIVED_CTRL);
    return Data & 0x1;
}

u32 XMac_logger_Get_vlan112_received(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN112_RECEIVED_DATA);
    return Data;
}

u32 XMac_logger_Get_vlan112_received_vld(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN112_RECEIVED_CTRL);
    return Data & 0x1;
}

u32 XMac_logger_Get_vlan113_received(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN113_RECEIVED_DATA);
    return Data;
}

u32 XMac_logger_Get_vlan113_received_vld(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN113_RECEIVED_CTRL);
    return Data & 0x1;
}

u32 XMac_logger_Get_vlan114_received(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN114_RECEIVED_DATA);
    return Data;
}

u32 XMac_logger_Get_vlan114_received_vld(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN114_RECEIVED_CTRL);
    return Data & 0x1;
}

u32 XMac_logger_Get_vlan115_received(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN115_RECEIVED_DATA);
    return Data;
}

u32 XMac_logger_Get_vlan115_received_vld(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN115_RECEIVED_CTRL);
    return Data & 0x1;
}

u32 XMac_logger_Get_vlan116_received(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN116_RECEIVED_DATA);
    return Data;
}

u32 XMac_logger_Get_vlan116_received_vld(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN116_RECEIVED_CTRL);
    return Data & 0x1;
}

u32 XMac_logger_Get_vlan117_received(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN117_RECEIVED_DATA);
    return Data;
}

u32 XMac_logger_Get_vlan117_received_vld(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN117_RECEIVED_CTRL);
    return Data & 0x1;
}

u32 XMac_logger_Get_vlan118_received(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN118_RECEIVED_DATA);
    return Data;
}

u32 XMac_logger_Get_vlan118_received_vld(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN118_RECEIVED_CTRL);
    return Data & 0x1;
}

u32 XMac_logger_Get_vlan119_received(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN119_RECEIVED_DATA);
    return Data;
}

u32 XMac_logger_Get_vlan119_received_vld(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN119_RECEIVED_CTRL);
    return Data & 0x1;
}

u32 XMac_logger_Get_vlan120_received(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN120_RECEIVED_DATA);
    return Data;
}

u32 XMac_logger_Get_vlan120_received_vld(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN120_RECEIVED_CTRL);
    return Data & 0x1;
}

u32 XMac_logger_Get_vlan121_received(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN121_RECEIVED_DATA);
    return Data;
}

u32 XMac_logger_Get_vlan121_received_vld(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN121_RECEIVED_CTRL);
    return Data & 0x1;
}

u32 XMac_logger_Get_vlan122_received(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN122_RECEIVED_DATA);
    return Data;
}

u32 XMac_logger_Get_vlan122_received_vld(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN122_RECEIVED_CTRL);
    return Data & 0x1;
}

u32 XMac_logger_Get_vlan123_received(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN123_RECEIVED_DATA);
    return Data;
}

u32 XMac_logger_Get_vlan123_received_vld(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN123_RECEIVED_CTRL);
    return Data & 0x1;
}

u32 XMac_logger_Get_vlan124_received(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN124_RECEIVED_DATA);
    return Data;
}

u32 XMac_logger_Get_vlan124_received_vld(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN124_RECEIVED_CTRL);
    return Data & 0x1;
}

u32 XMac_logger_Get_vlan125_received(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN125_RECEIVED_DATA);
    return Data;
}

u32 XMac_logger_Get_vlan125_received_vld(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN125_RECEIVED_CTRL);
    return Data & 0x1;
}

u32 XMac_logger_Get_vlan126_received(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN126_RECEIVED_DATA);
    return Data;
}

u32 XMac_logger_Get_vlan126_received_vld(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN126_RECEIVED_CTRL);
    return Data & 0x1;
}

u32 XMac_logger_Get_vlan127_received(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN127_RECEIVED_DATA);
    return Data;
}

u32 XMac_logger_Get_vlan127_received_vld(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN127_RECEIVED_CTRL);
    return Data & 0x1;
}

u32 XMac_logger_Get_vlan128_received(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN128_RECEIVED_DATA);
    return Data;
}

u32 XMac_logger_Get_vlan128_received_vld(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN128_RECEIVED_CTRL);
    return Data & 0x1;
}

u32 XMac_logger_Get_vlan129_received(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN129_RECEIVED_DATA);
    return Data;
}

u32 XMac_logger_Get_vlan129_received_vld(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_VLAN129_RECEIVED_CTRL);
    return Data & 0x1;
}

u32 XMac_logger_Get_droped(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_DROPED_DATA);
    return Data;
}

u32 XMac_logger_Get_droped_vld(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_DROPED_CTRL);
    return Data & 0x1;
}

void XMac_logger_Set_multicast_recv_enable(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_MULTICAST_RECV_ENABLE_DATA, Data);
}

u32 XMac_logger_Get_multicast_recv_enable(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_MULTICAST_RECV_ENABLE_DATA);
    return Data;
}

void XMac_logger_Set_unicast_filter_enable(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_FILTER_ENABLE_DATA, Data);
}

u32 XMac_logger_Get_unicast_filter_enable(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_FILTER_ENABLE_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan100_macaddr_lsb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN100_MACADDR_LSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan100_macaddr_lsb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN100_MACADDR_LSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan100_macaddr_msb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN100_MACADDR_MSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan100_macaddr_msb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN100_MACADDR_MSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan101_macaddr_lsb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN101_MACADDR_LSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan101_macaddr_lsb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN101_MACADDR_LSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan101_macaddr_msb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN101_MACADDR_MSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan101_macaddr_msb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN101_MACADDR_MSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan102_macaddr_lsb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN102_MACADDR_LSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan102_macaddr_lsb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN102_MACADDR_LSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan102_macaddr_msb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN102_MACADDR_MSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan102_macaddr_msb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN102_MACADDR_MSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan103_macaddr_lsb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN103_MACADDR_LSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan103_macaddr_lsb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN103_MACADDR_LSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan103_macaddr_msb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN103_MACADDR_MSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan103_macaddr_msb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN103_MACADDR_MSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan104_macaddr_lsb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN104_MACADDR_LSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan104_macaddr_lsb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN104_MACADDR_LSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan104_macaddr_msb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN104_MACADDR_MSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan104_macaddr_msb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN104_MACADDR_MSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan105_macaddr_lsb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN105_MACADDR_LSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan105_macaddr_lsb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN105_MACADDR_LSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan105_macaddr_msb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN105_MACADDR_MSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan105_macaddr_msb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN105_MACADDR_MSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan106_macaddr_lsb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN106_MACADDR_LSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan106_macaddr_lsb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN106_MACADDR_LSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan106_macaddr_msb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN106_MACADDR_MSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan106_macaddr_msb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN106_MACADDR_MSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan107_macaddr_lsb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN107_MACADDR_LSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan107_macaddr_lsb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN107_MACADDR_LSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan107_macaddr_msb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN107_MACADDR_MSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan107_macaddr_msb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN107_MACADDR_MSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan108_macaddr_lsb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN108_MACADDR_LSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan108_macaddr_lsb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN108_MACADDR_LSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan108_macaddr_msb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN108_MACADDR_MSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan108_macaddr_msb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN108_MACADDR_MSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan109_macaddr_lsb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN109_MACADDR_LSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan109_macaddr_lsb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN109_MACADDR_LSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan109_macaddr_msb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN109_MACADDR_MSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan109_macaddr_msb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN109_MACADDR_MSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan110_macaddr_lsb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN110_MACADDR_LSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan110_macaddr_lsb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN110_MACADDR_LSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan110_macaddr_msb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN110_MACADDR_MSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan110_macaddr_msb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN110_MACADDR_MSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan111_macaddr_lsb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN111_MACADDR_LSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan111_macaddr_lsb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN111_MACADDR_LSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan111_macaddr_msb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN111_MACADDR_MSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan111_macaddr_msb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN111_MACADDR_MSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan112_macaddr_lsb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN112_MACADDR_LSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan112_macaddr_lsb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN112_MACADDR_LSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan112_macaddr_msb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN112_MACADDR_MSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan112_macaddr_msb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN112_MACADDR_MSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan113_macaddr_lsb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN113_MACADDR_LSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan113_macaddr_lsb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN113_MACADDR_LSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan113_macaddr_msb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN113_MACADDR_MSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan113_macaddr_msb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN113_MACADDR_MSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan114_macaddr_lsb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN114_MACADDR_LSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan114_macaddr_lsb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN114_MACADDR_LSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan114_macaddr_msb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN114_MACADDR_MSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan114_macaddr_msb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN114_MACADDR_MSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan115_macaddr_lsb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN115_MACADDR_LSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan115_macaddr_lsb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN115_MACADDR_LSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan115_macaddr_msb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN115_MACADDR_MSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan115_macaddr_msb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN115_MACADDR_MSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan116_macaddr_lsb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN116_MACADDR_LSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan116_macaddr_lsb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN116_MACADDR_LSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan116_macaddr_msb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN116_MACADDR_MSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan116_macaddr_msb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN116_MACADDR_MSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan117_macaddr_lsb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN117_MACADDR_LSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan117_macaddr_lsb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN117_MACADDR_LSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan117_macaddr_msb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN117_MACADDR_MSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan117_macaddr_msb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN117_MACADDR_MSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan118_macaddr_lsb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN118_MACADDR_LSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan118_macaddr_lsb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN118_MACADDR_LSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan118_macaddr_msb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN118_MACADDR_MSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan118_macaddr_msb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN118_MACADDR_MSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan119_macaddr_lsb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN119_MACADDR_LSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan119_macaddr_lsb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN119_MACADDR_LSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan119_macaddr_msb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN119_MACADDR_MSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan119_macaddr_msb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN119_MACADDR_MSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan120_macaddr_lsb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN120_MACADDR_LSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan120_macaddr_lsb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN120_MACADDR_LSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan120_macaddr_msb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN120_MACADDR_MSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan120_macaddr_msb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN120_MACADDR_MSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan121_macaddr_lsb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN121_MACADDR_LSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan121_macaddr_lsb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN121_MACADDR_LSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan121_macaddr_msb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN121_MACADDR_MSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan121_macaddr_msb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN121_MACADDR_MSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan122_macaddr_lsb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN122_MACADDR_LSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan122_macaddr_lsb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN122_MACADDR_LSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan122_macaddr_msb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN122_MACADDR_MSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan122_macaddr_msb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN122_MACADDR_MSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan123_macaddr_lsb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN123_MACADDR_LSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan123_macaddr_lsb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN123_MACADDR_LSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan123_macaddr_msb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN123_MACADDR_MSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan123_macaddr_msb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN123_MACADDR_MSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan124_macaddr_lsb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN124_MACADDR_LSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan124_macaddr_lsb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN124_MACADDR_LSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan124_macaddr_msb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN124_MACADDR_MSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan124_macaddr_msb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN124_MACADDR_MSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan125_macaddr_lsb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN125_MACADDR_LSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan125_macaddr_lsb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN125_MACADDR_LSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan125_macaddr_msb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN125_MACADDR_MSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan125_macaddr_msb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN125_MACADDR_MSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan126_macaddr_lsb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN126_MACADDR_LSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan126_macaddr_lsb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN126_MACADDR_LSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan126_macaddr_msb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN126_MACADDR_MSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan126_macaddr_msb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN126_MACADDR_MSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan127_macaddr_lsb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN127_MACADDR_LSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan127_macaddr_lsb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN127_MACADDR_LSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan127_macaddr_msb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN127_MACADDR_MSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan127_macaddr_msb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN127_MACADDR_MSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan128_macaddr_lsb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN128_MACADDR_LSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan128_macaddr_lsb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN128_MACADDR_LSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan128_macaddr_msb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN128_MACADDR_MSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan128_macaddr_msb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN128_MACADDR_MSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan129_macaddr_lsb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN129_MACADDR_LSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan129_macaddr_lsb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN129_MACADDR_LSB_DATA);
    return Data;
}

void XMac_logger_Set_unicast_vlan129_macaddr_msb(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN129_MACADDR_MSB_DATA, Data);
}

u32 XMac_logger_Get_unicast_vlan129_macaddr_msb(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN129_MACADDR_MSB_DATA);
    return Data;
}

void XMac_logger_Set_log_all_mask(XMac_logger *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_LOG_ALL_MASK_DATA, Data);
}

u32 XMac_logger_Get_log_all_mask(XMac_logger *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_LOG_ALL_MASK_DATA);
    return Data;
}

void XMac_logger_InterruptGlobalEnable(XMac_logger *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_GIE, 1);
}

void XMac_logger_InterruptGlobalDisable(XMac_logger *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_GIE, 0);
}

void XMac_logger_InterruptEnable(XMac_logger *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_IER);
    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_IER, Register | Mask);
}

void XMac_logger_InterruptDisable(XMac_logger *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_IER);
    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_IER, Register & (~Mask));
}

void XMac_logger_InterruptClear(XMac_logger *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMac_logger_WriteReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_ISR, Mask);
}

u32 XMac_logger_InterruptGetEnabled(XMac_logger *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_IER);
}

u32 XMac_logger_InterruptGetStatus(XMac_logger *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMac_logger_ReadReg(InstancePtr->Axilites_BaseAddress, XMAC_LOGGER_AXILITES_ADDR_ISR);
}

