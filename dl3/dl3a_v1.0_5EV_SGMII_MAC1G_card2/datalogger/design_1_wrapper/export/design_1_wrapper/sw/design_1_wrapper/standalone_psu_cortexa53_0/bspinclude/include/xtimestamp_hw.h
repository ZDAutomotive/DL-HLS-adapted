// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// ts_base
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - enable ap_done interrupt (Read/Write)
//        bit 1  - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - ap_done (COR/TOW)
//        bit 1  - ap_ready (COR/TOW)
//        others - reserved
// 0x10 : Data signal of ts_base
//        bit 31~0 - ts_base[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of timestamp_high
//        bit 31~0 - timestamp_high[31:0] (Read)
// 0x1c : Control signal of timestamp_high
//        bit 0  - timestamp_high_ap_vld (Read/COR)
//        others - reserved
// 0x28 : Data signal of timestamp_low
//        bit 31~0 - timestamp_low[31:0] (Read)
// 0x2c : Control signal of timestamp_low
//        bit 0  - timestamp_low_ap_vld (Read/COR)
//        others - reserved
// 0x38 : Data signal of ts_base_10ns
//        bit 31~0 - ts_base_10ns[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of timestamp_ps
//        bit 31~0 - timestamp_ps[31:0] (Read)
// 0x44 : Data signal of timestamp_ps
//        bit 31~0 - timestamp_ps[63:32] (Read)
// 0x48 : Control signal of timestamp_ps
//        bit 0  - timestamp_ps_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XTIMESTAMP_TS_BASE_ADDR_AP_CTRL             0x00
#define XTIMESTAMP_TS_BASE_ADDR_GIE                 0x04
#define XTIMESTAMP_TS_BASE_ADDR_IER                 0x08
#define XTIMESTAMP_TS_BASE_ADDR_ISR                 0x0c
#define XTIMESTAMP_TS_BASE_ADDR_TS_BASE_DATA        0x10
#define XTIMESTAMP_TS_BASE_BITS_TS_BASE_DATA        32
#define XTIMESTAMP_TS_BASE_ADDR_TIMESTAMP_HIGH_DATA 0x18
#define XTIMESTAMP_TS_BASE_BITS_TIMESTAMP_HIGH_DATA 32
#define XTIMESTAMP_TS_BASE_ADDR_TIMESTAMP_HIGH_CTRL 0x1c
#define XTIMESTAMP_TS_BASE_ADDR_TIMESTAMP_LOW_DATA  0x28
#define XTIMESTAMP_TS_BASE_BITS_TIMESTAMP_LOW_DATA  32
#define XTIMESTAMP_TS_BASE_ADDR_TIMESTAMP_LOW_CTRL  0x2c
#define XTIMESTAMP_TS_BASE_ADDR_TS_BASE_10NS_DATA   0x38
#define XTIMESTAMP_TS_BASE_BITS_TS_BASE_10NS_DATA   32
#define XTIMESTAMP_TS_BASE_ADDR_TIMESTAMP_PS_DATA   0x40
#define XTIMESTAMP_TS_BASE_BITS_TIMESTAMP_PS_DATA   64
#define XTIMESTAMP_TS_BASE_ADDR_TIMESTAMP_PS_CTRL   0x48

