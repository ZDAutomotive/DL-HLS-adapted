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
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict EN $port_EN


