// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XTIMESTAMP_H
#define XTIMESTAMP_H

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
#include "xtimestamp_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Ts_base_BaseAddress;
} XTimestamp_Config;
#endif

typedef struct {
    u64 Ts_base_BaseAddress;
    u32 IsReady;
} XTimestamp;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XTimestamp_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XTimestamp_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XTimestamp_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XTimestamp_ReadReg(BaseAddress, RegOffset) \
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
int XTimestamp_Initialize(XTimestamp *InstancePtr, u16 DeviceId);
XTimestamp_Config* XTimestamp_LookupConfig(u16 DeviceId);
int XTimestamp_CfgInitialize(XTimestamp *InstancePtr, XTimestamp_Config *ConfigPtr);
#else
int XTimestamp_Initialize(XTimestamp *InstancePtr, const char* InstanceName);
int XTimestamp_Release(XTimestamp *InstancePtr);
#endif

void XTimestamp_Start(XTimestamp *InstancePtr);
u32 XTimestamp_IsDone(XTimestamp *InstancePtr);
u32 XTimestamp_IsIdle(XTimestamp *InstancePtr);
u32 XTimestamp_IsReady(XTimestamp *InstancePtr);
void XTimestamp_EnableAutoRestart(XTimestamp *InstancePtr);
void XTimestamp_DisableAutoRestart(XTimestamp *InstancePtr);

void XTimestamp_Set_ts_base(XTimestamp *InstancePtr, u32 Data);
u32 XTimestamp_Get_ts_base(XTimestamp *InstancePtr);
u32 XTimestamp_Get_timestamp_high(XTimestamp *InstancePtr);
u32 XTimestamp_Get_timestamp_high_vld(XTimestamp *InstancePtr);
u32 XTimestamp_Get_timestamp_low(XTimestamp *InstancePtr);
u32 XTimestamp_Get_timestamp_low_vld(XTimestamp *InstancePtr);
void XTimestamp_Set_ts_base_10ns(XTimestamp *InstancePtr, u32 Data);
u32 XTimestamp_Get_ts_base_10ns(XTimestamp *InstancePtr);
u64 XTimestamp_Get_timestamp_ps(XTimestamp *InstancePtr);
u32 XTimestamp_Get_timestamp_ps_vld(XTimestamp *InstancePtr);

void XTimestamp_InterruptGlobalEnable(XTimestamp *InstancePtr);
void XTimestamp_InterruptGlobalDisable(XTimestamp *InstancePtr);
void XTimestamp_InterruptEnable(XTimestamp *InstancePtr, u32 Mask);
void XTimestamp_InterruptDisable(XTimestamp *InstancePtr, u32 Mask);
void XTimestamp_InterruptClear(XTimestamp *InstancePtr, u32 Mask);
u32 XTimestamp_InterruptGetEnabled(XTimestamp *InstancePtr);
u32 XTimestamp_InterruptGetStatus(XTimestamp *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
