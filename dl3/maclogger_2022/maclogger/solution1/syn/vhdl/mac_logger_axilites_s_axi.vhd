-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Tool Version Limit: 2019.12
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity mac_logger_axilites_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 9;
    C_S_AXI_DATA_WIDTH    : INTEGER := 32);
port (
    ACLK                  :in   STD_LOGIC;
    ARESET                :in   STD_LOGIC;
    ACLK_EN               :in   STD_LOGIC;
    AWADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    AWVALID               :in   STD_LOGIC;
    AWREADY               :out  STD_LOGIC;
    WDATA                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    WSTRB                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH/8-1 downto 0);
    WVALID                :in   STD_LOGIC;
    WREADY                :out  STD_LOGIC;
    BRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    BVALID                :out  STD_LOGIC;
    BREADY                :in   STD_LOGIC;
    ARADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    ARVALID               :in   STD_LOGIC;
    ARREADY               :out  STD_LOGIC;
    RDATA                 :out  STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    RRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    RVALID                :out  STD_LOGIC;
    RREADY                :in   STD_LOGIC;
    interrupt             :out  STD_LOGIC;
    fifo                  :out  STD_LOGIC_VECTOR(63 downto 0);
    ddr                   :out  STD_LOGIC_VECTOR(63 downto 0);
    status                :out  STD_LOGIC_VECTOR(31 downto 0);
    writeStatus           :out  STD_LOGIC_VECTOR(15 downto 0);
    logger_vlan_enable_mask :out  STD_LOGIC_VECTOR(31 downto 0);
    vlan100_received      :in   STD_LOGIC_VECTOR(31 downto 0);
    vlan100_received_ap_vld :in   STD_LOGIC;
    vlan101_received      :in   STD_LOGIC_VECTOR(31 downto 0);
    vlan101_received_ap_vld :in   STD_LOGIC;
    vlan102_received      :in   STD_LOGIC_VECTOR(31 downto 0);
    vlan102_received_ap_vld :in   STD_LOGIC;
    vlan103_received      :in   STD_LOGIC_VECTOR(31 downto 0);
    vlan103_received_ap_vld :in   STD_LOGIC;
    vlan104_received      :in   STD_LOGIC_VECTOR(31 downto 0);
    vlan104_received_ap_vld :in   STD_LOGIC;
    vlan105_received      :in   STD_LOGIC_VECTOR(31 downto 0);
    vlan105_received_ap_vld :in   STD_LOGIC;
    vlan106_received      :in   STD_LOGIC_VECTOR(31 downto 0);
    vlan106_received_ap_vld :in   STD_LOGIC;
    vlan107_received      :in   STD_LOGIC_VECTOR(31 downto 0);
    vlan107_received_ap_vld :in   STD_LOGIC;
    vlan108_received      :in   STD_LOGIC_VECTOR(31 downto 0);
    vlan108_received_ap_vld :in   STD_LOGIC;
    vlan109_received      :in   STD_LOGIC_VECTOR(31 downto 0);
    vlan109_received_ap_vld :in   STD_LOGIC;
    droped                :in   STD_LOGIC_VECTOR(31 downto 0);
    droped_ap_vld         :in   STD_LOGIC;
    multicast_recv_enable :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_filter_enable :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan100_macaddr_lsb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan100_macaddr_msb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan101_macaddr_lsb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan101_macaddr_msb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan102_macaddr_lsb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan102_macaddr_msb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan103_macaddr_lsb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan103_macaddr_msb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan104_macaddr_lsb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan104_macaddr_msb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan105_macaddr_lsb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan105_macaddr_msb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan106_macaddr_lsb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan106_macaddr_msb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan107_macaddr_lsb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan107_macaddr_msb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan108_macaddr_lsb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan108_macaddr_msb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan109_macaddr_lsb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan109_macaddr_msb :out  STD_LOGIC_VECTOR(31 downto 0);
    log_all_mask          :out  STD_LOGIC_VECTOR(31 downto 0);
    driver                :out  STD_LOGIC_VECTOR(63 downto 0);
    fifo_axi_full_offset  :out  STD_LOGIC_VECTOR(63 downto 0);
    ap_start              :out  STD_LOGIC;
    ap_done               :in   STD_LOGIC;
    ap_ready              :in   STD_LOGIC;
    ap_continue           :out  STD_LOGIC;
    ap_idle               :in   STD_LOGIC
);
end entity mac_logger_axilites_s_axi;

