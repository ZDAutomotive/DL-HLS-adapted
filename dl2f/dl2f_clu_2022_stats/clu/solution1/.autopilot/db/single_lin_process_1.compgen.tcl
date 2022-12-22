# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler clu_single_lin_process_1_PLIN_Ctrl_run_state_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler clu_single_lin_process_1_lin_frame_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name lin_addr \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_lin_addr \
    op interface \
    ports { m_axi_lin_addr_AWVALID { O 1 bit } m_axi_lin_addr_AWREADY { I 1 bit } m_axi_lin_addr_AWADDR { O 32 vector } m_axi_lin_addr_AWID { O 1 vector } m_axi_lin_addr_AWLEN { O 32 vector } m_axi_lin_addr_AWSIZE { O 3 vector } m_axi_lin_addr_AWBURST { O 2 vector } m_axi_lin_addr_AWLOCK { O 2 vector } m_axi_lin_addr_AWCACHE { O 4 vector } m_axi_lin_addr_AWPROT { O 3 vector } m_axi_lin_addr_AWQOS { O 4 vector } m_axi_lin_addr_AWREGION { O 4 vector } m_axi_lin_addr_AWUSER { O 1 vector } m_axi_lin_addr_WVALID { O 1 bit } m_axi_lin_addr_WREADY { I 1 bit } m_axi_lin_addr_WDATA { O 32 vector } m_axi_lin_addr_WSTRB { O 4 vector } m_axi_lin_addr_WLAST { O 1 bit } m_axi_lin_addr_WID { O 1 vector } m_axi_lin_addr_WUSER { O 1 vector } m_axi_lin_addr_ARVALID { O 1 bit } m_axi_lin_addr_ARREADY { I 1 bit } m_axi_lin_addr_ARADDR { O 32 vector } m_axi_lin_addr_ARID { O 1 vector } m_axi_lin_addr_ARLEN { O 32 vector } m_axi_lin_addr_ARSIZE { O 3 vector } m_axi_lin_addr_ARBURST { O 2 vector } m_axi_lin_addr_ARLOCK { O 2 vector } m_axi_lin_addr_ARCACHE { O 4 vector } m_axi_lin_addr_ARPROT { O 3 vector } m_axi_lin_addr_ARQOS { O 4 vector } m_axi_lin_addr_ARREGION { O 4 vector } m_axi_lin_addr_ARUSER { O 1 vector } m_axi_lin_addr_RVALID { I 1 bit } m_axi_lin_addr_RREADY { O 1 bit } m_axi_lin_addr_RDATA { I 32 vector } m_axi_lin_addr_RLAST { I 1 bit } m_axi_lin_addr_RID { I 1 vector } m_axi_lin_addr_RFIFONUM { I 9 vector } m_axi_lin_addr_RUSER { I 1 vector } m_axi_lin_addr_RRESP { I 2 vector } m_axi_lin_addr_BVALID { I 1 bit } m_axi_lin_addr_BREADY { O 1 bit } m_axi_lin_addr_BRESP { I 2 vector } m_axi_lin_addr_BID { I 1 vector } m_axi_lin_addr_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name linbase \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linbase \
    op interface \
    ports { linbase { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name ps_ddr \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_ps_ddr \
    op interface \
    ports { m_axi_ps_ddr_AWVALID { O 1 bit } m_axi_ps_ddr_AWREADY { I 1 bit } m_axi_ps_ddr_AWADDR { O 32 vector } m_axi_ps_ddr_AWID { O 1 vector } m_axi_ps_ddr_AWLEN { O 32 vector } m_axi_ps_ddr_AWSIZE { O 3 vector } m_axi_ps_ddr_AWBURST { O 2 vector } m_axi_ps_ddr_AWLOCK { O 2 vector } m_axi_ps_ddr_AWCACHE { O 4 vector } m_axi_ps_ddr_AWPROT { O 3 vector } m_axi_ps_ddr_AWQOS { O 4 vector } m_axi_ps_ddr_AWREGION { O 4 vector } m_axi_ps_ddr_AWUSER { O 1 vector } m_axi_ps_ddr_WVALID { O 1 bit } m_axi_ps_ddr_WREADY { I 1 bit } m_axi_ps_ddr_WDATA { O 8 vector } m_axi_ps_ddr_WSTRB { O 1 vector } m_axi_ps_ddr_WLAST { O 1 bit } m_axi_ps_ddr_WID { O 1 vector } m_axi_ps_ddr_WUSER { O 1 vector } m_axi_ps_ddr_ARVALID { O 1 bit } m_axi_ps_ddr_ARREADY { I 1 bit } m_axi_ps_ddr_ARADDR { O 32 vector } m_axi_ps_ddr_ARID { O 1 vector } m_axi_ps_ddr_ARLEN { O 32 vector } m_axi_ps_ddr_ARSIZE { O 3 vector } m_axi_ps_ddr_ARBURST { O 2 vector } m_axi_ps_ddr_ARLOCK { O 2 vector } m_axi_ps_ddr_ARCACHE { O 4 vector } m_axi_ps_ddr_ARPROT { O 3 vector } m_axi_ps_ddr_ARQOS { O 4 vector } m_axi_ps_ddr_ARREGION { O 4 vector } m_axi_ps_ddr_ARUSER { O 1 vector } m_axi_ps_ddr_RVALID { I 1 bit } m_axi_ps_ddr_RREADY { O 1 bit } m_axi_ps_ddr_RDATA { I 8 vector } m_axi_ps_ddr_RLAST { I 1 bit } m_axi_ps_ddr_RID { I 1 vector } m_axi_ps_ddr_RFIFONUM { I 11 vector } m_axi_ps_ddr_RUSER { I 1 vector } m_axi_ps_ddr_RRESP { I 2 vector } m_axi_ps_ddr_BVALID { I 1 bit } m_axi_ps_ddr_BREADY { O 1 bit } m_axi_ps_ddr_BRESP { I 2 vector } m_axi_ps_ddr_BID { I 1 vector } m_axi_ps_ddr_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name ddr \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ddr \
    op interface \
    ports { ddr { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name timestamp \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_timestamp \
    op interface \
    ports { timestamp { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name EN \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_EN \
    op interface \
    ports { EN { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name lin_0_received \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_lin_0_received \
    op interface \
    ports { lin_0_received { O 32 vector } lin_0_received_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name lin_1_received \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_lin_1_received \
    op interface \
    ports { lin_1_received { O 32 vector } lin_1_received_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name lin_2_received \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_lin_2_received \
    op interface \
    ports { lin_2_received { O 32 vector } lin_2_received_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name lin_3_received \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_lin_3_received \
    op interface \
    ports { lin_3_received { O 32 vector } lin_3_received_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name lin_4_received \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_lin_4_received \
    op interface \
    ports { lin_4_received { O 32 vector } lin_4_received_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name lin_5_received \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_lin_5_received \
    op interface \
    ports { lin_5_received { O 32 vector } lin_5_received_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name lin_6_received \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_lin_6_received \
    op interface \
    ports { lin_6_received { O 32 vector } lin_6_received_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name lin_7_received \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_lin_7_received \
    op interface \
    ports { lin_7_received { O 32 vector } lin_7_received_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name lin_8_received \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_lin_8_received \
    op interface \
    ports { lin_8_received { O 32 vector } lin_8_received_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name lin_9_received \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_lin_9_received \
    op interface \
    ports { lin_9_received { O 32 vector } lin_9_received_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name lin_dropped \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_lin_dropped \
    op interface \
    ports { lin_dropped { O 32 vector } lin_dropped_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name received_lin \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_received_lin \
    op interface \
    ports { received_lin { O 32 vector } received_lin_ap_vld { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
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


