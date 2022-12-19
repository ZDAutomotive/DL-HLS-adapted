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
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
uart_ptr { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
lin_ptr { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
can_10_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 40
	offset_end 47
}
can_11_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 56
	offset_end 63
}
received_can { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 72
	offset_end 79
}
can_0_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 88
	offset_end 95
}
can_1_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 96
	offset_end 103
}
can_2_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 104
	offset_end 111
}
can_3_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 112
	offset_end 119
}
can_4_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 120
	offset_end 127
}
can_5_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 128
	offset_end 135
}
can_6_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 136
	offset_end 143
}
can_7_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 144
	offset_end 151
}
can_8_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 152
	offset_end 159
}
can_9_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 160
	offset_end 167
}
droped { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 168
	offset_end 175
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
received_uart { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 48
	offset_end 55
}
received_lin { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 64
	offset_end 71
}
can_en { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 80
	offset_end 87
}
uart_en { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 176
	offset_end 183
}
lin_en { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 184
	offset_end 191
}
can_ddr { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 192
	offset_end 199
}
uart_ddr { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 200
	offset_end 207
}
lin_ddr { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 208
	offset_end 215
}
interrupt {
}
}
dict set axilite_register_dict EN $port_EN


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 108 \
			corename clu_EN_axilite \
			name clu_EN_s_axi \
			ports {$port_EN} \
			op interface \
			interrupt_clear_mode TOW \
			interrupt_trigger_type default \
			is_flushable 0 \
			is_datawidth64 0 \
			is_addrwidth64 0 \
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
    id 111 \
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


