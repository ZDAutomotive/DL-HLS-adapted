-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity clu_recvFrame_logic_1_Pipeline_VITIS_LOOP_237_2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    m_axi_can_addr_AWVALID : OUT STD_LOGIC;
    m_axi_can_addr_AWREADY : IN STD_LOGIC;
    m_axi_can_addr_AWADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_can_addr_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_can_addr_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_can_addr_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_can_addr_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_can_addr_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_can_addr_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_can_addr_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_can_addr_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_can_addr_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_can_addr_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_can_addr_WVALID : OUT STD_LOGIC;
    m_axi_can_addr_WREADY : IN STD_LOGIC;
    m_axi_can_addr_WDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_can_addr_WSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_can_addr_WLAST : OUT STD_LOGIC;
    m_axi_can_addr_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_can_addr_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_can_addr_ARVALID : OUT STD_LOGIC;
    m_axi_can_addr_ARREADY : IN STD_LOGIC;
    m_axi_can_addr_ARADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_can_addr_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_can_addr_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_can_addr_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_can_addr_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_can_addr_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_can_addr_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_can_addr_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_can_addr_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_can_addr_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_can_addr_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_can_addr_RVALID : IN STD_LOGIC;
    m_axi_can_addr_RREADY : OUT STD_LOGIC;
    m_axi_can_addr_RDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    m_axi_can_addr_RLAST : IN STD_LOGIC;
    m_axi_can_addr_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_can_addr_RFIFONUM : IN STD_LOGIC_VECTOR (8 downto 0);
    m_axi_can_addr_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_can_addr_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_can_addr_BVALID : IN STD_LOGIC;
    m_axi_can_addr_BREADY : OUT STD_LOGIC;
    m_axi_can_addr_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_can_addr_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_can_addr_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    zext_ln27 : IN STD_LOGIC_VECTOR (6 downto 0);
    zext_ln223 : IN STD_LOGIC_VECTOR (14 downto 0);
    canbase : IN STD_LOGIC_VECTOR (31 downto 0);
    can_frame_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
    can_frame_ce0 : OUT STD_LOGIC;
    can_frame_we0 : OUT STD_LOGIC;
    can_frame_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    can_frame_address1 : OUT STD_LOGIC_VECTOR (6 downto 0);
    can_frame_ce1 : OUT STD_LOGIC;
    can_frame_we1 : OUT STD_LOGIC;
    can_frame_d1 : OUT STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of clu_recvFrame_logic_1_Pipeline_VITIS_LOOP_237_2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv64_8 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000001000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv30_0 : STD_LOGIC_VECTOR (29 downto 0) := "000000000000000000000000000000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv7_C : STD_LOGIC_VECTOR (6 downto 0) := "0001100";
    constant ap_const_lv7_D : STD_LOGIC_VECTOR (6 downto 0) := "0001101";
    constant ap_const_lv64_4 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000100";
    constant ap_const_lv7_E : STD_LOGIC_VECTOR (6 downto 0) := "0001110";
    constant ap_const_lv7_F : STD_LOGIC_VECTOR (6 downto 0) := "0001111";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter4 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter5 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_state2_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage1_iter1 : BOOLEAN;
    signal ap_block_state6_pp0_stage1_iter2 : BOOLEAN;
    signal ap_block_state8_pp0_stage1_iter3 : BOOLEAN;
    signal ap_block_state10_pp0_stage1_iter4 : BOOLEAN;
    signal ap_block_state12_pp0_stage1_iter5 : BOOLEAN;
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal icmp_ln237_reg_402 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage1 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal can_addr_blk_n_AR : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal can_addr_blk_n_R : STD_LOGIC;
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state7_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state9_pp0_stage0_iter4 : BOOLEAN;
    signal ap_block_state11_pp0_stage0_iter5 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal Len_2_reg_397 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln237_fu_184_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln239_fu_190_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln239_reg_406 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln_reg_413 : STD_LOGIC_VECTOR (29 downto 0);
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal trunc_ln2_reg_424 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln3_reg_429 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln4_reg_434 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln243_fu_314_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln243_reg_439 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln240_fu_321_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal trunc_ln240_reg_444 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC := '0';
    signal zext_ln240_fu_331_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln241_fu_342_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln242_fu_363_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln243_fu_373_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal sext_ln238_fu_274_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal Len_fu_84 : STD_LOGIC_VECTOR (31 downto 0);
    signal Len_3_fu_264_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_Len_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal canIndex_fu_88 : STD_LOGIC_VECTOR (63 downto 0);
    signal add_ln244_fu_347_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln27_cast_fu_167_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln223_cast_fu_163_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal sub_ln239_fu_203_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln239_1_fu_208_p4 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_fu_196_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal sub_ln239_1_fu_218_p2 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_6_fu_224_p4 : STD_LOGIC_VECTOR (29 downto 0);
    signal select_ln239_fu_233_p3 : STD_LOGIC_VECTOR (29 downto 0);
    signal shl_ln2_fu_241_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln238_fu_249_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln240_fu_325_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln241_fu_336_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln242_fu_358_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln243_fu_368_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter3_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter4_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_idle_pp0_1to5 : STD_LOGIC;
    signal ap_done_pending_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component clu_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component clu_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage1,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready_pp0_iter4_reg = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
                    ap_enable_reg_pp0_iter0_reg <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage1)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then 
                    ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter5_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter5 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then 
                    ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
                end if; 
            end if;
        end if;
    end process;


    Len_fu_84_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                Len_fu_84 <= ap_const_lv32_0;
            elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (icmp_ln237_reg_402 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then 
                Len_fu_84 <= Len_3_fu_264_p2;
            end if; 
        end if;
    end process;

    canIndex_fu_88_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    canIndex_fu_88 <= ap_const_lv64_8;
                elsif ((ap_enable_reg_pp0_iter5 = ap_const_logic_1)) then 
                    canIndex_fu_88 <= add_ln244_fu_347_p2;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                Len_2_reg_397 <= ap_sig_allocacmp_Len_2;
                icmp_ln237_reg_402 <= icmp_ln237_fu_184_p2;
                trunc_ln240_reg_444 <= trunc_ln240_fu_321_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln237_fu_184_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                add_ln239_reg_406 <= add_ln239_fu_190_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
                ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
                ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
                trunc_ln243_reg_439 <= trunc_ln243_fu_314_p1;
                trunc_ln2_reg_424 <= m_axi_can_addr_RDATA(31 downto 24);
                trunc_ln3_reg_429 <= m_axi_can_addr_RDATA(23 downto 16);
                trunc_ln4_reg_434 <= m_axi_can_addr_RDATA(15 downto 8);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (icmp_ln237_reg_402 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then
                trunc_ln_reg_413 <= add_ln238_fu_249_p2(31 downto 2);
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage1_subdone, ap_block_pp0_stage0_subdone, ap_idle_pp0_1to5, ap_done_pending_pp0, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_start_int = ap_const_logic_0) and (ap_done_pending_pp0 = ap_const_logic_0) and (ap_idle_pp0_1to5 = ap_const_logic_1))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage1_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    Len_3_fu_264_p2 <= std_logic_vector(unsigned(Len_2_reg_397) + unsigned(ap_const_lv32_4));
    add_ln238_fu_249_p2 <= std_logic_vector(unsigned(shl_ln2_fu_241_p3) + unsigned(canbase));
    add_ln239_fu_190_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_Len_2) + unsigned(zext_ln223_cast_fu_163_p1));
    add_ln240_fu_325_p2 <= std_logic_vector(unsigned(trunc_ln240_fu_321_p1) + unsigned(ap_const_lv7_C));
    add_ln241_fu_336_p2 <= std_logic_vector(unsigned(trunc_ln240_fu_321_p1) + unsigned(ap_const_lv7_D));
    add_ln242_fu_358_p2 <= std_logic_vector(unsigned(trunc_ln240_reg_444) + unsigned(ap_const_lv7_E));
    add_ln243_fu_368_p2 <= std_logic_vector(unsigned(trunc_ln240_reg_444) + unsigned(ap_const_lv7_F));
    add_ln244_fu_347_p2 <= std_logic_vector(unsigned(canIndex_fu_88) + unsigned(ap_const_lv64_4));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(1);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, m_axi_can_addr_ARREADY)
    begin
                ap_block_pp0_stage0_11001 <= ((m_axi_can_addr_ARREADY = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, m_axi_can_addr_ARREADY)
    begin
                ap_block_pp0_stage0_subdone <= ((m_axi_can_addr_ARREADY = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;

        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage1_11001_assign_proc : process(ap_enable_reg_pp0_iter4, m_axi_can_addr_RVALID)
    begin
                ap_block_pp0_stage1_11001 <= ((m_axi_can_addr_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage1_subdone_assign_proc : process(ap_enable_reg_pp0_iter4, m_axi_can_addr_RVALID)
    begin
                ap_block_pp0_stage1_subdone <= ((m_axi_can_addr_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1));
    end process;


    ap_block_state10_pp0_stage1_iter4_assign_proc : process(m_axi_can_addr_RVALID)
    begin
                ap_block_state10_pp0_stage1_iter4 <= (m_axi_can_addr_RVALID = ap_const_logic_0);
    end process;

        ap_block_state11_pp0_stage0_iter5 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state12_pp0_stage1_iter5 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage1_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage1_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state7_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state8_pp0_stage1_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state9_pp0_stage0_iter4 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage1_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_subdone, icmp_ln237_reg_402)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (icmp_ln237_reg_402 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then 
            ap_condition_exit_pp0_iter0_stage1 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter4_reg)
    begin
        if (((ap_loop_exit_ready_pp0_iter4_reg = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;


    ap_done_pending_pp0_assign_proc : process(ap_loop_exit_ready, ap_loop_exit_ready_pp0_iter1_reg, ap_loop_exit_ready_pp0_iter2_reg, ap_loop_exit_ready_pp0_iter3_reg, ap_loop_exit_ready_pp0_iter4_reg)
    begin
        if (not(((ap_loop_exit_ready_pp0_iter4_reg = ap_const_logic_0) and (ap_loop_exit_ready_pp0_iter3_reg = ap_const_logic_0) and (ap_loop_exit_ready_pp0_iter2_reg = ap_const_logic_0) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_0) and (ap_loop_exit_ready = ap_const_logic_0)))) then 
            ap_done_pending_pp0 <= ap_const_logic_1;
        else 
            ap_done_pending_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_enable_reg_pp0_iter0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0_reg, ap_start_int)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
            ap_enable_reg_pp0_iter0 <= ap_start_int;
        else 
            ap_enable_reg_pp0_iter0 <= ap_enable_reg_pp0_iter0_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter4, ap_enable_reg_pp0_iter5)
    begin
        if (((ap_enable_reg_pp0_iter5 = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_1to5_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter4, ap_enable_reg_pp0_iter5)
    begin
        if (((ap_enable_reg_pp0_iter5 = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0_1to5 <= ap_const_logic_1;
        else 
            ap_idle_pp0_1to5 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage1;

    ap_ready_int_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_subdone)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_Len_2_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, Len_fu_84, ap_loop_init)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_sig_allocacmp_Len_2 <= ap_const_lv32_0;
        else 
            ap_sig_allocacmp_Len_2 <= Len_fu_84;
        end if; 
    end process;


    can_addr_blk_n_AR_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, m_axi_can_addr_ARREADY, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            can_addr_blk_n_AR <= m_axi_can_addr_ARREADY;
        else 
            can_addr_blk_n_AR <= ap_const_logic_1;
        end if; 
    end process;


    can_addr_blk_n_R_assign_proc : process(ap_enable_reg_pp0_iter4, ap_CS_fsm_pp0_stage1, m_axi_can_addr_RVALID, ap_block_pp0_stage1)
    begin
        if (((ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1))) then 
            can_addr_blk_n_R <= m_axi_can_addr_RVALID;
        else 
            can_addr_blk_n_R <= ap_const_logic_1;
        end if; 
    end process;


    can_frame_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter5, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0, ap_block_pp0_stage1, zext_ln241_fu_342_p1, zext_ln243_fu_373_p1)
    begin
        if ((ap_enable_reg_pp0_iter5 = ap_const_logic_1)) then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1))) then 
                can_frame_address0 <= zext_ln243_fu_373_p1(7 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
                can_frame_address0 <= zext_ln241_fu_342_p1(7 - 1 downto 0);
            else 
                can_frame_address0 <= "XXXXXXX";
            end if;
        else 
            can_frame_address0 <= "XXXXXXX";
        end if; 
    end process;


    can_frame_address1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter5, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0, ap_block_pp0_stage1, zext_ln240_fu_331_p1, zext_ln242_fu_363_p1)
    begin
        if ((ap_enable_reg_pp0_iter5 = ap_const_logic_1)) then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1))) then 
                can_frame_address1 <= zext_ln242_fu_363_p1(7 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
                can_frame_address1 <= zext_ln240_fu_331_p1(7 - 1 downto 0);
            else 
                can_frame_address1 <= "XXXXXXX";
            end if;
        else 
            can_frame_address1 <= "XXXXXXX";
        end if; 
    end process;


    can_frame_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter5, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0_11001, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_enable_reg_pp0_iter5 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001)) or ((ap_enable_reg_pp0_iter5 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)))) then 
            can_frame_ce0 <= ap_const_logic_1;
        else 
            can_frame_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    can_frame_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter5, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0_11001, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_enable_reg_pp0_iter5 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001)) or ((ap_enable_reg_pp0_iter5 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)))) then 
            can_frame_ce1 <= ap_const_logic_1;
        else 
            can_frame_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    can_frame_d0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter5, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0, ap_block_pp0_stage1, trunc_ln3_reg_429, trunc_ln243_reg_439)
    begin
        if ((ap_enable_reg_pp0_iter5 = ap_const_logic_1)) then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1))) then 
                can_frame_d0 <= trunc_ln243_reg_439;
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
                can_frame_d0 <= trunc_ln3_reg_429;
            else 
                can_frame_d0 <= "XXXXXXXX";
            end if;
        else 
            can_frame_d0 <= "XXXXXXXX";
        end if; 
    end process;


    can_frame_d1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter5, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0, ap_block_pp0_stage1, trunc_ln2_reg_424, trunc_ln4_reg_434)
    begin
        if ((ap_enable_reg_pp0_iter5 = ap_const_logic_1)) then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1))) then 
                can_frame_d1 <= trunc_ln4_reg_434;
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
                can_frame_d1 <= trunc_ln2_reg_424;
            else 
                can_frame_d1 <= "XXXXXXXX";
            end if;
        else 
            can_frame_d1 <= "XXXXXXXX";
        end if; 
    end process;


    can_frame_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter5, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0_11001, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_enable_reg_pp0_iter5 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001)) or ((ap_enable_reg_pp0_iter5 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)))) then 
            can_frame_we0 <= ap_const_logic_1;
        else 
            can_frame_we0 <= ap_const_logic_0;
        end if; 
    end process;


    can_frame_we1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter5, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0_11001, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_enable_reg_pp0_iter5 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001)) or ((ap_enable_reg_pp0_iter5 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)))) then 
            can_frame_we1 <= ap_const_logic_1;
        else 
            can_frame_we1 <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln237_fu_184_p2 <= "1" when (unsigned(ap_sig_allocacmp_Len_2) < unsigned(zext_ln27_cast_fu_167_p1)) else "0";
    m_axi_can_addr_ARADDR <= sext_ln238_fu_274_p1;
    m_axi_can_addr_ARBURST <= ap_const_lv2_0;
    m_axi_can_addr_ARCACHE <= ap_const_lv4_0;
    m_axi_can_addr_ARID <= ap_const_lv1_0;
    m_axi_can_addr_ARLEN <= ap_const_lv32_1;
    m_axi_can_addr_ARLOCK <= ap_const_lv2_0;
    m_axi_can_addr_ARPROT <= ap_const_lv3_0;
    m_axi_can_addr_ARQOS <= ap_const_lv4_0;
    m_axi_can_addr_ARREGION <= ap_const_lv4_0;
    m_axi_can_addr_ARSIZE <= ap_const_lv3_0;
    m_axi_can_addr_ARUSER <= ap_const_lv1_0;

    m_axi_can_addr_ARVALID_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            m_axi_can_addr_ARVALID <= ap_const_logic_1;
        else 
            m_axi_can_addr_ARVALID <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_can_addr_AWADDR <= ap_const_lv32_0;
    m_axi_can_addr_AWBURST <= ap_const_lv2_0;
    m_axi_can_addr_AWCACHE <= ap_const_lv4_0;
    m_axi_can_addr_AWID <= ap_const_lv1_0;
    m_axi_can_addr_AWLEN <= ap_const_lv32_0;
    m_axi_can_addr_AWLOCK <= ap_const_lv2_0;
    m_axi_can_addr_AWPROT <= ap_const_lv3_0;
    m_axi_can_addr_AWQOS <= ap_const_lv4_0;
    m_axi_can_addr_AWREGION <= ap_const_lv4_0;
    m_axi_can_addr_AWSIZE <= ap_const_lv3_0;
    m_axi_can_addr_AWUSER <= ap_const_lv1_0;
    m_axi_can_addr_AWVALID <= ap_const_logic_0;
    m_axi_can_addr_BREADY <= ap_const_logic_0;

    m_axi_can_addr_RREADY_assign_proc : process(ap_enable_reg_pp0_iter4, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001)
    begin
        if (((ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then 
            m_axi_can_addr_RREADY <= ap_const_logic_1;
        else 
            m_axi_can_addr_RREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_can_addr_WDATA <= ap_const_lv32_0;
    m_axi_can_addr_WID <= ap_const_lv1_0;
    m_axi_can_addr_WLAST <= ap_const_logic_0;
    m_axi_can_addr_WSTRB <= ap_const_lv4_0;
    m_axi_can_addr_WUSER <= ap_const_lv1_0;
    m_axi_can_addr_WVALID <= ap_const_logic_0;
    select_ln239_fu_233_p3 <= 
        sub_ln239_1_fu_218_p2 when (tmp_fu_196_p3(0) = '1') else 
        tmp_6_fu_224_p4;
        sext_ln238_fu_274_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(trunc_ln_reg_413),32));

    shl_ln2_fu_241_p3 <= (select_ln239_fu_233_p3 & ap_const_lv2_0);
    sub_ln239_1_fu_218_p2 <= std_logic_vector(unsigned(ap_const_lv30_0) - unsigned(trunc_ln239_1_fu_208_p4));
    sub_ln239_fu_203_p2 <= std_logic_vector(unsigned(ap_const_lv32_0) - unsigned(add_ln239_reg_406));
    tmp_6_fu_224_p4 <= add_ln239_reg_406(31 downto 2);
    tmp_fu_196_p3 <= add_ln239_reg_406(31 downto 31);
    trunc_ln239_1_fu_208_p4 <= sub_ln239_fu_203_p2(31 downto 2);
    trunc_ln240_fu_321_p1 <= canIndex_fu_88(7 - 1 downto 0);
    trunc_ln243_fu_314_p1 <= m_axi_can_addr_RDATA(8 - 1 downto 0);
    zext_ln223_cast_fu_163_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(zext_ln223),32));
    zext_ln240_fu_331_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln240_fu_325_p2),32));
    zext_ln241_fu_342_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln241_fu_336_p2),32));
    zext_ln242_fu_363_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln242_fu_358_p2),32));
    zext_ln243_fu_373_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln243_fu_368_p2),32));
    zext_ln27_cast_fu_167_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(zext_ln27),32));
end behav;
