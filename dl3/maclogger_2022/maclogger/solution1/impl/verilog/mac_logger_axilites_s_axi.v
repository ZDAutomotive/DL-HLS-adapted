// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module mac_logger_axilites_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 9,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    output wire [63:0]                   fifo,
    output wire [63:0]                   ddr,
    output wire [31:0]                   status,
    output wire [15:0]                   writeStatus,
    output wire [31:0]                   logger_vlan_enable_mask,
    input  wire [31:0]                   vlan100_received,
    input  wire                          vlan100_received_ap_vld,
    input  wire [31:0]                   vlan101_received,
    input  wire                          vlan101_received_ap_vld,
    input  wire [31:0]                   vlan102_received,
    input  wire                          vlan102_received_ap_vld,
    input  wire [31:0]                   vlan103_received,
    input  wire                          vlan103_received_ap_vld,
    input  wire [31:0]                   vlan104_received,
    input  wire                          vlan104_received_ap_vld,
    input  wire [31:0]                   vlan105_received,
    input  wire                          vlan105_received_ap_vld,
    input  wire [31:0]                   vlan106_received,
    input  wire                          vlan106_received_ap_vld,
    input  wire [31:0]                   vlan107_received,
    input  wire                          vlan107_received_ap_vld,
    input  wire [31:0]                   vlan108_received,
    input  wire                          vlan108_received_ap_vld,
    input  wire [31:0]                   vlan109_received,
    input  wire                          vlan109_received_ap_vld,
    input  wire [31:0]                   droped,
    input  wire                          droped_ap_vld,
    output wire [31:0]                   multicast_recv_enable,
    output wire [31:0]                   unicast_filter_enable,
    output wire [31:0]                   unicast_vlan100_macaddr_lsb,
    output wire [31:0]                   unicast_vlan100_macaddr_msb,
    output wire [31:0]                   unicast_vlan101_macaddr_lsb,
    output wire [31:0]                   unicast_vlan101_macaddr_msb,
    output wire [31:0]                   unicast_vlan102_macaddr_lsb,
    output wire [31:0]                   unicast_vlan102_macaddr_msb,
    output wire [31:0]                   unicast_vlan103_macaddr_lsb,
    output wire [31:0]                   unicast_vlan103_macaddr_msb,
    output wire [31:0]                   unicast_vlan104_macaddr_lsb,
    output wire [31:0]                   unicast_vlan104_macaddr_msb,
    output wire [31:0]                   unicast_vlan105_macaddr_lsb,
    output wire [31:0]                   unicast_vlan105_macaddr_msb,
    output wire [31:0]                   unicast_vlan106_macaddr_lsb,
    output wire [31:0]                   unicast_vlan106_macaddr_msb,
    output wire [31:0]                   unicast_vlan107_macaddr_lsb,
    output wire [31:0]                   unicast_vlan107_macaddr_msb,
    output wire [31:0]                   unicast_vlan108_macaddr_lsb,
    output wire [31:0]                   unicast_vlan108_macaddr_msb,
    output wire [31:0]                   unicast_vlan109_macaddr_lsb,
    output wire [31:0]                   unicast_vlan109_macaddr_msb,
    output wire [31:0]                   log_all_mask,
    output wire [63:0]                   driver,
    output wire [63:0]                   fifo_axi_full_offset,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    output wire                          ap_continue,
    input  wire                          ap_idle
);
//------------------------Address Info-------------------
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

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL                            = 9'h000,
    ADDR_GIE                                = 9'h004,
    ADDR_IER                                = 9'h008,
    ADDR_ISR                                = 9'h00c,
    ADDR_FIFO_DATA_0                        = 9'h010,
    ADDR_FIFO_DATA_1                        = 9'h014,
    ADDR_FIFO_CTRL                          = 9'h018,
    ADDR_DDR_DATA_0                         = 9'h01c,
    ADDR_DDR_DATA_1                         = 9'h020,
    ADDR_DDR_CTRL                           = 9'h024,
    ADDR_STATUS_DATA_0                      = 9'h028,
    ADDR_STATUS_CTRL                        = 9'h02c,
    ADDR_WRITESTATUS_DATA_0                 = 9'h030,
    ADDR_WRITESTATUS_CTRL                   = 9'h034,
    ADDR_LOGGER_VLAN_ENABLE_MASK_DATA_0     = 9'h038,
    ADDR_LOGGER_VLAN_ENABLE_MASK_CTRL       = 9'h03c,
    ADDR_VLAN100_RECEIVED_DATA_0            = 9'h040,
    ADDR_VLAN100_RECEIVED_CTRL              = 9'h044,
    ADDR_VLAN101_RECEIVED_DATA_0            = 9'h048,
    ADDR_VLAN101_RECEIVED_CTRL              = 9'h04c,
    ADDR_VLAN102_RECEIVED_DATA_0            = 9'h050,
    ADDR_VLAN102_RECEIVED_CTRL              = 9'h054,
    ADDR_VLAN103_RECEIVED_DATA_0            = 9'h058,
    ADDR_VLAN103_RECEIVED_CTRL              = 9'h05c,
    ADDR_VLAN104_RECEIVED_DATA_0            = 9'h060,
    ADDR_VLAN104_RECEIVED_CTRL              = 9'h064,
    ADDR_VLAN105_RECEIVED_DATA_0            = 9'h068,
    ADDR_VLAN105_RECEIVED_CTRL              = 9'h06c,
    ADDR_VLAN106_RECEIVED_DATA_0            = 9'h070,
    ADDR_VLAN106_RECEIVED_CTRL              = 9'h074,
    ADDR_VLAN107_RECEIVED_DATA_0            = 9'h078,
    ADDR_VLAN107_RECEIVED_CTRL              = 9'h07c,
    ADDR_VLAN108_RECEIVED_DATA_0            = 9'h080,
    ADDR_VLAN108_RECEIVED_CTRL              = 9'h084,
    ADDR_VLAN109_RECEIVED_DATA_0            = 9'h088,
    ADDR_VLAN109_RECEIVED_CTRL              = 9'h08c,
    ADDR_DROPED_DATA_0                      = 9'h090,
    ADDR_DROPED_CTRL                        = 9'h094,
    ADDR_MULTICAST_RECV_ENABLE_DATA_0       = 9'h098,
    ADDR_MULTICAST_RECV_ENABLE_CTRL         = 9'h09c,
    ADDR_UNICAST_FILTER_ENABLE_DATA_0       = 9'h0a0,
    ADDR_UNICAST_FILTER_ENABLE_CTRL         = 9'h0a4,
    ADDR_UNICAST_VLAN100_MACADDR_LSB_DATA_0 = 9'h0a8,
    ADDR_UNICAST_VLAN100_MACADDR_LSB_CTRL   = 9'h0ac,
    ADDR_UNICAST_VLAN100_MACADDR_MSB_DATA_0 = 9'h0b0,
    ADDR_UNICAST_VLAN100_MACADDR_MSB_CTRL   = 9'h0b4,
    ADDR_UNICAST_VLAN101_MACADDR_LSB_DATA_0 = 9'h0b8,
    ADDR_UNICAST_VLAN101_MACADDR_LSB_CTRL   = 9'h0bc,
    ADDR_UNICAST_VLAN101_MACADDR_MSB_DATA_0 = 9'h0c0,
    ADDR_UNICAST_VLAN101_MACADDR_MSB_CTRL   = 9'h0c4,
    ADDR_UNICAST_VLAN102_MACADDR_LSB_DATA_0 = 9'h0c8,
    ADDR_UNICAST_VLAN102_MACADDR_LSB_CTRL   = 9'h0cc,
    ADDR_UNICAST_VLAN102_MACADDR_MSB_DATA_0 = 9'h0d0,
    ADDR_UNICAST_VLAN102_MACADDR_MSB_CTRL   = 9'h0d4,
    ADDR_UNICAST_VLAN103_MACADDR_LSB_DATA_0 = 9'h0d8,
    ADDR_UNICAST_VLAN103_MACADDR_LSB_CTRL   = 9'h0dc,
    ADDR_UNICAST_VLAN103_MACADDR_MSB_DATA_0 = 9'h0e0,
    ADDR_UNICAST_VLAN103_MACADDR_MSB_CTRL   = 9'h0e4,
    ADDR_UNICAST_VLAN104_MACADDR_LSB_DATA_0 = 9'h0e8,
    ADDR_UNICAST_VLAN104_MACADDR_LSB_CTRL   = 9'h0ec,
    ADDR_UNICAST_VLAN104_MACADDR_MSB_DATA_0 = 9'h0f0,
    ADDR_UNICAST_VLAN104_MACADDR_MSB_CTRL   = 9'h0f4,
    ADDR_UNICAST_VLAN105_MACADDR_LSB_DATA_0 = 9'h0f8,
    ADDR_UNICAST_VLAN105_MACADDR_LSB_CTRL   = 9'h0fc,
    ADDR_UNICAST_VLAN105_MACADDR_MSB_DATA_0 = 9'h100,
    ADDR_UNICAST_VLAN105_MACADDR_MSB_CTRL   = 9'h104,
    ADDR_UNICAST_VLAN106_MACADDR_LSB_DATA_0 = 9'h108,
    ADDR_UNICAST_VLAN106_MACADDR_LSB_CTRL   = 9'h10c,
    ADDR_UNICAST_VLAN106_MACADDR_MSB_DATA_0 = 9'h110,
    ADDR_UNICAST_VLAN106_MACADDR_MSB_CTRL   = 9'h114,
    ADDR_UNICAST_VLAN107_MACADDR_LSB_DATA_0 = 9'h118,
    ADDR_UNICAST_VLAN107_MACADDR_LSB_CTRL   = 9'h11c,
    ADDR_UNICAST_VLAN107_MACADDR_MSB_DATA_0 = 9'h120,
    ADDR_UNICAST_VLAN107_MACADDR_MSB_CTRL   = 9'h124,
    ADDR_UNICAST_VLAN108_MACADDR_LSB_DATA_0 = 9'h128,
    ADDR_UNICAST_VLAN108_MACADDR_LSB_CTRL   = 9'h12c,
    ADDR_UNICAST_VLAN108_MACADDR_MSB_DATA_0 = 9'h130,
    ADDR_UNICAST_VLAN108_MACADDR_MSB_CTRL   = 9'h134,
    ADDR_UNICAST_VLAN109_MACADDR_LSB_DATA_0 = 9'h138,
    ADDR_UNICAST_VLAN109_MACADDR_LSB_CTRL   = 9'h13c,
    ADDR_UNICAST_VLAN109_MACADDR_MSB_DATA_0 = 9'h140,
    ADDR_UNICAST_VLAN109_MACADDR_MSB_CTRL   = 9'h144,
    ADDR_LOG_ALL_MASK_DATA_0                = 9'h148,
    ADDR_LOG_ALL_MASK_CTRL                  = 9'h14c,
    ADDR_DRIVER_DATA_0                      = 9'h150,
    ADDR_DRIVER_DATA_1                      = 9'h154,
    ADDR_DRIVER_CTRL                        = 9'h158,
    ADDR_FIFO_AXI_FULL_OFFSET_DATA_0        = 9'h160,
    ADDR_FIFO_AXI_FULL_OFFSET_DATA_1        = 9'h164,
    ADDR_FIFO_AXI_FULL_OFFSET_CTRL          = 9'h168,
    WRIDLE                                  = 2'd0,
    WRDATA                                  = 2'd1,
    WRRESP                                  = 2'd2,
    WRRESET                                 = 2'd3,
    RDIDLE                                  = 2'd0,
    RDDATA                                  = 2'd1,
    RDRESET                                 = 2'd2,
    ADDR_BITS                = 9;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_ap_idle;
    reg                           int_ap_continue;
    reg                           int_ap_ready = 1'b0;
    wire                          task_ap_ready;
    reg                           int_ap_done = 1'b0;
    wire                          task_ap_done;
    reg                           int_task_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_interrupt = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           auto_restart_status = 1'b0;
    reg                           auto_restart_done = 1'b0;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    reg  [63:0]                   int_fifo = 'b0;
    reg  [63:0]                   int_ddr = 'b0;
    reg  [31:0]                   int_status = 'b0;
    reg  [15:0]                   int_writeStatus = 'b0;
    reg  [31:0]                   int_logger_vlan_enable_mask = 'b0;
    reg                           int_vlan100_received_ap_vld;
    reg  [31:0]                   int_vlan100_received = 'b0;
    reg                           int_vlan101_received_ap_vld;
    reg  [31:0]                   int_vlan101_received = 'b0;
    reg                           int_vlan102_received_ap_vld;
    reg  [31:0]                   int_vlan102_received = 'b0;
    reg                           int_vlan103_received_ap_vld;
    reg  [31:0]                   int_vlan103_received = 'b0;
    reg                           int_vlan104_received_ap_vld;
    reg  [31:0]                   int_vlan104_received = 'b0;
    reg                           int_vlan105_received_ap_vld;
    reg  [31:0]                   int_vlan105_received = 'b0;
    reg                           int_vlan106_received_ap_vld;
    reg  [31:0]                   int_vlan106_received = 'b0;
    reg                           int_vlan107_received_ap_vld;
    reg  [31:0]                   int_vlan107_received = 'b0;
    reg                           int_vlan108_received_ap_vld;
    reg  [31:0]                   int_vlan108_received = 'b0;
    reg                           int_vlan109_received_ap_vld;
    reg  [31:0]                   int_vlan109_received = 'b0;
    reg                           int_droped_ap_vld;
    reg  [31:0]                   int_droped = 'b0;
    reg  [31:0]                   int_multicast_recv_enable = 'b0;
    reg  [31:0]                   int_unicast_filter_enable = 'b0;
    reg  [31:0]                   int_unicast_vlan100_macaddr_lsb = 'b0;
    reg  [31:0]                   int_unicast_vlan100_macaddr_msb = 'b0;
    reg  [31:0]                   int_unicast_vlan101_macaddr_lsb = 'b0;
    reg  [31:0]                   int_unicast_vlan101_macaddr_msb = 'b0;
    reg  [31:0]                   int_unicast_vlan102_macaddr_lsb = 'b0;
    reg  [31:0]                   int_unicast_vlan102_macaddr_msb = 'b0;
    reg  [31:0]                   int_unicast_vlan103_macaddr_lsb = 'b0;
    reg  [31:0]                   int_unicast_vlan103_macaddr_msb = 'b0;
    reg  [31:0]                   int_unicast_vlan104_macaddr_lsb = 'b0;
    reg  [31:0]                   int_unicast_vlan104_macaddr_msb = 'b0;
    reg  [31:0]                   int_unicast_vlan105_macaddr_lsb = 'b0;
    reg  [31:0]                   int_unicast_vlan105_macaddr_msb = 'b0;
    reg  [31:0]                   int_unicast_vlan106_macaddr_lsb = 'b0;
    reg  [31:0]                   int_unicast_vlan106_macaddr_msb = 'b0;
    reg  [31:0]                   int_unicast_vlan107_macaddr_lsb = 'b0;
    reg  [31:0]                   int_unicast_vlan107_macaddr_msb = 'b0;
    reg  [31:0]                   int_unicast_vlan108_macaddr_lsb = 'b0;
    reg  [31:0]                   int_unicast_vlan108_macaddr_msb = 'b0;
    reg  [31:0]                   int_unicast_vlan109_macaddr_lsb = 'b0;
    reg  [31:0]                   int_unicast_vlan109_macaddr_msb = 'b0;
    reg  [31:0]                   int_log_all_mask = 'b0;
    reg  [63:0]                   int_driver = 'b0;
    reg  [63:0]                   int_fifo_axi_full_offset = 'b0;

