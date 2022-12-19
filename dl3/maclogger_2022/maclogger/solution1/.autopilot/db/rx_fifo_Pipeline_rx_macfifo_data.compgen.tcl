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
    id 70 \
    name data_buf \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename data_buf \
    op interface \
    ports { data_buf_address0 { O 9 vector } data_buf_ce0 { O 1 bit } data_buf_we0 { O 1 bit } data_buf_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'data_buf'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name fifo_axi_full \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fifo_axi_full \
    op interface \
    ports { m_axi_fifo_axi_full_AWVALID { O 1 bit } m_axi_fifo_axi_full_AWREADY { I 1 bit } m_axi_fifo_axi_full_AWADDR { O 64 vector } m_axi_fifo_axi_full_AWID { O 1 vector } m_axi_fifo_axi_full_AWLEN { O 32 vector } m_axi_fifo_axi_full_AWSIZE { O 3 vector } m_axi_fifo_axi_full_AWBURST { O 2 vector } m_axi_fifo_axi_full_AWLOCK { O 2 vector } m_axi_fifo_axi_full_AWCACHE { O 4 vector } m_axi_fifo_axi_full_AWPROT { O 3 vector } m_axi_fifo_axi_full_AWQOS { O 4 vector } m_axi_fifo_axi_full_AWREGION { O 4 vector } m_axi_fifo_axi_full_AWUSER { O 1 vector } m_axi_fifo_axi_full_WVALID { O 1 bit } m_axi_fifo_axi_full_WREADY { I 1 bit } m_axi_fifo_axi_full_WDATA { O 32 vector } m_axi_fifo_axi_full_WSTRB { O 4 vector } m_axi_fifo_axi_full_WLAST { O 1 bit } m_axi_fifo_axi_full_WID { O 1 vector } m_axi_fifo_axi_full_WUSER { O 1 vector } m_axi_fifo_axi_full_ARVALID { O 1 bit } m_axi_fifo_axi_full_ARREADY { I 1 bit } m_axi_fifo_axi_full_ARADDR { O 64 vector } m_axi_fifo_axi_full_ARID { O 1 vector } m_axi_fifo_axi_full_ARLEN { O 32 vector } m_axi_fifo_axi_full_ARSIZE { O 3 vector } m_axi_fifo_axi_full_ARBURST { O 2 vector } m_axi_fifo_axi_full_ARLOCK { O 2 vector } m_axi_fifo_axi_full_ARCACHE { O 4 vector } m_axi_fifo_axi_full_ARPROT { O 3 vector } m_axi_fifo_axi_full_ARQOS { O 4 vector } m_axi_fifo_axi_full_ARREGION { O 4 vector } m_axi_fifo_axi_full_ARUSER { O 1 vector } m_axi_fifo_axi_full_RVALID { I 1 bit } m_axi_fifo_axi_full_RREADY { O 1 bit } m_axi_fifo_axi_full_RDATA { I 32 vector } m_axi_fifo_axi_full_RLAST { I 1 bit } m_axi_fifo_axi_full_RID { I 1 vector } m_axi_fifo_axi_full_RFIFONUM { I 9 vector } m_axi_fifo_axi_full_RUSER { I 1 vector } m_axi_fifo_axi_full_RRESP { I 2 vector } m_axi_fifo_axi_full_BVALID { I 1 bit } m_axi_fifo_axi_full_BREADY { O 1 bit } m_axi_fifo_axi_full_BRESP { I 2 vector } m_axi_fifo_axi_full_BID { I 1 vector } m_axi_fifo_axi_full_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name sext_ln73 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln73 \
    op interface \
    ports { sext_ln73 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name sext_ln97 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln97 \
    op interface \
    ports { sext_ln97 { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name sext_ln100 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln100 \
    op interface \
    ports { sext_ln100 { I 2 vector } } \
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
set InstName mac_logger_flow_control_loop_pipe_sequential_init_U
set CompName mac_logger_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix mac_logger_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


