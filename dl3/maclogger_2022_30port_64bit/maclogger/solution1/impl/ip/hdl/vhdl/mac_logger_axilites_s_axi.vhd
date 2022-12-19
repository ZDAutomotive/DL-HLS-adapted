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
    C_S_AXI_ADDR_WIDTH    : INTEGER := 10;
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
    fifo_axi_full_offset  :out  STD_LOGIC_VECTOR(63 downto 0);
    ddr                   :out  STD_LOGIC_VECTOR(63 downto 0);
    driver                :out  STD_LOGIC_VECTOR(63 downto 0);
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
    vlan110_received      :in   STD_LOGIC_VECTOR(31 downto 0);
    vlan110_received_ap_vld :in   STD_LOGIC;
    vlan111_received      :in   STD_LOGIC_VECTOR(31 downto 0);
    vlan111_received_ap_vld :in   STD_LOGIC;
    vlan112_received      :in   STD_LOGIC_VECTOR(31 downto 0);
    vlan112_received_ap_vld :in   STD_LOGIC;
    vlan113_received      :in   STD_LOGIC_VECTOR(31 downto 0);
    vlan113_received_ap_vld :in   STD_LOGIC;
    vlan114_received      :in   STD_LOGIC_VECTOR(31 downto 0);
    vlan114_received_ap_vld :in   STD_LOGIC;
    vlan115_received      :in   STD_LOGIC_VECTOR(31 downto 0);
    vlan115_received_ap_vld :in   STD_LOGIC;
    vlan116_received      :in   STD_LOGIC_VECTOR(31 downto 0);
    vlan116_received_ap_vld :in   STD_LOGIC;
    vlan117_received      :in   STD_LOGIC_VECTOR(31 downto 0);
    vlan117_received_ap_vld :in   STD_LOGIC;
    vlan118_received      :in   STD_LOGIC_VECTOR(31 downto 0);
    vlan118_received_ap_vld :in   STD_LOGIC;
    vlan119_received      :in   STD_LOGIC_VECTOR(31 downto 0);
    vlan119_received_ap_vld :in   STD_LOGIC;
    vlan120_received      :in   STD_LOGIC_VECTOR(31 downto 0);
    vlan120_received_ap_vld :in   STD_LOGIC;
    vlan121_received      :in   STD_LOGIC_VECTOR(31 downto 0);
    vlan121_received_ap_vld :in   STD_LOGIC;
    vlan122_received      :in   STD_LOGIC_VECTOR(31 downto 0);
    vlan122_received_ap_vld :in   STD_LOGIC;
    vlan123_received      :in   STD_LOGIC_VECTOR(31 downto 0);
    vlan123_received_ap_vld :in   STD_LOGIC;
    vlan124_received      :in   STD_LOGIC_VECTOR(31 downto 0);
    vlan124_received_ap_vld :in   STD_LOGIC;
    vlan125_received      :in   STD_LOGIC_VECTOR(31 downto 0);
    vlan125_received_ap_vld :in   STD_LOGIC;
    vlan126_received      :in   STD_LOGIC_VECTOR(31 downto 0);
    vlan126_received_ap_vld :in   STD_LOGIC;
    vlan127_received      :in   STD_LOGIC_VECTOR(31 downto 0);
    vlan127_received_ap_vld :in   STD_LOGIC;
    vlan128_received      :in   STD_LOGIC_VECTOR(31 downto 0);
    vlan128_received_ap_vld :in   STD_LOGIC;
    vlan129_received      :in   STD_LOGIC_VECTOR(31 downto 0);
    vlan129_received_ap_vld :in   STD_LOGIC;
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
    unicast_vlan110_macaddr_lsb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan110_macaddr_msb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan111_macaddr_lsb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan111_macaddr_msb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan112_macaddr_lsb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan112_macaddr_msb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan113_macaddr_lsb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan113_macaddr_msb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan114_macaddr_lsb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan114_macaddr_msb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan115_macaddr_lsb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan115_macaddr_msb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan116_macaddr_lsb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan116_macaddr_msb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan117_macaddr_lsb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan117_macaddr_msb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan118_macaddr_lsb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan118_macaddr_msb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan119_macaddr_lsb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan119_macaddr_msb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan120_macaddr_lsb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan120_macaddr_msb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan121_macaddr_lsb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan121_macaddr_msb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan122_macaddr_lsb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan122_macaddr_msb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan123_macaddr_lsb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan123_macaddr_msb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan124_macaddr_lsb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan124_macaddr_msb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan125_macaddr_lsb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan125_macaddr_msb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan126_macaddr_lsb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan126_macaddr_msb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan127_macaddr_lsb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan127_macaddr_msb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan128_macaddr_lsb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan128_macaddr_msb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan129_macaddr_lsb :out  STD_LOGIC_VECTOR(31 downto 0);
    unicast_vlan129_macaddr_msb :out  STD_LOGIC_VECTOR(31 downto 0);
    log_all_mask          :out  STD_LOGIC_VECTOR(31 downto 0);
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
-- 0x01c : Data signal of fifo_axi_full_offset
--         bit 31~0 - fifo_axi_full_offset[31:0] (Read/Write)
-- 0x020 : Data signal of fifo_axi_full_offset
--         bit 31~0 - fifo_axi_full_offset[63:32] (Read/Write)
-- 0x024 : reserved
-- 0x028 : Data signal of ddr
--         bit 31~0 - ddr[31:0] (Read/Write)
-- 0x02c : Data signal of ddr
--         bit 31~0 - ddr[63:32] (Read/Write)
-- 0x030 : reserved
-- 0x034 : Data signal of driver
--         bit 31~0 - driver[31:0] (Read/Write)
-- 0x038 : Data signal of driver
--         bit 31~0 - driver[63:32] (Read/Write)
-- 0x03c : reserved
-- 0x040 : Data signal of status
--         bit 31~0 - status[31:0] (Read/Write)
-- 0x044 : reserved
-- 0x048 : Data signal of writeStatus
--         bit 15~0 - writeStatus[15:0] (Read/Write)
--         others   - reserved
-- 0x04c : reserved
-- 0x050 : Data signal of logger_vlan_enable_mask
--         bit 31~0 - logger_vlan_enable_mask[31:0] (Read/Write)
-- 0x054 : reserved
-- 0x058 : Data signal of vlan100_received
--         bit 31~0 - vlan100_received[31:0] (Read)
-- 0x05c : Control signal of vlan100_received
--         bit 0  - vlan100_received_ap_vld (Read/COR)
--         others - reserved
-- 0x060 : Data signal of vlan101_received
--         bit 31~0 - vlan101_received[31:0] (Read)
-- 0x064 : Control signal of vlan101_received
--         bit 0  - vlan101_received_ap_vld (Read/COR)
--         others - reserved
-- 0x068 : Data signal of vlan102_received
--         bit 31~0 - vlan102_received[31:0] (Read)
-- 0x06c : Control signal of vlan102_received
--         bit 0  - vlan102_received_ap_vld (Read/COR)
--         others - reserved
-- 0x070 : Data signal of vlan103_received
--         bit 31~0 - vlan103_received[31:0] (Read)
-- 0x074 : Control signal of vlan103_received
--         bit 0  - vlan103_received_ap_vld (Read/COR)
--         others - reserved
-- 0x078 : Data signal of vlan104_received
--         bit 31~0 - vlan104_received[31:0] (Read)
-- 0x07c : Control signal of vlan104_received
--         bit 0  - vlan104_received_ap_vld (Read/COR)
--         others - reserved
-- 0x080 : Data signal of vlan105_received
--         bit 31~0 - vlan105_received[31:0] (Read)
-- 0x084 : Control signal of vlan105_received
--         bit 0  - vlan105_received_ap_vld (Read/COR)
--         others - reserved
-- 0x088 : Data signal of vlan106_received
--         bit 31~0 - vlan106_received[31:0] (Read)
-- 0x08c : Control signal of vlan106_received
--         bit 0  - vlan106_received_ap_vld (Read/COR)
--         others - reserved
-- 0x090 : Data signal of vlan107_received
--         bit 31~0 - vlan107_received[31:0] (Read)
-- 0x094 : Control signal of vlan107_received
--         bit 0  - vlan107_received_ap_vld (Read/COR)
--         others - reserved
-- 0x098 : Data signal of vlan108_received
--         bit 31~0 - vlan108_received[31:0] (Read)
-- 0x09c : Control signal of vlan108_received
--         bit 0  - vlan108_received_ap_vld (Read/COR)
--         others - reserved
-- 0x0a0 : Data signal of vlan109_received
--         bit 31~0 - vlan109_received[31:0] (Read)
-- 0x0a4 : Control signal of vlan109_received
--         bit 0  - vlan109_received_ap_vld (Read/COR)
--         others - reserved
-- 0x0a8 : Data signal of vlan110_received
--         bit 31~0 - vlan110_received[31:0] (Read)
-- 0x0ac : Control signal of vlan110_received
--         bit 0  - vlan110_received_ap_vld (Read/COR)
--         others - reserved
-- 0x0b0 : Data signal of vlan111_received
--         bit 31~0 - vlan111_received[31:0] (Read)
-- 0x0b4 : Control signal of vlan111_received
--         bit 0  - vlan111_received_ap_vld (Read/COR)
--         others - reserved
-- 0x0b8 : Data signal of vlan112_received
--         bit 31~0 - vlan112_received[31:0] (Read)
-- 0x0bc : Control signal of vlan112_received
--         bit 0  - vlan112_received_ap_vld (Read/COR)
--         others - reserved
-- 0x0c0 : Data signal of vlan113_received
--         bit 31~0 - vlan113_received[31:0] (Read)
-- 0x0c4 : Control signal of vlan113_received
--         bit 0  - vlan113_received_ap_vld (Read/COR)
--         others - reserved
-- 0x0c8 : Data signal of vlan114_received
--         bit 31~0 - vlan114_received[31:0] (Read)
-- 0x0cc : Control signal of vlan114_received
--         bit 0  - vlan114_received_ap_vld (Read/COR)
--         others - reserved
-- 0x0d0 : Data signal of vlan115_received
--         bit 31~0 - vlan115_received[31:0] (Read)
-- 0x0d4 : Control signal of vlan115_received
--         bit 0  - vlan115_received_ap_vld (Read/COR)
--         others - reserved
-- 0x0d8 : Data signal of vlan116_received
--         bit 31~0 - vlan116_received[31:0] (Read)
-- 0x0dc : Control signal of vlan116_received
--         bit 0  - vlan116_received_ap_vld (Read/COR)
--         others - reserved
-- 0x0e0 : Data signal of vlan117_received
--         bit 31~0 - vlan117_received[31:0] (Read)
-- 0x0e4 : Control signal of vlan117_received
--         bit 0  - vlan117_received_ap_vld (Read/COR)
--         others - reserved
-- 0x0e8 : Data signal of vlan118_received
--         bit 31~0 - vlan118_received[31:0] (Read)
-- 0x0ec : Control signal of vlan118_received
--         bit 0  - vlan118_received_ap_vld (Read/COR)
--         others - reserved
-- 0x0f0 : Data signal of vlan119_received
--         bit 31~0 - vlan119_received[31:0] (Read)
-- 0x0f4 : Control signal of vlan119_received
--         bit 0  - vlan119_received_ap_vld (Read/COR)
--         others - reserved
-- 0x0f8 : Data signal of vlan120_received
--         bit 31~0 - vlan120_received[31:0] (Read)
-- 0x0fc : Control signal of vlan120_received
--         bit 0  - vlan120_received_ap_vld (Read/COR)
--         others - reserved
-- 0x110 : Data signal of vlan121_received
--         bit 31~0 - vlan121_received[31:0] (Read)
-- 0x114 : Control signal of vlan121_received
--         bit 0  - vlan121_received_ap_vld (Read/COR)
--         others - reserved
-- 0x118 : Data signal of vlan122_received
--         bit 31~0 - vlan122_received[31:0] (Read)
-- 0x11c : Control signal of vlan122_received
--         bit 0  - vlan122_received_ap_vld (Read/COR)
--         others - reserved
-- 0x120 : Data signal of vlan123_received
--         bit 31~0 - vlan123_received[31:0] (Read)
-- 0x124 : Control signal of vlan123_received
--         bit 0  - vlan123_received_ap_vld (Read/COR)
--         others - reserved
-- 0x128 : Data signal of vlan124_received
--         bit 31~0 - vlan124_received[31:0] (Read)
-- 0x12c : Control signal of vlan124_received
--         bit 0  - vlan124_received_ap_vld (Read/COR)
--         others - reserved
-- 0x130 : Data signal of vlan125_received
--         bit 31~0 - vlan125_received[31:0] (Read)
-- 0x134 : Control signal of vlan125_received
--         bit 0  - vlan125_received_ap_vld (Read/COR)
--         others - reserved
-- 0x138 : Data signal of vlan126_received
--         bit 31~0 - vlan126_received[31:0] (Read)
-- 0x13c : Control signal of vlan126_received
--         bit 0  - vlan126_received_ap_vld (Read/COR)
--         others - reserved
-- 0x140 : Data signal of vlan127_received
--         bit 31~0 - vlan127_received[31:0] (Read)
-- 0x144 : Control signal of vlan127_received
--         bit 0  - vlan127_received_ap_vld (Read/COR)
--         others - reserved
-- 0x148 : Data signal of vlan128_received
--         bit 31~0 - vlan128_received[31:0] (Read)
-- 0x14c : Control signal of vlan128_received
--         bit 0  - vlan128_received_ap_vld (Read/COR)
--         others - reserved
-- 0x150 : Data signal of vlan129_received
--         bit 31~0 - vlan129_received[31:0] (Read)
-- 0x154 : Control signal of vlan129_received
--         bit 0  - vlan129_received_ap_vld (Read/COR)
--         others - reserved
-- 0x158 : Data signal of droped
--         bit 31~0 - droped[31:0] (Read)
-- 0x15c : Control signal of droped
--         bit 0  - droped_ap_vld (Read/COR)
--         others - reserved
-- 0x160 : Data signal of multicast_recv_enable
--         bit 31~0 - multicast_recv_enable[31:0] (Read/Write)
-- 0x164 : reserved
-- 0x168 : Data signal of unicast_filter_enable
--         bit 31~0 - unicast_filter_enable[31:0] (Read/Write)
-- 0x16c : reserved
-- 0x170 : Data signal of unicast_vlan100_macaddr_lsb
--         bit 31~0 - unicast_vlan100_macaddr_lsb[31:0] (Read/Write)
-- 0x174 : reserved
-- 0x178 : Data signal of unicast_vlan100_macaddr_msb
--         bit 31~0 - unicast_vlan100_macaddr_msb[31:0] (Read/Write)
-- 0x17c : reserved
-- 0x180 : Data signal of unicast_vlan101_macaddr_lsb
--         bit 31~0 - unicast_vlan101_macaddr_lsb[31:0] (Read/Write)
-- 0x184 : reserved
-- 0x188 : Data signal of unicast_vlan101_macaddr_msb
--         bit 31~0 - unicast_vlan101_macaddr_msb[31:0] (Read/Write)
-- 0x18c : reserved
-- 0x190 : Data signal of unicast_vlan102_macaddr_lsb
--         bit 31~0 - unicast_vlan102_macaddr_lsb[31:0] (Read/Write)
-- 0x194 : reserved
-- 0x198 : Data signal of unicast_vlan102_macaddr_msb
--         bit 31~0 - unicast_vlan102_macaddr_msb[31:0] (Read/Write)
-- 0x19c : reserved
-- 0x1a0 : Data signal of unicast_vlan103_macaddr_lsb
--         bit 31~0 - unicast_vlan103_macaddr_lsb[31:0] (Read/Write)
-- 0x1a4 : reserved
-- 0x1a8 : Data signal of unicast_vlan103_macaddr_msb
--         bit 31~0 - unicast_vlan103_macaddr_msb[31:0] (Read/Write)
-- 0x1ac : reserved
-- 0x1b0 : Data signal of unicast_vlan104_macaddr_lsb
--         bit 31~0 - unicast_vlan104_macaddr_lsb[31:0] (Read/Write)
-- 0x1b4 : reserved
-- 0x1b8 : Data signal of unicast_vlan104_macaddr_msb
--         bit 31~0 - unicast_vlan104_macaddr_msb[31:0] (Read/Write)
-- 0x1bc : reserved
-- 0x1c0 : Data signal of unicast_vlan105_macaddr_lsb
--         bit 31~0 - unicast_vlan105_macaddr_lsb[31:0] (Read/Write)
-- 0x1c4 : reserved
-- 0x1c8 : Data signal of unicast_vlan105_macaddr_msb
--         bit 31~0 - unicast_vlan105_macaddr_msb[31:0] (Read/Write)
-- 0x1cc : reserved
-- 0x1d0 : Data signal of unicast_vlan106_macaddr_lsb
--         bit 31~0 - unicast_vlan106_macaddr_lsb[31:0] (Read/Write)
-- 0x1d4 : reserved
-- 0x1d8 : Data signal of unicast_vlan106_macaddr_msb
--         bit 31~0 - unicast_vlan106_macaddr_msb[31:0] (Read/Write)
-- 0x1dc : reserved
-- 0x1e0 : Data signal of unicast_vlan107_macaddr_lsb
--         bit 31~0 - unicast_vlan107_macaddr_lsb[31:0] (Read/Write)
-- 0x1e4 : reserved
-- 0x1e8 : Data signal of unicast_vlan107_macaddr_msb
--         bit 31~0 - unicast_vlan107_macaddr_msb[31:0] (Read/Write)
-- 0x1ec : reserved
-- 0x1f0 : Data signal of unicast_vlan108_macaddr_lsb
--         bit 31~0 - unicast_vlan108_macaddr_lsb[31:0] (Read/Write)
-- 0x1f4 : reserved
-- 0x1f8 : Data signal of unicast_vlan108_macaddr_msb
--         bit 31~0 - unicast_vlan108_macaddr_msb[31:0] (Read/Write)
-- 0x1fc : reserved
-- 0x200 : Data signal of unicast_vlan109_macaddr_lsb
--         bit 31~0 - unicast_vlan109_macaddr_lsb[31:0] (Read/Write)
-- 0x204 : reserved
-- 0x208 : Data signal of unicast_vlan109_macaddr_msb
--         bit 31~0 - unicast_vlan109_macaddr_msb[31:0] (Read/Write)
-- 0x20c : reserved
-- 0x210 : Data signal of unicast_vlan110_macaddr_lsb
--         bit 31~0 - unicast_vlan110_macaddr_lsb[31:0] (Read/Write)
-- 0x214 : reserved
-- 0x218 : Data signal of unicast_vlan110_macaddr_msb
--         bit 31~0 - unicast_vlan110_macaddr_msb[31:0] (Read/Write)
-- 0x21c : reserved
-- 0x220 : Data signal of unicast_vlan111_macaddr_lsb
--         bit 31~0 - unicast_vlan111_macaddr_lsb[31:0] (Read/Write)
-- 0x224 : reserved
-- 0x228 : Data signal of unicast_vlan111_macaddr_msb
--         bit 31~0 - unicast_vlan111_macaddr_msb[31:0] (Read/Write)
-- 0x22c : reserved
-- 0x230 : Data signal of unicast_vlan112_macaddr_lsb
--         bit 31~0 - unicast_vlan112_macaddr_lsb[31:0] (Read/Write)
-- 0x234 : reserved
-- 0x238 : Data signal of unicast_vlan112_macaddr_msb
--         bit 31~0 - unicast_vlan112_macaddr_msb[31:0] (Read/Write)
-- 0x23c : reserved
-- 0x240 : Data signal of unicast_vlan113_macaddr_lsb
--         bit 31~0 - unicast_vlan113_macaddr_lsb[31:0] (Read/Write)
-- 0x244 : reserved
-- 0x248 : Data signal of unicast_vlan113_macaddr_msb
--         bit 31~0 - unicast_vlan113_macaddr_msb[31:0] (Read/Write)
-- 0x24c : reserved
-- 0x250 : Data signal of unicast_vlan114_macaddr_lsb
--         bit 31~0 - unicast_vlan114_macaddr_lsb[31:0] (Read/Write)
-- 0x254 : reserved
-- 0x258 : Data signal of unicast_vlan114_macaddr_msb
--         bit 31~0 - unicast_vlan114_macaddr_msb[31:0] (Read/Write)
-- 0x25c : reserved
-- 0x260 : Data signal of unicast_vlan115_macaddr_lsb
--         bit 31~0 - unicast_vlan115_macaddr_lsb[31:0] (Read/Write)
-- 0x264 : reserved
-- 0x268 : Data signal of unicast_vlan115_macaddr_msb
--         bit 31~0 - unicast_vlan115_macaddr_msb[31:0] (Read/Write)
-- 0x26c : reserved
-- 0x270 : Data signal of unicast_vlan116_macaddr_lsb
--         bit 31~0 - unicast_vlan116_macaddr_lsb[31:0] (Read/Write)
-- 0x274 : reserved
-- 0x278 : Data signal of unicast_vlan116_macaddr_msb
--         bit 31~0 - unicast_vlan116_macaddr_msb[31:0] (Read/Write)
-- 0x27c : reserved
-- 0x280 : Data signal of unicast_vlan117_macaddr_lsb
--         bit 31~0 - unicast_vlan117_macaddr_lsb[31:0] (Read/Write)
-- 0x284 : reserved
-- 0x288 : Data signal of unicast_vlan117_macaddr_msb
--         bit 31~0 - unicast_vlan117_macaddr_msb[31:0] (Read/Write)
-- 0x28c : reserved
-- 0x290 : Data signal of unicast_vlan118_macaddr_lsb
--         bit 31~0 - unicast_vlan118_macaddr_lsb[31:0] (Read/Write)
-- 0x294 : reserved
-- 0x298 : Data signal of unicast_vlan118_macaddr_msb
--         bit 31~0 - unicast_vlan118_macaddr_msb[31:0] (Read/Write)
-- 0x29c : reserved
-- 0x2a0 : Data signal of unicast_vlan119_macaddr_lsb
--         bit 31~0 - unicast_vlan119_macaddr_lsb[31:0] (Read/Write)
-- 0x2a4 : reserved
-- 0x2a8 : Data signal of unicast_vlan119_macaddr_msb
--         bit 31~0 - unicast_vlan119_macaddr_msb[31:0] (Read/Write)
-- 0x2ac : reserved
-- 0x2b0 : Data signal of unicast_vlan120_macaddr_lsb
--         bit 31~0 - unicast_vlan120_macaddr_lsb[31:0] (Read/Write)
-- 0x2b4 : reserved
-- 0x2b8 : Data signal of unicast_vlan120_macaddr_msb
--         bit 31~0 - unicast_vlan120_macaddr_msb[31:0] (Read/Write)
-- 0x2bc : reserved
-- 0x2c0 : Data signal of unicast_vlan121_macaddr_lsb
--         bit 31~0 - unicast_vlan121_macaddr_lsb[31:0] (Read/Write)
-- 0x2c4 : reserved
-- 0x2c8 : Data signal of unicast_vlan121_macaddr_msb
--         bit 31~0 - unicast_vlan121_macaddr_msb[31:0] (Read/Write)
-- 0x2cc : reserved
-- 0x2d0 : Data signal of unicast_vlan122_macaddr_lsb
--         bit 31~0 - unicast_vlan122_macaddr_lsb[31:0] (Read/Write)
-- 0x2d4 : reserved
-- 0x2d8 : Data signal of unicast_vlan122_macaddr_msb
--         bit 31~0 - unicast_vlan122_macaddr_msb[31:0] (Read/Write)
-- 0x2dc : reserved
-- 0x2e0 : Data signal of unicast_vlan123_macaddr_lsb
--         bit 31~0 - unicast_vlan123_macaddr_lsb[31:0] (Read/Write)
-- 0x2e4 : reserved
-- 0x2e8 : Data signal of unicast_vlan123_macaddr_msb
--         bit 31~0 - unicast_vlan123_macaddr_msb[31:0] (Read/Write)
-- 0x2ec : reserved
-- 0x2f0 : Data signal of unicast_vlan124_macaddr_lsb
--         bit 31~0 - unicast_vlan124_macaddr_lsb[31:0] (Read/Write)
-- 0x2f4 : reserved
-- 0x2f8 : Data signal of unicast_vlan124_macaddr_msb
--         bit 31~0 - unicast_vlan124_macaddr_msb[31:0] (Read/Write)
-- 0x2fc : reserved
-- 0x300 : Data signal of unicast_vlan125_macaddr_lsb
--         bit 31~0 - unicast_vlan125_macaddr_lsb[31:0] (Read/Write)
-- 0x304 : reserved
-- 0x308 : Data signal of unicast_vlan125_macaddr_msb
--         bit 31~0 - unicast_vlan125_macaddr_msb[31:0] (Read/Write)
-- 0x30c : reserved
-- 0x310 : Data signal of unicast_vlan126_macaddr_lsb
--         bit 31~0 - unicast_vlan126_macaddr_lsb[31:0] (Read/Write)
-- 0x314 : reserved
-- 0x318 : Data signal of unicast_vlan126_macaddr_msb
--         bit 31~0 - unicast_vlan126_macaddr_msb[31:0] (Read/Write)
-- 0x31c : reserved
-- 0x320 : Data signal of unicast_vlan127_macaddr_lsb
--         bit 31~0 - unicast_vlan127_macaddr_lsb[31:0] (Read/Write)
-- 0x324 : reserved
-- 0x328 : Data signal of unicast_vlan127_macaddr_msb
--         bit 31~0 - unicast_vlan127_macaddr_msb[31:0] (Read/Write)
-- 0x32c : reserved
-- 0x330 : Data signal of unicast_vlan128_macaddr_lsb
--         bit 31~0 - unicast_vlan128_macaddr_lsb[31:0] (Read/Write)
-- 0x334 : reserved
-- 0x338 : Data signal of unicast_vlan128_macaddr_msb
--         bit 31~0 - unicast_vlan128_macaddr_msb[31:0] (Read/Write)
-- 0x33c : reserved
-- 0x340 : Data signal of unicast_vlan129_macaddr_lsb
--         bit 31~0 - unicast_vlan129_macaddr_lsb[31:0] (Read/Write)
-- 0x344 : reserved
-- 0x348 : Data signal of unicast_vlan129_macaddr_msb
--         bit 31~0 - unicast_vlan129_macaddr_msb[31:0] (Read/Write)
-- 0x34c : reserved
-- 0x350 : Data signal of log_all_mask
--         bit 31~0 - log_all_mask[31:0] (Read/Write)
-- 0x354 : reserved
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
    constant ADDR_FIFO_AXI_FULL_OFFSET_DATA_0        : INTEGER := 16#01c#;
    constant ADDR_FIFO_AXI_FULL_OFFSET_DATA_1        : INTEGER := 16#020#;
    constant ADDR_FIFO_AXI_FULL_OFFSET_CTRL          : INTEGER := 16#024#;
    constant ADDR_DDR_DATA_0                         : INTEGER := 16#028#;
    constant ADDR_DDR_DATA_1                         : INTEGER := 16#02c#;
    constant ADDR_DDR_CTRL                           : INTEGER := 16#030#;
    constant ADDR_DRIVER_DATA_0                      : INTEGER := 16#034#;
    constant ADDR_DRIVER_DATA_1                      : INTEGER := 16#038#;
    constant ADDR_DRIVER_CTRL                        : INTEGER := 16#03c#;
    constant ADDR_STATUS_DATA_0                      : INTEGER := 16#040#;
    constant ADDR_STATUS_CTRL                        : INTEGER := 16#044#;
    constant ADDR_WRITESTATUS_DATA_0                 : INTEGER := 16#048#;
    constant ADDR_WRITESTATUS_CTRL                   : INTEGER := 16#04c#;
    constant ADDR_LOGGER_VLAN_ENABLE_MASK_DATA_0     : INTEGER := 16#050#;
    constant ADDR_LOGGER_VLAN_ENABLE_MASK_CTRL       : INTEGER := 16#054#;
    constant ADDR_VLAN100_RECEIVED_DATA_0            : INTEGER := 16#058#;
    constant ADDR_VLAN100_RECEIVED_CTRL              : INTEGER := 16#05c#;
    constant ADDR_VLAN101_RECEIVED_DATA_0            : INTEGER := 16#060#;
    constant ADDR_VLAN101_RECEIVED_CTRL              : INTEGER := 16#064#;
    constant ADDR_VLAN102_RECEIVED_DATA_0            : INTEGER := 16#068#;
    constant ADDR_VLAN102_RECEIVED_CTRL              : INTEGER := 16#06c#;
    constant ADDR_VLAN103_RECEIVED_DATA_0            : INTEGER := 16#070#;
    constant ADDR_VLAN103_RECEIVED_CTRL              : INTEGER := 16#074#;
    constant ADDR_VLAN104_RECEIVED_DATA_0            : INTEGER := 16#078#;
    constant ADDR_VLAN104_RECEIVED_CTRL              : INTEGER := 16#07c#;
    constant ADDR_VLAN105_RECEIVED_DATA_0            : INTEGER := 16#080#;
    constant ADDR_VLAN105_RECEIVED_CTRL              : INTEGER := 16#084#;
    constant ADDR_VLAN106_RECEIVED_DATA_0            : INTEGER := 16#088#;
    constant ADDR_VLAN106_RECEIVED_CTRL              : INTEGER := 16#08c#;
    constant ADDR_VLAN107_RECEIVED_DATA_0            : INTEGER := 16#090#;
    constant ADDR_VLAN107_RECEIVED_CTRL              : INTEGER := 16#094#;
    constant ADDR_VLAN108_RECEIVED_DATA_0            : INTEGER := 16#098#;
    constant ADDR_VLAN108_RECEIVED_CTRL              : INTEGER := 16#09c#;
    constant ADDR_VLAN109_RECEIVED_DATA_0            : INTEGER := 16#0a0#;
    constant ADDR_VLAN109_RECEIVED_CTRL              : INTEGER := 16#0a4#;
    constant ADDR_VLAN110_RECEIVED_DATA_0            : INTEGER := 16#0a8#;
    constant ADDR_VLAN110_RECEIVED_CTRL              : INTEGER := 16#0ac#;
    constant ADDR_VLAN111_RECEIVED_DATA_0            : INTEGER := 16#0b0#;
    constant ADDR_VLAN111_RECEIVED_CTRL              : INTEGER := 16#0b4#;
    constant ADDR_VLAN112_RECEIVED_DATA_0            : INTEGER := 16#0b8#;
    constant ADDR_VLAN112_RECEIVED_CTRL              : INTEGER := 16#0bc#;
    constant ADDR_VLAN113_RECEIVED_DATA_0            : INTEGER := 16#0c0#;
    constant ADDR_VLAN113_RECEIVED_CTRL              : INTEGER := 16#0c4#;
    constant ADDR_VLAN114_RECEIVED_DATA_0            : INTEGER := 16#0c8#;
    constant ADDR_VLAN114_RECEIVED_CTRL              : INTEGER := 16#0cc#;
    constant ADDR_VLAN115_RECEIVED_DATA_0            : INTEGER := 16#0d0#;
    constant ADDR_VLAN115_RECEIVED_CTRL              : INTEGER := 16#0d4#;
    constant ADDR_VLAN116_RECEIVED_DATA_0            : INTEGER := 16#0d8#;
    constant ADDR_VLAN116_RECEIVED_CTRL              : INTEGER := 16#0dc#;
    constant ADDR_VLAN117_RECEIVED_DATA_0            : INTEGER := 16#0e0#;
    constant ADDR_VLAN117_RECEIVED_CTRL              : INTEGER := 16#0e4#;
    constant ADDR_VLAN118_RECEIVED_DATA_0            : INTEGER := 16#0e8#;
    constant ADDR_VLAN118_RECEIVED_CTRL              : INTEGER := 16#0ec#;
    constant ADDR_VLAN119_RECEIVED_DATA_0            : INTEGER := 16#0f0#;
    constant ADDR_VLAN119_RECEIVED_CTRL              : INTEGER := 16#0f4#;
    constant ADDR_VLAN120_RECEIVED_DATA_0            : INTEGER := 16#0f8#;
    constant ADDR_VLAN120_RECEIVED_CTRL              : INTEGER := 16#0fc#;
    constant ADDR_VLAN121_RECEIVED_DATA_0            : INTEGER := 16#110#;
    constant ADDR_VLAN121_RECEIVED_CTRL              : INTEGER := 16#114#;
    constant ADDR_VLAN122_RECEIVED_DATA_0            : INTEGER := 16#118#;
    constant ADDR_VLAN122_RECEIVED_CTRL              : INTEGER := 16#11c#;
    constant ADDR_VLAN123_RECEIVED_DATA_0            : INTEGER := 16#120#;
    constant ADDR_VLAN123_RECEIVED_CTRL              : INTEGER := 16#124#;
    constant ADDR_VLAN124_RECEIVED_DATA_0            : INTEGER := 16#128#;
    constant ADDR_VLAN124_RECEIVED_CTRL              : INTEGER := 16#12c#;
    constant ADDR_VLAN125_RECEIVED_DATA_0            : INTEGER := 16#130#;
    constant ADDR_VLAN125_RECEIVED_CTRL              : INTEGER := 16#134#;
    constant ADDR_VLAN126_RECEIVED_DATA_0            : INTEGER := 16#138#;
    constant ADDR_VLAN126_RECEIVED_CTRL              : INTEGER := 16#13c#;
    constant ADDR_VLAN127_RECEIVED_DATA_0            : INTEGER := 16#140#;
    constant ADDR_VLAN127_RECEIVED_CTRL              : INTEGER := 16#144#;
    constant ADDR_VLAN128_RECEIVED_DATA_0            : INTEGER := 16#148#;
    constant ADDR_VLAN128_RECEIVED_CTRL              : INTEGER := 16#14c#;
    constant ADDR_VLAN129_RECEIVED_DATA_0            : INTEGER := 16#150#;
    constant ADDR_VLAN129_RECEIVED_CTRL              : INTEGER := 16#154#;
    constant ADDR_DROPED_DATA_0                      : INTEGER := 16#158#;
    constant ADDR_DROPED_CTRL                        : INTEGER := 16#15c#;
    constant ADDR_MULTICAST_RECV_ENABLE_DATA_0       : INTEGER := 16#160#;
    constant ADDR_MULTICAST_RECV_ENABLE_CTRL         : INTEGER := 16#164#;
    constant ADDR_UNICAST_FILTER_ENABLE_DATA_0       : INTEGER := 16#168#;
    constant ADDR_UNICAST_FILTER_ENABLE_CTRL         : INTEGER := 16#16c#;
    constant ADDR_UNICAST_VLAN100_MACADDR_LSB_DATA_0 : INTEGER := 16#170#;
    constant ADDR_UNICAST_VLAN100_MACADDR_LSB_CTRL   : INTEGER := 16#174#;
    constant ADDR_UNICAST_VLAN100_MACADDR_MSB_DATA_0 : INTEGER := 16#178#;
    constant ADDR_UNICAST_VLAN100_MACADDR_MSB_CTRL   : INTEGER := 16#17c#;
    constant ADDR_UNICAST_VLAN101_MACADDR_LSB_DATA_0 : INTEGER := 16#180#;
    constant ADDR_UNICAST_VLAN101_MACADDR_LSB_CTRL   : INTEGER := 16#184#;
    constant ADDR_UNICAST_VLAN101_MACADDR_MSB_DATA_0 : INTEGER := 16#188#;
    constant ADDR_UNICAST_VLAN101_MACADDR_MSB_CTRL   : INTEGER := 16#18c#;
    constant ADDR_UNICAST_VLAN102_MACADDR_LSB_DATA_0 : INTEGER := 16#190#;
    constant ADDR_UNICAST_VLAN102_MACADDR_LSB_CTRL   : INTEGER := 16#194#;
    constant ADDR_UNICAST_VLAN102_MACADDR_MSB_DATA_0 : INTEGER := 16#198#;
    constant ADDR_UNICAST_VLAN102_MACADDR_MSB_CTRL   : INTEGER := 16#19c#;
    constant ADDR_UNICAST_VLAN103_MACADDR_LSB_DATA_0 : INTEGER := 16#1a0#;
    constant ADDR_UNICAST_VLAN103_MACADDR_LSB_CTRL   : INTEGER := 16#1a4#;
    constant ADDR_UNICAST_VLAN103_MACADDR_MSB_DATA_0 : INTEGER := 16#1a8#;
    constant ADDR_UNICAST_VLAN103_MACADDR_MSB_CTRL   : INTEGER := 16#1ac#;
    constant ADDR_UNICAST_VLAN104_MACADDR_LSB_DATA_0 : INTEGER := 16#1b0#;
    constant ADDR_UNICAST_VLAN104_MACADDR_LSB_CTRL   : INTEGER := 16#1b4#;
    constant ADDR_UNICAST_VLAN104_MACADDR_MSB_DATA_0 : INTEGER := 16#1b8#;
    constant ADDR_UNICAST_VLAN104_MACADDR_MSB_CTRL   : INTEGER := 16#1bc#;
    constant ADDR_UNICAST_VLAN105_MACADDR_LSB_DATA_0 : INTEGER := 16#1c0#;
    constant ADDR_UNICAST_VLAN105_MACADDR_LSB_CTRL   : INTEGER := 16#1c4#;
    constant ADDR_UNICAST_VLAN105_MACADDR_MSB_DATA_0 : INTEGER := 16#1c8#;
    constant ADDR_UNICAST_VLAN105_MACADDR_MSB_CTRL   : INTEGER := 16#1cc#;
    constant ADDR_UNICAST_VLAN106_MACADDR_LSB_DATA_0 : INTEGER := 16#1d0#;
    constant ADDR_UNICAST_VLAN106_MACADDR_LSB_CTRL   : INTEGER := 16#1d4#;
    constant ADDR_UNICAST_VLAN106_MACADDR_MSB_DATA_0 : INTEGER := 16#1d8#;
    constant ADDR_UNICAST_VLAN106_MACADDR_MSB_CTRL   : INTEGER := 16#1dc#;
    constant ADDR_UNICAST_VLAN107_MACADDR_LSB_DATA_0 : INTEGER := 16#1e0#;
    constant ADDR_UNICAST_VLAN107_MACADDR_LSB_CTRL   : INTEGER := 16#1e4#;
    constant ADDR_UNICAST_VLAN107_MACADDR_MSB_DATA_0 : INTEGER := 16#1e8#;
    constant ADDR_UNICAST_VLAN107_MACADDR_MSB_CTRL   : INTEGER := 16#1ec#;
    constant ADDR_UNICAST_VLAN108_MACADDR_LSB_DATA_0 : INTEGER := 16#1f0#;
    constant ADDR_UNICAST_VLAN108_MACADDR_LSB_CTRL   : INTEGER := 16#1f4#;
    constant ADDR_UNICAST_VLAN108_MACADDR_MSB_DATA_0 : INTEGER := 16#1f8#;
    constant ADDR_UNICAST_VLAN108_MACADDR_MSB_CTRL   : INTEGER := 16#1fc#;
    constant ADDR_UNICAST_VLAN109_MACADDR_LSB_DATA_0 : INTEGER := 16#200#;
    constant ADDR_UNICAST_VLAN109_MACADDR_LSB_CTRL   : INTEGER := 16#204#;
    constant ADDR_UNICAST_VLAN109_MACADDR_MSB_DATA_0 : INTEGER := 16#208#;
    constant ADDR_UNICAST_VLAN109_MACADDR_MSB_CTRL   : INTEGER := 16#20c#;
    constant ADDR_UNICAST_VLAN110_MACADDR_LSB_DATA_0 : INTEGER := 16#210#;
    constant ADDR_UNICAST_VLAN110_MACADDR_LSB_CTRL   : INTEGER := 16#214#;
    constant ADDR_UNICAST_VLAN110_MACADDR_MSB_DATA_0 : INTEGER := 16#218#;
    constant ADDR_UNICAST_VLAN110_MACADDR_MSB_CTRL   : INTEGER := 16#21c#;
    constant ADDR_UNICAST_VLAN111_MACADDR_LSB_DATA_0 : INTEGER := 16#220#;
    constant ADDR_UNICAST_VLAN111_MACADDR_LSB_CTRL   : INTEGER := 16#224#;
    constant ADDR_UNICAST_VLAN111_MACADDR_MSB_DATA_0 : INTEGER := 16#228#;
    constant ADDR_UNICAST_VLAN111_MACADDR_MSB_CTRL   : INTEGER := 16#22c#;
    constant ADDR_UNICAST_VLAN112_MACADDR_LSB_DATA_0 : INTEGER := 16#230#;
    constant ADDR_UNICAST_VLAN112_MACADDR_LSB_CTRL   : INTEGER := 16#234#;
    constant ADDR_UNICAST_VLAN112_MACADDR_MSB_DATA_0 : INTEGER := 16#238#;
    constant ADDR_UNICAST_VLAN112_MACADDR_MSB_CTRL   : INTEGER := 16#23c#;
    constant ADDR_UNICAST_VLAN113_MACADDR_LSB_DATA_0 : INTEGER := 16#240#;
    constant ADDR_UNICAST_VLAN113_MACADDR_LSB_CTRL   : INTEGER := 16#244#;
    constant ADDR_UNICAST_VLAN113_MACADDR_MSB_DATA_0 : INTEGER := 16#248#;
    constant ADDR_UNICAST_VLAN113_MACADDR_MSB_CTRL   : INTEGER := 16#24c#;
    constant ADDR_UNICAST_VLAN114_MACADDR_LSB_DATA_0 : INTEGER := 16#250#;
    constant ADDR_UNICAST_VLAN114_MACADDR_LSB_CTRL   : INTEGER := 16#254#;
    constant ADDR_UNICAST_VLAN114_MACADDR_MSB_DATA_0 : INTEGER := 16#258#;
    constant ADDR_UNICAST_VLAN114_MACADDR_MSB_CTRL   : INTEGER := 16#25c#;
    constant ADDR_UNICAST_VLAN115_MACADDR_LSB_DATA_0 : INTEGER := 16#260#;
    constant ADDR_UNICAST_VLAN115_MACADDR_LSB_CTRL   : INTEGER := 16#264#;
    constant ADDR_UNICAST_VLAN115_MACADDR_MSB_DATA_0 : INTEGER := 16#268#;
    constant ADDR_UNICAST_VLAN115_MACADDR_MSB_CTRL   : INTEGER := 16#26c#;
    constant ADDR_UNICAST_VLAN116_MACADDR_LSB_DATA_0 : INTEGER := 16#270#;
    constant ADDR_UNICAST_VLAN116_MACADDR_LSB_CTRL   : INTEGER := 16#274#;
    constant ADDR_UNICAST_VLAN116_MACADDR_MSB_DATA_0 : INTEGER := 16#278#;
    constant ADDR_UNICAST_VLAN116_MACADDR_MSB_CTRL   : INTEGER := 16#27c#;
    constant ADDR_UNICAST_VLAN117_MACADDR_LSB_DATA_0 : INTEGER := 16#280#;
    constant ADDR_UNICAST_VLAN117_MACADDR_LSB_CTRL   : INTEGER := 16#284#;
    constant ADDR_UNICAST_VLAN117_MACADDR_MSB_DATA_0 : INTEGER := 16#288#;
    constant ADDR_UNICAST_VLAN117_MACADDR_MSB_CTRL   : INTEGER := 16#28c#;
    constant ADDR_UNICAST_VLAN118_MACADDR_LSB_DATA_0 : INTEGER := 16#290#;
    constant ADDR_UNICAST_VLAN118_MACADDR_LSB_CTRL   : INTEGER := 16#294#;
    constant ADDR_UNICAST_VLAN118_MACADDR_MSB_DATA_0 : INTEGER := 16#298#;
    constant ADDR_UNICAST_VLAN118_MACADDR_MSB_CTRL   : INTEGER := 16#29c#;
    constant ADDR_UNICAST_VLAN119_MACADDR_LSB_DATA_0 : INTEGER := 16#2a0#;
    constant ADDR_UNICAST_VLAN119_MACADDR_LSB_CTRL   : INTEGER := 16#2a4#;
    constant ADDR_UNICAST_VLAN119_MACADDR_MSB_DATA_0 : INTEGER := 16#2a8#;
    constant ADDR_UNICAST_VLAN119_MACADDR_MSB_CTRL   : INTEGER := 16#2ac#;
    constant ADDR_UNICAST_VLAN120_MACADDR_LSB_DATA_0 : INTEGER := 16#2b0#;
    constant ADDR_UNICAST_VLAN120_MACADDR_LSB_CTRL   : INTEGER := 16#2b4#;
    constant ADDR_UNICAST_VLAN120_MACADDR_MSB_DATA_0 : INTEGER := 16#2b8#;
    constant ADDR_UNICAST_VLAN120_MACADDR_MSB_CTRL   : INTEGER := 16#2bc#;
    constant ADDR_UNICAST_VLAN121_MACADDR_LSB_DATA_0 : INTEGER := 16#2c0#;
    constant ADDR_UNICAST_VLAN121_MACADDR_LSB_CTRL   : INTEGER := 16#2c4#;
    constant ADDR_UNICAST_VLAN121_MACADDR_MSB_DATA_0 : INTEGER := 16#2c8#;
    constant ADDR_UNICAST_VLAN121_MACADDR_MSB_CTRL   : INTEGER := 16#2cc#;
    constant ADDR_UNICAST_VLAN122_MACADDR_LSB_DATA_0 : INTEGER := 16#2d0#;
    constant ADDR_UNICAST_VLAN122_MACADDR_LSB_CTRL   : INTEGER := 16#2d4#;
    constant ADDR_UNICAST_VLAN122_MACADDR_MSB_DATA_0 : INTEGER := 16#2d8#;
    constant ADDR_UNICAST_VLAN122_MACADDR_MSB_CTRL   : INTEGER := 16#2dc#;
    constant ADDR_UNICAST_VLAN123_MACADDR_LSB_DATA_0 : INTEGER := 16#2e0#;
    constant ADDR_UNICAST_VLAN123_MACADDR_LSB_CTRL   : INTEGER := 16#2e4#;
    constant ADDR_UNICAST_VLAN123_MACADDR_MSB_DATA_0 : INTEGER := 16#2e8#;
    constant ADDR_UNICAST_VLAN123_MACADDR_MSB_CTRL   : INTEGER := 16#2ec#;
    constant ADDR_UNICAST_VLAN124_MACADDR_LSB_DATA_0 : INTEGER := 16#2f0#;
    constant ADDR_UNICAST_VLAN124_MACADDR_LSB_CTRL   : INTEGER := 16#2f4#;
    constant ADDR_UNICAST_VLAN124_MACADDR_MSB_DATA_0 : INTEGER := 16#2f8#;
    constant ADDR_UNICAST_VLAN124_MACADDR_MSB_CTRL   : INTEGER := 16#2fc#;
    constant ADDR_UNICAST_VLAN125_MACADDR_LSB_DATA_0 : INTEGER := 16#300#;
    constant ADDR_UNICAST_VLAN125_MACADDR_LSB_CTRL   : INTEGER := 16#304#;
    constant ADDR_UNICAST_VLAN125_MACADDR_MSB_DATA_0 : INTEGER := 16#308#;
    constant ADDR_UNICAST_VLAN125_MACADDR_MSB_CTRL   : INTEGER := 16#30c#;
    constant ADDR_UNICAST_VLAN126_MACADDR_LSB_DATA_0 : INTEGER := 16#310#;
    constant ADDR_UNICAST_VLAN126_MACADDR_LSB_CTRL   : INTEGER := 16#314#;
    constant ADDR_UNICAST_VLAN126_MACADDR_MSB_DATA_0 : INTEGER := 16#318#;
    constant ADDR_UNICAST_VLAN126_MACADDR_MSB_CTRL   : INTEGER := 16#31c#;
    constant ADDR_UNICAST_VLAN127_MACADDR_LSB_DATA_0 : INTEGER := 16#320#;
    constant ADDR_UNICAST_VLAN127_MACADDR_LSB_CTRL   : INTEGER := 16#324#;
    constant ADDR_UNICAST_VLAN127_MACADDR_MSB_DATA_0 : INTEGER := 16#328#;
    constant ADDR_UNICAST_VLAN127_MACADDR_MSB_CTRL   : INTEGER := 16#32c#;
    constant ADDR_UNICAST_VLAN128_MACADDR_LSB_DATA_0 : INTEGER := 16#330#;
    constant ADDR_UNICAST_VLAN128_MACADDR_LSB_CTRL   : INTEGER := 16#334#;
    constant ADDR_UNICAST_VLAN128_MACADDR_MSB_DATA_0 : INTEGER := 16#338#;
    constant ADDR_UNICAST_VLAN128_MACADDR_MSB_CTRL   : INTEGER := 16#33c#;
    constant ADDR_UNICAST_VLAN129_MACADDR_LSB_DATA_0 : INTEGER := 16#340#;
    constant ADDR_UNICAST_VLAN129_MACADDR_LSB_CTRL   : INTEGER := 16#344#;
    constant ADDR_UNICAST_VLAN129_MACADDR_MSB_DATA_0 : INTEGER := 16#348#;
    constant ADDR_UNICAST_VLAN129_MACADDR_MSB_CTRL   : INTEGER := 16#34c#;
    constant ADDR_LOG_ALL_MASK_DATA_0                : INTEGER := 16#350#;
    constant ADDR_LOG_ALL_MASK_CTRL                  : INTEGER := 16#354#;
    constant ADDR_BITS         : INTEGER := 10;

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
    signal int_fifo_axi_full_offset : UNSIGNED(63 downto 0) := (others => '0');
    signal int_ddr             : UNSIGNED(63 downto 0) := (others => '0');
    signal int_driver          : UNSIGNED(63 downto 0) := (others => '0');
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
    signal int_vlan110_received_ap_vld : STD_LOGIC;
    signal int_vlan110_received : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vlan111_received_ap_vld : STD_LOGIC;
    signal int_vlan111_received : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vlan112_received_ap_vld : STD_LOGIC;
    signal int_vlan112_received : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vlan113_received_ap_vld : STD_LOGIC;
    signal int_vlan113_received : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vlan114_received_ap_vld : STD_LOGIC;
    signal int_vlan114_received : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vlan115_received_ap_vld : STD_LOGIC;
    signal int_vlan115_received : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vlan116_received_ap_vld : STD_LOGIC;
    signal int_vlan116_received : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vlan117_received_ap_vld : STD_LOGIC;
    signal int_vlan117_received : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vlan118_received_ap_vld : STD_LOGIC;
    signal int_vlan118_received : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vlan119_received_ap_vld : STD_LOGIC;
    signal int_vlan119_received : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vlan120_received_ap_vld : STD_LOGIC;
    signal int_vlan120_received : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vlan121_received_ap_vld : STD_LOGIC;
    signal int_vlan121_received : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vlan122_received_ap_vld : STD_LOGIC;
    signal int_vlan122_received : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vlan123_received_ap_vld : STD_LOGIC;
    signal int_vlan123_received : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vlan124_received_ap_vld : STD_LOGIC;
    signal int_vlan124_received : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vlan125_received_ap_vld : STD_LOGIC;
    signal int_vlan125_received : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vlan126_received_ap_vld : STD_LOGIC;
    signal int_vlan126_received : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vlan127_received_ap_vld : STD_LOGIC;
    signal int_vlan127_received : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vlan128_received_ap_vld : STD_LOGIC;
    signal int_vlan128_received : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vlan129_received_ap_vld : STD_LOGIC;
    signal int_vlan129_received : UNSIGNED(31 downto 0) := (others => '0');
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
    signal int_unicast_vlan110_macaddr_lsb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan110_macaddr_msb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan111_macaddr_lsb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan111_macaddr_msb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan112_macaddr_lsb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan112_macaddr_msb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan113_macaddr_lsb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan113_macaddr_msb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan114_macaddr_lsb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan114_macaddr_msb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan115_macaddr_lsb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan115_macaddr_msb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan116_macaddr_lsb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan116_macaddr_msb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan117_macaddr_lsb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan117_macaddr_msb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan118_macaddr_lsb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan118_macaddr_msb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan119_macaddr_lsb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan119_macaddr_msb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan120_macaddr_lsb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan120_macaddr_msb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan121_macaddr_lsb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan121_macaddr_msb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan122_macaddr_lsb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan122_macaddr_msb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan123_macaddr_lsb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan123_macaddr_msb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan124_macaddr_lsb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan124_macaddr_msb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan125_macaddr_lsb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan125_macaddr_msb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan126_macaddr_lsb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan126_macaddr_msb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan127_macaddr_lsb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan127_macaddr_msb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan128_macaddr_lsb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan128_macaddr_msb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan129_macaddr_lsb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_unicast_vlan129_macaddr_msb : UNSIGNED(31 downto 0) := (others => '0');
    signal int_log_all_mask    : UNSIGNED(31 downto 0) := (others => '0');


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
                    when ADDR_FIFO_AXI_FULL_OFFSET_DATA_0 =>
                        rdata_data <= RESIZE(int_fifo_axi_full_offset(31 downto 0), 32);
                    when ADDR_FIFO_AXI_FULL_OFFSET_DATA_1 =>
                        rdata_data <= RESIZE(int_fifo_axi_full_offset(63 downto 32), 32);
                    when ADDR_DDR_DATA_0 =>
                        rdata_data <= RESIZE(int_ddr(31 downto 0), 32);
                    when ADDR_DDR_DATA_1 =>
                        rdata_data <= RESIZE(int_ddr(63 downto 32), 32);
                    when ADDR_DRIVER_DATA_0 =>
                        rdata_data <= RESIZE(int_driver(31 downto 0), 32);
                    when ADDR_DRIVER_DATA_1 =>
                        rdata_data <= RESIZE(int_driver(63 downto 32), 32);
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
                    when ADDR_VLAN110_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_vlan110_received(31 downto 0), 32);
                    when ADDR_VLAN110_RECEIVED_CTRL =>
                        rdata_data(0) <= int_vlan110_received_ap_vld;
                    when ADDR_VLAN111_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_vlan111_received(31 downto 0), 32);
                    when ADDR_VLAN111_RECEIVED_CTRL =>
                        rdata_data(0) <= int_vlan111_received_ap_vld;
                    when ADDR_VLAN112_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_vlan112_received(31 downto 0), 32);
                    when ADDR_VLAN112_RECEIVED_CTRL =>
                        rdata_data(0) <= int_vlan112_received_ap_vld;
                    when ADDR_VLAN113_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_vlan113_received(31 downto 0), 32);
                    when ADDR_VLAN113_RECEIVED_CTRL =>
                        rdata_data(0) <= int_vlan113_received_ap_vld;
                    when ADDR_VLAN114_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_vlan114_received(31 downto 0), 32);
                    when ADDR_VLAN114_RECEIVED_CTRL =>
                        rdata_data(0) <= int_vlan114_received_ap_vld;
                    when ADDR_VLAN115_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_vlan115_received(31 downto 0), 32);
                    when ADDR_VLAN115_RECEIVED_CTRL =>
                        rdata_data(0) <= int_vlan115_received_ap_vld;
                    when ADDR_VLAN116_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_vlan116_received(31 downto 0), 32);
                    when ADDR_VLAN116_RECEIVED_CTRL =>
                        rdata_data(0) <= int_vlan116_received_ap_vld;
                    when ADDR_VLAN117_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_vlan117_received(31 downto 0), 32);
                    when ADDR_VLAN117_RECEIVED_CTRL =>
                        rdata_data(0) <= int_vlan117_received_ap_vld;
                    when ADDR_VLAN118_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_vlan118_received(31 downto 0), 32);
                    when ADDR_VLAN118_RECEIVED_CTRL =>
                        rdata_data(0) <= int_vlan118_received_ap_vld;
                    when ADDR_VLAN119_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_vlan119_received(31 downto 0), 32);
                    when ADDR_VLAN119_RECEIVED_CTRL =>
                        rdata_data(0) <= int_vlan119_received_ap_vld;
                    when ADDR_VLAN120_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_vlan120_received(31 downto 0), 32);
                    when ADDR_VLAN120_RECEIVED_CTRL =>
                        rdata_data(0) <= int_vlan120_received_ap_vld;
                    when ADDR_VLAN121_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_vlan121_received(31 downto 0), 32);
                    when ADDR_VLAN121_RECEIVED_CTRL =>
                        rdata_data(0) <= int_vlan121_received_ap_vld;
                    when ADDR_VLAN122_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_vlan122_received(31 downto 0), 32);
                    when ADDR_VLAN122_RECEIVED_CTRL =>
                        rdata_data(0) <= int_vlan122_received_ap_vld;
                    when ADDR_VLAN123_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_vlan123_received(31 downto 0), 32);
                    when ADDR_VLAN123_RECEIVED_CTRL =>
                        rdata_data(0) <= int_vlan123_received_ap_vld;
                    when ADDR_VLAN124_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_vlan124_received(31 downto 0), 32);
                    when ADDR_VLAN124_RECEIVED_CTRL =>
                        rdata_data(0) <= int_vlan124_received_ap_vld;
                    when ADDR_VLAN125_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_vlan125_received(31 downto 0), 32);
                    when ADDR_VLAN125_RECEIVED_CTRL =>
                        rdata_data(0) <= int_vlan125_received_ap_vld;
                    when ADDR_VLAN126_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_vlan126_received(31 downto 0), 32);
                    when ADDR_VLAN126_RECEIVED_CTRL =>
                        rdata_data(0) <= int_vlan126_received_ap_vld;
                    when ADDR_VLAN127_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_vlan127_received(31 downto 0), 32);
                    when ADDR_VLAN127_RECEIVED_CTRL =>
                        rdata_data(0) <= int_vlan127_received_ap_vld;
                    when ADDR_VLAN128_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_vlan128_received(31 downto 0), 32);
                    when ADDR_VLAN128_RECEIVED_CTRL =>
                        rdata_data(0) <= int_vlan128_received_ap_vld;
                    when ADDR_VLAN129_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_vlan129_received(31 downto 0), 32);
                    when ADDR_VLAN129_RECEIVED_CTRL =>
                        rdata_data(0) <= int_vlan129_received_ap_vld;
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
                    when ADDR_UNICAST_VLAN110_MACADDR_LSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan110_macaddr_lsb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN110_MACADDR_MSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan110_macaddr_msb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN111_MACADDR_LSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan111_macaddr_lsb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN111_MACADDR_MSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan111_macaddr_msb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN112_MACADDR_LSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan112_macaddr_lsb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN112_MACADDR_MSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan112_macaddr_msb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN113_MACADDR_LSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan113_macaddr_lsb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN113_MACADDR_MSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan113_macaddr_msb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN114_MACADDR_LSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan114_macaddr_lsb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN114_MACADDR_MSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan114_macaddr_msb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN115_MACADDR_LSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan115_macaddr_lsb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN115_MACADDR_MSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan115_macaddr_msb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN116_MACADDR_LSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan116_macaddr_lsb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN116_MACADDR_MSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan116_macaddr_msb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN117_MACADDR_LSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan117_macaddr_lsb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN117_MACADDR_MSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan117_macaddr_msb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN118_MACADDR_LSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan118_macaddr_lsb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN118_MACADDR_MSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan118_macaddr_msb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN119_MACADDR_LSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan119_macaddr_lsb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN119_MACADDR_MSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan119_macaddr_msb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN120_MACADDR_LSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan120_macaddr_lsb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN120_MACADDR_MSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan120_macaddr_msb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN121_MACADDR_LSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan121_macaddr_lsb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN121_MACADDR_MSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan121_macaddr_msb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN122_MACADDR_LSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan122_macaddr_lsb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN122_MACADDR_MSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan122_macaddr_msb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN123_MACADDR_LSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan123_macaddr_lsb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN123_MACADDR_MSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan123_macaddr_msb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN124_MACADDR_LSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan124_macaddr_lsb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN124_MACADDR_MSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan124_macaddr_msb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN125_MACADDR_LSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan125_macaddr_lsb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN125_MACADDR_MSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan125_macaddr_msb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN126_MACADDR_LSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan126_macaddr_lsb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN126_MACADDR_MSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan126_macaddr_msb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN127_MACADDR_LSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan127_macaddr_lsb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN127_MACADDR_MSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan127_macaddr_msb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN128_MACADDR_LSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan128_macaddr_lsb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN128_MACADDR_MSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan128_macaddr_msb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN129_MACADDR_LSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan129_macaddr_lsb(31 downto 0), 32);
                    when ADDR_UNICAST_VLAN129_MACADDR_MSB_DATA_0 =>
                        rdata_data <= RESIZE(int_unicast_vlan129_macaddr_msb(31 downto 0), 32);
                    when ADDR_LOG_ALL_MASK_DATA_0 =>
                        rdata_data <= RESIZE(int_log_all_mask(31 downto 0), 32);
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
    fifo_axi_full_offset <= STD_LOGIC_VECTOR(int_fifo_axi_full_offset);
    ddr                  <= STD_LOGIC_VECTOR(int_ddr);
    driver               <= STD_LOGIC_VECTOR(int_driver);
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
    unicast_vlan110_macaddr_lsb <= STD_LOGIC_VECTOR(int_unicast_vlan110_macaddr_lsb);
    unicast_vlan110_macaddr_msb <= STD_LOGIC_VECTOR(int_unicast_vlan110_macaddr_msb);
    unicast_vlan111_macaddr_lsb <= STD_LOGIC_VECTOR(int_unicast_vlan111_macaddr_lsb);
    unicast_vlan111_macaddr_msb <= STD_LOGIC_VECTOR(int_unicast_vlan111_macaddr_msb);
    unicast_vlan112_macaddr_lsb <= STD_LOGIC_VECTOR(int_unicast_vlan112_macaddr_lsb);
    unicast_vlan112_macaddr_msb <= STD_LOGIC_VECTOR(int_unicast_vlan112_macaddr_msb);
    unicast_vlan113_macaddr_lsb <= STD_LOGIC_VECTOR(int_unicast_vlan113_macaddr_lsb);
    unicast_vlan113_macaddr_msb <= STD_LOGIC_VECTOR(int_unicast_vlan113_macaddr_msb);
    unicast_vlan114_macaddr_lsb <= STD_LOGIC_VECTOR(int_unicast_vlan114_macaddr_lsb);
    unicast_vlan114_macaddr_msb <= STD_LOGIC_VECTOR(int_unicast_vlan114_macaddr_msb);
    unicast_vlan115_macaddr_lsb <= STD_LOGIC_VECTOR(int_unicast_vlan115_macaddr_lsb);
    unicast_vlan115_macaddr_msb <= STD_LOGIC_VECTOR(int_unicast_vlan115_macaddr_msb);
    unicast_vlan116_macaddr_lsb <= STD_LOGIC_VECTOR(int_unicast_vlan116_macaddr_lsb);
    unicast_vlan116_macaddr_msb <= STD_LOGIC_VECTOR(int_unicast_vlan116_macaddr_msb);
    unicast_vlan117_macaddr_lsb <= STD_LOGIC_VECTOR(int_unicast_vlan117_macaddr_lsb);
    unicast_vlan117_macaddr_msb <= STD_LOGIC_VECTOR(int_unicast_vlan117_macaddr_msb);
    unicast_vlan118_macaddr_lsb <= STD_LOGIC_VECTOR(int_unicast_vlan118_macaddr_lsb);
    unicast_vlan118_macaddr_msb <= STD_LOGIC_VECTOR(int_unicast_vlan118_macaddr_msb);
    unicast_vlan119_macaddr_lsb <= STD_LOGIC_VECTOR(int_unicast_vlan119_macaddr_lsb);
    unicast_vlan119_macaddr_msb <= STD_LOGIC_VECTOR(int_unicast_vlan119_macaddr_msb);
    unicast_vlan120_macaddr_lsb <= STD_LOGIC_VECTOR(int_unicast_vlan120_macaddr_lsb);
    unicast_vlan120_macaddr_msb <= STD_LOGIC_VECTOR(int_unicast_vlan120_macaddr_msb);
    unicast_vlan121_macaddr_lsb <= STD_LOGIC_VECTOR(int_unicast_vlan121_macaddr_lsb);
    unicast_vlan121_macaddr_msb <= STD_LOGIC_VECTOR(int_unicast_vlan121_macaddr_msb);
    unicast_vlan122_macaddr_lsb <= STD_LOGIC_VECTOR(int_unicast_vlan122_macaddr_lsb);
    unicast_vlan122_macaddr_msb <= STD_LOGIC_VECTOR(int_unicast_vlan122_macaddr_msb);
    unicast_vlan123_macaddr_lsb <= STD_LOGIC_VECTOR(int_unicast_vlan123_macaddr_lsb);
    unicast_vlan123_macaddr_msb <= STD_LOGIC_VECTOR(int_unicast_vlan123_macaddr_msb);
    unicast_vlan124_macaddr_lsb <= STD_LOGIC_VECTOR(int_unicast_vlan124_macaddr_lsb);
    unicast_vlan124_macaddr_msb <= STD_LOGIC_VECTOR(int_unicast_vlan124_macaddr_msb);
    unicast_vlan125_macaddr_lsb <= STD_LOGIC_VECTOR(int_unicast_vlan125_macaddr_lsb);
    unicast_vlan125_macaddr_msb <= STD_LOGIC_VECTOR(int_unicast_vlan125_macaddr_msb);
    unicast_vlan126_macaddr_lsb <= STD_LOGIC_VECTOR(int_unicast_vlan126_macaddr_lsb);
    unicast_vlan126_macaddr_msb <= STD_LOGIC_VECTOR(int_unicast_vlan126_macaddr_msb);
    unicast_vlan127_macaddr_lsb <= STD_LOGIC_VECTOR(int_unicast_vlan127_macaddr_lsb);
    unicast_vlan127_macaddr_msb <= STD_LOGIC_VECTOR(int_unicast_vlan127_macaddr_msb);
    unicast_vlan128_macaddr_lsb <= STD_LOGIC_VECTOR(int_unicast_vlan128_macaddr_lsb);
    unicast_vlan128_macaddr_msb <= STD_LOGIC_VECTOR(int_unicast_vlan128_macaddr_msb);
    unicast_vlan129_macaddr_lsb <= STD_LOGIC_VECTOR(int_unicast_vlan129_macaddr_lsb);
    unicast_vlan129_macaddr_msb <= STD_LOGIC_VECTOR(int_unicast_vlan129_macaddr_msb);
    log_all_mask         <= STD_LOGIC_VECTOR(int_log_all_mask);

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
                int_vlan110_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vlan110_received_ap_vld = '1') then
                    int_vlan110_received <= UNSIGNED(vlan110_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan110_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vlan110_received_ap_vld = '1') then
                    int_vlan110_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VLAN110_RECEIVED_CTRL) then
                    int_vlan110_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan111_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vlan111_received_ap_vld = '1') then
                    int_vlan111_received <= UNSIGNED(vlan111_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan111_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vlan111_received_ap_vld = '1') then
                    int_vlan111_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VLAN111_RECEIVED_CTRL) then
                    int_vlan111_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan112_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vlan112_received_ap_vld = '1') then
                    int_vlan112_received <= UNSIGNED(vlan112_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan112_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vlan112_received_ap_vld = '1') then
                    int_vlan112_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VLAN112_RECEIVED_CTRL) then
                    int_vlan112_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan113_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vlan113_received_ap_vld = '1') then
                    int_vlan113_received <= UNSIGNED(vlan113_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan113_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vlan113_received_ap_vld = '1') then
                    int_vlan113_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VLAN113_RECEIVED_CTRL) then
                    int_vlan113_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan114_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vlan114_received_ap_vld = '1') then
                    int_vlan114_received <= UNSIGNED(vlan114_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan114_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vlan114_received_ap_vld = '1') then
                    int_vlan114_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VLAN114_RECEIVED_CTRL) then
                    int_vlan114_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan115_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vlan115_received_ap_vld = '1') then
                    int_vlan115_received <= UNSIGNED(vlan115_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan115_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vlan115_received_ap_vld = '1') then
                    int_vlan115_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VLAN115_RECEIVED_CTRL) then
                    int_vlan115_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan116_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vlan116_received_ap_vld = '1') then
                    int_vlan116_received <= UNSIGNED(vlan116_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan116_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vlan116_received_ap_vld = '1') then
                    int_vlan116_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VLAN116_RECEIVED_CTRL) then
                    int_vlan116_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan117_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vlan117_received_ap_vld = '1') then
                    int_vlan117_received <= UNSIGNED(vlan117_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan117_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vlan117_received_ap_vld = '1') then
                    int_vlan117_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VLAN117_RECEIVED_CTRL) then
                    int_vlan117_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan118_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vlan118_received_ap_vld = '1') then
                    int_vlan118_received <= UNSIGNED(vlan118_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan118_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vlan118_received_ap_vld = '1') then
                    int_vlan118_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VLAN118_RECEIVED_CTRL) then
                    int_vlan118_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan119_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vlan119_received_ap_vld = '1') then
                    int_vlan119_received <= UNSIGNED(vlan119_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan119_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vlan119_received_ap_vld = '1') then
                    int_vlan119_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VLAN119_RECEIVED_CTRL) then
                    int_vlan119_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan120_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vlan120_received_ap_vld = '1') then
                    int_vlan120_received <= UNSIGNED(vlan120_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan120_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vlan120_received_ap_vld = '1') then
                    int_vlan120_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VLAN120_RECEIVED_CTRL) then
                    int_vlan120_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan121_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vlan121_received_ap_vld = '1') then
                    int_vlan121_received <= UNSIGNED(vlan121_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan121_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vlan121_received_ap_vld = '1') then
                    int_vlan121_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VLAN121_RECEIVED_CTRL) then
                    int_vlan121_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan122_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vlan122_received_ap_vld = '1') then
                    int_vlan122_received <= UNSIGNED(vlan122_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan122_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vlan122_received_ap_vld = '1') then
                    int_vlan122_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VLAN122_RECEIVED_CTRL) then
                    int_vlan122_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan123_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vlan123_received_ap_vld = '1') then
                    int_vlan123_received <= UNSIGNED(vlan123_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan123_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vlan123_received_ap_vld = '1') then
                    int_vlan123_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VLAN123_RECEIVED_CTRL) then
                    int_vlan123_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan124_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vlan124_received_ap_vld = '1') then
                    int_vlan124_received <= UNSIGNED(vlan124_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan124_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vlan124_received_ap_vld = '1') then
                    int_vlan124_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VLAN124_RECEIVED_CTRL) then
                    int_vlan124_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan125_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vlan125_received_ap_vld = '1') then
                    int_vlan125_received <= UNSIGNED(vlan125_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan125_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vlan125_received_ap_vld = '1') then
                    int_vlan125_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VLAN125_RECEIVED_CTRL) then
                    int_vlan125_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan126_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vlan126_received_ap_vld = '1') then
                    int_vlan126_received <= UNSIGNED(vlan126_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan126_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vlan126_received_ap_vld = '1') then
                    int_vlan126_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VLAN126_RECEIVED_CTRL) then
                    int_vlan126_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan127_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vlan127_received_ap_vld = '1') then
                    int_vlan127_received <= UNSIGNED(vlan127_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan127_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vlan127_received_ap_vld = '1') then
                    int_vlan127_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VLAN127_RECEIVED_CTRL) then
                    int_vlan127_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan128_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vlan128_received_ap_vld = '1') then
                    int_vlan128_received <= UNSIGNED(vlan128_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan128_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vlan128_received_ap_vld = '1') then
                    int_vlan128_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VLAN128_RECEIVED_CTRL) then
                    int_vlan128_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan129_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vlan129_received_ap_vld = '1') then
                    int_vlan129_received <= UNSIGNED(vlan129_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vlan129_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vlan129_received_ap_vld = '1') then
                    int_vlan129_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VLAN129_RECEIVED_CTRL) then
                    int_vlan129_received_ap_vld <= '0'; -- clear on read
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
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN110_MACADDR_LSB_DATA_0) then
                    int_unicast_vlan110_macaddr_lsb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan110_macaddr_lsb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN110_MACADDR_MSB_DATA_0) then
                    int_unicast_vlan110_macaddr_msb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan110_macaddr_msb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN111_MACADDR_LSB_DATA_0) then
                    int_unicast_vlan111_macaddr_lsb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan111_macaddr_lsb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN111_MACADDR_MSB_DATA_0) then
                    int_unicast_vlan111_macaddr_msb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan111_macaddr_msb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN112_MACADDR_LSB_DATA_0) then
                    int_unicast_vlan112_macaddr_lsb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan112_macaddr_lsb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN112_MACADDR_MSB_DATA_0) then
                    int_unicast_vlan112_macaddr_msb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan112_macaddr_msb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN113_MACADDR_LSB_DATA_0) then
                    int_unicast_vlan113_macaddr_lsb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan113_macaddr_lsb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN113_MACADDR_MSB_DATA_0) then
                    int_unicast_vlan113_macaddr_msb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan113_macaddr_msb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN114_MACADDR_LSB_DATA_0) then
                    int_unicast_vlan114_macaddr_lsb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan114_macaddr_lsb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN114_MACADDR_MSB_DATA_0) then
                    int_unicast_vlan114_macaddr_msb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan114_macaddr_msb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN115_MACADDR_LSB_DATA_0) then
                    int_unicast_vlan115_macaddr_lsb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan115_macaddr_lsb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN115_MACADDR_MSB_DATA_0) then
                    int_unicast_vlan115_macaddr_msb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan115_macaddr_msb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN116_MACADDR_LSB_DATA_0) then
                    int_unicast_vlan116_macaddr_lsb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan116_macaddr_lsb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN116_MACADDR_MSB_DATA_0) then
                    int_unicast_vlan116_macaddr_msb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan116_macaddr_msb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN117_MACADDR_LSB_DATA_0) then
                    int_unicast_vlan117_macaddr_lsb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan117_macaddr_lsb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN117_MACADDR_MSB_DATA_0) then
                    int_unicast_vlan117_macaddr_msb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan117_macaddr_msb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN118_MACADDR_LSB_DATA_0) then
                    int_unicast_vlan118_macaddr_lsb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan118_macaddr_lsb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN118_MACADDR_MSB_DATA_0) then
                    int_unicast_vlan118_macaddr_msb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan118_macaddr_msb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN119_MACADDR_LSB_DATA_0) then
                    int_unicast_vlan119_macaddr_lsb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan119_macaddr_lsb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN119_MACADDR_MSB_DATA_0) then
                    int_unicast_vlan119_macaddr_msb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan119_macaddr_msb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN120_MACADDR_LSB_DATA_0) then
                    int_unicast_vlan120_macaddr_lsb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan120_macaddr_lsb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN120_MACADDR_MSB_DATA_0) then
                    int_unicast_vlan120_macaddr_msb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan120_macaddr_msb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN121_MACADDR_LSB_DATA_0) then
                    int_unicast_vlan121_macaddr_lsb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan121_macaddr_lsb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN121_MACADDR_MSB_DATA_0) then
                    int_unicast_vlan121_macaddr_msb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan121_macaddr_msb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN122_MACADDR_LSB_DATA_0) then
                    int_unicast_vlan122_macaddr_lsb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan122_macaddr_lsb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN122_MACADDR_MSB_DATA_0) then
                    int_unicast_vlan122_macaddr_msb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan122_macaddr_msb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN123_MACADDR_LSB_DATA_0) then
                    int_unicast_vlan123_macaddr_lsb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan123_macaddr_lsb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN123_MACADDR_MSB_DATA_0) then
                    int_unicast_vlan123_macaddr_msb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan123_macaddr_msb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN124_MACADDR_LSB_DATA_0) then
                    int_unicast_vlan124_macaddr_lsb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan124_macaddr_lsb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN124_MACADDR_MSB_DATA_0) then
                    int_unicast_vlan124_macaddr_msb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan124_macaddr_msb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN125_MACADDR_LSB_DATA_0) then
                    int_unicast_vlan125_macaddr_lsb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan125_macaddr_lsb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN125_MACADDR_MSB_DATA_0) then
                    int_unicast_vlan125_macaddr_msb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan125_macaddr_msb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN126_MACADDR_LSB_DATA_0) then
                    int_unicast_vlan126_macaddr_lsb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan126_macaddr_lsb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN126_MACADDR_MSB_DATA_0) then
                    int_unicast_vlan126_macaddr_msb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan126_macaddr_msb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN127_MACADDR_LSB_DATA_0) then
                    int_unicast_vlan127_macaddr_lsb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan127_macaddr_lsb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN127_MACADDR_MSB_DATA_0) then
                    int_unicast_vlan127_macaddr_msb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan127_macaddr_msb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN128_MACADDR_LSB_DATA_0) then
                    int_unicast_vlan128_macaddr_lsb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan128_macaddr_lsb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN128_MACADDR_MSB_DATA_0) then
                    int_unicast_vlan128_macaddr_msb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan128_macaddr_msb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN129_MACADDR_LSB_DATA_0) then
                    int_unicast_vlan129_macaddr_lsb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan129_macaddr_lsb(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UNICAST_VLAN129_MACADDR_MSB_DATA_0) then
                    int_unicast_vlan129_macaddr_msb(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_unicast_vlan129_macaddr_msb(31 downto 0));
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


-- ----------------------- Memory logic ------------------

end architecture behave;
