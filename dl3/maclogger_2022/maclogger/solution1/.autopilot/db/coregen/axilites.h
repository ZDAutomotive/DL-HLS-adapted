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
// 0x01c : Data signal of ddr
//         bit 31~0 - ddr[31:0] (Read/Write)
// 0x020 : Data signal of ddr
//         bit 31~0 - ddr[63:32] (Read/Write)
// 0x024 : reserved
// 0x028 : Data signal of status
//         bit 31~0 - status[31:0] (Read/Write)
// 0x02c : reserved
// 0x030 : Data signal of writeStatus
//         bit 15~0 - writeStatus[15:0] (Read/Write)
//         others   - reserved
// 0x034 : reserved
// 0x038 : Data signal of logger_vlan_enable_mask
//         bit 31~0 - logger_vlan_enable_mask[31:0] (Read/Write)
// 0x03c : reserved
// 0x040 : Data signal of vlan100_received
//         bit 31~0 - vlan100_received[31:0] (Read)
// 0x044 : Control signal of vlan100_received
//         bit 0  - vlan100_received_ap_vld (Read/COR)
//         others - reserved
// 0x048 : Data signal of vlan101_received
//         bit 31~0 - vlan101_received[31:0] (Read)
// 0x04c : Control signal of vlan101_received
//         bit 0  - vlan101_received_ap_vld (Read/COR)
//         others - reserved
// 0x050 : Data signal of vlan102_received
//         bit 31~0 - vlan102_received[31:0] (Read)
// 0x054 : Control signal of vlan102_received
//         bit 0  - vlan102_received_ap_vld (Read/COR)
//         others - reserved
// 0x058 : Data signal of vlan103_received
//         bit 31~0 - vlan103_received[31:0] (Read)
// 0x05c : Control signal of vlan103_received
//         bit 0  - vlan103_received_ap_vld (Read/COR)
//         others - reserved
// 0x060 : Data signal of vlan104_received
//         bit 31~0 - vlan104_received[31:0] (Read)
// 0x064 : Control signal of vlan104_received
//         bit 0  - vlan104_received_ap_vld (Read/COR)
//         others - reserved
// 0x068 : Data signal of vlan105_received
//         bit 31~0 - vlan105_received[31:0] (Read)
// 0x06c : Control signal of vlan105_received
//         bit 0  - vlan105_received_ap_vld (Read/COR)
//         others - reserved
// 0x070 : Data signal of vlan106_received
//         bit 31~0 - vlan106_received[31:0] (Read)
// 0x074 : Control signal of vlan106_received
//         bit 0  - vlan106_received_ap_vld (Read/COR)
//         others - reserved
// 0x078 : Data signal of vlan107_received
//         bit 31~0 - vlan107_received[31:0] (Read)
// 0x07c : Control signal of vlan107_received
//         bit 0  - vlan107_received_ap_vld (Read/COR)
//         others - reserved
// 0x080 : Data signal of vlan108_received
//         bit 31~0 - vlan108_received[31:0] (Read)
// 0x084 : Control signal of vlan108_received
//         bit 0  - vlan108_received_ap_vld (Read/COR)
//         others - reserved
// 0x088 : Data signal of vlan109_received
//         bit 31~0 - vlan109_received[31:0] (Read)
// 0x08c : Control signal of vlan109_received
//         bit 0  - vlan109_received_ap_vld (Read/COR)
//         others - reserved
// 0x090 : Data signal of droped
//         bit 31~0 - droped[31:0] (Read)
// 0x094 : Control signal of droped
//         bit 0  - droped_ap_vld (Read/COR)
//         others - reserved
// 0x098 : Data signal of multicast_recv_enable
//         bit 31~0 - multicast_recv_enable[31:0] (Read/Write)
// 0x09c : reserved
// 0x0a0 : Data signal of unicast_filter_enable
//         bit 31~0 - unicast_filter_enable[31:0] (Read/Write)
// 0x0a4 : reserved
// 0x0a8 : Data signal of unicast_vlan100_macaddr_lsb
//         bit 31~0 - unicast_vlan100_macaddr_lsb[31:0] (Read/Write)
// 0x0ac : reserved
// 0x0b0 : Data signal of unicast_vlan100_macaddr_msb
//         bit 31~0 - unicast_vlan100_macaddr_msb[31:0] (Read/Write)
// 0x0b4 : reserved
// 0x0b8 : Data signal of unicast_vlan101_macaddr_lsb
//         bit 31~0 - unicast_vlan101_macaddr_lsb[31:0] (Read/Write)
// 0x0bc : reserved
// 0x0c0 : Data signal of unicast_vlan101_macaddr_msb
//         bit 31~0 - unicast_vlan101_macaddr_msb[31:0] (Read/Write)
// 0x0c4 : reserved
// 0x0c8 : Data signal of unicast_vlan102_macaddr_lsb
//         bit 31~0 - unicast_vlan102_macaddr_lsb[31:0] (Read/Write)
// 0x0cc : reserved
// 0x0d0 : Data signal of unicast_vlan102_macaddr_msb
//         bit 31~0 - unicast_vlan102_macaddr_msb[31:0] (Read/Write)
// 0x0d4 : reserved
// 0x0d8 : Data signal of unicast_vlan103_macaddr_lsb
//         bit 31~0 - unicast_vlan103_macaddr_lsb[31:0] (Read/Write)
// 0x0dc : reserved
// 0x0e0 : Data signal of unicast_vlan103_macaddr_msb
//         bit 31~0 - unicast_vlan103_macaddr_msb[31:0] (Read/Write)
// 0x0e4 : reserved
// 0x0e8 : Data signal of unicast_vlan104_macaddr_lsb
//         bit 31~0 - unicast_vlan104_macaddr_lsb[31:0] (Read/Write)
// 0x0ec : reserved
// 0x0f0 : Data signal of unicast_vlan104_macaddr_msb
//         bit 31~0 - unicast_vlan104_macaddr_msb[31:0] (Read/Write)
// 0x0f4 : reserved
// 0x0f8 : Data signal of unicast_vlan105_macaddr_lsb
//         bit 31~0 - unicast_vlan105_macaddr_lsb[31:0] (Read/Write)
// 0x0fc : reserved
// 0x100 : Data signal of unicast_vlan105_macaddr_msb
//         bit 31~0 - unicast_vlan105_macaddr_msb[31:0] (Read/Write)
// 0x104 : reserved
// 0x108 : Data signal of unicast_vlan106_macaddr_lsb
//         bit 31~0 - unicast_vlan106_macaddr_lsb[31:0] (Read/Write)
// 0x10c : reserved
// 0x110 : Data signal of unicast_vlan106_macaddr_msb
//         bit 31~0 - unicast_vlan106_macaddr_msb[31:0] (Read/Write)
// 0x114 : reserved
// 0x118 : Data signal of unicast_vlan107_macaddr_lsb
//         bit 31~0 - unicast_vlan107_macaddr_lsb[31:0] (Read/Write)
// 0x11c : reserved
// 0x120 : Data signal of unicast_vlan107_macaddr_msb
//         bit 31~0 - unicast_vlan107_macaddr_msb[31:0] (Read/Write)
// 0x124 : reserved
// 0x128 : Data signal of unicast_vlan108_macaddr_lsb
//         bit 31~0 - unicast_vlan108_macaddr_lsb[31:0] (Read/Write)
// 0x12c : reserved
// 0x130 : Data signal of unicast_vlan108_macaddr_msb
//         bit 31~0 - unicast_vlan108_macaddr_msb[31:0] (Read/Write)
// 0x134 : reserved
// 0x138 : Data signal of unicast_vlan109_macaddr_lsb
//         bit 31~0 - unicast_vlan109_macaddr_lsb[31:0] (Read/Write)
// 0x13c : reserved
// 0x140 : Data signal of unicast_vlan109_macaddr_msb
//         bit 31~0 - unicast_vlan109_macaddr_msb[31:0] (Read/Write)
// 0x144 : reserved
// 0x148 : Data signal of log_all_mask
//         bit 31~0 - log_all_mask[31:0] (Read/Write)
// 0x14c : reserved
// 0x150 : Data signal of driver
//         bit 31~0 - driver[31:0] (Read/Write)
// 0x154 : Data signal of driver
//         bit 31~0 - driver[63:32] (Read/Write)
// 0x158 : reserved
// 0x160 : Data signal of fifo_axi_full_offset
//         bit 31~0 - fifo_axi_full_offset[31:0] (Read/Write)
// 0x164 : Data signal of fifo_axi_full_offset
//         bit 31~0 - fifo_axi_full_offset[63:32] (Read/Write)
// 0x168 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define AXILITES_ADDR_AP_CTRL                          0x000
#define AXILITES_ADDR_GIE                              0x004
#define AXILITES_ADDR_IER                              0x008
#define AXILITES_ADDR_ISR                              0x00c
#define AXILITES_ADDR_FIFO_DATA                        0x010
#define AXILITES_BITS_FIFO_DATA                        64
#define AXILITES_ADDR_DDR_DATA                         0x01c
#define AXILITES_BITS_DDR_DATA                         64
#define AXILITES_ADDR_STATUS_DATA                      0x028
#define AXILITES_BITS_STATUS_DATA                      32
#define AXILITES_ADDR_WRITESTATUS_DATA                 0x030
#define AXILITES_BITS_WRITESTATUS_DATA                 16
#define AXILITES_ADDR_LOGGER_VLAN_ENABLE_MASK_DATA     0x038
#define AXILITES_BITS_LOGGER_VLAN_ENABLE_MASK_DATA     32
#define AXILITES_ADDR_VLAN100_RECEIVED_DATA            0x040
#define AXILITES_BITS_VLAN100_RECEIVED_DATA            32
#define AXILITES_ADDR_VLAN100_RECEIVED_CTRL            0x044
#define AXILITES_ADDR_VLAN101_RECEIVED_DATA            0x048
#define AXILITES_BITS_VLAN101_RECEIVED_DATA            32
#define AXILITES_ADDR_VLAN101_RECEIVED_CTRL            0x04c
#define AXILITES_ADDR_VLAN102_RECEIVED_DATA            0x050
#define AXILITES_BITS_VLAN102_RECEIVED_DATA            32
#define AXILITES_ADDR_VLAN102_RECEIVED_CTRL            0x054
#define AXILITES_ADDR_VLAN103_RECEIVED_DATA            0x058
#define AXILITES_BITS_VLAN103_RECEIVED_DATA            32
#define AXILITES_ADDR_VLAN103_RECEIVED_CTRL            0x05c
#define AXILITES_ADDR_VLAN104_RECEIVED_DATA            0x060
#define AXILITES_BITS_VLAN104_RECEIVED_DATA            32
#define AXILITES_ADDR_VLAN104_RECEIVED_CTRL            0x064
#define AXILITES_ADDR_VLAN105_RECEIVED_DATA            0x068
#define AXILITES_BITS_VLAN105_RECEIVED_DATA            32
#define AXILITES_ADDR_VLAN105_RECEIVED_CTRL            0x06c
#define AXILITES_ADDR_VLAN106_RECEIVED_DATA            0x070
#define AXILITES_BITS_VLAN106_RECEIVED_DATA            32
#define AXILITES_ADDR_VLAN106_RECEIVED_CTRL            0x074
#define AXILITES_ADDR_VLAN107_RECEIVED_DATA            0x078
#define AXILITES_BITS_VLAN107_RECEIVED_DATA            32
#define AXILITES_ADDR_VLAN107_RECEIVED_CTRL            0x07c
#define AXILITES_ADDR_VLAN108_RECEIVED_DATA            0x080
#define AXILITES_BITS_VLAN108_RECEIVED_DATA            32
#define AXILITES_ADDR_VLAN108_RECEIVED_CTRL            0x084
#define AXILITES_ADDR_VLAN109_RECEIVED_DATA            0x088
#define AXILITES_BITS_VLAN109_RECEIVED_DATA            32
#define AXILITES_ADDR_VLAN109_RECEIVED_CTRL            0x08c
#define AXILITES_ADDR_DROPED_DATA                      0x090
#define AXILITES_BITS_DROPED_DATA                      32
#define AXILITES_ADDR_DROPED_CTRL                      0x094
#define AXILITES_ADDR_MULTICAST_RECV_ENABLE_DATA       0x098
#define AXILITES_BITS_MULTICAST_RECV_ENABLE_DATA       32
#define AXILITES_ADDR_UNICAST_FILTER_ENABLE_DATA       0x0a0
#define AXILITES_BITS_UNICAST_FILTER_ENABLE_DATA       32
#define AXILITES_ADDR_UNICAST_VLAN100_MACADDR_LSB_DATA 0x0a8
#define AXILITES_BITS_UNICAST_VLAN100_MACADDR_LSB_DATA 32
#define AXILITES_ADDR_UNICAST_VLAN100_MACADDR_MSB_DATA 0x0b0
#define AXILITES_BITS_UNICAST_VLAN100_MACADDR_MSB_DATA 32
#define AXILITES_ADDR_UNICAST_VLAN101_MACADDR_LSB_DATA 0x0b8
#define AXILITES_BITS_UNICAST_VLAN101_MACADDR_LSB_DATA 32
#define AXILITES_ADDR_UNICAST_VLAN101_MACADDR_MSB_DATA 0x0c0
#define AXILITES_BITS_UNICAST_VLAN101_MACADDR_MSB_DATA 32
#define AXILITES_ADDR_UNICAST_VLAN102_MACADDR_LSB_DATA 0x0c8
#define AXILITES_BITS_UNICAST_VLAN102_MACADDR_LSB_DATA 32
#define AXILITES_ADDR_UNICAST_VLAN102_MACADDR_MSB_DATA 0x0d0
#define AXILITES_BITS_UNICAST_VLAN102_MACADDR_MSB_DATA 32
#define AXILITES_ADDR_UNICAST_VLAN103_MACADDR_LSB_DATA 0x0d8
#define AXILITES_BITS_UNICAST_VLAN103_MACADDR_LSB_DATA 32
#define AXILITES_ADDR_UNICAST_VLAN103_MACADDR_MSB_DATA 0x0e0
#define AXILITES_BITS_UNICAST_VLAN103_MACADDR_MSB_DATA 32
#define AXILITES_ADDR_UNICAST_VLAN104_MACADDR_LSB_DATA 0x0e8
#define AXILITES_BITS_UNICAST_VLAN104_MACADDR_LSB_DATA 32
#define AXILITES_ADDR_UNICAST_VLAN104_MACADDR_MSB_DATA 0x0f0
#define AXILITES_BITS_UNICAST_VLAN104_MACADDR_MSB_DATA 32
#define AXILITES_ADDR_UNICAST_VLAN105_MACADDR_LSB_DATA 0x0f8
#define AXILITES_BITS_UNICAST_VLAN105_MACADDR_LSB_DATA 32
#define AXILITES_ADDR_UNICAST_VLAN105_MACADDR_MSB_DATA 0x100
#define AXILITES_BITS_UNICAST_VLAN105_MACADDR_MSB_DATA 32
#define AXILITES_ADDR_UNICAST_VLAN106_MACADDR_LSB_DATA 0x108
#define AXILITES_BITS_UNICAST_VLAN106_MACADDR_LSB_DATA 32
#define AXILITES_ADDR_UNICAST_VLAN106_MACADDR_MSB_DATA 0x110
#define AXILITES_BITS_UNICAST_VLAN106_MACADDR_MSB_DATA 32
#define AXILITES_ADDR_UNICAST_VLAN107_MACADDR_LSB_DATA 0x118
#define AXILITES_BITS_UNICAST_VLAN107_MACADDR_LSB_DATA 32
#define AXILITES_ADDR_UNICAST_VLAN107_MACADDR_MSB_DATA 0x120
#define AXILITES_BITS_UNICAST_VLAN107_MACADDR_MSB_DATA 32
#define AXILITES_ADDR_UNICAST_VLAN108_MACADDR_LSB_DATA 0x128
#define AXILITES_BITS_UNICAST_VLAN108_MACADDR_LSB_DATA 32
#define AXILITES_ADDR_UNICAST_VLAN108_MACADDR_MSB_DATA 0x130
#define AXILITES_BITS_UNICAST_VLAN108_MACADDR_MSB_DATA 32
#define AXILITES_ADDR_UNICAST_VLAN109_MACADDR_LSB_DATA 0x138
#define AXILITES_BITS_UNICAST_VLAN109_MACADDR_LSB_DATA 32
#define AXILITES_ADDR_UNICAST_VLAN109_MACADDR_MSB_DATA 0x140
#define AXILITES_BITS_UNICAST_VLAN109_MACADDR_MSB_DATA 32
#define AXILITES_ADDR_LOG_ALL_MASK_DATA                0x148
#define AXILITES_BITS_LOG_ALL_MASK_DATA                32
#define AXILITES_ADDR_DRIVER_DATA                      0x150
#define AXILITES_BITS_DRIVER_DATA                      64
#define AXILITES_ADDR_FIFO_AXI_FULL_OFFSET_DATA        0x160
#define AXILITES_BITS_FIFO_AXI_FULL_OFFSET_DATA        64