-- ------------------------Address Info-------------------
-- 0x000 : Control signals
--         bit 0  - ap_start (Read/Write/COH)
--         bit 1  - ap_done (Read)
--         bit 2  - ap_idle (Read)
--         bit 3  - ap_ready (Read/COR)
--         bit 4  - ap_continue (Read/Write/SC)
--         bit 7  - auto_restart (Read/Write)
--         bit 9  - interrupt (Read)
--         others - reserved
-- 0x004 : Global Interrupt Enable Register
--         bit 0  - Global Interrupt Enable (Read/Write)
--         others - reserved
-- 0x008 : IP Interrupt Enable Register (Read/Write)
--         bit 0 - enable ap_done interrupt (Read/Write)
--         bit 1 - enable ap_ready interrupt (Read/Write)
--         others - reserved
-- 0x00c : IP Interrupt Status Register (Read/TOW)
--         bit 0 - ap_done (Read/TOW)
--         bit 1 - ap_ready (Read/TOW)
--         others - reserved
-- 0x010 : Data signal of fifo
--         bit 31~0 - fifo[31:0] (Read/Write)
-- 0x014 : Data signal of fifo
--         bit 31~0 - fifo[63:32] (Read/Write)
-- 0x018 : reserved
-- 0x01c : Data signal of ddr
--         bit 31~0 - ddr[31:0] (Read/Write)
-- 0x020 : Data signal of ddr
--         bit 31~0 - ddr[63:32] (Read/Write)
-- 0x024 : reserved
-- 0x028 : Data signal of status
--         bit 31~0 - status[31:0] (Read/Write)
-- 0x02c : reserved
-- 0x030 : Data signal of writeStatus
--         bit 15~0 - writeStatus[15:0] (Read/Write)
--         others   - reserved
-- 0x034 : reserved
-- 0x038 : Data signal of logger_vlan_enable_mask
--         bit 31~0 - logger_vlan_enable_mask[31:0] (Read/Write)
-- 0x03c : reserved
-- 0x040 : Data signal of vlan100_received
--         bit 31~0 - vlan100_received[31:0] (Read)
-- 0x044 : Control signal of vlan100_received
--         bit 0  - vlan100_received_ap_vld (Read/COR)
--         others - reserved
-- 0x048 : Data signal of vlan101_received
--         bit 31~0 - vlan101_received[31:0] (Read)
-- 0x04c : Control signal of vlan101_received
--         bit 0  - vlan101_received_ap_vld (Read/COR)
--         others - reserved
-- 0x050 : Data signal of vlan102_received
--         bit 31~0 - vlan102_received[31:0] (Read)
-- 0x054 : Control signal of vlan102_received
--         bit 0  - vlan102_received_ap_vld (Read/COR)
--         others - reserved
-- 0x058 : Data signal of vlan103_received
--         bit 31~0 - vlan103_received[31:0] (Read)
-- 0x05c : Control signal of vlan103_received
--         bit 0  - vlan103_received_ap_vld (Read/COR)
--         others - reserved
-- 0x060 : Data signal of vlan104_received
--         bit 31~0 - vlan104_received[31:0] (Read)
-- 0x064 : Control signal of vlan104_received
--         bit 0  - vlan104_received_ap_vld (Read/COR)
--         others - reserved
-- 0x068 : Data signal of vlan105_received
--         bit 31~0 - vlan105_received[31:0] (Read)
-- 0x06c : Control signal of vlan105_received
--         bit 0  - vlan105_received_ap_vld (Read/COR)
--         others - reserved
-- 0x070 : Data signal of vlan106_received
--         bit 31~0 - vlan106_received[31:0] (Read)
-- 0x074 : Control signal of vlan106_received
--         bit 0  - vlan106_received_ap_vld (Read/COR)
--         others - reserved
-- 0x078 : Data signal of vlan107_received
--         bit 31~0 - vlan107_received[31:0] (Read)
-- 0x07c : Control signal of vlan107_received
--         bit 0  - vlan107_received_ap_vld (Read/COR)
--         others - reserved
-- 0x080 : Data signal of vlan108_received
--         bit 31~0 - vlan108_received[31:0] (Read)
-- 0x084 : Control signal of vlan108_received
--         bit 0  - vlan108_received_ap_vld (Read/COR)
--         others - reserved
-- 0x088 : Data signal of vlan109_received
--         bit 31~0 - vlan109_received[31:0] (Read)
-- 0x08c : Control signal of vlan109_received
--         bit 0  - vlan109_received_ap_vld (Read/COR)
--         others - reserved
-- 0x090 : Data signal of droped
--         bit 31~0 - droped[31:0] (Read)
-- 0x094 : Control signal of droped
--         bit 0  - droped_ap_vld (Read/COR)
--         others - reserved
-- 0x098 : Data signal of multicast_recv_enable
--         bit 31~0 - multicast_recv_enable[31:0] (Read/Write)
-- 0x09c : reserved
-- 0x0a0 : Data signal of unicast_filter_enable
--         bit 31~0 - unicast_filter_enable[31:0] (Read/Write)
-- 0x0a4 : reserved
-- 0x0a8 : Data signal of unicast_vlan100_macaddr_lsb
--         bit 31~0 - unicast_vlan100_macaddr_lsb[31:0] (Read/Write)
-- 0x0ac : reserved
-- 0x0b0 : Data signal of unicast_vlan100_macaddr_msb
--         bit 31~0 - unicast_vlan100_macaddr_msb[31:0] (Read/Write)
-- 0x0b4 : reserved
-- 0x0b8 : Data signal of unicast_vlan101_macaddr_lsb
--         bit 31~0 - unicast_vlan101_macaddr_lsb[31:0] (Read/Write)
-- 0x0bc : reserved
-- 0x0c0 : Data signal of unicast_vlan101_macaddr_msb
--         bit 31~0 - unicast_vlan101_macaddr_msb[31:0] (Read/Write)
-- 0x0c4 : reserved
-- 0x0c8 : Data signal of unicast_vlan102_macaddr_lsb
--         bit 31~0 - unicast_vlan102_macaddr_lsb[31:0] (Read/Write)
-- 0x0cc : reserved
-- 0x0d0 : Data signal of unicast_vlan102_macaddr_msb
--         bit 31~0 - unicast_vlan102_macaddr_msb[31:0] (Read/Write)
-- 0x0d4 : reserved
-- 0x0d8 : Data signal of unicast_vlan103_macaddr_lsb
--         bit 31~0 - unicast_vlan103_macaddr_lsb[31:0] (Read/Write)
-- 0x0dc : reserved
-- 0x0e0 : Data signal of unicast_vlan103_macaddr_msb
--         bit 31~0 - unicast_vlan103_macaddr_msb[31:0] (Read/Write)
-- 0x0e4 : reserved
-- 0x0e8 : Data signal of unicast_vlan104_macaddr_lsb
--         bit 31~0 - unicast_vlan104_macaddr_lsb[31:0] (Read/Write)
-- 0x0ec : reserved
-- 0x0f0 : Data signal of unicast_vlan104_macaddr_msb
--         bit 31~0 - unicast_vlan104_macaddr_msb[31:0] (Read/Write)
-- 0x0f4 : reserved
-- 0x0f8 : Data signal of unicast_vlan105_macaddr_lsb
--         bit 31~0 - unicast_vlan105_macaddr_lsb[31:0] (Read/Write)
-- 0x0fc : reserved
-- 0x100 : Data signal of unicast_vlan105_macaddr_msb
--         bit 31~0 - unicast_vlan105_macaddr_msb[31:0] (Read/Write)
-- 0x104 : reserved
-- 0x108 : Data signal of unicast_vlan106_macaddr_lsb
--         bit 31~0 - unicast_vlan106_macaddr_lsb[31:0] (Read/Write)
-- 0x10c : reserved
-- 0x110 : Data signal of unicast_vlan106_macaddr_msb
--         bit 31~0 - unicast_vlan106_macaddr_msb[31:0] (Read/Write)
-- 0x114 : reserved
-- 0x118 : Data signal of unicast_vlan107_macaddr_lsb
--         bit 31~0 - unicast_vlan107_macaddr_lsb[31:0] (Read/Write)
-- 0x11c : reserved
-- 0x120 : Data signal of unicast_vlan107_macaddr_msb
--         bit 31~0 - unicast_vlan107_macaddr_msb[31:0] (Read/Write)
-- 0x124 : reserved
-- 0x128 : Data signal of unicast_vlan108_macaddr_lsb
--         bit 31~0 - unicast_vlan108_macaddr_lsb[31:0] (Read/Write)
-- 0x12c : reserved
-- 0x130 : Data signal of unicast_vlan108_macaddr_msb
--         bit 31~0 - unicast_vlan108_macaddr_msb[31:0] (Read/Write)
-- 0x134 : reserved
-- 0x138 : Data signal of unicast_vlan109_macaddr_lsb
--         bit 31~0 - unicast_vlan109_macaddr_lsb[31:0] (Read/Write)
-- 0x13c : reserved
-- 0x140 : Data signal of unicast_vlan109_macaddr_msb
--         bit 31~0 - unicast_vlan109_macaddr_msb[31:0] (Read/Write)
-- 0x144 : reserved
-- 0x148 : Data signal of log_all_mask
--         bit 31~0 - log_all_mask[31:0] (Read/Write)
-- 0x14c : reserved
-- 0x150 : Data signal of driver
--         bit 31~0 - driver[31:0] (Read/Write)
-- 0x154 : Data signal of driver
--         bit 31~0 - driver[63:32] (Read/Write)
-- 0x158 : reserved
-- 0x160 : Data signal of fifo_axi_full_offset
--         bit 31~0 - fifo_axi_full_offset[31:0] (Read/Write)
-- 0x164 : Data signal of fifo_axi_full_offset
--         bit 31~0 - fifo_axi_full_offset[63:32] (Read/Write)
-- 0x168 : reserved
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of mac_logger_axilites_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_AP_CTRL                            : INTEGER := 16#000#;
    constant ADDR_GIE                                : INTEGER := 16#004#;
    constant ADDR_IER                                : INTEGER := 16#008#;
    constant ADDR_ISR                                : INTEGER := 16#00c#;
    constant ADDR_FIFO_DATA_0                        : INTEGER := 16#010#;
    constant ADDR_FIFO_DATA_1                        : INTEGER := 16#014#;
    constant ADDR_FIFO_CTRL                          : INTEGER := 16#018#;
    constant ADDR_DDR_DATA_0                         : INTEGER := 16#01c#;
    constant ADDR_DDR_DATA_1                         : INTEGER := 16#020#;
    constant ADDR_DDR_CTRL                           : INTEGER := 16#024#;
    constant ADDR_STATUS_DATA_0                      : INTEGER := 16#028#;
    constant ADDR_STATUS_CTRL                        : INTEGER := 16#02c#;
    constant ADDR_WRITESTATUS_DATA_0                 : INTEGER := 16#030#;
    constant ADDR_WRITESTATUS_CTRL                   : INTEGER := 16#034#;
    constant ADDR_LOGGER_VLAN_ENABLE_MASK_DATA_0     : INTEGER := 16#038#;
    constant ADDR_LOGGER_VLAN_ENABLE_MASK_CTRL       : INTEGER := 16#03c#;
    constant ADDR_VLAN100_RECEIVED_DATA_0            : INTEGER := 16#040#;
    constant ADDR_VLAN100_RECEIVED_CTRL              : INTEGER := 16#044#;
    constant ADDR_VLAN101_RECEIVED_DATA_0            : INTEGER := 16#048#;
    constant ADDR_VLAN101_RECEIVED_CTRL              : INTEGER := 16#04c#;
    constant ADDR_VLAN102_RECEIVED_DATA_0            : INTEGER := 16#050#;
    constant ADDR_VLAN102_RECEIVED_CTRL              : INTEGER := 16#054#;
    constant ADDR_VLAN103_RECEIVED_DATA_0            : INTEGER := 16#058#;
    constant ADDR_VLAN103_RECEIVED_CTRL              : INTEGER := 16#05c#;
    constant ADDR_VLAN104_RECEIVED_DATA_0            : INTEGER := 16#060#;
    constant ADDR_VLAN104_RECEIVED_CTRL              : INTEGER := 16#064#;
    constant ADDR_VLAN105_RECEIVED_DATA_0            : INTEGER := 16#068#;
    constant ADDR_VLAN105_RECEIVED_CTRL              : INTEGER := 16#06c#;
    constant ADDR_VLAN106_RECEIVED_DATA_0            : INTEGER := 16#070#;
    constant ADDR_VLAN106_RECEIVED_CTRL              : INTEGER := 16#074#;
    constant ADDR_VLAN107_RECEIVED_DATA_0            : INTEGER := 16#078#;
    constant ADDR_VLAN107_RECEIVED_CTRL              : INTEGER := 16#07c#;
    constant ADDR_VLAN108_RECEIVED_DATA_0            : INTEGER := 16#080#;
    constant ADDR_VLAN108_RECEIVED_CTRL              : INTEGER := 16#084#;
    constant ADDR_VLAN109_RECEIVED_DATA_0            : INTEGER := 16#088#;
    constant ADDR_VLAN109_RECEIVED_CTRL              : INTEGER := 16#08c#;
    constant ADDR_DROPED_DATA_0                      : INTEGER := 16#090#;
    constant ADDR_DROPED_CTRL                        : INTEGER := 16#094#;
    constant ADDR_MULTICAST_RECV_ENABLE_DATA_0       : INTEGER := 16#098#;
    constant ADDR_MULTICAST_RECV_ENABLE_CTRL         : INTEGER := 16#09c#;
    constant ADDR_UNICAST_FILTER_ENABLE_DATA_0       : INTEGER := 16#0a0#;
    constant ADDR_UNICAST_FILTER_ENABLE_CTRL         : INTEGER := 16#0a4#;
    constant ADDR_UNICAST_VLAN100_MACADDR_LSB_DATA_0 : INTEGER := 16#0a8#;
    constant ADDR_UNICAST_VLAN100_MACADDR_LSB_CTRL   : INTEGER := 16#0ac#;
    constant ADDR_UNICAST_VLAN100_MACADDR_MSB_DATA_0 : INTEGER := 16#0b0#;
    constant ADDR_UNICAST_VLAN100_MACADDR_MSB_CTRL   : INTEGER := 16#0b4#;
    constant ADDR_UNICAST_VLAN101_MACADDR_LSB_DATA_0 : INTEGER := 16#0b8#;
    constant ADDR_UNICAST_VLAN101_MACADDR_LSB_CTRL   : INTEGER := 16#0bc#;
    constant ADDR_UNICAST_VLAN101_MACADDR_MSB_DATA_0 : INTEGER := 16#0c0#;
    constant ADDR_UNICAST_VLAN101_MACADDR_MSB_CTRL   : INTEGER := 16#0c4#;
    constant ADDR_UNICAST_VLAN102_MACADDR_LSB_DATA_0 : INTEGER := 16#0c8#;
    constant ADDR_UNICAST_VLAN102_MACADDR_LSB_CTRL   : INTEGER := 16#0cc#;
    constant ADDR_UNICAST_VLAN102_MACADDR_MSB_DATA_0 : INTEGER := 16#0d0#;
    constant ADDR_UNICAST_VLAN102_MACADDR_MSB_CTRL   : INTEGER := 16#0d4#;
    constant ADDR_UNICAST_VLAN103_MACADDR_LSB_DATA_0 : INTEGER := 16#0d8#;
    constant ADDR_UNICAST_VLAN103_MACADDR_LSB_CTRL   : INTEGER := 16#0dc#;
    constant ADDR_UNICAST_VLAN103_MACADDR_MSB_DATA_0 : INTEGER := 16#0e0#;
    constant ADDR_UNICAST_VLAN103_MACADDR_MSB_CTRL   : INTEGER := 16#0e4#;
    constant ADDR_UNICAST_VLAN104_MACADDR_LSB_DATA_0 : INTEGER := 16#0e8#;
    constant ADDR_UNICAST_VLAN104_MACADDR_LSB_CTRL   : INTEGER := 16#0ec#;
    constant ADDR_UNICAST_VLAN104_MACADDR_MSB_DATA_0 : INTEGER := 16#0f0#;
    constant ADDR_UNICAST_VLAN104_MACADDR_MSB_CTRL   : INTEGER := 16#0f4#;
    constant ADDR_UNICAST_VLAN105_MACADDR_LSB_DATA_0 : INTEGER := 16#0f8#;
    constant ADDR_UNICAST_VLAN105_MACADDR_LSB_CTRL   : INTEGER := 16#0fc#;
    constant ADDR_UNICAST_VLAN105_MACADDR_MSB_DATA_0 : INTEGER := 16#100#;
    constant ADDR_UNICAST_VLAN105_MACADDR_MSB_CTRL   : INTEGER := 16#104#;
    constant ADDR_UNICAST_VLAN106_MACADDR_LSB_DATA_0 : INTEGER := 16#108#;
    constant ADDR_UNICAST_VLAN106_MACADDR_LSB_CTRL   : INTEGER := 16#10c#;
    constant ADDR_UNICAST_VLAN106_MACADDR_MSB_DATA_0 : INTEGER := 16#110#;
    constant ADDR_UNICAST_VLAN106_MACADDR_MSB_CTRL   : INTEGER := 16#114#;
    constant ADDR_UNICAST_VLAN107_MACADDR_LSB_DATA_0 : INTEGER := 16#118#;
    constant ADDR_UNICAST_VLAN107_MACADDR_LSB_CTRL   : INTEGER := 16#11c#;
    constant ADDR_UNICAST_VLAN107_MACADDR_MSB_DATA_0 : INTEGER := 16#120#;
    constant ADDR_UNICAST_VLAN107_MACADDR_MSB_CTRL   : INTEGER := 16#124#;
    constant ADDR_UNICAST_VLAN108_MACADDR_LSB_DATA_0 : INTEGER := 16#128#;
    constant ADDR_UNICAST_VLAN108_MACADDR_LSB_CTRL   : INTEGER := 16#12c#;
    constant ADDR_UNICAST_VLAN108_MACADDR_MSB_DATA_0 : INTEGER := 16#130#;
    constant ADDR_UNICAST_VLAN108_MACADDR_MSB_CTRL   : INTEGER := 16#134#;
    constant ADDR_UNICAST_VLAN109_MACADDR_LSB_DATA_0 : INTEGER := 16#138#;
    constant ADDR_UNICAST_VLAN109_MACADDR_LSB_CTRL   : INTEGER := 16#13c#;
    constant ADDR_UNICAST_VLAN109_MACADDR_MSB_DATA_0 : INTEGER := 16#140#;
    constant ADDR_UNICAST_VLAN109_MACADDR_MSB_CTRL   : INTEGER := 16#144#;
    constant ADDR_LOG_ALL_MASK_DATA_0                : INTEGER := 16#148#;
    constant ADDR_LOG_ALL_MASK_CTRL                  : INTEGER := 16#14c#;
    constant ADDR_DRIVER_DATA_0                      : INTEGER := 16#150#;
    constant ADDR_DRIVER_DATA_1                      : INTEGER := 16#154#;
    constant ADDR_DRIVER_CTRL                        : INTEGER := 16#158#;
    constant ADDR_FIFO_AXI_FULL_OFFSET_DATA_0        : INTEGER := 16#160#;
    constant ADDR_FIFO_AXI_FULL_OFFSET_DATA_1        : INTEGER := 16#164#;
    constant ADDR_FIFO_AXI_FULL_OFFSET_CTRL          : INTEGER := 16#168#;
    constant ADDR_BITS         : INTEGER := 9;

    signal waddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal wmask               : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal aw_hs               : STD_LOGIC;
    signal w_hs                : STD_LOGIC;
    signal rdata_data          : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ar_hs               : STD_LOGIC;
    signal raddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal AWREADY_t           : STD_LOGIC;
    signal WREADY_t            : STD_LOGIC;
    signal ARREADY_t           : STD_LOGIC;
    signal RVALID_t            : STD_LOGIC;
    -- internal registers
    signal int_ap_idle         : STD_LOGIC := '0';
    signal int_ap_continue     : STD_LOGIC;
    signal int_ap_ready        : STD_LOGIC := '0';
    signal task_ap_ready       : STD_LOGIC;
    signal int_ap_done         : STD_LOGIC := '0';
    signal task_ap_done        : STD_LOGIC;
    signal int_task_ap_done    : STD_LOGIC := '0';
    signal int_ap_start        : STD_LOGIC := '0';
    signal int_interrupt       : STD_LOGIC := '0';
    signal int_auto_restart    : STD_LOGIC := '0';
    signal auto_restart_status : STD_LOGIC := '0';
    signal auto_restart_done   : STD_LOGIC := '0';
    signal int_gie             : STD_LOGIC := '0';
    signal int_ier             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_isr             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_fifo            : UNSIGNED(63 downto 0) := (others => '0');
    signal int_ddr             : UNSIGNED(63 downto 0) := (others => '0');
    signal int_status          : UNSIGNED(31 downto 0) := (others => '0');
    signal int_writeStatus     : UNSIGNED(15 downto 0) := (others => '0');
    signal int_logger_vlan_enable_mask : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vlan100_received_ap_vld : STD_LOGIC;
    signal int_vlan100_received : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vlan101_received_ap_vld : STD_LOGIC;
    signal int_vlan101_received : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vlan102_received_ap_vld : STD_LOGIC;
    signal int_vlan102_received : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vlan103_received_ap_vld : STD_LOGIC;
    signal int_vlan103_received : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vlan104_received_ap_vld : STD_LOGIC;
    signal int_vlan104_received : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vlan105_received_ap_vld : STD_LOGIC;
    signal int_vlan105_received : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vlan106_received_ap_vld : STD_LOGIC;
    signal int_vlan106_received : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vlan107_received_ap_vld : STD_LOGIC;
    signal int_vlan107_received : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vlan108_received_ap_vld : STD_LOGIC;
    signal int_vlan108_received : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vlan109_received_ap_vld : STD_LOGIC;
    signal int_vlan109_received : UNSIGNED(31 downto 0) := (others => '0');
    signal int_droped_ap_vld   : STD_LOGIC;
    signal int_droped          : UNSIGNED(31 downto 0) := (others => '0');
    signal int_multicast_recv_enable : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_filter_enable : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan100_macaddr_lsb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan100_macaddr_msb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan101_macaddr_lsb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan101_macaddr_msb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan102_macaddr_lsb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan102_macaddr_msb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan103_macaddr_lsb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan103_macaddr_msb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan104_macaddr_lsb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan104_macaddr_msb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan105_macaddr_lsb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan105_macaddr_msb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan106_macaddr_lsb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan106_macaddr_msb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan107_macaddr_lsb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan107_macaddr_msb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan108_macaddr_lsb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan108_macaddr_msb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan109_macaddr_lsb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan109_macaddr_msb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_log_all_mask    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_driver          : UNSIGNED(63 downto 0) := (others => '0');
    signal int_fifo_axi_full_offset : UNSIGNED(63 downto 0) := (others => '0');


