// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XMAC_LOGGER_H
#define XMAC_LOGGER_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xmac_logger_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Axilites_BaseAddress;
} XMac_logger_Config;
#endif

typedef struct {
    u64 Axilites_BaseAddress;
    u32 IsReady;
} XMac_logger;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMac_logger_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMac_logger_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMac_logger_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMac_logger_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XMac_logger_Initialize(XMac_logger *InstancePtr, u16 DeviceId);
XMac_logger_Config* XMac_logger_LookupConfig(u16 DeviceId);
int XMac_logger_CfgInitialize(XMac_logger *InstancePtr, XMac_logger_Config *ConfigPtr);
#else
int XMac_logger_Initialize(XMac_logger *InstancePtr, const char* InstanceName);
int XMac_logger_Release(XMac_logger *InstancePtr);
#endif

void XMac_logger_Start(XMac_logger *InstancePtr);
u32 XMac_logger_IsDone(XMac_logger *InstancePtr);
u32 XMac_logger_IsIdle(XMac_logger *InstancePtr);
u32 XMac_logger_IsReady(XMac_logger *InstancePtr);
void XMac_logger_Continue(XMac_logger *InstancePtr);
void XMac_logger_EnableAutoRestart(XMac_logger *InstancePtr);
void XMac_logger_DisableAutoRestart(XMac_logger *InstancePtr);