//------------------------Instantiation------------------


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_task_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[4] <= int_ap_continue;
                    rdata[7] <= int_auto_restart;
                    rdata[9] <= int_interrupt;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_FIFO_DATA_0: begin
                    rdata <= int_fifo[31:0];
                end
                ADDR_FIFO_DATA_1: begin
                    rdata <= int_fifo[63:32];
                end
                ADDR_DDR_DATA_0: begin
                    rdata <= int_ddr[31:0];
                end
                ADDR_DDR_DATA_1: begin
                    rdata <= int_ddr[63:32];
                end
                ADDR_STATUS_DATA_0: begin
                    rdata <= int_status[31:0];
                end
                ADDR_WRITESTATUS_DATA_0: begin
                    rdata <= int_writeStatus[15:0];
                end
                ADDR_LOGGER_VLAN_ENABLE_MASK_DATA_0: begin
                    rdata <= int_logger_vlan_enable_mask[31:0];
                end
                ADDR_VLAN100_RECEIVED_DATA_0: begin
                    rdata <= int_vlan100_received[31:0];
                end
                ADDR_VLAN100_RECEIVED_CTRL: begin
                    rdata[0] <= int_vlan100_received_ap_vld;
                end
                ADDR_VLAN101_RECEIVED_DATA_0: begin
                    rdata <= int_vlan101_received[31:0];
                end
                ADDR_VLAN101_RECEIVED_CTRL: begin
                    rdata[0] <= int_vlan101_received_ap_vld;
                end
                ADDR_VLAN102_RECEIVED_DATA_0: begin
                    rdata <= int_vlan102_received[31:0];
                end
                ADDR_VLAN102_RECEIVED_CTRL: begin
                    rdata[0] <= int_vlan102_received_ap_vld;
                end
                ADDR_VLAN103_RECEIVED_DATA_0: begin
                    rdata <= int_vlan103_received[31:0];
                end
                ADDR_VLAN103_RECEIVED_CTRL: begin
                    rdata[0] <= int_vlan103_received_ap_vld;
                end
                ADDR_VLAN104_RECEIVED_DATA_0: begin
                    rdata <= int_vlan104_received[31:0];
                end
                ADDR_VLAN104_RECEIVED_CTRL: begin
                    rdata[0] <= int_vlan104_received_ap_vld;
                end
                ADDR_VLAN105_RECEIVED_DATA_0: begin
                    rdata <= int_vlan105_received[31:0];
                end
                ADDR_VLAN105_RECEIVED_CTRL: begin
                    rdata[0] <= int_vlan105_received_ap_vld;
                end
                ADDR_VLAN106_RECEIVED_DATA_0: begin
                    rdata <= int_vlan106_received[31:0];
                end
                ADDR_VLAN106_RECEIVED_CTRL: begin
                    rdata[0] <= int_vlan106_received_ap_vld;
                end
                ADDR_VLAN107_RECEIVED_DATA_0: begin
                    rdata <= int_vlan107_received[31:0];
                end
                ADDR_VLAN107_RECEIVED_CTRL: begin
                    rdata[0] <= int_vlan107_received_ap_vld;
                end
                ADDR_VLAN108_RECEIVED_DATA_0: begin
                    rdata <= int_vlan108_received[31:0];
                end
                ADDR_VLAN108_RECEIVED_CTRL: begin
                    rdata[0] <= int_vlan108_received_ap_vld;
                end
                ADDR_VLAN109_RECEIVED_DATA_0: begin
                    rdata <= int_vlan109_received[31:0];
                end
                ADDR_VLAN109_RECEIVED_CTRL: begin
                    rdata[0] <= int_vlan109_received_ap_vld;
                end
                ADDR_DROPED_DATA_0: begin
                    rdata <= int_droped[31:0];
                end
                ADDR_DROPED_CTRL: begin
                    rdata[0] <= int_droped_ap_vld;
                end
                ADDR_MULTICAST_RECV_ENABLE_DATA_0: begin
                    rdata <= int_multicast_recv_enable[31:0];
                end
                ADDR_UNICAST_FILTER_ENABLE_DATA_0: begin
                    rdata <= int_unicast_filter_enable[31:0];
                end
                ADDR_UNICAST_VLAN100_MACADDR_LSB_DATA_0: begin
                    rdata <= int_unicast_vlan100_macaddr_lsb[31:0];
                end
                ADDR_UNICAST_VLAN100_MACADDR_MSB_DATA_0: begin
                    rdata <= int_unicast_vlan100_macaddr_msb[31:0];
                end
                ADDR_UNICAST_VLAN101_MACADDR_LSB_DATA_0: begin
                    rdata <= int_unicast_vlan101_macaddr_lsb[31:0];
                end
                ADDR_UNICAST_VLAN101_MACADDR_MSB_DATA_0: begin
                    rdata <= int_unicast_vlan101_macaddr_msb[31:0];
                end
                ADDR_UNICAST_VLAN102_MACADDR_LSB_DATA_0: begin
                    rdata <= int_unicast_vlan102_macaddr_lsb[31:0];
                end
                ADDR_UNICAST_VLAN102_MACADDR_MSB_DATA_0: begin
                    rdata <= int_unicast_vlan102_macaddr_msb[31:0];
                end
                ADDR_UNICAST_VLAN103_MACADDR_LSB_DATA_0: begin
                    rdata <= int_unicast_vlan103_macaddr_lsb[31:0];
                end
                ADDR_UNICAST_VLAN103_MACADDR_MSB_DATA_0: begin
                    rdata <= int_unicast_vlan103_macaddr_msb[31:0];
                end
                ADDR_UNICAST_VLAN104_MACADDR_LSB_DATA_0: begin
                    rdata <= int_unicast_vlan104_macaddr_lsb[31:0];
                end
                ADDR_UNICAST_VLAN104_MACADDR_MSB_DATA_0: begin
                    rdata <= int_unicast_vlan104_macaddr_msb[31:0];
                end
                ADDR_UNICAST_VLAN105_MACADDR_LSB_DATA_0: begin
                    rdata <= int_unicast_vlan105_macaddr_lsb[31:0];
                end
                ADDR_UNICAST_VLAN105_MACADDR_MSB_DATA_0: begin
                    rdata <= int_unicast_vlan105_macaddr_msb[31:0];
                end
                ADDR_UNICAST_VLAN106_MACADDR_LSB_DATA_0: begin
                    rdata <= int_unicast_vlan106_macaddr_lsb[31:0];
                end
                ADDR_UNICAST_VLAN106_MACADDR_MSB_DATA_0: begin
                    rdata <= int_unicast_vlan106_macaddr_msb[31:0];
                end
                ADDR_UNICAST_VLAN107_MACADDR_LSB_DATA_0: begin
                    rdata <= int_unicast_vlan107_macaddr_lsb[31:0];
                end
                ADDR_UNICAST_VLAN107_MACADDR_MSB_DATA_0: begin
                    rdata <= int_unicast_vlan107_macaddr_msb[31:0];
                end
                ADDR_UNICAST_VLAN108_MACADDR_LSB_DATA_0: begin
                    rdata <= int_unicast_vlan108_macaddr_lsb[31:0];
                end
                ADDR_UNICAST_VLAN108_MACADDR_MSB_DATA_0: begin
                    rdata <= int_unicast_vlan108_macaddr_msb[31:0];
                end
                ADDR_UNICAST_VLAN109_MACADDR_LSB_DATA_0: begin
                    rdata <= int_unicast_vlan109_macaddr_lsb[31:0];
                end
                ADDR_UNICAST_VLAN109_MACADDR_MSB_DATA_0: begin
                    rdata <= int_unicast_vlan109_macaddr_msb[31:0];
                end
                ADDR_LOG_ALL_MASK_DATA_0: begin
                    rdata <= int_log_all_mask[31:0];
                end
                ADDR_DRIVER_DATA_0: begin
                    rdata <= int_driver[31:0];
                end
                ADDR_DRIVER_DATA_1: begin
                    rdata <= int_driver[63:32];
                end
                ADDR_FIFO_AXI_FULL_OFFSET_DATA_0: begin
                    rdata <= int_fifo_axi_full_offset[31:0];
                end
                ADDR_FIFO_AXI_FULL_OFFSET_DATA_1: begin
                    rdata <= int_fifo_axi_full_offset[63:32];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign interrupt                   = int_interrupt;
