-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Tool Version Limit: 2019.12
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity clu_EN_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 8;
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
    can_ptr               :out  STD_LOGIC_VECTOR(31 downto 0);
    uart_ptr              :out  STD_LOGIC_VECTOR(31 downto 0);
    lin_ptr               :out  STD_LOGIC_VECTOR(31 downto 0);
    received_can          :in   STD_LOGIC_VECTOR(31 downto 0);
    received_can_ap_vld   :in   STD_LOGIC;
    received_uart         :out  STD_LOGIC_VECTOR(31 downto 0);
    received_lin          :in   STD_LOGIC_VECTOR(31 downto 0);
    received_lin_ap_vld   :in   STD_LOGIC;
    can_en                :out  STD_LOGIC_VECTOR(31 downto 0);
    uart_en               :out  STD_LOGIC_VECTOR(7 downto 0);
    lin_en                :out  STD_LOGIC_VECTOR(31 downto 0);
    can_ddr               :out  STD_LOGIC_VECTOR(31 downto 0);
    uart_ddr              :out  STD_LOGIC_VECTOR(31 downto 0);
    lin_ddr               :out  STD_LOGIC_VECTOR(31 downto 0);
    can_0_received        :in   STD_LOGIC_VECTOR(31 downto 0);
    can_0_received_ap_vld :in   STD_LOGIC;
    can_1_received        :in   STD_LOGIC_VECTOR(31 downto 0);
    can_1_received_ap_vld :in   STD_LOGIC;
    can_2_received        :in   STD_LOGIC_VECTOR(31 downto 0);
    can_2_received_ap_vld :in   STD_LOGIC;
    can_3_received        :in   STD_LOGIC_VECTOR(31 downto 0);
    can_3_received_ap_vld :in   STD_LOGIC;
    can_dropped           :in   STD_LOGIC_VECTOR(31 downto 0);
    can_dropped_ap_vld    :in   STD_LOGIC;
    lin_0_received        :in   STD_LOGIC_VECTOR(31 downto 0);
    lin_0_received_ap_vld :in   STD_LOGIC;
    lin_1_received        :in   STD_LOGIC_VECTOR(31 downto 0);
    lin_1_received_ap_vld :in   STD_LOGIC;
    lin_2_received        :in   STD_LOGIC_VECTOR(31 downto 0);
    lin_2_received_ap_vld :in   STD_LOGIC;
    lin_3_received        :in   STD_LOGIC_VECTOR(31 downto 0);
    lin_3_received_ap_vld :in   STD_LOGIC;
    lin_4_received        :in   STD_LOGIC_VECTOR(31 downto 0);
    lin_4_received_ap_vld :in   STD_LOGIC;
    lin_5_received        :in   STD_LOGIC_VECTOR(31 downto 0);
    lin_5_received_ap_vld :in   STD_LOGIC;
    lin_6_received        :in   STD_LOGIC_VECTOR(31 downto 0);
    lin_6_received_ap_vld :in   STD_LOGIC;
    lin_7_received        :in   STD_LOGIC_VECTOR(31 downto 0);
    lin_7_received_ap_vld :in   STD_LOGIC;
    lin_8_received        :in   STD_LOGIC_VECTOR(31 downto 0);
    lin_8_received_ap_vld :in   STD_LOGIC;
    lin_9_received        :in   STD_LOGIC_VECTOR(31 downto 0);
    lin_9_received_ap_vld :in   STD_LOGIC;
    lin_dropped           :in   STD_LOGIC_VECTOR(31 downto 0);
    lin_dropped_ap_vld    :in   STD_LOGIC;
    ap_start              :out  STD_LOGIC;
    ap_done               :in   STD_LOGIC;
    ap_ready              :in   STD_LOGIC;
    ap_idle               :in   STD_LOGIC
);
end entity clu_EN_s_axi;

