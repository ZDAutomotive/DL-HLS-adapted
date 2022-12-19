# This script segment is generated automatically by AutoPilot

set name mac_logger_urem_32ns_32ns_32_36_seq_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {urem} IMPL {auto_seq} LATENCY 35 ALLOW_PRAGMA 1
}


set name mac_logger_mul_32s_32s_32_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mac_logger_tx_ddr_log_header_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 102 \
    name data_buf \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename data_buf \
    op interface \
    ports { data_buf_address0 { O 9 vector } data_buf_ce0 { O 1 bit } data_buf_q0 { I 32 vector } data_buf_address1 { O 9 vector } data_buf_ce1 { O 1 bit } data_buf_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'data_buf'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 103 \
    name log_header1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename log_header1 \
    op interface \
    ports { log_header1_address0 { O 3 vector } log_header1_ce0 { O 1 bit } log_header1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'log_header1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 104 \
    name tap_header1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename tap_header1 \
    op interface \
    ports { tap_header1_address0 { O 3 vector } tap_header1_ce0 { O 1 bit } tap_header1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tap_header1'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name ps \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ps \
    op interface \
    ports { m_axi_ps_AWVALID { O 1 bit } m_axi_ps_AWREADY { I 1 bit } m_axi_ps_AWADDR { O 64 vector } m_axi_ps_AWID { O 1 vector } m_axi_ps_AWLEN { O 32 vector } m_axi_ps_AWSIZE { O 3 vector } m_axi_ps_AWBURST { O 2 vector } m_axi_ps_AWLOCK { O 2 vector } m_axi_ps_AWCACHE { O 4 vector } m_axi_ps_AWPROT { O 3 vector } m_axi_ps_AWQOS { O 4 vector } m_axi_ps_AWREGION { O 4 vector } m_axi_ps_AWUSER { O 1 vector } m_axi_ps_WVALID { O 1 bit } m_axi_ps_WREADY { I 1 bit } m_axi_ps_WDATA { O 32 vector } m_axi_ps_WSTRB { O 4 vector } m_axi_ps_WLAST { O 1 bit } m_axi_ps_WID { O 1 vector } m_axi_ps_WUSER { O 1 vector } m_axi_ps_ARVALID { O 1 bit } m_axi_ps_ARREADY { I 1 bit } m_axi_ps_ARADDR { O 64 vector } m_axi_ps_ARID { O 1 vector } m_axi_ps_ARLEN { O 32 vector } m_axi_ps_ARSIZE { O 3 vector } m_axi_ps_ARBURST { O 2 vector } m_axi_ps_ARLOCK { O 2 vector } m_axi_ps_ARCACHE { O 4 vector } m_axi_ps_ARPROT { O 3 vector } m_axi_ps_ARQOS { O 4 vector } m_axi_ps_ARREGION { O 4 vector } m_axi_ps_ARUSER { O 1 vector } m_axi_ps_RVALID { I 1 bit } m_axi_ps_RREADY { O 1 bit } m_axi_ps_RDATA { I 32 vector } m_axi_ps_RLAST { I 1 bit } m_axi_ps_RID { I 1 vector } m_axi_ps_RFIFONUM { I 9 vector } m_axi_ps_RUSER { I 1 vector } m_axi_ps_RRESP { I 2 vector } m_axi_ps_BVALID { I 1 bit } m_axi_ps_BREADY { O 1 bit } m_axi_ps_BRESP { I 2 vector } m_axi_ps_BID { I 1 vector } m_axi_ps_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name p_read1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read1 \
    op interface \
    ports { p_read1 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name logger_vlan_enable_mask \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_logger_vlan_enable_mask \
    op interface \
    ports { logger_vlan_enable_mask_dout { I 32 vector } logger_vlan_enable_mask_num_data_valid { I 3 vector } logger_vlan_enable_mask_fifo_cap { I 3 vector } logger_vlan_enable_mask_empty_n { I 1 bit } logger_vlan_enable_mask_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name multicast_recv_enable \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_multicast_recv_enable \
    op interface \
    ports { multicast_recv_enable_dout { I 32 vector } multicast_recv_enable_num_data_valid { I 3 vector } multicast_recv_enable_fifo_cap { I 3 vector } multicast_recv_enable_empty_n { I 1 bit } multicast_recv_enable_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name unicast_filter_enable \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_filter_enable \
    op interface \
    ports { unicast_filter_enable_dout { I 32 vector } unicast_filter_enable_num_data_valid { I 3 vector } unicast_filter_enable_fifo_cap { I 3 vector } unicast_filter_enable_empty_n { I 1 bit } unicast_filter_enable_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name unicast_vlan100_macaddr_lsb \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan100_macaddr_lsb \
    op interface \
    ports { unicast_vlan100_macaddr_lsb_dout { I 32 vector } unicast_vlan100_macaddr_lsb_num_data_valid { I 3 vector } unicast_vlan100_macaddr_lsb_fifo_cap { I 3 vector } unicast_vlan100_macaddr_lsb_empty_n { I 1 bit } unicast_vlan100_macaddr_lsb_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name unicast_vlan100_macaddr_msb \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan100_macaddr_msb \
    op interface \
    ports { unicast_vlan100_macaddr_msb_dout { I 16 vector } unicast_vlan100_macaddr_msb_num_data_valid { I 3 vector } unicast_vlan100_macaddr_msb_fifo_cap { I 3 vector } unicast_vlan100_macaddr_msb_empty_n { I 1 bit } unicast_vlan100_macaddr_msb_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name unicast_vlan101_macaddr_lsb \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan101_macaddr_lsb \
    op interface \
    ports { unicast_vlan101_macaddr_lsb_dout { I 32 vector } unicast_vlan101_macaddr_lsb_num_data_valid { I 3 vector } unicast_vlan101_macaddr_lsb_fifo_cap { I 3 vector } unicast_vlan101_macaddr_lsb_empty_n { I 1 bit } unicast_vlan101_macaddr_lsb_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name unicast_vlan101_macaddr_msb \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan101_macaddr_msb \
    op interface \
    ports { unicast_vlan101_macaddr_msb_dout { I 16 vector } unicast_vlan101_macaddr_msb_num_data_valid { I 3 vector } unicast_vlan101_macaddr_msb_fifo_cap { I 3 vector } unicast_vlan101_macaddr_msb_empty_n { I 1 bit } unicast_vlan101_macaddr_msb_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name unicast_vlan102_macaddr_lsb \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan102_macaddr_lsb \
    op interface \
    ports { unicast_vlan102_macaddr_lsb_dout { I 32 vector } unicast_vlan102_macaddr_lsb_num_data_valid { I 3 vector } unicast_vlan102_macaddr_lsb_fifo_cap { I 3 vector } unicast_vlan102_macaddr_lsb_empty_n { I 1 bit } unicast_vlan102_macaddr_lsb_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name unicast_vlan102_macaddr_msb \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan102_macaddr_msb \
    op interface \
    ports { unicast_vlan102_macaddr_msb_dout { I 16 vector } unicast_vlan102_macaddr_msb_num_data_valid { I 3 vector } unicast_vlan102_macaddr_msb_fifo_cap { I 3 vector } unicast_vlan102_macaddr_msb_empty_n { I 1 bit } unicast_vlan102_macaddr_msb_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name unicast_vlan103_macaddr_lsb \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan103_macaddr_lsb \
    op interface \
    ports { unicast_vlan103_macaddr_lsb_dout { I 32 vector } unicast_vlan103_macaddr_lsb_num_data_valid { I 3 vector } unicast_vlan103_macaddr_lsb_fifo_cap { I 3 vector } unicast_vlan103_macaddr_lsb_empty_n { I 1 bit } unicast_vlan103_macaddr_lsb_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name unicast_vlan103_macaddr_msb \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan103_macaddr_msb \
    op interface \
    ports { unicast_vlan103_macaddr_msb_dout { I 16 vector } unicast_vlan103_macaddr_msb_num_data_valid { I 3 vector } unicast_vlan103_macaddr_msb_fifo_cap { I 3 vector } unicast_vlan103_macaddr_msb_empty_n { I 1 bit } unicast_vlan103_macaddr_msb_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name unicast_vlan104_macaddr_lsb \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan104_macaddr_lsb \
    op interface \
    ports { unicast_vlan104_macaddr_lsb_dout { I 32 vector } unicast_vlan104_macaddr_lsb_num_data_valid { I 3 vector } unicast_vlan104_macaddr_lsb_fifo_cap { I 3 vector } unicast_vlan104_macaddr_lsb_empty_n { I 1 bit } unicast_vlan104_macaddr_lsb_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name unicast_vlan104_macaddr_msb \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan104_macaddr_msb \
    op interface \
    ports { unicast_vlan104_macaddr_msb_dout { I 16 vector } unicast_vlan104_macaddr_msb_num_data_valid { I 3 vector } unicast_vlan104_macaddr_msb_fifo_cap { I 3 vector } unicast_vlan104_macaddr_msb_empty_n { I 1 bit } unicast_vlan104_macaddr_msb_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name unicast_vlan105_macaddr_lsb \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan105_macaddr_lsb \
    op interface \
    ports { unicast_vlan105_macaddr_lsb_dout { I 32 vector } unicast_vlan105_macaddr_lsb_num_data_valid { I 3 vector } unicast_vlan105_macaddr_lsb_fifo_cap { I 3 vector } unicast_vlan105_macaddr_lsb_empty_n { I 1 bit } unicast_vlan105_macaddr_lsb_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name unicast_vlan105_macaddr_msb \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan105_macaddr_msb \
    op interface \
    ports { unicast_vlan105_macaddr_msb_dout { I 16 vector } unicast_vlan105_macaddr_msb_num_data_valid { I 3 vector } unicast_vlan105_macaddr_msb_fifo_cap { I 3 vector } unicast_vlan105_macaddr_msb_empty_n { I 1 bit } unicast_vlan105_macaddr_msb_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name unicast_vlan106_macaddr_lsb \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan106_macaddr_lsb \
    op interface \
    ports { unicast_vlan106_macaddr_lsb_dout { I 32 vector } unicast_vlan106_macaddr_lsb_num_data_valid { I 3 vector } unicast_vlan106_macaddr_lsb_fifo_cap { I 3 vector } unicast_vlan106_macaddr_lsb_empty_n { I 1 bit } unicast_vlan106_macaddr_lsb_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name unicast_vlan106_macaddr_msb \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan106_macaddr_msb \
    op interface \
    ports { unicast_vlan106_macaddr_msb_dout { I 16 vector } unicast_vlan106_macaddr_msb_num_data_valid { I 3 vector } unicast_vlan106_macaddr_msb_fifo_cap { I 3 vector } unicast_vlan106_macaddr_msb_empty_n { I 1 bit } unicast_vlan106_macaddr_msb_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name unicast_vlan107_macaddr_lsb \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan107_macaddr_lsb \
    op interface \
    ports { unicast_vlan107_macaddr_lsb_dout { I 32 vector } unicast_vlan107_macaddr_lsb_num_data_valid { I 3 vector } unicast_vlan107_macaddr_lsb_fifo_cap { I 3 vector } unicast_vlan107_macaddr_lsb_empty_n { I 1 bit } unicast_vlan107_macaddr_lsb_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name unicast_vlan107_macaddr_msb \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan107_macaddr_msb \
    op interface \
    ports { unicast_vlan107_macaddr_msb_dout { I 16 vector } unicast_vlan107_macaddr_msb_num_data_valid { I 3 vector } unicast_vlan107_macaddr_msb_fifo_cap { I 3 vector } unicast_vlan107_macaddr_msb_empty_n { I 1 bit } unicast_vlan107_macaddr_msb_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name unicast_vlan108_macaddr_lsb \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan108_macaddr_lsb \
    op interface \
    ports { unicast_vlan108_macaddr_lsb_dout { I 32 vector } unicast_vlan108_macaddr_lsb_num_data_valid { I 3 vector } unicast_vlan108_macaddr_lsb_fifo_cap { I 3 vector } unicast_vlan108_macaddr_lsb_empty_n { I 1 bit } unicast_vlan108_macaddr_lsb_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name unicast_vlan108_macaddr_msb \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan108_macaddr_msb \
    op interface \
    ports { unicast_vlan108_macaddr_msb_dout { I 16 vector } unicast_vlan108_macaddr_msb_num_data_valid { I 3 vector } unicast_vlan108_macaddr_msb_fifo_cap { I 3 vector } unicast_vlan108_macaddr_msb_empty_n { I 1 bit } unicast_vlan108_macaddr_msb_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name unicast_vlan109_macaddr_lsb \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan109_macaddr_lsb \
    op interface \
    ports { unicast_vlan109_macaddr_lsb_dout { I 32 vector } unicast_vlan109_macaddr_lsb_num_data_valid { I 3 vector } unicast_vlan109_macaddr_lsb_fifo_cap { I 3 vector } unicast_vlan109_macaddr_lsb_empty_n { I 1 bit } unicast_vlan109_macaddr_lsb_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name unicast_vlan109_macaddr_msb \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan109_macaddr_msb \
    op interface \
    ports { unicast_vlan109_macaddr_msb_dout { I 16 vector } unicast_vlan109_macaddr_msb_num_data_valid { I 3 vector } unicast_vlan109_macaddr_msb_fifo_cap { I 3 vector } unicast_vlan109_macaddr_msb_empty_n { I 1 bit } unicast_vlan109_macaddr_msb_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name log_all_mask \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_log_all_mask \
    op interface \
    ports { log_all_mask_dout { I 32 vector } log_all_mask_num_data_valid { I 3 vector } log_all_mask_fifo_cap { I 3 vector } log_all_mask_empty_n { I 1 bit } log_all_mask_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name vlan100_received \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vlan100_received \
    op interface \
    ports { vlan100_received { O 32 vector } vlan100_received_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name vlan101_received \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vlan101_received \
    op interface \
    ports { vlan101_received { O 32 vector } vlan101_received_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name vlan102_received \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vlan102_received \
    op interface \
    ports { vlan102_received { O 32 vector } vlan102_received_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name vlan103_received \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vlan103_received \
    op interface \
    ports { vlan103_received { O 32 vector } vlan103_received_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name vlan104_received \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vlan104_received \
    op interface \
    ports { vlan104_received { O 32 vector } vlan104_received_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name vlan105_received \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vlan105_received \
    op interface \
    ports { vlan105_received { O 32 vector } vlan105_received_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name vlan106_received \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vlan106_received \
    op interface \
    ports { vlan106_received { O 32 vector } vlan106_received_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name vlan107_received \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vlan107_received \
    op interface \
    ports { vlan107_received { O 32 vector } vlan107_received_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name vlan108_received \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vlan108_received \
    op interface \
    ports { vlan108_received { O 32 vector } vlan108_received_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name vlan109_received \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vlan109_received \
    op interface \
    ports { vlan109_received { O 32 vector } vlan109_received_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name droped \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_droped \
    op interface \
    ports { droped { O 32 vector } droped_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