assign ap_start                    = int_ap_start;
assign task_ap_done                = (ap_done && !auto_restart_status) || auto_restart_done;
assign task_ap_ready               = ap_ready && !int_auto_restart;
assign ap_continue                 = int_ap_continue || auto_restart_status;
assign fifo                        = int_fifo;
assign ddr                         = int_ddr;
assign status                      = int_status;
assign writeStatus                 = int_writeStatus;
assign logger_vlan_enable_mask     = int_logger_vlan_enable_mask;
assign multicast_recv_enable       = int_multicast_recv_enable;
assign unicast_filter_enable       = int_unicast_filter_enable;
assign unicast_vlan100_macaddr_lsb = int_unicast_vlan100_macaddr_lsb;
assign unicast_vlan100_macaddr_msb = int_unicast_vlan100_macaddr_msb;
assign unicast_vlan101_macaddr_lsb = int_unicast_vlan101_macaddr_lsb;
assign unicast_vlan101_macaddr_msb = int_unicast_vlan101_macaddr_msb;
assign unicast_vlan102_macaddr_lsb = int_unicast_vlan102_macaddr_lsb;
assign unicast_vlan102_macaddr_msb = int_unicast_vlan102_macaddr_msb;
assign unicast_vlan103_macaddr_lsb = int_unicast_vlan103_macaddr_lsb;
assign unicast_vlan103_macaddr_msb = int_unicast_vlan103_macaddr_msb;
assign unicast_vlan104_macaddr_lsb = int_unicast_vlan104_macaddr_lsb;
assign unicast_vlan104_macaddr_msb = int_unicast_vlan104_macaddr_msb;
assign unicast_vlan105_macaddr_lsb = int_unicast_vlan105_macaddr_lsb;
assign unicast_vlan105_macaddr_msb = int_unicast_vlan105_macaddr_msb;
assign unicast_vlan106_macaddr_lsb = int_unicast_vlan106_macaddr_lsb;
assign unicast_vlan106_macaddr_msb = int_unicast_vlan106_macaddr_msb;
assign unicast_vlan107_macaddr_lsb = int_unicast_vlan107_macaddr_lsb;
assign unicast_vlan107_macaddr_msb = int_unicast_vlan107_macaddr_msb;
assign unicast_vlan108_macaddr_lsb = int_unicast_vlan108_macaddr_lsb;
assign unicast_vlan108_macaddr_msb = int_unicast_vlan108_macaddr_msb;
assign unicast_vlan109_macaddr_lsb = int_unicast_vlan109_macaddr_lsb;
assign unicast_vlan109_macaddr_msb = int_unicast_vlan109_macaddr_msb;
assign log_all_mask                = int_log_all_mask;
assign driver                      = int_driver;
assign fifo_axi_full_offset        = int_fifo_axi_full_offset;
// int_interrupt
always @(posedge ACLK) begin
    if (ARESET)
        int_interrupt <= 1'b0;
    else if (ACLK_EN) begin
        if (int_gie && (|int_isr))
            int_interrupt <= 1'b1;
        else
            int_interrupt <= 1'b0;
    end
