# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler clu_clu_addr_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler clu_ps_ddr_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
set port_EN {
can_ptr { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
uart_ptr { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
lin_ptr { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
received_can { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 52
	offset_end 59
}
received_uart { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 68
	offset_end 75
}
received_lin { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 84
	offset_end 91
}
can_en { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 100
	offset_end 107
}
uart_en { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 108
	offset_end 115
}
lin_en { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 116
	offset_end 123
}
can_ddr { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 124
	offset_end 135
}
uart_ddr { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 136
	offset_end 147
}
lin_ddr { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 148
	offset_end 159
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict EN $port_EN


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 96 \
			corename clu_EN_axilite \
			name clu_EN_s_axi \
			ports {$port_EN} \
			op interface \
			interrupt_clear_mode TOW \
			interrupt_trigger_type default \
			is_flushable 0 \
			is_datawidth64 0 \
			is_addrwidth64 1 \
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'EN'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler clu_EN_s_axi BINDTYPE interface TYPE interface_s_axilite
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name timestamp \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_timestamp \
    op interface \
    ports { timestamp { I 64 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -1 \
    name ${PortName} \
    reset_level 0 \
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
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -2 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
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