void XMac_logger_Set_fifo(XMac_logger *InstancePtr, u64 Data);
u64 XMac_logger_Get_fifo(XMac_logger *InstancePtr);
void XMac_logger_Set_ddr(XMac_logger *InstancePtr, u64 Data);
u64 XMac_logger_Get_ddr(XMac_logger *InstancePtr);
void XMac_logger_Set_status(XMac_logger *InstancePtr, u32 Data);
u32 XMac_logger_Get_status(XMac_logger *InstancePtr);
void XMac_logger_Set_writeStatus(XMac_logger *InstancePtr, u32 Data);
u32 XMac_logger_Get_writeStatus(XMac_logger *InstancePtr);
void XMac_logger_Set_logger_vlan_enable_mask(XMac_logger *InstancePtr, u32 Data);
u32 XMac_logger_Get_logger_vlan_enable_mask(XMac_logger *InstancePtr);
u32 XMac_logger_Get_vlan100_received(XMac_logger *InstancePtr);
u32 XMac_logger_Get_vlan100_received_vld(XMac_logger *InstancePtr);
u32 XMac_logger_Get_vlan101_received(XMac_logger *InstancePtr);
u32 XMac_logger_Get_vlan101_received_vld(XMac_logger *InstancePtr);
u32 XMac_logger_Get_vlan102_received(XMac_logger *InstancePtr);
u32 XMac_logger_Get_vlan102_received_vld(XMac_logger *InstancePtr);
u32 XMac_logger_Get_vlan103_received(XMac_logger *InstancePtr);
u32 XMac_logger_Get_vlan103_received_vld(XMac_logger *InstancePtr);
u32 XMac_logger_Get_vlan104_received(XMac_logger *InstancePtr);
u32 XMac_logger_Get_vlan104_received_vld(XMac_logger *InstancePtr);
u32 XMac_logger_Get_vlan105_received(XMac_logger *InstancePtr);
u32 XMac_logger_Get_vlan105_received_vld(XMac_logger *InstancePtr);
u32 XMac_logger_Get_vlan106_received(XMac_logger *InstancePtr);
u32 XMac_logger_Get_vlan106_received_vld(XMac_logger *InstancePtr);
u32 XMac_logger_Get_vlan107_received(XMac_logger *InstancePtr);
u32 XMac_logger_Get_vlan107_received_vld(XMac_logger *InstancePtr);
u32 XMac_logger_Get_vlan108_received(XMac_logger *InstancePtr);
u32 XMac_logger_Get_vlan108_received_vld(XMac_logger *InstancePtr);
u32 XMac_logger_Get_vlan109_received(XMac_logger *InstancePtr);
u32 XMac_logger_Get_vlan109_received_vld(XMac_logger *InstancePtr);
u32 XMac_logger_Get_droped(XMac_logger *InstancePtr);
u32 XMac_logger_Get_droped_vld(XMac_logger *InstancePtr);
void XMac_logger_Set_multicast_recv_enable(XMac_logger *InstancePtr, u32 Data);
u32 XMac_logger_Get_multicast_recv_enable(XMac_logger *InstancePtr);
void XMac_logger_Set_unicast_filter_enable(XMac_logger *InstancePtr, u32 Data);
u32 XMac_logger_Get_unicast_filter_enable(XMac_logger *InstancePtr);
void XMac_logger_Set_unicast_vlan100_macaddr_lsb(XMac_logger *InstancePtr, u32 Data);
u32 XMac_logger_Get_unicast_vlan100_macaddr_lsb(XMac_logger *InstancePtr);
void XMac_logger_Set_unicast_vlan100_macaddr_msb(XMac_logger *InstancePtr, u32 Data);
u32 XMac_logger_Get_unicast_vlan100_macaddr_msb(XMac_logger *InstancePtr);
void XMac_logger_Set_unicast_vlan101_macaddr_lsb(XMac_logger *InstancePtr, u32 Data);
u32 XMac_logger_Get_unicast_vlan101_macaddr_lsb(XMac_logger *InstancePtr);
void XMac_logger_Set_unicast_vlan101_macaddr_msb(XMac_logger *InstancePtr, u32 Data);
u32 XMac_logger_Get_unicast_vlan101_macaddr_msb(XMac_logger *InstancePtr);
void XMac_logger_Set_unicast_vlan102_macaddr_lsb(XMac_logger *InstancePtr, u32 Data);
u32 XMac_logger_Get_unicast_vlan102_macaddr_lsb(XMac_logger *InstancePtr);
void XMac_logger_Set_unicast_vlan102_macaddr_msb(XMac_logger *InstancePtr, u32 Data);
u32 XMac_logger_Get_unicast_vlan102_macaddr_msb(XMac_logger *InstancePtr);
void XMac_logger_Set_unicast_vlan103_macaddr_lsb(XMac_logger *InstancePtr, u32 Data);
u32 XMac_logger_Get_unicast_vlan103_macaddr_lsb(XMac_logger *InstancePtr);
void XMac_logger_Set_unicast_vlan103_macaddr_msb(XMac_logger *InstancePtr, u32 Data);
u32 XMac_logger_Get_unicast_vlan103_macaddr_msb(XMac_logger *InstancePtr);
void XMac_logger_Set_unicast_vlan104_macaddr_lsb(XMac_logger *InstancePtr, u32 Data);
u32 XMac_logger_Get_unicast_vlan104_macaddr_lsb(XMac_logger *InstancePtr);
void XMac_logger_Set_unicast_vlan104_macaddr_msb(XMac_logger *InstancePtr, u32 Data);
u32 XMac_logger_Get_unicast_vlan104_macaddr_msb(XMac_logger *InstancePtr);
void XMac_logger_Set_unicast_vlan105_macaddr_lsb(XMac_logger *InstancePtr, u32 Data);
u32 XMac_logger_Get_unicast_vlan105_macaddr_lsb(XMac_logger *InstancePtr);
void XMac_logger_Set_unicast_vlan105_macaddr_msb(XMac_logger *InstancePtr, u32 Data);
u32 XMac_logger_Get_unicast_vlan105_macaddr_msb(XMac_logger *InstancePtr);
void XMac_logger_Set_unicast_vlan106_macaddr_lsb(XMac_logger *InstancePtr, u32 Data);
u32 XMac_logger_Get_unicast_vlan106_macaddr_lsb(XMac_logger *InstancePtr);
void XMac_logger_Set_unicast_vlan106_macaddr_msb(XMac_logger *InstancePtr, u32 Data);
u32 XMac_logger_Get_unicast_vlan106_macaddr_msb(XMac_logger *InstancePtr);
void XMac_logger_Set_unicast_vlan107_macaddr_lsb(XMac_logger *InstancePtr, u32 Data);
u32 XMac_logger_Get_unicast_vlan107_macaddr_lsb(XMac_logger *InstancePtr);
void XMac_logger_Set_unicast_vlan107_macaddr_msb(XMac_logger *InstancePtr, u32 Data);
u32 XMac_logger_Get_unicast_vlan107_macaddr_msb(XMac_logger *InstancePtr);
void XMac_logger_Set_unicast_vlan108_macaddr_lsb(XMac_logger *InstancePtr, u32 Data);
u32 XMac_logger_Get_unicast_vlan108_macaddr_lsb(XMac_logger *InstancePtr);
void XMac_logger_Set_unicast_vlan108_macaddr_msb(XMac_logger *InstancePtr, u32 Data);
u32 XMac_logger_Get_unicast_vlan108_macaddr_msb(XMac_logger *InstancePtr);
void XMac_logger_Set_unicast_vlan109_macaddr_lsb(XMac_logger *InstancePtr, u32 Data);
u32 XMac_logger_Get_unicast_vlan109_macaddr_lsb(XMac_logger *InstancePtr);
void XMac_logger_Set_unicast_vlan109_macaddr_msb(XMac_logger *InstancePtr, u32 Data);
u32 XMac_logger_Get_unicast_vlan109_macaddr_msb(XMac_logger *InstancePtr);
void XMac_logger_Set_log_all_mask(XMac_logger *InstancePtr, u32 Data);
u32 XMac_logger_Get_log_all_mask(XMac_logger *InstancePtr);
void XMac_logger_Set_driver(XMac_logger *InstancePtr, u64 Data);
u64 XMac_logger_Get_driver(XMac_logger *InstancePtr);
void XMac_logger_Set_fifo_axi_full_offset(XMac_logger *InstancePtr, u64 Data);
u64 XMac_logger_Get_fifo_axi_full_offset(XMac_logger *InstancePtr);

void XMac_logger_InterruptGlobalEnable(XMac_logger *InstancePtr);
void XMac_logger_InterruptGlobalDisable(XMac_logger *InstancePtr);
void XMac_logger_InterruptEnable(XMac_logger *InstancePtr, u32 Mask);
void XMac_logger_InterruptDisable(XMac_logger *InstancePtr, u32 Mask);
void XMac_logger_InterruptClear(XMac_logger *InstancePtr, u32 Mask);
u32 XMac_logger_InterruptGetEnabled(XMac_logger *InstancePtr);
u32 XMac_logger_InterruptGetStatus(XMac_logger *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
