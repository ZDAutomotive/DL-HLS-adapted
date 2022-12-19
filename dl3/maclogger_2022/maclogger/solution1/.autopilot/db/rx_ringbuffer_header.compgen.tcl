# This script segment is generated automatically by AutoPilot

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
    id 58 \
    name log_header \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename log_header \
    op interface \
    ports { log_header_address0 { O 3 vector } log_header_ce0 { O 1 bit } log_header_we0 { O 1 bit } log_header_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'log_header'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 59 \
    name tap_header \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename tap_header \
    op interface \
    ports { tap_header_address0 { O 3 vector } tap_header_ce0 { O 1 bit } tap_header_we0 { O 1 bit } tap_header_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tap_header'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name ps \
    type other \
    dir I \
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
    id 56 \
    name log_ddr \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_log_ddr \
    op interface \
    ports { log_ddr { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name tap_ddr \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tap_ddr \
    op interface \
    ports { tap_ddr { I 64 vector } } \
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

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
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
    id -4 \
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


