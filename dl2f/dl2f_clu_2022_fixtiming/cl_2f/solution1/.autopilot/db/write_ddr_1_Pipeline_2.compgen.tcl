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
    id 42 \
    name ps_ddr \
    type other \
    dir O \
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
    id 43 \
    name add_ln18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln18 \
    op interface \
    ports { add_ln18 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name write_index_array_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_write_index_array_0 \
    op interface \
    ports { write_index_array_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name write_index_array_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_write_index_array_1 \
    op interface \
    ports { write_index_array_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name write_index_array_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_write_index_array_2 \
    op interface \
    ports { write_index_array_2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name write_index_array_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_write_index_array_3 \
    op interface \
    ports { write_index_array_3 { I 8 vector } } \
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


# flow_control definition:
set InstName clu_flow_control_loop_pipe_sequential_init_U
set CompName clu_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix clu_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