end

// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_done <= ap_done;
    end
end

// int_task_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_task_ap_done <= 1'b0;
    else if (ACLK_EN) begin
            int_task_ap_done <= task_ap_done && !int_ap_continue;
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_ready)
            int_ap_ready <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_ready <= 1'b0;
    end
end

// int_ap_continue
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_continue <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[4])
            int_ap_continue <= 1'b1;
        else
            int_ap_continue <= 1'b0; // self clear
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// auto_restart_status
always @(posedge ACLK) begin
    if (ARESET)
        auto_restart_status <= 1'b0;
    else if (ACLK_EN) begin
        if (int_auto_restart)
            auto_restart_status <= 1'b1;
        else if (ap_idle)
            auto_restart_status <= 1'b0;
    end
end

// auto_restart_done
always @(posedge ACLK) begin
    if (ARESET)
        auto_restart_done <= 1'b0;
    else if (ACLK_EN) begin
        if (auto_restart_status && (ap_idle && !int_ap_idle))
            auto_restart_done <= 1'b1;
        else if (int_ap_continue)
            auto_restart_done <= 1'b0;
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_fifo[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_fifo[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_FIFO_DATA_0)
            int_fifo[31:0] <= (WDATA[31:0] & wmask) | (int_fifo[31:0] & ~wmask);
    end
end

// int_fifo[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_fifo[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_FIFO_DATA_1)
            int_fifo[63:32] <= (WDATA[31:0] & wmask) | (int_fifo[63:32] & ~wmask);
    end
end

// int_ddr[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_ddr[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DDR_DATA_0)
            int_ddr[31:0] <= (WDATA[31:0] & wmask) | (int_ddr[31:0] & ~wmask);
    end
end

// int_ddr[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_ddr[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DDR_DATA_1)
            int_ddr[63:32] <= (WDATA[31:0] & wmask) | (int_ddr[63:32] & ~wmask);
    end
end

// int_status[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_status[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_STATUS_DATA_0)
            int_status[31:0] <= (WDATA[31:0] & wmask) | (int_status[31:0] & ~wmask);
    end
end

// int_writeStatus[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_writeStatus[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WRITESTATUS_DATA_0)
            int_writeStatus[15:0] <= (WDATA[31:0] & wmask) | (int_writeStatus[15:0] & ~wmask);
    end
end

// int_logger_vlan_enable_mask[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_logger_vlan_enable_mask[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LOGGER_VLAN_ENABLE_MASK_DATA_0)
            int_logger_vlan_enable_mask[31:0] <= (WDATA[31:0] & wmask) | (int_logger_vlan_enable_mask[31:0] & ~wmask);
    end
end

// int_vlan100_received
always @(posedge ACLK) begin
    if (ARESET)
        int_vlan100_received <= 0;
    else if (ACLK_EN) begin
        if (vlan100_received_ap_vld)
            int_vlan100_received <= vlan100_received;
    end
end

// int_vlan100_received_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_vlan100_received_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (vlan100_received_ap_vld)
            int_vlan100_received_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_VLAN100_RECEIVED_CTRL)
            int_vlan100_received_ap_vld <= 1'b0; // clear on read
    end