begin
-- ----------------------- Instantiation------------------


-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata else '0';
    WREADY    <=  WREADY_t;
    BRESP     <=  "00";  -- OKAY
    BVALID    <=  '1' when wstate = wrresp else '0';
    wmask     <=  (31 downto 24 => WSTRB(3), 23 downto 16 => WSTRB(2), 15 downto 8 => WSTRB(1), 7 downto 0 => WSTRB(0));
    aw_hs     <=  AWVALID and AWREADY_t;
    w_hs      <=  WVALID and WREADY_t;

    -- write FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wstate <= wrreset;
            elsif (ACLK_EN = '1') then
                wstate <= wnext;
            end if;
        end if;
    end process;

    process (wstate, AWVALID, WVALID, BREADY)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (WVALID = '1') then
                wnext <= wrresp;
            else
                wnext <= wrdata;
            end if;
        when wrresp =>
            if (BREADY = '1') then
                wnext <= wridle;
            else
                wnext <= wrresp;
            end if;
        when others =>
            wnext <= wridle;
        end case;
    end process;

    waddr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (aw_hs = '1') then
                    waddr <= UNSIGNED(AWADDR(ADDR_BITS-1 downto 0));
                end if;
            end if;
        end if;
    end process;

-- ----------------------- AXI READ ----------------------
    ARREADY_t <= '1' when (rstate = rdidle) else '0';
    ARREADY <= ARREADY_t;
    RDATA   <= STD_LOGIC_VECTOR(rdata_data);
    RRESP   <= "00";  -- OKAY
    RVALID_t  <= '1' when (rstate = rddata) else '0';
    RVALID    <= RVALID_t;
    ar_hs   <= ARVALID and ARREADY_t;
    raddr   <= UNSIGNED(ARADDR(ADDR_BITS-1 downto 0));

    -- read FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rstate <= rdreset;
            elsif (ACLK_EN = '1') then
                rstate <= rnext;
            end if;
        end if;
    end process;

    process (rstate, ARVALID, RREADY, RVALID_t)
    begin
        case (rstate) is
        when rdidle =>
            if (ARVALID = '1') then
                rnext <= rddata;
            else
                rnext <= rdidle;
            end if;
        when rddata =>
            if (RREADY = '1' and RVALID_t = '1') then
                rnext <= rdidle;
            else
                rnext <= rddata;
            end if;
        when others =>
            rnext <= rdidle;
        end case;
    end process;

    rdata_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    rdata_data <= (others => '0');
                    case (TO_INTEGER(raddr)) is
                    when ADDR_AP_CTRL =>
                        rdata_data(9) <= int_interrupt;
                        rdata_data(7) <= int_auto_restart;
                        rdata_data(4) <= int_ap_continue;
                        rdata_data(3) <= int_ap_ready;
                        rdata_data(2) <= int_ap_idle;
                        rdata_data(1) <= int_task_ap_done;
                        rdata_data(0) <= int_ap_start;
                    when ADDR_GIE =>
                        rdata_data(0) <= int_gie;
                    when ADDR_IER =>
                        rdata_data(1 downto 0) <= int_ier;
                    when ADDR_ISR =>
                        rdata_data(1 downto 0) <= int_isr;
                    when ADDR_FIFO_DATA_0 =>
                        rdata_data <= RESIZE(int_fifo(31 downto 0), 32);
                    when ADDR_FIFO_DATA_1 =>
                        rdata_data <= RESIZE(int_fifo(63 downto 32), 32);
                    when ADDR_DDR_DATA_0 =>
                        rdata_data <= RESIZE(int_ddr(31 downto 0), 32);
                    when ADDR_DDR_DATA_1 =>
                        rdata_data <= RESIZE(int_ddr(63 downto 32), 32);
                    when ADDR_STATUS_DATA_0 =>
                        rdata_data <= RESIZE(int_status(31 downto 0), 32);
                    when ADDR_WRITESTATUS_DATA_0 =>
                        rdata_data <= RESIZE(int_writeStatus(15 downto 0), 32);
                    when ADDR_LOGGER_VLAN_ENABLE_MASK_DATA_0 =>
                        rdata_data <= RESIZE(int_logger_vlan_enable_mask(31 downto 0), 32);
                    when ADDR_VLAN100_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_vlan100_received(31 downto 0), 32);
                    when ADDR_VLAN100_RECEIVED_CTRL =>
                        rdata_data(0) <= int_vlan100_received_ap_vld;
                    when ADDR_VLAN101_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_vlan101_received(31 downto 0), 32);
                    when ADDR_VLAN101_RECEIVED_CTRL =>
                        rdata_data(0) <= int_vlan101_received_ap_vld;
                    when ADDR_VLAN102_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_vlan102_received(31 downto 0), 32);
                    when ADDR_VLAN102_RECEIVED_CTRL =>
                        rdata_data(0) <= int_vlan102_received_ap_vld;
                    when ADDR_VLAN103_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_vlan103_received(31 downto 0), 32);
                    when ADDR_VLAN103_RECEIVED_CTRL =>
                        rdata_data(0) <= int_vlan103_received_ap_vld;
                    when ADDR_VLAN104_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_vlan104_received(31 downto 0), 32);
                    when ADDR_VLAN104_RECEIVED_CTRL =>
                        rdata_data(0) <= int_vlan104_received_ap_vld;
                    when ADDR_VLAN105_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_vlan105_received(31 downto 0), 32);
                    when ADDR_VLAN105_RECEIVED_CTRL =>
                        rdata_data(0) <= int_vlan105_received_ap_vld;
                    when ADDR_VLAN106_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_vlan106_received(31 downto 0), 32);
                    when ADDR_VLAN106_RECEIVED_CTRL =>
                        rdata_data(0) <= int_vlan106_received_ap_vld;
                    when ADDR_VLAN107_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_vlan107_received(31 downto 0), 32);
                    when ADDR_VLAN107_RECEIVED_CTRL =>
                        rdata_data(0) <= int_vlan107_received_ap_vld;
                    when ADDR_VLAN108_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_vlan108_received(31 downto 0), 32);
                    when ADDR_VLAN108_RECEIVED_CTRL =>
                        rdata_data(0) <= int_vlan108_received_ap_vld;
                    when ADDR_VLAN109_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_vlan109_received(31 downto 0), 32);
                    when ADDR_VLAN109_RECEIVED_CTRL =>
                        rdata_data(0) <= int_vlan109_received_ap_vld;
                    when ADDR_DROPED_DATA_0 =>
                        rdata_data <= RESIZE(int_droped(31 downto 0), 32);
                    when ADDR_DROPED_CTRL =>
                        rdata_data(0) <= int_droped_ap_vld;
                    when ADDR_MULTICAST_RECV_ENABLE_DATA_0 =>
                        rdata_data <= RESIZE(int_multicast_recv_enable(31 downto 0), 32);
                    when ADDR_UNICAST_FILTER_ENABLE_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_filter_enable(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN100_MACADDR_LSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan100_macaddr_lsb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN100_MACADDR_MSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan100_macaddr_msb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN101_MACADDR_LSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan101_macaddr_lsb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN101_MACADDR_MSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan101_macaddr_msb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN102_MACADDR_LSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan102_macaddr_lsb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN102_MACADDR_MSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan102_macaddr_msb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN103_MACADDR_LSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan103_macaddr_lsb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN103_MACADDR_MSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan103_macaddr_msb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN104_MACADDR_LSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan104_macaddr_lsb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN104_MACADDR_MSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan104_macaddr_msb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN105_MACADDR_LSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan105_macaddr_lsb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN105_MACADDR_MSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan105_macaddr_msb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN106_MACADDR_LSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan106_macaddr_lsb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN106_MACADDR_MSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan106_macaddr_msb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN107_MACADDR_LSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan107_macaddr_lsb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN107_MACADDR_MSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan107_macaddr_msb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN108_MACADDR_LSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan108_macaddr_lsb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN108_MACADDR_MSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan108_macaddr_msb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN109_MACADDR_LSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan109_macaddr_lsb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN109_MACADDR_MSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan109_macaddr_msb(31 downto 0), 32);
                    when ADDR_LOG_ALL_MASK_DATA_0 =>
                        rdata_data <= RESIZE(int_log_all_mask(31 downto 0), 32);
                    when ADDR_DRIVER_DATA_0 =>
                        rdata_data <= RESIZE(int_driver(31 downto 0), 32);
                    when ADDR_DRIVER_DATA_1 =>
                        rdata_data <= RESIZE(int_driver(63 downto 32), 32);
                    when ADDR_FIFO_AXI_FULL_OFFSET_DATA_0 =>
                        rdata_data <= RESIZE(int_fifo_axi_full_offset(31 downto 0), 32);
                    when ADDR_FIFO_AXI_FULL_OFFSET_DATA_1 =>
                        rdata_data <= RESIZE(int_fifo_axi_full_offset(63 downto 32), 32);
                    when others =>
                        NULL;
                    end case;
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------
    interrupt            <= int_interrupt;
    ap_start             <= int_ap_start;
    task_ap_done         <= (ap_done and not auto_restart_status) or auto_restart_done;
    task_ap_ready        <= ap_ready and not int_auto_restart;
    ap_continue          <= int_ap_continue or auto_restart_status;
    fifo                 <= STD_LOGIC_VECTOR(int_fifo);
    ddr                  <= STD_LOGIC_VECTOR(int_ddr);
    status               <= STD_LOGIC_VECTOR(int_status);
    writeStatus          <= STD_LOGIC_VECTOR(int_writeStatus);
    logger_vlan_enable_mask <= STD_LOGIC_VECTOR(int_logger_vlan_enable_mask);
    multicast_recv_enable <= STD_LOGIC_VECTOR(int_multicast_recv_enable);
    unicast_filter_enable <= STD_LOGIC_VECTOR(int_unicast_filter_enable);
    unicast_vlan100_macaddr_lsb <= STD_LOGIC_VECTOR(int_unicast_vlan100_macaddr_lsb);
    unicast_vlan100_macaddr_msb <= STD_LOGIC_VECTOR(int_unicast_vlan100_macaddr_msb);
    unicast_vlan101_macaddr_lsb <= STD_LOGIC_VECTOR(int_unicast_vlan101_macaddr_lsb);
    unicast_vlan101_macaddr_msb <= STD_LOGIC_VECTOR(int_unicast_vlan101_macaddr_msb);
    unicast_vlan102_macaddr_lsb <= STD_LOGIC_VECTOR(int_unicast_vlan102_macaddr_lsb);
    unicast_vlan102_macaddr_msb <= STD_LOGIC_VECTOR(int_unicast_vlan102_macaddr_msb);
    unicast_vlan103_macaddr_lsb <= STD_LOGIC_VECTOR(int_unicast_vlan103_macaddr_lsb);
    unicast_vlan103_macaddr_msb <= STD_LOGIC_VECTOR(int_unicast_vlan103_macaddr_msb);
    unicast_vlan104_macaddr_lsb <= STD_LOGIC_VECTOR(int_unicast_vlan104_macaddr_lsb);
    unicast_vlan104_macaddr_msb <= STD_LOGIC_VECTOR(int_unicast_vlan104_macaddr_msb);
    unicast_vlan105_macaddr_lsb <= STD_LOGIC_VECTOR(int_unicast_vlan105_macaddr_lsb);
    unicast_vlan105_macaddr_msb <= STD_LOGIC_VECTOR(int_unicast_vlan105_macaddr_msb);
    unicast_vlan106_macaddr_lsb <= STD_LOGIC_VECTOR(int_unicast_vlan106_macaddr_lsb);
    unicast_vlan106_macaddr_msb <= STD_LOGIC_VECTOR(int_unicast_vlan106_macaddr_msb);
    unicast_vlan107_macaddr_lsb <= STD_LOGIC_VECTOR(int_unicast_vlan107_macaddr_lsb);
    unicast_vlan107_macaddr_msb <= STD_LOGIC_VECTOR(int_unicast_vlan107_macaddr_msb);
    unicast_vlan108_macaddr_lsb <= STD_LOGIC_VECTOR(int_unicast_vlan108_macaddr_lsb);
    unicast_vlan108_macaddr_msb <= STD_LOGIC_VECTOR(int_unicast_vlan108_macaddr_msb);
    unicast_vlan109_macaddr_lsb <= STD_LOGIC_VECTOR(int_unicast_vlan109_macaddr_lsb);
    unicast_vlan109_macaddr_msb <= STD_LOGIC_VECTOR(int_unicast_vlan109_macaddr_msb);
    log_all_mask         <= STD_LOGIC_VECTOR(int_log_all_mask);
    driver               <= STD_LOGIC_VECTOR(int_driver);
    fifo_axi_full_offset <= STD_LOGIC_VECTOR(int_fifo_axi_full_offset);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_interrupt <= '0';
            elsif (ACLK_EN = '1') then
                if (int_gie = '1' and (int_isr(0) or int_isr(1)) = '1') then
                    int_interrupt <= '1';
                else
                    int_interrupt <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_start <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1' and WDATA(0) = '1') then
                    int_ap_start <= '1';
                elsif (ap_ready = '1') then
                    int_ap_start <= int_auto_restart; -- clear on handshake/auto restart
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_done <= ap_done;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_task_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ap_continue = '1') then
                    int_task_ap_done <= '0';
                elsif (task_ap_done = '1') then
                    int_task_ap_done <= '1';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_idle <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_idle <= ap_idle;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_ready <= '0';
            elsif (ACLK_EN = '1') then
                if (task_ap_ready = '1') then
                    int_ap_ready <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_ap_ready <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_continue <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1' and WDATA(4) = '1') then
                    int_ap_continue <= '1';
                else
                    int_ap_continue <= '0'; -- self clear
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_auto_restart <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1') then
                    int_auto_restart <= WDATA(7);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                auto_restart_status <= '0';
            elsif (ACLK_EN = '1') then
                if (int_auto_restart = '1') then
                    auto_restart_status <= '1';
                elsif (ap_idle = '1') then
                    auto_restart_status <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                auto_restart_done <= '0';
            elsif (ACLK_EN = '1') then
                if (auto_restart_status = '1' and (ap_idle = '1' and int_ap_idle = '0')) then
                    auto_restart_done <= '1';
                elsif (int_ap_continue = '1') then
                    auto_restart_done <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_gie <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GIE and WSTRB(0) = '1') then
                    int_gie <= WDATA(0);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ier <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IER and WSTRB(0) = '1') then
                    int_ier <= UNSIGNED(WDATA(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(0) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(0) = '1' and ap_done = '1') then
                    int_isr(0) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(0) <= int_isr(0) xor WDATA(0); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(1) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(1) = '1' and ap_ready = '1') then
                    int_isr(1) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(1) <= int_isr(1) xor WDATA(1); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_FIFO_DATA_0) then
                    int_fifo(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_fifo(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_FIFO_DATA_1) then
                    int_fifo(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_fifo(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DDR_DATA_0) then
                    int_ddr(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_ddr(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DDR_DATA_1) then
                    int_ddr(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_ddr(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_STATUS_DATA_0) then
                    int_status(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_status(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WRITESTATUS_DATA_0) then
                    int_writeStatus(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_writeStatus(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_LOGGER_VLAN_ENABLE_MASK_DATA_0) then
                    int_logger_vlan_enable_mask(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_logger_vlan_enable_mask(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan100_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vlan100_received_ap_vld = '1') then
                    int_vlan100_received <= UNSIGNED(vlan100_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan100_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vlan100_received_ap_vld = '1') then
                    int_vlan100_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VLAN100_RECEIVED_CTRL) then
                    int_vlan100_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan101_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vlan101_received_ap_vld = '1') then
                    int_vlan101_received <= UNSIGNED(vlan101_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan101_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vlan101_received_ap_vld = '1') then
                    int_vlan101_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VLAN101_RECEIVED_CTRL) then
                    int_vlan101_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan102_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vlan102_received_ap_vld = '1') then
                    int_vlan102_received <= UNSIGNED(vlan102_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan102_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vlan102_received_ap_vld = '1') then
                    int_vlan102_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VLAN102_RECEIVED_CTRL) then
                    int_vlan102_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan103_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vlan103_received_ap_vld = '1') then
                    int_vlan103_received <= UNSIGNED(vlan103_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan103_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vlan103_received_ap_vld = '1') then
                    int_vlan103_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VLAN103_RECEIVED_CTRL) then
                    int_vlan103_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan104_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vlan104_received_ap_vld = '1') then
                    int_vlan104_received <= UNSIGNED(vlan104_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan104_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vlan104_received_ap_vld = '1') then
                    int_vlan104_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VLAN104_RECEIVED_CTRL) then
                    int_vlan104_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan105_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vlan105_received_ap_vld = '1') then
                    int_vlan105_received <= UNSIGNED(vlan105_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan105_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vlan105_received_ap_vld = '1') then
                    int_vlan105_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VLAN105_RECEIVED_CTRL) then
                    int_vlan105_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan106_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vlan106_received_ap_vld = '1') then
                    int_vlan106_received <= UNSIGNED(vlan106_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan106_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vlan106_received_ap_vld = '1') then
                    int_vlan106_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VLAN106_RECEIVED_CTRL) then
                    int_vlan106_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan107_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vlan107_received_ap_vld = '1') then
                    int_vlan107_received <= UNSIGNED(vlan107_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan107_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vlan107_received_ap_vld = '1') then
                    int_vlan107_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VLAN107_RECEIVED_CTRL) then
                    int_vlan107_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan108_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vlan108_received_ap_vld = '1') then
                    int_vlan108_received <= UNSIGNED(vlan108_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan108_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vlan108_received_ap_vld = '1') then
                    int_vlan108_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VLAN108_RECEIVED_CTRL) then
                    int_vlan108_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan109_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vlan109_received_ap_vld = '1') then
                    int_vlan109_received <= UNSIGNED(vlan109_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan109_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vlan109_received_ap_vld = '1') then
                    int_vlan109_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VLAN109_RECEIVED_CTRL) then
                    int_vlan109_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_droped <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (droped_ap_vld = '1') then
                    int_droped <= UNSIGNED(droped);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_droped_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (droped_ap_vld = '1') then
                    int_droped_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_DROPED_CTRL) then
                    int_droped_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_MULTICAST_RECV_ENABLE_DATA_0) then
                    int_multicast_recv_enable(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_multicast_recv_enable(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_FILTER_ENABLE_DATA_0) then
                    int_unicast_filter_enable(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_filter_enable(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN100_MACADDR_LSB_DATA_0) then
                    int_unicast_vlan100_macaddr_lsb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan100_macaddr_lsb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN100_MACADDR_MSB_DATA_0) then
                    int_unicast_vlan100_macaddr_msb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan100_macaddr_msb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN101_MACADDR_LSB_DATA_0) then
                    int_unicast_vlan101_macaddr_lsb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan101_macaddr_lsb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN101_MACADDR_MSB_DATA_0) then
                    int_unicast_vlan101_macaddr_msb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan101_macaddr_msb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN102_MACADDR_LSB_DATA_0) then
                    int_unicast_vlan102_macaddr_lsb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan102_macaddr_lsb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN102_MACADDR_MSB_DATA_0) then
                    int_unicast_vlan102_macaddr_msb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan102_macaddr_msb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN103_MACADDR_LSB_DATA_0) then
                    int_unicast_vlan103_macaddr_lsb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan103_macaddr_lsb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN103_MACADDR_MSB_DATA_0) then
                    int_unicast_vlan103_macaddr_msb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan103_macaddr_msb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN104_MACADDR_LSB_DATA_0) then
                    int_unicast_vlan104_macaddr_lsb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan104_macaddr_lsb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN104_MACADDR_MSB_DATA_0) then
                    int_unicast_vlan104_macaddr_msb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan104_macaddr_msb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN105_MACADDR_LSB_DATA_0) then
                    int_unicast_vlan105_macaddr_lsb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan105_macaddr_lsb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN105_MACADDR_MSB_DATA_0) then
                    int_unicast_vlan105_macaddr_msb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan105_macaddr_msb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN106_MACADDR_LSB_DATA_0) then
                    int_unicast_vlan106_macaddr_lsb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan106_macaddr_lsb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN106_MACADDR_MSB_DATA_0) then
                    int_unicast_vlan106_macaddr_msb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan106_macaddr_msb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN107_MACADDR_LSB_DATA_0) then
                    int_unicast_vlan107_macaddr_lsb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan107_macaddr_lsb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN107_MACADDR_MSB_DATA_0) then
                    int_unicast_vlan107_macaddr_msb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan107_macaddr_msb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN108_MACADDR_LSB_DATA_0) then
                    int_unicast_vlan108_macaddr_lsb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan108_macaddr_lsb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN108_MACADDR_MSB_DATA_0) then
                    int_unicast_vlan108_macaddr_msb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan108_macaddr_msb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN109_MACADDR_LSB_DATA_0) then
                    int_unicast_vlan109_macaddr_lsb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan109_macaddr_lsb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN109_MACADDR_MSB_DATA_0) then
                    int_unicast_vlan109_macaddr_msb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan109_macaddr_msb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_LOG_ALL_MASK_DATA_0) then
                    int_log_all_mask(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_log_all_mask(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DRIVER_DATA_0) then
                    int_driver(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_driver(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DRIVER_DATA_1) then
                    int_driver(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_driver(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_FIFO_AXI_FULL_OFFSET_DATA_0) then
                    int_fifo_axi_full_offset(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_fifo_axi_full_offset(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_FIFO_AXI_FULL_OFFSET_DATA_1) then
                    int_fifo_axi_full_offset(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_fifo_axi_full_offset(63 downto 32));
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------

end architecture behave;
