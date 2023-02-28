// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
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
// 0x34 : Data signal of can_ddr
//        bit 31~0 - can_ddr[31:0] (Read/Write)
// 0x38 : Data signal of can_ddr
//        bit 31~0 - can_ddr[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of uart_ddr
//        bit 31~0 - uart_ddr[31:0] (Read/Write)
// 0x44 : Data signal of uart_ddr
//        bit 31~0 - uart_ddr[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of lin_ddr
//        bit 31~0 - lin_ddr[31:0] (Read/Write)
// 0x50 : Data signal of lin_ddr
//        bit 31~0 - lin_ddr[63:32] (Read/Write)
// 0x54 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCLU_CONTROL_ADDR_CAN_PTR_DATA  0x10
#define XCLU_CONTROL_BITS_CAN_PTR_DATA  64
#define XCLU_CONTROL_ADDR_UART_PTR_DATA 0x1c
#define XCLU_CONTROL_BITS_UART_PTR_DATA 64
#define XCLU_CONTROL_ADDR_LIN_PTR_DATA  0x28
#define XCLU_CONTROL_BITS_LIN_PTR_DATA  64
#define XCLU_CONTROL_ADDR_CAN_DDR_DATA  0x34
#define XCLU_CONTROL_BITS_CAN_DDR_DATA  64
#define XCLU_CONTROL_ADDR_UART_DDR_DATA 0x40
#define XCLU_CONTROL_BITS_UART_DDR_DATA 64
#define XCLU_CONTROL_ADDR_LIN_DDR_DATA  0x4c
#define XCLU_CONTROL_BITS_LIN_DDR_DATA  64

// EN
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
// 0x10 : Data signal of received_can_i
//        bit 31~0 - received_can_i[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of received_can_o
//        bit 31~0 - received_can_o[31:0] (Read)
// 0x1c : Control signal of received_can_o
//        bit 0  - received_can_o_ap_vld (Read/COR)
//        others - reserved
// 0x20 : Data signal of received_uart_i
//        bit 31~0 - received_uart_i[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of received_uart_o
//        bit 31~0 - received_uart_o[31:0] (Read)
// 0x2c : Control signal of received_uart_o
//        bit 0  - received_uart_o_ap_vld (Read/COR)
//        others - reserved
// 0x30 : Data signal of received_lin_i
//        bit 31~0 - received_lin_i[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of received_lin_o
//        bit 31~0 - received_lin_o[31:0] (Read)
// 0x3c : Control signal of received_lin_o
//        bit 0  - received_lin_o_ap_vld (Read/COR)
//        others - reserved
// 0x40 : Data signal of can_en
//        bit 31~0 - can_en[31:0] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of uart_en
//        bit 7~0 - uart_en[7:0] (Read/Write)
//        others  - reserved
// 0x4c : reserved
// 0x50 : Data signal of lin_en
//        bit 31~0 - lin_en[31:0] (Read/Write)
// 0x54 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCLU_EN_ADDR_AP_CTRL              0x00
#define XCLU_EN_ADDR_GIE                  0x04
#define XCLU_EN_ADDR_IER                  0x08
#define XCLU_EN_ADDR_ISR                  0x0c
#define XCLU_EN_ADDR_RECEIVED_CAN_I_DATA  0x10
#define XCLU_EN_BITS_RECEIVED_CAN_I_DATA  32
#define XCLU_EN_ADDR_RECEIVED_CAN_O_DATA  0x18
#define XCLU_EN_BITS_RECEIVED_CAN_O_DATA  32
#define XCLU_EN_ADDR_RECEIVED_CAN_O_CTRL  0x1c
#define XCLU_EN_ADDR_RECEIVED_UART_I_DATA 0x20
#define XCLU_EN_BITS_RECEIVED_UART_I_DATA 32
#define XCLU_EN_ADDR_RECEIVED_UART_O_DATA 0x28
#define XCLU_EN_BITS_RECEIVED_UART_O_DATA 32
#define XCLU_EN_ADDR_RECEIVED_UART_O_CTRL 0x2c
#define XCLU_EN_ADDR_RECEIVED_LIN_I_DATA  0x30
#define XCLU_EN_BITS_RECEIVED_LIN_I_DATA  32
#define XCLU_EN_ADDR_RECEIVED_LIN_O_DATA  0x38
#define XCLU_EN_BITS_RECEIVED_LIN_O_DATA  32
#define XCLU_EN_ADDR_RECEIVED_LIN_O_CTRL  0x3c
#define XCLU_EN_ADDR_CAN_EN_DATA          0x40
#define XCLU_EN_BITS_CAN_EN_DATA          32
#define XCLU_EN_ADDR_UART_EN_DATA         0x48
#define XCLU_EN_BITS_UART_EN_DATA         8
#define XCLU_EN_ADDR_LIN_EN_DATA          0x50
#define XCLU_EN_BITS_LIN_EN_DATA          32