-- ------------------------Address Info-------------------
-- 0x00 : Control signals
--        bit 0  - ap_start (Read/Write/COH)
--        bit 1  - ap_done (Read/COR)
--        bit 2  - ap_idle (Read)
--        bit 3  - ap_ready (Read/COR)
--        bit 7  - auto_restart (Read/Write)
--        bit 9  - interrupt (Read)
--        others - reserved
-- 0x04 : Global Interrupt Enable Register
--        bit 0  - Global Interrupt Enable (Read/Write)
--        others - reserved
-- 0x08 : IP Interrupt Enable Register (Read/Write)
--        bit 0 - enable ap_done interrupt (Read/Write)
--        bit 1 - enable ap_ready interrupt (Read/Write)
--        others - reserved
-- 0x0c : IP Interrupt Status Register (Read/TOW)
--        bit 0 - ap_done (Read/TOW)
--        bit 1 - ap_ready (Read/TOW)
--        others - reserved
-- 0x10 : Data signal of can_ptr
--        bit 31~0 - can_ptr[31:0] (Read/Write)
-- 0x14 : reserved
-- 0x18 : Data signal of uart_ptr
--        bit 31~0 - uart_ptr[31:0] (Read/Write)
-- 0x1c : reserved
-- 0x20 : Data signal of lin_ptr
--        bit 31~0 - lin_ptr[31:0] (Read/Write)
-- 0x24 : reserved
-- 0x28 : Data signal of received_can
--        bit 31~0 - received_can[31:0] (Read)
-- 0x2c : Control signal of received_can
--        bit 0  - received_can_ap_vld (Read/COR)
--        others - reserved
-- 0x30 : Data signal of received_uart
--        bit 31~0 - received_uart[31:0] (Read/Write)
-- 0x34 : reserved
-- 0x38 : Data signal of received_lin
--        bit 31~0 - received_lin[31:0] (Read)
-- 0x3c : Control signal of received_lin
--        bit 0  - received_lin_ap_vld (Read/COR)
--        others - reserved
-- 0x40 : Data signal of can_en
--        bit 31~0 - can_en[31:0] (Read/Write)
-- 0x44 : reserved
-- 0x48 : Data signal of uart_en
--        bit 7~0 - uart_en[7:0] (Read/Write)
--        others  - reserved
-- 0x4c : reserved
-- 0x50 : Data signal of lin_en
--        bit 31~0 - lin_en[31:0] (Read/Write)
-- 0x54 : reserved
-- 0x58 : Data signal of can_ddr
--        bit 31~0 - can_ddr[31:0] (Read/Write)
-- 0x5c : reserved
-- 0x60 : Data signal of uart_ddr
--        bit 31~0 - uart_ddr[31:0] (Read/Write)
-- 0x64 : reserved
-- 0x68 : Data signal of lin_ddr
--        bit 31~0 - lin_ddr[31:0] (Read/Write)
-- 0x6c : reserved
-- 0x70 : Data signal of can_0_received
--        bit 31~0 - can_0_received[31:0] (Read)
-- 0x74 : Control signal of can_0_received
--        bit 0  - can_0_received_ap_vld (Read/COR)
--        others - reserved
-- 0x78 : Data signal of can_1_received
--        bit 31~0 - can_1_received[31:0] (Read)
-- 0x7c : Control signal of can_1_received
--        bit 0  - can_1_received_ap_vld (Read/COR)
--        others - reserved
-- 0x80 : Data signal of can_2_received
--        bit 31~0 - can_2_received[31:0] (Read)
-- 0x84 : Control signal of can_2_received
--        bit 0  - can_2_received_ap_vld (Read/COR)
--        others - reserved
-- 0x88 : Data signal of can_3_received
--        bit 31~0 - can_3_received[31:0] (Read)
-- 0x8c : Control signal of can_3_received
--        bit 0  - can_3_received_ap_vld (Read/COR)
--        others - reserved
-- 0x90 : Data signal of can_dropped
--        bit 31~0 - can_dropped[31:0] (Read)
-- 0x94 : Control signal of can_dropped
--        bit 0  - can_dropped_ap_vld (Read/COR)
--        others - reserved
-- 0x98 : Data signal of lin_0_received
--        bit 31~0 - lin_0_received[31:0] (Read)
-- 0x9c : Control signal of lin_0_received
--        bit 0  - lin_0_received_ap_vld (Read/COR)
--        others - reserved
-- 0xa0 : Data signal of lin_1_received
--        bit 31~0 - lin_1_received[31:0] (Read)
-- 0xa4 : Control signal of lin_1_received
--        bit 0  - lin_1_received_ap_vld (Read/COR)
--        others - reserved
-- 0xa8 : Data signal of lin_2_received
--        bit 31~0 - lin_2_received[31:0] (Read)
-- 0xac : Control signal of lin_2_received
--        bit 0  - lin_2_received_ap_vld (Read/COR)
--        others - reserved
-- 0xb0 : Data signal of lin_3_received
--        bit 31~0 - lin_3_received[31:0] (Read)
-- 0xb4 : Control signal of lin_3_received
--        bit 0  - lin_3_received_ap_vld (Read/COR)
--        others - reserved
-- 0xb8 : Data signal of lin_4_received
--        bit 31~0 - lin_4_received[31:0] (Read)
-- 0xbc : Control signal of lin_4_received
--        bit 0  - lin_4_received_ap_vld (Read/COR)
--        others - reserved
-- 0xc0 : Data signal of lin_5_received
--        bit 31~0 - lin_5_received[31:0] (Read)
-- 0xc4 : Control signal of lin_5_received
--        bit 0  - lin_5_received_ap_vld (Read/COR)
--        others - reserved
-- 0xc8 : Data signal of lin_6_received
--        bit 31~0 - lin_6_received[31:0] (Read)
-- 0xcc : Control signal of lin_6_received
--        bit 0  - lin_6_received_ap_vld (Read/COR)
--        others - reserved
-- 0xd0 : Data signal of lin_7_received
--        bit 31~0 - lin_7_received[31:0] (Read)
-- 0xd4 : Control signal of lin_7_received
--        bit 0  - lin_7_received_ap_vld (Read/COR)
--        others - reserved
-- 0xd8 : Data signal of lin_8_received
--        bit 31~0 - lin_8_received[31:0] (Read)
-- 0xdc : Control signal of lin_8_received
--        bit 0  - lin_8_received_ap_vld (Read/COR)
--        others - reserved
-- 0xe0 : Data signal of lin_9_received
--        bit 31~0 - lin_9_received[31:0] (Read)
-- 0xe4 : Control signal of lin_9_received
--        bit 0  - lin_9_received_ap_vld (Read/COR)
--        others - reserved
-- 0xe8 : Data signal of lin_dropped
--        bit 31~0 - lin_dropped[31:0] (Read)
-- 0xec : Control signal of lin_dropped
--        bit 0  - lin_dropped_ap_vld (Read/COR)
--        others - reserved
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of clu_EN_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_AP_CTRL               : INTEGER := 16#00#;
    constant ADDR_GIE                   : INTEGER := 16#04#;
    constant ADDR_IER                   : INTEGER := 16#08#;
    constant ADDR_ISR                   : INTEGER := 16#0c#;
    constant ADDR_CAN_PTR_DATA_0        : INTEGER := 16#10#;
    constant ADDR_CAN_PTR_CTRL          : INTEGER := 16#14#;
    constant ADDR_UART_PTR_DATA_0       : INTEGER := 16#18#;
    constant ADDR_UART_PTR_CTRL         : INTEGER := 16#1c#;
    constant ADDR_LIN_PTR_DATA_0        : INTEGER := 16#20#;
    constant ADDR_LIN_PTR_CTRL          : INTEGER := 16#24#;
    constant ADDR_RECEIVED_CAN_DATA_0   : INTEGER := 16#28#;
    constant ADDR_RECEIVED_CAN_CTRL     : INTEGER := 16#2c#;
    constant ADDR_RECEIVED_UART_DATA_0  : INTEGER := 16#30#;
    constant ADDR_RECEIVED_UART_CTRL    : INTEGER := 16#34#;
    constant ADDR_RECEIVED_LIN_DATA_0   : INTEGER := 16#38#;
    constant ADDR_RECEIVED_LIN_CTRL     : INTEGER := 16#3c#;
    constant ADDR_CAN_EN_DATA_0         : INTEGER := 16#40#;
    constant ADDR_CAN_EN_CTRL           : INTEGER := 16#44#;
    constant ADDR_UART_EN_DATA_0        : INTEGER := 16#48#;
    constant ADDR_UART_EN_CTRL          : INTEGER := 16#4c#;
    constant ADDR_LIN_EN_DATA_0         : INTEGER := 16#50#;
    constant ADDR_LIN_EN_CTRL           : INTEGER := 16#54#;
    constant ADDR_CAN_DDR_DATA_0        : INTEGER := 16#58#;
    constant ADDR_CAN_DDR_CTRL          : INTEGER := 16#5c#;
    constant ADDR_UART_DDR_DATA_0       : INTEGER := 16#60#;
    constant ADDR_UART_DDR_CTRL         : INTEGER := 16#64#;
    constant ADDR_LIN_DDR_DATA_0        : INTEGER := 16#68#;
    constant ADDR_LIN_DDR_CTRL          : INTEGER := 16#6c#;
    constant ADDR_CAN_0_RECEIVED_DATA_0 : INTEGER := 16#70#;
    constant ADDR_CAN_0_RECEIVED_CTRL   : INTEGER := 16#74#;
    constant ADDR_CAN_1_RECEIVED_DATA_0 : INTEGER := 16#78#;
    constant ADDR_CAN_1_RECEIVED_CTRL   : INTEGER := 16#7c#;
    constant ADDR_CAN_2_RECEIVED_DATA_0 : INTEGER := 16#80#;
    constant ADDR_CAN_2_RECEIVED_CTRL   : INTEGER := 16#84#;
    constant ADDR_CAN_3_RECEIVED_DATA_0 : INTEGER := 16#88#;
    constant ADDR_CAN_3_RECEIVED_CTRL   : INTEGER := 16#8c#;
    constant ADDR_CAN_DROPPED_DATA_0    : INTEGER := 16#90#;
    constant ADDR_CAN_DROPPED_CTRL      : INTEGER := 16#94#;
    constant ADDR_LIN_0_RECEIVED_DATA_0 : INTEGER := 16#98#;
    constant ADDR_LIN_0_RECEIVED_CTRL   : INTEGER := 16#9c#;
    constant ADDR_LIN_1_RECEIVED_DATA_0 : INTEGER := 16#a0#;
    constant ADDR_LIN_1_RECEIVED_CTRL   : INTEGER := 16#a4#;
    constant ADDR_LIN_2_RECEIVED_DATA_0 : INTEGER := 16#a8#;
    constant ADDR_LIN_2_RECEIVED_CTRL   : INTEGER := 16#ac#;
    constant ADDR_LIN_3_RECEIVED_DATA_0 : INTEGER := 16#b0#;
    constant ADDR_LIN_3_RECEIVED_CTRL   : INTEGER := 16#b4#;
    constant ADDR_LIN_4_RECEIVED_DATA_0 : INTEGER := 16#b8#;
    constant ADDR_LIN_4_RECEIVED_CTRL   : INTEGER := 16#bc#;
    constant ADDR_LIN_5_RECEIVED_DATA_0 : INTEGER := 16#c0#;
    constant ADDR_LIN_5_RECEIVED_CTRL   : INTEGER := 16#c4#;
    constant ADDR_LIN_6_RECEIVED_DATA_0 : INTEGER := 16#c8#;
    constant ADDR_LIN_6_RECEIVED_CTRL   : INTEGER := 16#cc#;
    constant ADDR_LIN_7_RECEIVED_DATA_0 : INTEGER := 16#d0#;
    constant ADDR_LIN_7_RECEIVED_CTRL   : INTEGER := 16#d4#;
    constant ADDR_LIN_8_RECEIVED_DATA_0 : INTEGER := 16#d8#;
    constant ADDR_LIN_8_RECEIVED_CTRL   : INTEGER := 16#dc#;
    constant ADDR_LIN_9_RECEIVED_DATA_0 : INTEGER := 16#e0#;
    constant ADDR_LIN_9_RECEIVED_CTRL   : INTEGER := 16#e4#;
    constant ADDR_LIN_DROPPED_DATA_0    : INTEGER := 16#e8#;
    constant ADDR_LIN_DROPPED_CTRL      : INTEGER := 16#ec#;
    constant ADDR_BITS         : INTEGER := 8;

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
    signal int_ap_ready        : STD_LOGIC := '0';
    signal task_ap_ready       : STD_LOGIC;
    signal int_ap_done         : STD_LOGIC := '0';
    signal task_ap_done        : STD_LOGIC;
    signal int_task_ap_done    : STD_LOGIC := '0';
    signal int_ap_start        : STD_LOGIC := '0';
    signal int_interrupt       : STD_LOGIC := '0';
    signal int_auto_restart    : STD_LOGIC := '0';
    signal auto_restart_status : STD_LOGIC := '0';
    signal auto_restart_done   : STD_LOGIC;
    signal int_gie             : STD_LOGIC := '0';
    signal int_ier             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_isr             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_can_ptr         : UNSIGNED(31 downto 0) := (others => '0');
    signal int_uart_ptr        : UNSIGNED(31 downto 0) := (others => '0');
    signal int_lin_ptr         : UNSIGNED(31 downto 0) := (others => '0');
    signal int_received_can_ap_vld : STD_LOGIC;
    signal int_received_can    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_received_uart   : UNSIGNED(31 downto 0) := (others => '0');
    signal int_received_lin_ap_vld : STD_LOGIC;
    signal int_received_lin    : UNSIGNED(31 downto 0) := (others => '0');
    signal int_can_en          : UNSIGNED(31 downto 0) := (others => '0');
    signal int_uart_en         : UNSIGNED(7 downto 0) := (others => '0');
    signal int_lin_en          : UNSIGNED(31 downto 0) := (others => '0');
    signal int_can_ddr         : UNSIGNED(31 downto 0) := (others => '0');
    signal int_uart_ddr        : UNSIGNED(31 downto 0) := (others => '0');
    signal int_lin_ddr         : UNSIGNED(31 downto 0) := (others => '0');
    signal int_can_0_received_ap_vld : STD_LOGIC;
    signal int_can_0_received  : UNSIGNED(31 downto 0) := (others => '0');
    signal int_can_1_received_ap_vld : STD_LOGIC;
    signal int_can_1_received  : UNSIGNED(31 downto 0) := (others => '0');
    signal int_can_2_received_ap_vld : STD_LOGIC;
    signal int_can_2_received  : UNSIGNED(31 downto 0) := (others => '0');
    signal int_can_3_received_ap_vld : STD_LOGIC;
    signal int_can_3_received  : UNSIGNED(31 downto 0) := (others => '0');
    signal int_can_dropped_ap_vld : STD_LOGIC;
    signal int_can_dropped     : UNSIGNED(31 downto 0) := (others => '0');
    signal int_lin_0_received_ap_vld : STD_LOGIC;
    signal int_lin_0_received  : UNSIGNED(31 downto 0) := (others => '0');
    signal int_lin_1_received_ap_vld : STD_LOGIC;
    signal int_lin_1_received  : UNSIGNED(31 downto 0) := (others => '0');
    signal int_lin_2_received_ap_vld : STD_LOGIC;
    signal int_lin_2_received  : UNSIGNED(31 downto 0) := (others => '0');
    signal int_lin_3_received_ap_vld : STD_LOGIC;
    signal int_lin_3_received  : UNSIGNED(31 downto 0) := (others => '0');
    signal int_lin_4_received_ap_vld : STD_LOGIC;
    signal int_lin_4_received  : UNSIGNED(31 downto 0) := (others => '0');
    signal int_lin_5_received_ap_vld : STD_LOGIC;
    signal int_lin_5_received  : UNSIGNED(31 downto 0) := (others => '0');
    signal int_lin_6_received_ap_vld : STD_LOGIC;
    signal int_lin_6_received  : UNSIGNED(31 downto 0) := (others => '0');
    signal int_lin_7_received_ap_vld : STD_LOGIC;
    signal int_lin_7_received  : UNSIGNED(31 downto 0) := (others => '0');
    signal int_lin_8_received_ap_vld : STD_LOGIC;
    signal int_lin_8_received  : UNSIGNED(31 downto 0) := (others => '0');
    signal int_lin_9_received_ap_vld : STD_LOGIC;
    signal int_lin_9_received  : UNSIGNED(31 downto 0) := (others => '0');
    signal int_lin_dropped_ap_vld : STD_LOGIC;
    signal int_lin_dropped     : UNSIGNED(31 downto 0) := (others => '0');


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
                    when ADDR_CAN_PTR_DATA_0 =>
                        rdata_data <= RESIZE(int_can_ptr(31 downto 0), 32);
                    when ADDR_UART_PTR_DATA_0 =>
                        rdata_data <= RESIZE(int_uart_ptr(31 downto 0), 32);
                    when ADDR_LIN_PTR_DATA_0 =>
                        rdata_data <= RESIZE(int_lin_ptr(31 downto 0), 32);
                    when ADDR_RECEIVED_CAN_DATA_0 =>
                        rdata_data <= RESIZE(int_received_can(31 downto 0), 32);
                    when ADDR_RECEIVED_CAN_CTRL =>
                        rdata_data(0) <= int_received_can_ap_vld;
                    when ADDR_RECEIVED_UART_DATA_0 =>
                        rdata_data <= RESIZE(int_received_uart(31 downto 0), 32);
                    when ADDR_RECEIVED_LIN_DATA_0 =>
                        rdata_data <= RESIZE(int_received_lin(31 downto 0), 32);
                    when ADDR_RECEIVED_LIN_CTRL =>
                        rdata_data(0) <= int_received_lin_ap_vld;
                    when ADDR_CAN_EN_DATA_0 =>
                        rdata_data <= RESIZE(int_can_en(31 downto 0), 32);
                    when ADDR_UART_EN_DATA_0 =>
                        rdata_data <= RESIZE(int_uart_en(7 downto 0), 32);
                    when ADDR_LIN_EN_DATA_0 =>
                        rdata_data <= RESIZE(int_lin_en(31 downto 0), 32);
                    when ADDR_CAN_DDR_DATA_0 =>
                        rdata_data <= RESIZE(int_can_ddr(31 downto 0), 32);
                    when ADDR_UART_DDR_DATA_0 =>
                        rdata_data <= RESIZE(int_uart_ddr(31 downto 0), 32);
                    when ADDR_LIN_DDR_DATA_0 =>
                        rdata_data <= RESIZE(int_lin_ddr(31 downto 0), 32);
                    when ADDR_CAN_0_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_can_0_received(31 downto 0), 32);
                    when ADDR_CAN_0_RECEIVED_CTRL =>
                        rdata_data(0) <= int_can_0_received_ap_vld;
                    when ADDR_CAN_1_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_can_1_received(31 downto 0), 32);
                    when ADDR_CAN_1_RECEIVED_CTRL =>
                        rdata_data(0) <= int_can_1_received_ap_vld;
                    when ADDR_CAN_2_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_can_2_received(31 downto 0), 32);
                    when ADDR_CAN_2_RECEIVED_CTRL =>
                        rdata_data(0) <= int_can_2_received_ap_vld;
                    when ADDR_CAN_3_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_can_3_received(31 downto 0), 32);
                    when ADDR_CAN_3_RECEIVED_CTRL =>
                        rdata_data(0) <= int_can_3_received_ap_vld;
                    when ADDR_CAN_DROPPED_DATA_0 =>
                        rdata_data <= RESIZE(int_can_dropped(31 downto 0), 32);
                    when ADDR_CAN_DROPPED_CTRL =>
                        rdata_data(0) <= int_can_dropped_ap_vld;
                    when ADDR_LIN_0_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_lin_0_received(31 downto 0), 32);
                    when ADDR_LIN_0_RECEIVED_CTRL =>
                        rdata_data(0) <= int_lin_0_received_ap_vld;
                    when ADDR_LIN_1_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_lin_1_received(31 downto 0), 32);
                    when ADDR_LIN_1_RECEIVED_CTRL =>
                        rdata_data(0) <= int_lin_1_received_ap_vld;
                    when ADDR_LIN_2_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_lin_2_received(31 downto 0), 32);
                    when ADDR_LIN_2_RECEIVED_CTRL =>
                        rdata_data(0) <= int_lin_2_received_ap_vld;
                    when ADDR_LIN_3_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_lin_3_received(31 downto 0), 32);
                    when ADDR_LIN_3_RECEIVED_CTRL =>
                        rdata_data(0) <= int_lin_3_received_ap_vld;
                    when ADDR_LIN_4_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_lin_4_received(31 downto 0), 32);
                    when ADDR_LIN_4_RECEIVED_CTRL =>
                        rdata_data(0) <= int_lin_4_received_ap_vld;
                    when ADDR_LIN_5_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_lin_5_received(31 downto 0), 32);
                    when ADDR_LIN_5_RECEIVED_CTRL =>
                        rdata_data(0) <= int_lin_5_received_ap_vld;
                    when ADDR_LIN_6_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_lin_6_received(31 downto 0), 32);
                    when ADDR_LIN_6_RECEIVED_CTRL =>
                        rdata_data(0) <= int_lin_6_received_ap_vld;
                    when ADDR_LIN_7_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_lin_7_received(31 downto 0), 32);
                    when ADDR_LIN_7_RECEIVED_CTRL =>
                        rdata_data(0) <= int_lin_7_received_ap_vld;
                    when ADDR_LIN_8_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_lin_8_received(31 downto 0), 32);
                    when ADDR_LIN_8_RECEIVED_CTRL =>
                        rdata_data(0) <= int_lin_8_received_ap_vld;
                    when ADDR_LIN_9_RECEIVED_DATA_0 =>
                        rdata_data <= RESIZE(int_lin_9_received(31 downto 0), 32);
                    when ADDR_LIN_9_RECEIVED_CTRL =>
                        rdata_data(0) <= int_lin_9_received_ap_vld;
                    when ADDR_LIN_DROPPED_DATA_0 =>
                        rdata_data <= RESIZE(int_lin_dropped(31 downto 0), 32);
                    when ADDR_LIN_DROPPED_CTRL =>
                        rdata_data(0) <= int_lin_dropped_ap_vld;
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
    auto_restart_done    <= auto_restart_status and (ap_idle and not int_ap_idle);
    can_ptr              <= STD_LOGIC_VECTOR(int_can_ptr);
    uart_ptr             <= STD_LOGIC_VECTOR(int_uart_ptr);
    lin_ptr              <= STD_LOGIC_VECTOR(int_lin_ptr);
    received_uart        <= STD_LOGIC_VECTOR(int_received_uart);
    can_en               <= STD_LOGIC_VECTOR(int_can_en);
    uart_en              <= STD_LOGIC_VECTOR(int_uart_en);
    lin_en               <= STD_LOGIC_VECTOR(int_lin_en);
    can_ddr              <= STD_LOGIC_VECTOR(int_can_ddr);
    uart_ddr             <= STD_LOGIC_VECTOR(int_uart_ddr);
    lin_ddr              <= STD_LOGIC_VECTOR(int_lin_ddr);

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
                if (task_ap_done = '1') then
                    int_task_ap_done <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_task_ap_done <= '0'; -- clear on read
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
                if (w_hs = '1' and waddr = ADDR_CAN_PTR_DATA_0) then
                    int_can_ptr(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_can_ptr(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UART_PTR_DATA_0) then
                    int_uart_ptr(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_uart_ptr(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_LIN_PTR_DATA_0) then
                    int_lin_ptr(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_lin_ptr(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_received_can <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (received_can_ap_vld = '1') then
                    int_received_can <= UNSIGNED(received_can);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_received_can_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (received_can_ap_vld = '1') then
                    int_received_can_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_RECEIVED_CAN_CTRL) then
                    int_received_can_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_RECEIVED_UART_DATA_0) then
                    int_received_uart(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_received_uart(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_received_lin <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (received_lin_ap_vld = '1') then
                    int_received_lin <= UNSIGNED(received_lin);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_received_lin_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (received_lin_ap_vld = '1') then
                    int_received_lin_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_RECEIVED_LIN_CTRL) then
                    int_received_lin_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_CAN_EN_DATA_0) then
                    int_can_en(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_can_en(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UART_EN_DATA_0) then
                    int_uart_en(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_uart_en(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_LIN_EN_DATA_0) then
                    int_lin_en(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_lin_en(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_CAN_DDR_DATA_0) then
                    int_can_ddr(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_can_ddr(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_UART_DDR_DATA_0) then
                    int_uart_ddr(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_uart_ddr(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_LIN_DDR_DATA_0) then
                    int_lin_ddr(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_lin_ddr(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_can_0_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (can_0_received_ap_vld = '1') then
                    int_can_0_received <= UNSIGNED(can_0_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_can_0_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (can_0_received_ap_vld = '1') then
                    int_can_0_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CAN_0_RECEIVED_CTRL) then
                    int_can_0_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_can_1_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (can_1_received_ap_vld = '1') then
                    int_can_1_received <= UNSIGNED(can_1_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_can_1_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (can_1_received_ap_vld = '1') then
                    int_can_1_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CAN_1_RECEIVED_CTRL) then
                    int_can_1_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_can_2_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (can_2_received_ap_vld = '1') then
                    int_can_2_received <= UNSIGNED(can_2_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_can_2_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (can_2_received_ap_vld = '1') then
                    int_can_2_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CAN_2_RECEIVED_CTRL) then
                    int_can_2_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_can_3_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (can_3_received_ap_vld = '1') then
                    int_can_3_received <= UNSIGNED(can_3_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_can_3_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (can_3_received_ap_vld = '1') then
                    int_can_3_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CAN_3_RECEIVED_CTRL) then
                    int_can_3_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_can_dropped <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (can_dropped_ap_vld = '1') then
                    int_can_dropped <= UNSIGNED(can_dropped);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_can_dropped_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (can_dropped_ap_vld = '1') then
                    int_can_dropped_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CAN_DROPPED_CTRL) then
                    int_can_dropped_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_lin_0_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (lin_0_received_ap_vld = '1') then
                    int_lin_0_received <= UNSIGNED(lin_0_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_lin_0_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (lin_0_received_ap_vld = '1') then
                    int_lin_0_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_LIN_0_RECEIVED_CTRL) then
                    int_lin_0_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_lin_1_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (lin_1_received_ap_vld = '1') then
                    int_lin_1_received <= UNSIGNED(lin_1_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_lin_1_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (lin_1_received_ap_vld = '1') then
                    int_lin_1_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_LIN_1_RECEIVED_CTRL) then
                    int_lin_1_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_lin_2_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (lin_2_received_ap_vld = '1') then
                    int_lin_2_received <= UNSIGNED(lin_2_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_lin_2_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (lin_2_received_ap_vld = '1') then
                    int_lin_2_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_LIN_2_RECEIVED_CTRL) then
                    int_lin_2_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_lin_3_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (lin_3_received_ap_vld = '1') then
                    int_lin_3_received <= UNSIGNED(lin_3_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_lin_3_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (lin_3_received_ap_vld = '1') then
                    int_lin_3_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_LIN_3_RECEIVED_CTRL) then
                    int_lin_3_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_lin_4_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (lin_4_received_ap_vld = '1') then
                    int_lin_4_received <= UNSIGNED(lin_4_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_lin_4_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (lin_4_received_ap_vld = '1') then
                    int_lin_4_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_LIN_4_RECEIVED_CTRL) then
                    int_lin_4_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_lin_5_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (lin_5_received_ap_vld = '1') then
                    int_lin_5_received <= UNSIGNED(lin_5_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_lin_5_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (lin_5_received_ap_vld = '1') then
                    int_lin_5_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_LIN_5_RECEIVED_CTRL) then
                    int_lin_5_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_lin_6_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (lin_6_received_ap_vld = '1') then
                    int_lin_6_received <= UNSIGNED(lin_6_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_lin_6_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (lin_6_received_ap_vld = '1') then
                    int_lin_6_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_LIN_6_RECEIVED_CTRL) then
                    int_lin_6_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_lin_7_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (lin_7_received_ap_vld = '1') then
                    int_lin_7_received <= UNSIGNED(lin_7_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_lin_7_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (lin_7_received_ap_vld = '1') then
                    int_lin_7_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_LIN_7_RECEIVED_CTRL) then
                    int_lin_7_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_lin_8_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (lin_8_received_ap_vld = '1') then
                    int_lin_8_received <= UNSIGNED(lin_8_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_lin_8_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (lin_8_received_ap_vld = '1') then
                    int_lin_8_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_LIN_8_RECEIVED_CTRL) then
                    int_lin_8_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_lin_9_received <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (lin_9_received_ap_vld = '1') then
                    int_lin_9_received <= UNSIGNED(lin_9_received);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_lin_9_received_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (lin_9_received_ap_vld = '1') then
                    int_lin_9_received_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_LIN_9_RECEIVED_CTRL) then
                    int_lin_9_received_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_lin_dropped <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (lin_dropped_ap_vld = '1') then
                    int_lin_dropped <= UNSIGNED(lin_dropped);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_lin_dropped_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (lin_dropped_ap_vld = '1') then
                    int_lin_dropped_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_LIN_DROPPED_CTRL) then
                    int_lin_dropped_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------

end architecture behave;