end

// int_vlan101_received
always @(posedge ACLK) begin
    if (ARESET)
        int_vlan101_received <= 0;
    else if (ACLK_EN) begin
        if (vlan101_received_ap_vld)
            int_vlan101_received <= vlan101_received;
    end
end

// int_vlan101_received_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_vlan101_received_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (vlan101_received_ap_vld)
            int_vlan101_received_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_VLAN101_RECEIVED_CTRL)
            int_vlan101_received_ap_vld <= 1'b0; // clear on read
    end
end

// int_vlan102_received
always @(posedge ACLK) begin
    if (ARESET)
        int_vlan102_received <= 0;
    else if (ACLK_EN) begin
        if (vlan102_received_ap_vld)
            int_vlan102_received <= vlan102_received;
    end
end

// int_vlan102_received_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_vlan102_received_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (vlan102_received_ap_vld)
            int_vlan102_received_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_VLAN102_RECEIVED_CTRL)
            int_vlan102_received_ap_vld <= 1'b0; // clear on read
    end
end

// int_vlan103_received
always @(posedge ACLK) begin
    if (ARESET)
        int_vlan103_received <= 0;
    else if (ACLK_EN) begin
        if (vlan103_received_ap_vld)
            int_vlan103_received <= vlan103_received;
    end
