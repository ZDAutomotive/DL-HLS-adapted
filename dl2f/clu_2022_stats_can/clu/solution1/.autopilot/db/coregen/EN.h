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
// 0x14 : reserved
// 0x18 : Data signal of uart_ptr
//        bit 31~0 - uart_ptr[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of lin_ptr
//        bit 31~0 - lin_ptr[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of can_10_received
//        bit 31~0 - can_10_received[31:0] (Read)
// 0x2c : Control signal of can_10_received
//        bit 0  - can_10_received_ap_vld (Read/COR)
//        others - reserved
// 0x30 : Data signal of received_uart
//        bit 31~0 - received_uart[31:0] (Read)
// 0x34 : Control signal of received_uart
//        bit 0  - received_uart_ap_vld (Read/COR)
//        others - reserved
// 0x38 : Data signal of can_11_received
//        bit 31~0 - can_11_received[31:0] (Read)
// 0x3c : Control signal of can_11_received
//        bit 0  - can_11_received_ap_vld (Read/COR)
//        others - reserved
// 0x40 : Data signal of received_lin
//        bit 31~0 - received_lin[31:0] (Read)
// 0x44 : Control signal of received_lin
//        bit 0  - received_lin_ap_vld (Read/COR)
//        others - reserved
// 0x48 : Data signal of received_can
//        bit 31~0 - received_can[31:0] (Read)
// 0x4c : Control signal of received_can
//        bit 0  - received_can_ap_vld (Read/COR)
//        others - reserved
// 0x50 : Data signal of can_en
//        bit 31~0 - can_en[31:0] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of can_0_received
//        bit 31~0 - can_0_received[31:0] (Read)
// 0x5c : Control signal of can_0_received
//        bit 0  - can_0_received_ap_vld (Read/COR)
//        others - reserved
// 0x60 : Data signal of can_1_received
//        bit 31~0 - can_1_received[31:0] (Read)
// 0x64 : Control signal of can_1_received
//        bit 0  - can_1_received_ap_vld (Read/COR)
//        others - reserved
// 0x68 : Data signal of can_2_received
//        bit 31~0 - can_2_received[31:0] (Read)
// 0x6c : Control signal of can_2_received
//        bit 0  - can_2_received_ap_vld (Read/COR)
//        others - reserved
// 0x70 : Data signal of can_3_received
//        bit 31~0 - can_3_received[31:0] (Read)
// 0x74 : Control signal of can_3_received
//        bit 0  - can_3_received_ap_vld (Read/COR)
//        others - reserved
// 0x78 : Data signal of can_4_received
//        bit 31~0 - can_4_received[31:0] (Read)
// 0x7c : Control signal of can_4_received
//        bit 0  - can_4_received_ap_vld (Read/COR)
//        others - reserved
// 0x80 : Data signal of can_5_received
//        bit 31~0 - can_5_received[31:0] (Read)
// 0x84 : Control signal of can_5_received
//        bit 0  - can_5_received_ap_vld (Read/COR)
//        others - reserved
// 0x88 : Data signal of can_6_received
//        bit 31~0 - can_6_received[31:0] (Read)
// 0x8c : Control signal of can_6_received
//        bit 0  - can_6_received_ap_vld (Read/COR)
//        others - reserved
// 0x90 : Data signal of can_7_received
//        bit 31~0 - can_7_received[31:0] (Read)
// 0x94 : Control signal of can_7_received
//        bit 0  - can_7_received_ap_vld (Read/COR)
//        others - reserved
// 0x98 : Data signal of can_8_received
//        bit 31~0 - can_8_received[31:0] (Read)
// 0x9c : Control signal of can_8_received
//        bit 0  - can_8_received_ap_vld (Read/COR)
//        others - reserved
// 0xa0 : Data signal of can_9_received
//        bit 31~0 - can_9_received[31:0] (Read)
// 0xa4 : Control signal of can_9_received
//        bit 0  - can_9_received_ap_vld (Read/COR)
//        others - reserved
// 0xa8 : Data signal of droped
//        bit 31~0 - droped[31:0] (Read/Write)
// 0xac : reserved
// 0xb0 : Data signal of uart_en
//        bit 7~0 - uart_en[7:0] (Read/Write)
//        others  - reserved
// 0xb4 : reserved
// 0xb8 : Data signal of lin_en
//        bit 31~0 - lin_en[31:0] (Read/Write)
// 0xbc : reserved
// 0xc0 : Data signal of can_ddr
//        bit 31~0 - can_ddr[31:0] (Read/Write)
// 0xc4 : reserved
// 0xc8 : Data signal of uart_ddr
//        bit 31~0 - uart_ddr[31:0] (Read/Write)
// 0xcc : reserved
// 0xd0 : Data signal of lin_ddr
//        bit 31~0 - lin_ddr[31:0] (Read/Write)
// 0xd4 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define EN_ADDR_AP_CTRL              0x00
#define EN_ADDR_GIE                  0x04
#define EN_ADDR_IER                  0x08
#define EN_ADDR_ISR                  0x0c
#define EN_ADDR_CAN_PTR_DATA         0x10
#define EN_BITS_CAN_PTR_DATA         32
#define EN_ADDR_UART_PTR_DATA        0x18
#define EN_BITS_UART_PTR_DATA        32
#define EN_ADDR_LIN_PTR_DATA         0x20
#define EN_BITS_LIN_PTR_DATA         32
#define EN_ADDR_CAN_10_RECEIVED_DATA 0x28
#define EN_BITS_CAN_10_RECEIVED_DATA 32
#define EN_ADDR_CAN_10_RECEIVED_CTRL 0x2c
#define EN_ADDR_RECEIVED_UART_DATA   0x30
#define EN_BITS_RECEIVED_UART_DATA   32
#define EN_ADDR_RECEIVED_UART_CTRL   0x34
#define EN_ADDR_CAN_11_RECEIVED_DATA 0x38
#define EN_BITS_CAN_11_RECEIVED_DATA 32
#define EN_ADDR_CAN_11_RECEIVED_CTRL 0x3c
#define EN_ADDR_RECEIVED_LIN_DATA    0x40
#define EN_BITS_RECEIVED_LIN_DATA    32
#define EN_ADDR_RECEIVED_LIN_CTRL    0x44
#define EN_ADDR_RECEIVED_CAN_DATA    0x48
#define EN_BITS_RECEIVED_CAN_DATA    32
#define EN_ADDR_RECEIVED_CAN_CTRL    0x4c
#define EN_ADDR_CAN_EN_DATA          0x50
#define EN_BITS_CAN_EN_DATA          32
#define EN_ADDR_CAN_0_RECEIVED_DATA  0x58
#define EN_BITS_CAN_0_RECEIVED_DATA  32
#define EN_ADDR_CAN_0_RECEIVED_CTRL  0x5c
#define EN_ADDR_CAN_1_RECEIVED_DATA  0x60
#define EN_BITS_CAN_1_RECEIVED_DATA  32
#define EN_ADDR_CAN_1_RECEIVED_CTRL  0x64
#define EN_ADDR_CAN_2_RECEIVED_DATA  0x68
#define EN_BITS_CAN_2_RECEIVED_DATA  32
#define EN_ADDR_CAN_2_RECEIVED_CTRL  0x6c
#define EN_ADDR_CAN_3_RECEIVED_DATA  0x70
#define EN_BITS_CAN_3_RECEIVED_DATA  32
#define EN_ADDR_CAN_3_RECEIVED_CTRL  0x74
#define EN_ADDR_CAN_4_RECEIVED_DATA  0x78
#define EN_BITS_CAN_4_RECEIVED_DATA  32
#define EN_ADDR_CAN_4_RECEIVED_CTRL  0x7c
#define EN_ADDR_CAN_5_RECEIVED_DATA  0x80
#define EN_BITS_CAN_5_RECEIVED_DATA  32
#define EN_ADDR_CAN_5_RECEIVED_CTRL  0x84
#define EN_ADDR_CAN_6_RECEIVED_DATA  0x88
#define EN_BITS_CAN_6_RECEIVED_DATA  32
#define EN_ADDR_CAN_6_RECEIVED_CTRL  0x8c
#define EN_ADDR_CAN_7_RECEIVED_DATA  0x90
#define EN_BITS_CAN_7_RECEIVED_DATA  32
#define EN_ADDR_CAN_7_RECEIVED_CTRL  0x94
#define EN_ADDR_CAN_8_RECEIVED_DATA  0x98
#define EN_BITS_CAN_8_RECEIVED_DATA  32
#define EN_ADDR_CAN_8_RECEIVED_CTRL  0x9c
#define EN_ADDR_CAN_9_RECEIVED_DATA  0xa0
#define EN_BITS_CAN_9_RECEIVED_DATA  32
#define EN_ADDR_CAN_9_RECEIVED_CTRL  0xa4
#define EN_ADDR_DROPED_DATA          0xa8
#define EN_BITS_DROPED_DATA          32
#define EN_ADDR_UART_EN_DATA         0xb0
#define EN_BITS_UART_EN_DATA         8
#define EN_ADDR_LIN_EN_DATA          0xb8
#define EN_BITS_LIN_EN_DATA          32
#define EN_ADDR_CAN_DDR_DATA         0xc0
#define EN_BITS_CAN_DDR_DATA         32
#define EN_ADDR_UART_DDR_DATA        0xc8
#define EN_BITS_UART_DDR_DATA        32
#define EN_ADDR_LIN_DDR_DATA         0xd0
#define EN_BITS_LIN_DDR_DATA         32
