// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// EN
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of can_ptr
//        bit 31~0 - can_ptr[31:0] (Read/Write)
// 0x14 : Data signal of can_ptr
//        bit 31~0 - can_ptr[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of uart_ptr
//        bit 31~0 - uart_ptr[31:0] (Read/Write)
// 0x20 : Data signal of uart_ptr
//        bit 31~0 - uart_ptr[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of lin_ptr
//        bit 31~0 - lin_ptr[31:0] (Read/Write)
// 0x2c : Data signal of lin_ptr
//        bit 31~0 - lin_ptr[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of received_can
//        bit 31~0 - received_can[31:0] (Read)
// 0x38 : Control signal of received_can
//        bit 0  - received_can_ap_vld (Read/COR)
//        others - reserved
// 0x44 : Data signal of received_uart
//        bit 31~0 - received_uart[31:0] (Read)
// 0x48 : Control signal of received_uart
//        bit 0  - received_uart_ap_vld (Read/COR)
//        others - reserved
// 0x54 : Data signal of received_lin
//        bit 31~0 - received_lin[31:0] (Read)
// 0x58 : Control signal of received_lin
//        bit 0  - received_lin_ap_vld (Read/COR)
//        others - reserved
// 0x64 : Data signal of can_en
//        bit 31~0 - can_en[31:0] (Read/Write)
// 0x68 : reserved
// 0x6c : Data signal of uart_en
//        bit 7~0 - uart_en[7:0] (Read/Write)
//        others  - reserved
// 0x70 : reserved
// 0x74 : Data signal of lin_en
//        bit 31~0 - lin_en[31:0] (Read/Write)
// 0x78 : reserved
// 0x7c : Data signal of can_ddr
//        bit 31~0 - can_ddr[31:0] (Read/Write)
// 0x80 : Data signal of can_ddr
//        bit 31~0 - can_ddr[63:32] (Read/Write)
// 0x84 : reserved
// 0x88 : Data signal of uart_ddr
//        bit 31~0 - uart_ddr[31:0] (Read/Write)
// 0x8c : Data signal of uart_ddr
//        bit 31~0 - uart_ddr[63:32] (Read/Write)
// 0x90 : reserved
// 0x94 : Data signal of lin_ddr
//        bit 31~0 - lin_ddr[31:0] (Read/Write)
// 0x98 : Data signal of lin_ddr
//        bit 31~0 - lin_ddr[63:32] (Read/Write)
// 0x9c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCLU_EN_ADDR_AP_CTRL            0x00
#define XCLU_EN_ADDR_GIE                0x04
#define XCLU_EN_ADDR_IER                0x08
#define XCLU_EN_ADDR_ISR                0x0c
#define XCLU_EN_ADDR_CAN_PTR_DATA       0x10
#define XCLU_EN_BITS_CAN_PTR_DATA       64
#define XCLU_EN_ADDR_UART_PTR_DATA      0x1c
#define XCLU_EN_BITS_UART_PTR_DATA      64
#define XCLU_EN_ADDR_LIN_PTR_DATA       0x28
#define XCLU_EN_BITS_LIN_PTR_DATA       64
#define XCLU_EN_ADDR_RECEIVED_CAN_DATA  0x34
#define XCLU_EN_BITS_RECEIVED_CAN_DATA  32
#define XCLU_EN_ADDR_RECEIVED_CAN_CTRL  0x38
#define XCLU_EN_ADDR_RECEIVED_UART_DATA 0x44
#define XCLU_EN_BITS_RECEIVED_UART_DATA 32
#define XCLU_EN_ADDR_RECEIVED_UART_CTRL 0x48
#define XCLU_EN_ADDR_RECEIVED_LIN_DATA  0x54
#define XCLU_EN_BITS_RECEIVED_LIN_DATA  32
#define XCLU_EN_ADDR_RECEIVED_LIN_CTRL  0x58
#define XCLU_EN_ADDR_CAN_EN_DATA        0x64
#define XCLU_EN_BITS_CAN_EN_DATA        32
#define XCLU_EN_ADDR_UART_EN_DATA       0x6c
#define XCLU_EN_BITS_UART_EN_DATA       8
#define XCLU_EN_ADDR_LIN_EN_DATA        0x74
#define XCLU_EN_BITS_LIN_EN_DATA        32
#define XCLU_EN_ADDR_CAN_DDR_DATA       0x7c
#define XCLU_EN_BITS_CAN_DDR_DATA       64
#define XCLU_EN_ADDR_UART_DDR_DATA      0x88
#define XCLU_EN_BITS_UART_DDR_DATA      64
#define XCLU_EN_ADDR_LIN_DDR_DATA       0x94
#define XCLU_EN_BITS_LIN_DDR_DATA       64