end

// int_vlan103_received_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_vlan103_received_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (vlan103_received_ap_vld)
            int_vlan103_received_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_VLAN103_RECEIVED_CTRL)
            int_vlan103_received_ap_vld <= 1'b0; // clear on read
    end
end

// int_vlan104_received
always @(posedge ACLK) begin
    if (ARESET)
        int_vlan104_received <= 0;
    else if (ACLK_EN) begin
        if (vlan104_received_ap_vld)
            int_vlan104_received <= vlan104_received;
    end
end

// int_vlan104_received_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_vlan104_received_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (vlan104_received_ap_vld)
            int_vlan104_received_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_VLAN104_RECEIVED_CTRL)
            int_vlan104_received_ap_vld <= 1'b0; // clear on read
    end
end

// int_vlan105_received
always @(posedge ACLK) begin
    if (ARESET)
        int_vlan105_received <= 0;
    else if (ACLK_EN) begin
        if (vlan105_received_ap_vld)
            int_vlan105_received <= vlan105_received;
    end
end

// int_vlan105_received_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_vlan105_received_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (vlan105_received_ap_vld)
            int_vlan105_received_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_VLAN105_RECEIVED_CTRL)
            int_vlan105_received_ap_vld <= 1'b0; // clear on read
    end
end

// int_vlan106_received
always @(posedge ACLK) begin
    if (ARESET)
        int_vlan106_received <= 0;
    else if (ACLK_EN) begin
        if (vlan106_received_ap_vld)
            int_vlan106_received <= vlan106_received;
    end
end

// int_vlan106_received_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_vlan106_received_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (vlan106_received_ap_vld)
            int_vlan106_received_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_VLAN106_RECEIVED_CTRL)
            int_vlan106_received_ap_vld <= 1'b0; // clear on read
    end
end

// int_vlan107_received
always @(posedge ACLK) begin
    if (ARESET)
        int_vlan107_received <= 0;
    else if (ACLK_EN) begin
        if (vlan107_received_ap_vld)
            int_vlan107_received <= vlan107_received;
    end
end

// int_vlan107_received_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_vlan107_received_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (vlan107_received_ap_vld)
            int_vlan107_received_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_VLAN107_RECEIVED_CTRL)
            int_vlan107_received_ap_vld <= 1'b0; // clear on read
    end
