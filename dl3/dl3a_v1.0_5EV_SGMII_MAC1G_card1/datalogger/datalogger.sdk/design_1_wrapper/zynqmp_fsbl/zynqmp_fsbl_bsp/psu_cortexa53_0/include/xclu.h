// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XCLU_H
#define XCLU_H

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
#include "xclu_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
    u32 En_BaseAddress;
} XClu_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u64 En_BaseAddress;
    u32 IsReady;
} XClu;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XClu_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XClu_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XClu_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XClu_ReadReg(BaseAddress, RegOffset) \
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
int XClu_Initialize(XClu *InstancePtr, u16 DeviceId);
XClu_Config* XClu_LookupConfig(u16 DeviceId);
int XClu_CfgInitialize(XClu *InstancePtr, XClu_Config *ConfigPtr);
#else
int XClu_Initialize(XClu *InstancePtr, const char* InstanceName);
int XClu_Release(XClu *InstancePtr);
#endif

void XClu_Start(XClu *InstancePtr);
u32 XClu_IsDone(XClu *InstancePtr);
u32 XClu_IsIdle(XClu *InstancePtr);
u32 XClu_IsReady(XClu *InstancePtr);
void XClu_EnableAutoRestart(XClu *InstancePtr);
void XClu_DisableAutoRestart(XClu *InstancePtr);

void XClu_Set_can_ptr(XClu *InstancePtr, u64 Data);
u64 XClu_Get_can_ptr(XClu *InstancePtr);
void XClu_Set_uart_ptr(XClu *InstancePtr, u64 Data);
u64 XClu_Get_uart_ptr(XClu *InstancePtr);
void XClu_Set_lin_ptr(XClu *InstancePtr, u64 Data);
u64 XClu_Get_lin_ptr(XClu *InstancePtr);
void XClu_Set_can_ddr(XClu *InstancePtr, u64 Data);
u64 XClu_Get_can_ddr(XClu *InstancePtr);
void XClu_Set_uart_ddr(XClu *InstancePtr, u64 Data);
u64 XClu_Get_uart_ddr(XClu *InstancePtr);
void XClu_Set_lin_ddr(XClu *InstancePtr, u64 Data);
u64 XClu_Get_lin_ddr(XClu *InstancePtr);
void XClu_Set_received_can_i(XClu *InstancePtr, u32 Data);
u32 XClu_Get_received_can_i(XClu *InstancePtr);
u32 XClu_Get_received_can_o(XClu *InstancePtr);
u32 XClu_Get_received_can_o_vld(XClu *InstancePtr);
void XClu_Set_received_uart_i(XClu *InstancePtr, u32 Data);
u32 XClu_Get_received_uart_i(XClu *InstancePtr);
u32 XClu_Get_received_uart_o(XClu *InstancePtr);
u32 XClu_Get_received_uart_o_vld(XClu *InstancePtr);
void XClu_Set_received_lin_i(XClu *InstancePtr, u32 Data);
u32 XClu_Get_received_lin_i(XClu *InstancePtr);
u32 XClu_Get_received_lin_o(XClu *InstancePtr);
u32 XClu_Get_received_lin_o_vld(XClu *InstancePtr);
void XClu_Set_can_en(XClu *InstancePtr, u32 Data);
u32 XClu_Get_can_en(XClu *InstancePtr);
void XClu_Set_uart_en(XClu *InstancePtr, u32 Data);
u32 XClu_Get_uart_en(XClu *InstancePtr);
void XClu_Set_lin_en(XClu *InstancePtr, u32 Data);
u32 XClu_Get_lin_en(XClu *InstancePtr);

void XClu_InterruptGlobalEnable(XClu *InstancePtr);
void XClu_InterruptGlobalDisable(XClu *InstancePtr);
void XClu_InterruptEnable(XClu *InstancePtr, u32 Mask);
void XClu_InterruptDisable(XClu *InstancePtr, u32 Mask);
void XClu_InterruptClear(XClu *InstancePtr, u32 Mask);
u32 XClu_InterruptGetEnabled(XClu *InstancePtr);
u32 XClu_InterruptGetStatus(XClu *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
