// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// axilites
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read/COR)
//         bit 4  - ap_continue (Read/Write/SC)
//         bit 7  - auto_restart (Read/Write)
//         bit 9  - interrupt (Read)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0 - enable ap_done interrupt (Read/Write)
//         bit 1 - enable ap_ready interrupt (Read/Write)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0 - ap_done (Read/TOW)
//         bit 1 - ap_ready (Read/TOW)
//         others - reserved
// 0x010 : Data signal of fifo
//         bit 31~0 - fifo[31:0] (Read/Write)
// 0x014 : Data signal of fifo
//         bit 31~0 - fifo[63:32] (Read/Write)
// 0x018 : reserved
// 0x01c : Data signal of fifo_axi_full_offset
//         bit 31~0 - fifo_axi_full_offset[31:0] (Read/Write)
// 0x020 : Data signal of fifo_axi_full_offset
//         bit 31~0 - fifo_axi_full_offset[63:32] (Read/Write)
// 0x024 : reserved
// 0x028 : Data signal of ddr
//         bit 31~0 - ddr[31:0] (Read/Write)
// 0x02c : Data signal of ddr
//         bit 31~0 - ddr[63:32] (Read/Write)
// 0x030 : reserved
// 0x034 : Data signal of driver
//         bit 31~0 - driver[31:0] (Read/Write)
// 0x038 : Data signal of driver
//         bit 31~0 - driver[63:32] (Read/Write)
// 0x03c : reserved
// 0x040 : Data signal of status
//         bit 31~0 - status[31:0] (Read/Write)
// 0x044 : reserved
// 0x048 : Data signal of writeStatus
//         bit 15~0 - writeStatus[15:0] (Read/Write)
//         others   - reserved
// 0x04c : reserved
// 0x050 : Data signal of logger_vlan_enable_mask
//         bit 31~0 - logger_vlan_enable_mask[31:0] (Read/Write)
// 0x054 : reserved
// 0x058 : Data signal of vlan100_received
//         bit 31~0 - vlan100_received[31:0] (Read)
// 0x05c : Control signal of vlan100_received
//         bit 0  - vlan100_received_ap_vld (Read/COR)
//         others - reserved
// 0x060 : Data signal of vlan101_received
//         bit 31~0 - vlan101_received[31:0] (Read)
// 0x064 : Control signal of vlan101_received
//         bit 0  - vlan101_received_ap_vld (Read/COR)
//         others - reserved
// 0x068 : Data signal of vlan102_received
//         bit 31~0 - vlan102_received[31:0] (Read)
// 0x06c : Control signal of vlan102_received
//         bit 0  - vlan102_received_ap_vld (Read/COR)
//         others - reserved
// 0x070 : Data signal of vlan103_received
//         bit 31~0 - vlan103_received[31:0] (Read)
// 0x074 : Control signal of vlan103_received
//         bit 0  - vlan103_received_ap_vld (Read/COR)
//         others - reserved
// 0x078 : Data signal of vlan104_received
//         bit 31~0 - vlan104_received[31:0] (Read)
// 0x07c : Control signal of vlan104_received
//         bit 0  - vlan104_received_ap_vld (Read/COR)
//         others - reserved
// 0x080 : Data signal of vlan105_received
//         bit 31~0 - vlan105_received[31:0] (Read)
// 0x084 : Control signal of vlan105_received
//         bit 0  - vlan105_received_ap_vld (Read/COR)
//         others - reserved
// 0x088 : Data signal of vlan106_received
//         bit 31~0 - vlan106_received[31:0] (Read)
// 0x08c : Control signal of vlan106_received
//         bit 0  - vlan106_received_ap_vld (Read/COR)
//         others - reserved
// 0x090 : Data signal of vlan107_received
//         bit 31~0 - vlan107_received[31:0] (Read)
// 0x094 : Control signal of vlan107_received
//         bit 0  - vlan107_received_ap_vld (Read/COR)
//         others - reserved
// 0x098 : Data signal of vlan108_received
//         bit 31~0 - vlan108_received[31:0] (Read)
// 0x09c : Control signal of vlan108_received
//         bit 0  - vlan108_received_ap_vld (Read/COR)
//         others - reserved
// 0x0a0 : Data signal of vlan109_received
//         bit 31~0 - vlan109_received[31:0] (Read)
// 0x0a4 : Control signal of vlan109_received
//         bit 0  - vlan109_received_ap_vld (Read/COR)
//         others - reserved
// 0x0a8 : Data signal of vlan110_received
//         bit 31~0 - vlan110_received[31:0] (Read)
// 0x0ac : Control signal of vlan110_received
//         bit 0  - vlan110_received_ap_vld (Read/COR)
//         others - reserved
// 0x0b0 : Data signal of vlan111_received
//         bit 31~0 - vlan111_received[31:0] (Read)
// 0x0b4 : Control signal of vlan111_received
//         bit 0  - vlan111_received_ap_vld (Read/COR)
//         others - reserved
// 0x0b8 : Data signal of vlan112_received
//         bit 31~0 - vlan112_received[31:0] (Read)
// 0x0bc : Control signal of vlan112_received
//         bit 0  - vlan112_received_ap_vld (Read/COR)
//         others - reserved
// 0x0c0 : Data signal of vlan113_received
//         bit 31~0 - vlan113_received[31:0] (Read)
// 0x0c4 : Control signal of vlan113_received
//         bit 0  - vlan113_received_ap_vld (Read/COR)
//         others - reserved
// 0x0c8 : Data signal of vlan114_received
//         bit 31~0 - vlan114_received[31:0] (Read)
// 0x0cc : Control signal of vlan114_received
//         bit 0  - vlan114_received_ap_vld (Read/COR)
//         others - reserved
// 0x0d0 : Data signal of vlan115_received
//         bit 31~0 - vlan115_received[31:0] (Read)
// 0x0d4 : Control signal of vlan115_received
//         bit 0  - vlan115_received_ap_vld (Read/COR)
//         others - reserved
// 0x0d8 : Data signal of vlan116_received
//         bit 31~0 - vlan116_received[31:0] (Read)
// 0x0dc : Control signal of vlan116_received
//         bit 0  - vlan116_received_ap_vld (Read/COR)
//         others - reserved
// 0x0e0 : Data signal of vlan117_received
//         bit 31~0 - vlan117_received[31:0] (Read)
// 0x0e4 : Control signal of vlan117_received
//         bit 0  - vlan117_received_ap_vld (Read/COR)
//         others - reserved
// 0x0e8 : Data signal of vlan118_received
//         bit 31~0 - vlan118_received[31:0] (Read)
// 0x0ec : Control signal of vlan118_received
//         bit 0  - vlan118_received_ap_vld (Read/COR)
//         others - reserved
// 0x0f0 : Data signal of vlan119_received
//         bit 31~0 - vlan119_received[31:0] (Read)
// 0x0f4 : Control signal of vlan119_received
//         bit 0  - vlan119_received_ap_vld (Read/COR)
//         others - reserved
// 0x0f8 : Data signal of vlan120_received
//         bit 31~0 - vlan120_received[31:0] (Read)
// 0x0fc : Control signal of vlan120_received
//         bit 0  - vlan120_received_ap_vld (Read/COR)
//         others - reserved
// 0x110 : Data signal of vlan121_received
//         bit 31~0 - vlan121_received[31:0] (Read)
// 0x114 : Control signal of vlan121_received
//         bit 0  - vlan121_received_ap_vld (Read/COR)
//         others - reserved
// 0x118 : Data signal of vlan122_received
//         bit 31~0 - vlan122_received[31:0] (Read)
// 0x11c : Control signal of vlan122_received
//         bit 0  - vlan122_received_ap_vld (Read/COR)
//         others - reserved
// 0x120 : Data signal of vlan123_received
//         bit 31~0 - vlan123_received[31:0] (Read)
// 0x124 : Control signal of vlan123_received
//         bit 0  - vlan123_received_ap_vld (Read/COR)
//         others - reserved
// 0x128 : Data signal of vlan124_received
//         bit 31~0 - vlan124_received[31:0] (Read)
// 0x12c : Control signal of vlan124_received
//         bit 0  - vlan124_received_ap_vld (Read/COR)
//         others - reserved
// 0x130 : Data signal of vlan125_received
//         bit 31~0 - vlan125_received[31:0] (Read)
// 0x134 : Control signal of vlan125_received
//         bit 0  - vlan125_received_ap_vld (Read/COR)
//         others - reserved
// 0x138 : Data signal of vlan126_received
//         bit 31~0 - vlan126_received[31:0] (Read)
// 0x13c : Control signal of vlan126_received
//         bit 0  - vlan126_received_ap_vld (Read/COR)
//         others - reserved
// 0x140 : Data signal of vlan127_received
//         bit 31~0 - vlan127_received[31:0] (Read)
// 0x144 : Control signal of vlan127_received
//         bit 0  - vlan127_received_ap_vld (Read/COR)
//         others - reserved
// 0x148 : Data signal of vlan128_received
//         bit 31~0 - vlan128_received[31:0] (Read)
// 0x14c : Control signal of vlan128_received
//         bit 0  - vlan128_received_ap_vld (Read/COR)
//         others - reserved
// 0x150 : Data signal of vlan129_received
//         bit 31~0 - vlan129_received[31:0] (Read)
// 0x154 : Control signal of vlan129_received
//         bit 0  - vlan129_received_ap_vld (Read/COR)
//         others - reserved
// 0x158 : Data signal of droped
//         bit 31~0 - droped[31:0] (Read)
// 0x15c : Control signal of droped
//         bit 0  - droped_ap_vld (Read/COR)
//         others - reserved
// 0x160 : Data signal of multicast_recv_enable
//         bit 31~0 - multicast_recv_enable[31:0] (Read/Write)
// 0x164 : reserved
// 0x168 : Data signal of unicast_filter_enable
//         bit 31~0 - unicast_filter_enable[31:0] (Read/Write)
// 0x16c : reserved
// 0x170 : Data signal of unicast_vlan100_macaddr_lsb
//         bit 31~0 - unicast_vlan100_macaddr_lsb[31:0] (Read/Write)
// 0x174 : reserved
// 0x178 : Data signal of unicast_vlan100_macaddr_msb
//         bit 31~0 - unicast_vlan100_macaddr_msb[31:0] (Read/Write)
// 0x17c : reserved
// 0x180 : Data signal of unicast_vlan101_macaddr_lsb
//         bit 31~0 - unicast_vlan101_macaddr_lsb[31:0] (Read/Write)
// 0x184 : reserved
// 0x188 : Data signal of unicast_vlan101_macaddr_msb
//         bit 31~0 - unicast_vlan101_macaddr_msb[31:0] (Read/Write)
// 0x18c : reserved
// 0x190 : Data signal of unicast_vlan102_macaddr_lsb
//         bit 31~0 - unicast_vlan102_macaddr_lsb[31:0] (Read/Write)
// 0x194 : reserved
// 0x198 : Data signal of unicast_vlan102_macaddr_msb
//         bit 31~0 - unicast_vlan102_macaddr_msb[31:0] (Read/Write)
// 0x19c : reserved
// 0x1a0 : Data signal of unicast_vlan103_macaddr_lsb
//         bit 31~0 - unicast_vlan103_macaddr_lsb[31:0] (Read/Write)
// 0x1a4 : reserved
// 0x1a8 : Data signal of unicast_vlan103_macaddr_msb
//         bit 31~0 - unicast_vlan103_macaddr_msb[31:0] (Read/Write)
// 0x1ac : reserved
// 0x1b0 : Data signal of unicast_vlan104_macaddr_lsb
//         bit 31~0 - unicast_vlan104_macaddr_lsb[31:0] (Read/Write)
// 0x1b4 : reserved
// 0x1b8 : Data signal of unicast_vlan104_macaddr_msb
//         bit 31~0 - unicast_vlan104_macaddr_msb[31:0] (Read/Write)
// 0x1bc : reserved
// 0x1c0 : Data signal of unicast_vlan105_macaddr_lsb
//         bit 31~0 - unicast_vlan105_macaddr_lsb[31:0] (Read/Write)
// 0x1c4 : reserved
// 0x1c8 : Data signal of unicast_vlan105_macaddr_msb
//         bit 31~0 - unicast_vlan105_macaddr_msb[31:0] (Read/Write)
// 0x1cc : reserved
// 0x1d0 : Data signal of unicast_vlan106_macaddr_lsb
//         bit 31~0 - unicast_vlan106_macaddr_lsb[31:0] (Read/Write)
// 0x1d4 : reserved
// 0x1d8 : Data signal of unicast_vlan106_macaddr_msb
//         bit 31~0 - unicast_vlan106_macaddr_msb[31:0] (Read/Write)
// 0x1dc : reserved
// 0x1e0 : Data signal of unicast_vlan107_macaddr_lsb
//         bit 31~0 - unicast_vlan107_macaddr_lsb[31:0] (Read/Write)
// 0x1e4 : reserved
// 0x1e8 : Data signal of unicast_vlan107_macaddr_msb
//         bit 31~0 - unicast_vlan107_macaddr_msb[31:0] (Read/Write)
// 0x1ec : reserved
// 0x1f0 : Data signal of unicast_vlan108_macaddr_lsb
//         bit 31~0 - unicast_vlan108_macaddr_lsb[31:0] (Read/Write)
// 0x1f4 : reserved
// 0x1f8 : Data signal of unicast_vlan108_macaddr_msb
//         bit 31~0 - unicast_vlan108_macaddr_msb[31:0] (Read/Write)
// 0x1fc : reserved
// 0x200 : Data signal of unicast_vlan109_macaddr_lsb
//         bit 31~0 - unicast_vlan109_macaddr_lsb[31:0] (Read/Write)
// 0x204 : reserved
// 0x208 : Data signal of unicast_vlan109_macaddr_msb
//         bit 31~0 - unicast_vlan109_macaddr_msb[31:0] (Read/Write)
// 0x20c : reserved
// 0x210 : Data signal of unicast_vlan110_macaddr_lsb
//         bit 31~0 - unicast_vlan110_macaddr_lsb[31:0] (Read/Write)
// 0x214 : reserved
// 0x218 : Data signal of unicast_vlan110_macaddr_msb
//         bit 31~0 - unicast_vlan110_macaddr_msb[31:0] (Read/Write)
// 0x21c : reserved
// 0x220 : Data signal of unicast_vlan111_macaddr_lsb
//         bit 31~0 - unicast_vlan111_macaddr_lsb[31:0] (Read/Write)
// 0x224 : reserved
// 0x228 : Data signal of unicast_vlan111_macaddr_msb
//         bit 31~0 - unicast_vlan111_macaddr_msb[31:0] (Read/Write)
// 0x22c : reserved
// 0x230 : Data signal of unicast_vlan112_macaddr_lsb
//         bit 31~0 - unicast_vlan112_macaddr_lsb[31:0] (Read/Write)
// 0x234 : reserved
// 0x238 : Data signal of unicast_vlan112_macaddr_msb
//         bit 31~0 - unicast_vlan112_macaddr_msb[31:0] (Read/Write)
// 0x23c : reserved
// 0x240 : Data signal of unicast_vlan113_macaddr_lsb
//         bit 31~0 - unicast_vlan113_macaddr_lsb[31:0] (Read/Write)
// 0x244 : reserved
// 0x248 : Data signal of unicast_vlan113_macaddr_msb
//         bit 31~0 - unicast_vlan113_macaddr_msb[31:0] (Read/Write)
// 0x24c : reserved
// 0x250 : Data signal of unicast_vlan114_macaddr_lsb
//         bit 31~0 - unicast_vlan114_macaddr_lsb[31:0] (Read/Write)
// 0x254 : reserved
// 0x258 : Data signal of unicast_vlan114_macaddr_msb
//         bit 31~0 - unicast_vlan114_macaddr_msb[31:0] (Read/Write)
// 0x25c : reserved
// 0x260 : Data signal of unicast_vlan115_macaddr_lsb
//         bit 31~0 - unicast_vlan115_macaddr_lsb[31:0] (Read/Write)
// 0x264 : reserved
// 0x268 : Data signal of unicast_vlan115_macaddr_msb
//         bit 31~0 - unicast_vlan115_macaddr_msb[31:0] (Read/Write)
// 0x26c : reserved
// 0x270 : Data signal of unicast_vlan116_macaddr_lsb
//         bit 31~0 - unicast_vlan116_macaddr_lsb[31:0] (Read/Write)
// 0x274 : reserved
// 0x278 : Data signal of unicast_vlan116_macaddr_msb
//         bit 31~0 - unicast_vlan116_macaddr_msb[31:0] (Read/Write)
// 0x27c : reserved
// 0x280 : Data signal of unicast_vlan117_macaddr_lsb
//         bit 31~0 - unicast_vlan117_macaddr_lsb[31:0] (Read/Write)
// 0x284 : reserved
// 0x288 : Data signal of unicast_vlan117_macaddr_msb
//         bit 31~0 - unicast_vlan117_macaddr_msb[31:0] (Read/Write)
// 0x28c : reserved
// 0x290 : Data signal of unicast_vlan118_macaddr_lsb
//         bit 31~0 - unicast_vlan118_macaddr_lsb[31:0] (Read/Write)
// 0x294 : reserved
// 0x298 : Data signal of unicast_vlan118_macaddr_msb
//         bit 31~0 - unicast_vlan118_macaddr_msb[31:0] (Read/Write)
// 0x29c : reserved
// 0x2a0 : Data signal of unicast_vlan119_macaddr_lsb
//         bit 31~0 - unicast_vlan119_macaddr_lsb[31:0] (Read/Write)
// 0x2a4 : reserved
// 0x2a8 : Data signal of unicast_vlan119_macaddr_msb
//         bit 31~0 - unicast_vlan119_macaddr_msb[31:0] (Read/Write)
// 0x2ac : reserved
// 0x2b0 : Data signal of unicast_vlan120_macaddr_lsb
//         bit 31~0 - unicast_vlan120_macaddr_lsb[31:0] (Read/Write)
// 0x2b4 : reserved
// 0x2b8 : Data signal of unicast_vlan120_macaddr_msb
//         bit 31~0 - unicast_vlan120_macaddr_msb[31:0] (Read/Write)
// 0x2bc : reserved
// 0x2c0 : Data signal of unicast_vlan121_macaddr_lsb
//         bit 31~0 - unicast_vlan121_macaddr_lsb[31:0] (Read/Write)
// 0x2c4 : reserved
// 0x2c8 : Data signal of unicast_vlan121_macaddr_msb
//         bit 31~0 - unicast_vlan121_macaddr_msb[31:0] (Read/Write)
// 0x2cc : reserved
// 0x2d0 : Data signal of unicast_vlan122_macaddr_lsb
//         bit 31~0 - unicast_vlan122_macaddr_lsb[31:0] (Read/Write)
// 0x2d4 : reserved
// 0x2d8 : Data signal of unicast_vlan122_macaddr_msb
//         bit 31~0 - unicast_vlan122_macaddr_msb[31:0] (Read/Write)
// 0x2dc : reserved
// 0x2e0 : Data signal of unicast_vlan123_macaddr_lsb
//         bit 31~0 - unicast_vlan123_macaddr_lsb[31:0] (Read/Write)
// 0x2e4 : reserved
// 0x2e8 : Data signal of unicast_vlan123_macaddr_msb
//         bit 31~0 - unicast_vlan123_macaddr_msb[31:0] (Read/Write)
// 0x2ec : reserved
// 0x2f0 : Data signal of unicast_vlan124_macaddr_lsb
//         bit 31~0 - unicast_vlan124_macaddr_lsb[31:0] (Read/Write)
// 0x2f4 : reserved
// 0x2f8 : Data signal of unicast_vlan124_macaddr_msb
//         bit 31~0 - unicast_vlan124_macaddr_msb[31:0] (Read/Write)
// 0x2fc : reserved
// 0x300 : Data signal of unicast_vlan125_macaddr_lsb
//         bit 31~0 - unicast_vlan125_macaddr_lsb[31:0] (Read/Write)
// 0x304 : reserved
// 0x308 : Data signal of unicast_vlan125_macaddr_msb
//         bit 31~0 - unicast_vlan125_macaddr_msb[31:0] (Read/Write)
// 0x30c : reserved
// 0x310 : Data signal of unicast_vlan126_macaddr_lsb
//         bit 31~0 - unicast_vlan126_macaddr_lsb[31:0] (Read/Write)
// 0x314 : reserved
// 0x318 : Data signal of unicast_vlan126_macaddr_msb
//         bit 31~0 - unicast_vlan126_macaddr_msb[31:0] (Read/Write)
// 0x31c : reserved
// 0x320 : Data signal of unicast_vlan127_macaddr_lsb
//         bit 31~0 - unicast_vlan127_macaddr_lsb[31:0] (Read/Write)
// 0x324 : reserved
// 0x328 : Data signal of unicast_vlan127_macaddr_msb
//         bit 31~0 - unicast_vlan127_macaddr_msb[31:0] (Read/Write)
// 0x32c : reserved
// 0x330 : Data signal of unicast_vlan128_macaddr_lsb
//         bit 31~0 - unicast_vlan128_macaddr_lsb[31:0] (Read/Write)
// 0x334 : reserved
// 0x338 : Data signal of unicast_vlan128_macaddr_msb
//         bit 31~0 - unicast_vlan128_macaddr_msb[31:0] (Read/Write)
// 0x33c : reserved
// 0x340 : Data signal of unicast_vlan129_macaddr_lsb
//         bit 31~0 - unicast_vlan129_macaddr_lsb[31:0] (Read/Write)
// 0x344 : reserved
// 0x348 : Data signal of unicast_vlan129_macaddr_msb
//         bit 31~0 - unicast_vlan129_macaddr_msb[31:0] (Read/Write)
// 0x34c : reserved
// 0x350 : Data signal of log_all_mask
//         bit 31~0 - log_all_mask[31:0] (Read/Write)
// 0x354 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XMAC_LOGGER_AXILITES_ADDR_AP_CTRL                          0x000
#define XMAC_LOGGER_AXILITES_ADDR_GIE                              0x004
#define XMAC_LOGGER_AXILITES_ADDR_IER                              0x008
#define XMAC_LOGGER_AXILITES_ADDR_ISR                              0x00c
#define XMAC_LOGGER_AXILITES_ADDR_FIFO_DATA                        0x010
#define XMAC_LOGGER_AXILITES_BITS_FIFO_DATA                        64
#define XMAC_LOGGER_AXILITES_ADDR_FIFO_AXI_FULL_OFFSET_DATA        0x01c
#define XMAC_LOGGER_AXILITES_BITS_FIFO_AXI_FULL_OFFSET_DATA        64
#define XMAC_LOGGER_AXILITES_ADDR_DDR_DATA                         0x028
#define XMAC_LOGGER_AXILITES_BITS_DDR_DATA                         64
#define XMAC_LOGGER_AXILITES_ADDR_DRIVER_DATA                      0x034
#define XMAC_LOGGER_AXILITES_BITS_DRIVER_DATA                      64
#define XMAC_LOGGER_AXILITES_ADDR_STATUS_DATA                      0x040
#define XMAC_LOGGER_AXILITES_BITS_STATUS_DATA                      32
#define XMAC_LOGGER_AXILITES_ADDR_WRITESTATUS_DATA                 0x048
#define XMAC_LOGGER_AXILITES_BITS_WRITESTATUS_DATA                 16
#define XMAC_LOGGER_AXILITES_ADDR_LOGGER_VLAN_ENABLE_MASK_DATA     0x050
#define XMAC_LOGGER_AXILITES_BITS_LOGGER_VLAN_ENABLE_MASK_DATA     32
#define XMAC_LOGGER_AXILITES_ADDR_VLAN100_RECEIVED_DATA            0x058
#define XMAC_LOGGER_AXILITES_BITS_VLAN100_RECEIVED_DATA            32
#define XMAC_LOGGER_AXILITES_ADDR_VLAN100_RECEIVED_CTRL            0x05c
#define XMAC_LOGGER_AXILITES_ADDR_VLAN101_RECEIVED_DATA            0x060
#define XMAC_LOGGER_AXILITES_BITS_VLAN101_RECEIVED_DATA            32
#define XMAC_LOGGER_AXILITES_ADDR_VLAN101_RECEIVED_CTRL            0x064
#define XMAC_LOGGER_AXILITES_ADDR_VLAN102_RECEIVED_DATA            0x068
#define XMAC_LOGGER_AXILITES_BITS_VLAN102_RECEIVED_DATA            32
#define XMAC_LOGGER_AXILITES_ADDR_VLAN102_RECEIVED_CTRL            0x06c
#define XMAC_LOGGER_AXILITES_ADDR_VLAN103_RECEIVED_DATA            0x070
#define XMAC_LOGGER_AXILITES_BITS_VLAN103_RECEIVED_DATA            32
#define XMAC_LOGGER_AXILITES_ADDR_VLAN103_RECEIVED_CTRL            0x074
#define XMAC_LOGGER_AXILITES_ADDR_VLAN104_RECEIVED_DATA            0x078
#define XMAC_LOGGER_AXILITES_BITS_VLAN104_RECEIVED_DATA            32
#define XMAC_LOGGER_AXILITES_ADDR_VLAN104_RECEIVED_CTRL            0x07c
#define XMAC_LOGGER_AXILITES_ADDR_VLAN105_RECEIVED_DATA            0x080
#define XMAC_LOGGER_AXILITES_BITS_VLAN105_RECEIVED_DATA            32
#define XMAC_LOGGER_AXILITES_ADDR_VLAN105_RECEIVED_CTRL            0x084
#define XMAC_LOGGER_AXILITES_ADDR_VLAN106_RECEIVED_DATA            0x088
#define XMAC_LOGGER_AXILITES_BITS_VLAN106_RECEIVED_DATA            32
#define XMAC_LOGGER_AXILITES_ADDR_VLAN106_RECEIVED_CTRL            0x08c
#define XMAC_LOGGER_AXILITES_ADDR_VLAN107_RECEIVED_DATA            0x090
#define XMAC_LOGGER_AXILITES_BITS_VLAN107_RECEIVED_DATA            32
#define XMAC_LOGGER_AXILITES_ADDR_VLAN107_RECEIVED_CTRL            0x094
#define XMAC_LOGGER_AXILITES_ADDR_VLAN108_RECEIVED_DATA            0x098
#define XMAC_LOGGER_AXILITES_BITS_VLAN108_RECEIVED_DATA            32
#define XMAC_LOGGER_AXILITES_ADDR_VLAN108_RECEIVED_CTRL            0x09c
#define XMAC_LOGGER_AXILITES_ADDR_VLAN109_RECEIVED_DATA            0x0a0
#define XMAC_LOGGER_AXILITES_BITS_VLAN109_RECEIVED_DATA            32
#define XMAC_LOGGER_AXILITES_ADDR_VLAN109_RECEIVED_CTRL            0x0a4
#define XMAC_LOGGER_AXILITES_ADDR_VLAN110_RECEIVED_DATA            0x0a8
#define XMAC_LOGGER_AXILITES_BITS_VLAN110_RECEIVED_DATA            32
#define XMAC_LOGGER_AXILITES_ADDR_VLAN110_RECEIVED_CTRL            0x0ac
#define XMAC_LOGGER_AXILITES_ADDR_VLAN111_RECEIVED_DATA            0x0b0
#define XMAC_LOGGER_AXILITES_BITS_VLAN111_RECEIVED_DATA            32
#define XMAC_LOGGER_AXILITES_ADDR_VLAN111_RECEIVED_CTRL            0x0b4
#define XMAC_LOGGER_AXILITES_ADDR_VLAN112_RECEIVED_DATA            0x0b8
#define XMAC_LOGGER_AXILITES_BITS_VLAN112_RECEIVED_DATA            32
#define XMAC_LOGGER_AXILITES_ADDR_VLAN112_RECEIVED_CTRL            0x0bc
#define XMAC_LOGGER_AXILITES_ADDR_VLAN113_RECEIVED_DATA            0x0c0
#define XMAC_LOGGER_AXILITES_BITS_VLAN113_RECEIVED_DATA            32
#define XMAC_LOGGER_AXILITES_ADDR_VLAN113_RECEIVED_CTRL            0x0c4
#define XMAC_LOGGER_AXILITES_ADDR_VLAN114_RECEIVED_DATA            0x0c8
#define XMAC_LOGGER_AXILITES_BITS_VLAN114_RECEIVED_DATA            32
#define XMAC_LOGGER_AXILITES_ADDR_VLAN114_RECEIVED_CTRL            0x0cc
#define XMAC_LOGGER_AXILITES_ADDR_VLAN115_RECEIVED_DATA            0x0d0
#define XMAC_LOGGER_AXILITES_BITS_VLAN115_RECEIVED_DATA            32
#define XMAC_LOGGER_AXILITES_ADDR_VLAN115_RECEIVED_CTRL            0x0d4
#define XMAC_LOGGER_AXILITES_ADDR_VLAN116_RECEIVED_DATA            0x0d8
#define XMAC_LOGGER_AXILITES_BITS_VLAN116_RECEIVED_DATA            32
#define XMAC_LOGGER_AXILITES_ADDR_VLAN116_RECEIVED_CTRL            0x0dc
#define XMAC_LOGGER_AXILITES_ADDR_VLAN117_RECEIVED_DATA            0x0e0
#define XMAC_LOGGER_AXILITES_BITS_VLAN117_RECEIVED_DATA            32
#define XMAC_LOGGER_AXILITES_ADDR_VLAN117_RECEIVED_CTRL            0x0e4
#define XMAC_LOGGER_AXILITES_ADDR_VLAN118_RECEIVED_DATA            0x0e8
#define XMAC_LOGGER_AXILITES_BITS_VLAN118_RECEIVED_DATA            32
#define XMAC_LOGGER_AXILITES_ADDR_VLAN118_RECEIVED_CTRL            0x0ec
#define XMAC_LOGGER_AXILITES_ADDR_VLAN119_RECEIVED_DATA            0x0f0
#define XMAC_LOGGER_AXILITES_BITS_VLAN119_RECEIVED_DATA            32
#define XMAC_LOGGER_AXILITES_ADDR_VLAN119_RECEIVED_CTRL            0x0f4
#define XMAC_LOGGER_AXILITES_ADDR_VLAN120_RECEIVED_DATA            0x0f8
#define XMAC_LOGGER_AXILITES_BITS_VLAN120_RECEIVED_DATA            32
#define XMAC_LOGGER_AXILITES_ADDR_VLAN120_RECEIVED_CTRL            0x0fc
#define XMAC_LOGGER_AXILITES_ADDR_VLAN121_RECEIVED_DATA            0x110
#define XMAC_LOGGER_AXILITES_BITS_VLAN121_RECEIVED_DATA            32
#define XMAC_LOGGER_AXILITES_ADDR_VLAN121_RECEIVED_CTRL            0x114
#define XMAC_LOGGER_AXILITES_ADDR_VLAN122_RECEIVED_DATA            0x118
#define XMAC_LOGGER_AXILITES_BITS_VLAN122_RECEIVED_DATA            32
#define XMAC_LOGGER_AXILITES_ADDR_VLAN122_RECEIVED_CTRL            0x11c
#define XMAC_LOGGER_AXILITES_ADDR_VLAN123_RECEIVED_DATA            0x120
#define XMAC_LOGGER_AXILITES_BITS_VLAN123_RECEIVED_DATA            32
#define XMAC_LOGGER_AXILITES_ADDR_VLAN123_RECEIVED_CTRL            0x124
#define XMAC_LOGGER_AXILITES_ADDR_VLAN124_RECEIVED_DATA            0x128
#define XMAC_LOGGER_AXILITES_BITS_VLAN124_RECEIVED_DATA            32
#define XMAC_LOGGER_AXILITES_ADDR_VLAN124_RECEIVED_CTRL            0x12c
#define XMAC_LOGGER_AXILITES_ADDR_VLAN125_RECEIVED_DATA            0x130
#define XMAC_LOGGER_AXILITES_BITS_VLAN125_RECEIVED_DATA            32
#define XMAC_LOGGER_AXILITES_ADDR_VLAN125_RECEIVED_CTRL            0x134
#define XMAC_LOGGER_AXILITES_ADDR_VLAN126_RECEIVED_DATA            0x138
#define XMAC_LOGGER_AXILITES_BITS_VLAN126_RECEIVED_DATA            32
#define XMAC_LOGGER_AXILITES_ADDR_VLAN126_RECEIVED_CTRL            0x13c
#define XMAC_LOGGER_AXILITES_ADDR_VLAN127_RECEIVED_DATA            0x140
#define XMAC_LOGGER_AXILITES_BITS_VLAN127_RECEIVED_DATA            32
#define XMAC_LOGGER_AXILITES_ADDR_VLAN127_RECEIVED_CTRL            0x144
#define XMAC_LOGGER_AXILITES_ADDR_VLAN128_RECEIVED_DATA            0x148
#define XMAC_LOGGER_AXILITES_BITS_VLAN128_RECEIVED_DATA            32
#define XMAC_LOGGER_AXILITES_ADDR_VLAN128_RECEIVED_CTRL            0x14c
#define XMAC_LOGGER_AXILITES_ADDR_VLAN129_RECEIVED_DATA            0x150
#define XMAC_LOGGER_AXILITES_BITS_VLAN129_RECEIVED_DATA            32
#define XMAC_LOGGER_AXILITES_ADDR_VLAN129_RECEIVED_CTRL            0x154
#define XMAC_LOGGER_AXILITES_ADDR_DROPED_DATA                      0x158
#define XMAC_LOGGER_AXILITES_BITS_DROPED_DATA                      32
#define XMAC_LOGGER_AXILITES_ADDR_DROPED_CTRL                      0x15c
#define XMAC_LOGGER_AXILITES_ADDR_MULTICAST_RECV_ENABLE_DATA       0x160
#define XMAC_LOGGER_AXILITES_BITS_MULTICAST_RECV_ENABLE_DATA       32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_FILTER_ENABLE_DATA       0x168
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_FILTER_ENABLE_DATA       32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN100_MACADDR_LSB_DATA 0x170
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN100_MACADDR_LSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN100_MACADDR_MSB_DATA 0x178
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN100_MACADDR_MSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN101_MACADDR_LSB_DATA 0x180
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN101_MACADDR_LSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN101_MACADDR_MSB_DATA 0x188
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN101_MACADDR_MSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN102_MACADDR_LSB_DATA 0x190
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN102_MACADDR_LSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN102_MACADDR_MSB_DATA 0x198
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN102_MACADDR_MSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN103_MACADDR_LSB_DATA 0x1a0
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN103_MACADDR_LSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN103_MACADDR_MSB_DATA 0x1a8
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN103_MACADDR_MSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN104_MACADDR_LSB_DATA 0x1b0
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN104_MACADDR_LSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN104_MACADDR_MSB_DATA 0x1b8
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN104_MACADDR_MSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN105_MACADDR_LSB_DATA 0x1c0
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN105_MACADDR_LSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN105_MACADDR_MSB_DATA 0x1c8
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN105_MACADDR_MSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN106_MACADDR_LSB_DATA 0x1d0
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN106_MACADDR_LSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN106_MACADDR_MSB_DATA 0x1d8
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN106_MACADDR_MSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN107_MACADDR_LSB_DATA 0x1e0
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN107_MACADDR_LSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN107_MACADDR_MSB_DATA 0x1e8
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN107_MACADDR_MSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN108_MACADDR_LSB_DATA 0x1f0
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN108_MACADDR_LSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN108_MACADDR_MSB_DATA 0x1f8
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN108_MACADDR_MSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN109_MACADDR_LSB_DATA 0x200
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN109_MACADDR_LSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN109_MACADDR_MSB_DATA 0x208
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN109_MACADDR_MSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN110_MACADDR_LSB_DATA 0x210
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN110_MACADDR_LSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN110_MACADDR_MSB_DATA 0x218
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN110_MACADDR_MSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN111_MACADDR_LSB_DATA 0x220
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN111_MACADDR_LSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN111_MACADDR_MSB_DATA 0x228
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN111_MACADDR_MSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN112_MACADDR_LSB_DATA 0x230
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN112_MACADDR_LSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN112_MACADDR_MSB_DATA 0x238
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN112_MACADDR_MSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN113_MACADDR_LSB_DATA 0x240
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN113_MACADDR_LSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN113_MACADDR_MSB_DATA 0x248
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN113_MACADDR_MSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN114_MACADDR_LSB_DATA 0x250
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN114_MACADDR_LSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN114_MACADDR_MSB_DATA 0x258
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN114_MACADDR_MSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN115_MACADDR_LSB_DATA 0x260
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN115_MACADDR_LSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN115_MACADDR_MSB_DATA 0x268
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN115_MACADDR_MSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN116_MACADDR_LSB_DATA 0x270
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN116_MACADDR_LSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN116_MACADDR_MSB_DATA 0x278
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN116_MACADDR_MSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN117_MACADDR_LSB_DATA 0x280
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN117_MACADDR_LSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN117_MACADDR_MSB_DATA 0x288
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN117_MACADDR_MSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN118_MACADDR_LSB_DATA 0x290
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN118_MACADDR_LSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN118_MACADDR_MSB_DATA 0x298
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN118_MACADDR_MSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN119_MACADDR_LSB_DATA 0x2a0
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN119_MACADDR_LSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN119_MACADDR_MSB_DATA 0x2a8
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN119_MACADDR_MSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN120_MACADDR_LSB_DATA 0x2b0
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN120_MACADDR_LSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN120_MACADDR_MSB_DATA 0x2b8
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN120_MACADDR_MSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN121_MACADDR_LSB_DATA 0x2c0
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN121_MACADDR_LSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN121_MACADDR_MSB_DATA 0x2c8
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN121_MACADDR_MSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN122_MACADDR_LSB_DATA 0x2d0
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN122_MACADDR_LSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN122_MACADDR_MSB_DATA 0x2d8
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN122_MACADDR_MSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN123_MACADDR_LSB_DATA 0x2e0
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN123_MACADDR_LSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN123_MACADDR_MSB_DATA 0x2e8
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN123_MACADDR_MSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN124_MACADDR_LSB_DATA 0x2f0
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN124_MACADDR_LSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN124_MACADDR_MSB_DATA 0x2f8
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN124_MACADDR_MSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN125_MACADDR_LSB_DATA 0x300
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN125_MACADDR_LSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN125_MACADDR_MSB_DATA 0x308
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN125_MACADDR_MSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN126_MACADDR_LSB_DATA 0x310
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN126_MACADDR_LSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN126_MACADDR_MSB_DATA 0x318
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN126_MACADDR_MSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN127_MACADDR_LSB_DATA 0x320
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN127_MACADDR_LSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN127_MACADDR_MSB_DATA 0x328
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN127_MACADDR_MSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN128_MACADDR_LSB_DATA 0x330
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN128_MACADDR_LSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN128_MACADDR_MSB_DATA 0x338
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN128_MACADDR_MSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN129_MACADDR_LSB_DATA 0x340
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN129_MACADDR_LSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_UNICAST_VLAN129_MACADDR_MSB_DATA 0x348
#define XMAC_LOGGER_AXILITES_BITS_UNICAST_VLAN129_MACADDR_MSB_DATA 32
#define XMAC_LOGGER_AXILITES_ADDR_LOG_ALL_MASK_DATA                0x350
#define XMAC_LOGGER_AXILITES_BITS_LOG_ALL_MASK_DATA                32

