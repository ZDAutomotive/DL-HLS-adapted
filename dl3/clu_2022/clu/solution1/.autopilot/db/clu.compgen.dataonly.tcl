# This script segment is generated automatically by AutoPilot

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


