# This script segment is generated automatically by AutoPilot

set name clu_urem_32ns_32ns_32_36_seq_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {urem} IMPL {auto_seq} LATENCY 35 ALLOW_PRAGMA 1
}


set id 6
set name clu_mux_42_8_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 8
set din0_signed 0
set din1_width 8
set din1_signed 0
set din2_width 8
set din2_signed 0
set din3_width 8
set din3_signed 0
set din4_width 2
set din4_signed 0
set dout_width 8
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler clu_write_lin_ddr_1_ringbuffer_header_bytes_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
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
    id 12 \
    name data \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename data \
    op interface \
    ports { data_address0 { O 5 vector } data_ce0 { O 1 bit } data_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'data'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
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
    id 11 \
    name ddr_header \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ddr_header \
    op interface \
    ports { ddr_header { I 32 vector } } \
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