end

// int_vlan108_received
always @(posedge ACLK) begin
    if (ARESET)
        int_vlan108_received <= 0;
    else if (ACLK_EN) begin
        if (vlan108_received_ap_vld)
            int_vlan108_received <= vlan108_received;
    end
end

// int_vlan108_received_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_vlan108_received_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (vlan108_received_ap_vld)
            int_vlan108_received_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_VLAN108_RECEIVED_CTRL)
            int_vlan108_received_ap_vld <= 1'b0; // clear on read
    end
end

// int_vlan109_received
always @(posedge ACLK) begin
    if (ARESET)
        int_vlan109_received <= 0;
    else if (ACLK_EN) begin
        if (vlan109_received_ap_vld)
            int_vlan109_received <= vlan109_received;
    end
end

// int_vlan109_received_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_vlan109_received_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (vlan109_received_ap_vld)
            int_vlan109_received_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_VLAN109_RECEIVED_CTRL)
            int_vlan109_received_ap_vld <= 1'b0; // clear on read
    end
end

// int_droped
always @(posedge ACLK) begin
    if (ARESET)
        int_droped <= 0;
    else if (ACLK_EN) begin
        if (droped_ap_vld)
            int_droped <= droped;
    end
end

// int_droped_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_droped_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (droped_ap_vld)
            int_droped_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_DROPED_CTRL)
            int_droped_ap_vld <= 1'b0; // clear on read
    end
end

// int_multicast_recv_enable[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_multicast_recv_enable[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_MULTICAST_RECV_ENABLE_DATA_0)
            int_multicast_recv_enable[31:0] <= (WDATA[31:0] & wmask) | (int_multicast_recv_enable[31:0] & ~wmask);
    end
end

// int_unicast_filter_enable[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_unicast_filter_enable[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_UNICAST_FILTER_ENABLE_DATA_0)
            int_unicast_filter_enable[31:0] <= (WDATA[31:0] & wmask) | (int_unicast_filter_enable[31:0] & ~wmask);
    end
end

// int_unicast_vlan100_macaddr_lsb[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_unicast_vlan100_macaddr_lsb[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_UNICAST_VLAN100_MACADDR_LSB_DATA_0)
            int_unicast_vlan100_macaddr_lsb[31:0] <= (WDATA[31:0] & wmask) | (int_unicast_vlan100_macaddr_lsb[31:0] & ~wmask);
    end
end

// int_unicast_vlan100_macaddr_msb[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_unicast_vlan100_macaddr_msb[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_UNICAST_VLAN100_MACADDR_MSB_DATA_0)
            int_unicast_vlan100_macaddr_msb[31:0] <= (WDATA[31:0] & wmask) | (int_unicast_vlan100_macaddr_msb[31:0] & ~wmask);
    end
end

// int_unicast_vlan101_macaddr_lsb[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_unicast_vlan101_macaddr_lsb[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_UNICAST_VLAN101_MACADDR_LSB_DATA_0)
            int_unicast_vlan101_macaddr_lsb[31:0] <= (WDATA[31:0] & wmask) | (int_unicast_vlan101_macaddr_lsb[31:0] & ~wmask);
    end
end

// int_unicast_vlan101_macaddr_msb[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_unicast_vlan101_macaddr_msb[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_UNICAST_VLAN101_MACADDR_MSB_DATA_0)
            int_unicast_vlan101_macaddr_msb[31:0] <= (WDATA[31:0] & wmask) | (int_unicast_vlan101_macaddr_msb[31:0] & ~wmask);
    end
end

// int_unicast_vlan102_macaddr_lsb[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_unicast_vlan102_macaddr_lsb[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_UNICAST_VLAN102_MACADDR_LSB_DATA_0)
            int_unicast_vlan102_macaddr_lsb[31:0] <= (WDATA[31:0] & wmask) | (int_unicast_vlan102_macaddr_lsb[31:0] & ~wmask);
    end
end

// int_unicast_vlan102_macaddr_msb[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_unicast_vlan102_macaddr_msb[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_UNICAST_VLAN102_MACADDR_MSB_DATA_0)
            int_unicast_vlan102_macaddr_msb[31:0] <= (WDATA[31:0] & wmask) | (int_unicast_vlan102_macaddr_msb[31:0] & ~wmask);
    end
end

// int_unicast_vlan103_macaddr_lsb[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_unicast_vlan103_macaddr_lsb[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_UNICAST_VLAN103_MACADDR_LSB_DATA_0)
            int_unicast_vlan103_macaddr_lsb[31:0] <= (WDATA[31:0] & wmask) | (int_unicast_vlan103_macaddr_lsb[31:0] & ~wmask);
    end
end

// int_unicast_vlan103_macaddr_msb[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_unicast_vlan103_macaddr_msb[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_UNICAST_VLAN103_MACADDR_MSB_DATA_0)
            int_unicast_vlan103_macaddr_msb[31:0] <= (WDATA[31:0] & wmask) | (int_unicast_vlan103_macaddr_msb[31:0] & ~wmask);
    end
end

// int_unicast_vlan104_macaddr_lsb[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_unicast_vlan104_macaddr_lsb[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_UNICAST_VLAN104_MACADDR_LSB_DATA_0)
            int_unicast_vlan104_macaddr_lsb[31:0] <= (WDATA[31:0] & wmask) | (int_unicast_vlan104_macaddr_lsb[31:0] & ~wmask);
    end
end

// int_unicast_vlan104_macaddr_msb[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_unicast_vlan104_macaddr_msb[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_UNICAST_VLAN104_MACADDR_MSB_DATA_0)
            int_unicast_vlan104_macaddr_msb[31:0] <= (WDATA[31:0] & wmask) | (int_unicast_vlan104_macaddr_msb[31:0] & ~wmask);
    end
