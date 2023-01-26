# This script segment is generated automatically by AutoPilot

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
received_can { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 40
	offset_end 47
}
received_uart { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
received_lin { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 56
	offset_end 63
}
can_en { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
uart_en { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 72
	offset_end 79
}
lin_en { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 80
	offset_end 87
}
can_ddr { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 88
	offset_end 95
}
uart_ddr { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 96
	offset_end 103
}
lin_ddr { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 104
	offset_end 111
}
can_0_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 112
	offset_end 119
}
can_1_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 120
	offset_end 127
}
can_2_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 128
	offset_end 135
}
can_3_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 136
	offset_end 143
}
can_dropped { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 144
	offset_end 151
}
lin_0_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 152
	offset_end 159
}
lin_1_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 160
	offset_end 167
}
lin_2_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 168
	offset_end 175
}
lin_3_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 176
	offset_end 183
}
lin_4_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 184
	offset_end 191
}
lin_5_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 192
	offset_end 199
}
lin_6_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 200
	offset_end 207
}
lin_7_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 208
	offset_end 215
}
lin_8_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 216
	offset_end 223
}
lin_9_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 224
	offset_end 231
}
lin_dropped { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 232
	offset_end 239
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict EN $port_EN


