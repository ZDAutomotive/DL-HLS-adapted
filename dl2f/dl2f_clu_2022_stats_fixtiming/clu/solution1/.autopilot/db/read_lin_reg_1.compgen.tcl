# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
    name lin_addr \
    type other \
    dir I \
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
    id 2 \
    name lin_reg \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_lin_reg \
    op interface \
    ports { lin_reg { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_offset \
    op interface \
    ports { offset { I 5 vector } } \
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
    ports { ap_return { O 8 vector } } \
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


# Adapter definition:
set PortName ap_ce
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_ce] == "cg_default_interface_gen_ce"} {
eval "cg_default_interface_gen_ce { \
    id -5 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_ce \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