end

// int_unicast_vlan105_macaddr_lsb[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_unicast_vlan105_macaddr_lsb[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_UNICAST_VLAN105_MACADDR_LSB_DATA_0)
            int_unicast_vlan105_macaddr_lsb[31:0] <= (WDATA[31:0] & wmask) | (int_unicast_vlan105_macaddr_lsb[31:0] & ~wmask);
    end
end

// int_unicast_vlan105_macaddr_msb[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_unicast_vlan105_macaddr_msb[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_UNICAST_VLAN105_MACADDR_MSB_DATA_0)
            int_unicast_vlan105_macaddr_msb[31:0] <= (WDATA[31:0] & wmask) | (int_unicast_vlan105_macaddr_msb[31:0] & ~wmask);
    end
end

// int_unicast_vlan106_macaddr_lsb[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_unicast_vlan106_macaddr_lsb[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_UNICAST_VLAN106_MACADDR_LSB_DATA_0)
            int_unicast_vlan106_macaddr_lsb[31:0] <= (WDATA[31:0] & wmask) | (int_unicast_vlan106_macaddr_lsb[31:0] & ~wmask);
    end
end

// int_unicast_vlan106_macaddr_msb[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_unicast_vlan106_macaddr_msb[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_UNICAST_VLAN106_MACADDR_MSB_DATA_0)
            int_unicast_vlan106_macaddr_msb[31:0] <= (WDATA[31:0] & wmask) | (int_unicast_vlan106_macaddr_msb[31:0] & ~wmask);
    end
end

// int_unicast_vlan107_macaddr_lsb[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_unicast_vlan107_macaddr_lsb[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_UNICAST_VLAN107_MACADDR_LSB_DATA_0)
            int_unicast_vlan107_macaddr_lsb[31:0] <= (WDATA[31:0] & wmask) | (int_unicast_vlan107_macaddr_lsb[31:0] & ~wmask);
    end
end

// int_unicast_vlan107_macaddr_msb[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_unicast_vlan107_macaddr_msb[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_UNICAST_VLAN107_MACADDR_MSB_DATA_0)
            int_unicast_vlan107_macaddr_msb[31:0] <= (WDATA[31:0] & wmask) | (int_unicast_vlan107_macaddr_msb[31:0] & ~wmask);
    end
end

// int_unicast_vlan108_macaddr_lsb[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_unicast_vlan108_macaddr_lsb[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_UNICAST_VLAN108_MACADDR_LSB_DATA_0)
            int_unicast_vlan108_macaddr_lsb[31:0] <= (WDATA[31:0] & wmask) | (int_unicast_vlan108_macaddr_lsb[31:0] & ~wmask);
    end
end

// int_unicast_vlan108_macaddr_msb[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_unicast_vlan108_macaddr_msb[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_UNICAST_VLAN108_MACADDR_MSB_DATA_0)
            int_unicast_vlan108_macaddr_msb[31:0] <= (WDATA[31:0] & wmask) | (int_unicast_vlan108_macaddr_msb[31:0] & ~wmask);
    end
end

// int_unicast_vlan109_macaddr_lsb[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_unicast_vlan109_macaddr_lsb[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_UNICAST_VLAN109_MACADDR_LSB_DATA_0)
            int_unicast_vlan109_macaddr_lsb[31:0] <= (WDATA[31:0] & wmask) | (int_unicast_vlan109_macaddr_lsb[31:0] & ~wmask);
    end
end

// int_unicast_vlan109_macaddr_msb[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_unicast_vlan109_macaddr_msb[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_UNICAST_VLAN109_MACADDR_MSB_DATA_0)
            int_unicast_vlan109_macaddr_msb[31:0] <= (WDATA[31:0] & wmask) | (int_unicast_vlan109_macaddr_msb[31:0] & ~wmask);
    end
end

// int_log_all_mask[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_log_all_mask[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LOG_ALL_MASK_DATA_0)
            int_log_all_mask[31:0] <= (WDATA[31:0] & wmask) | (int_log_all_mask[31:0] & ~wmask);
    end
end

// int_driver[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_driver[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DRIVER_DATA_0)
            int_driver[31:0] <= (WDATA[31:0] & wmask) | (int_driver[31:0] & ~wmask);
    end
end

// int_driver[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_driver[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DRIVER_DATA_1)
            int_driver[63:32] <= (WDATA[31:0] & wmask) | (int_driver[63:32] & ~wmask);
    end
end

// int_fifo_axi_full_offset[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_fifo_axi_full_offset[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_FIFO_AXI_FULL_OFFSET_DATA_0)
            int_fifo_axi_full_offset[31:0] <= (WDATA[31:0] & wmask) | (int_fifo_axi_full_offset[31:0] & ~wmask);
    end
end

// int_fifo_axi_full_offset[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_fifo_axi_full_offset[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_FIFO_AXI_FULL_OFFSET_DATA_1)
            int_fifo_axi_full_offset[63:32] <= (WDATA[31:0] & wmask) | (int_fifo_axi_full_offset[63:32] & ~wmask);
    end
end

//synthesis translate_off
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (int_gie & ~int_isr[0] & int_ier[0] & ap_done)
            $display ("// Interrupt Monitor : interrupt for ap_done detected @ \"%0t\"", $time);
        if (int_gie & ~int_isr[1] & int_ier[1] & ap_ready)
            $display ("// Interrupt Monitor : interrupt for ap_ready detected @ \"%0t\"", $time);
    end
end
//synthesis translate_on

//------------------------Memory logic-------------------

endmodule
