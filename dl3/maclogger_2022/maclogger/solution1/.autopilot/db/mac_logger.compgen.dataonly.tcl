# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_axilites {
fifo { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
ddr { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
status { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
writeStatus { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
logger_vlan_enable_mask { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
vlan100_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 64
	offset_end 71
}
vlan101_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 72
	offset_end 79
}
vlan102_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 80
	offset_end 87
}
vlan103_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 88
	offset_end 95
}
vlan104_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 96
	offset_end 103
}
vlan105_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 104
	offset_end 111
}
vlan106_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 112
	offset_end 119
}
vlan107_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 120
	offset_end 127
}
vlan108_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 128
	offset_end 135
}
vlan109_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 136
	offset_end 143
}
droped { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 144
	offset_end 151
}
multicast_recv_enable { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 152
	offset_end 159
}
unicast_filter_enable { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 160
	offset_end 167
}
unicast_vlan100_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 168
	offset_end 175
}
unicast_vlan100_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 176
	offset_end 183
}
unicast_vlan101_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 184
	offset_end 191
}
unicast_vlan101_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 192
	offset_end 199
}
unicast_vlan102_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 200
	offset_end 207
}
unicast_vlan102_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 208
	offset_end 215
}
unicast_vlan103_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 216
	offset_end 223
}
unicast_vlan103_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 224
	offset_end 231
}
unicast_vlan104_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 232
	offset_end 239
}
unicast_vlan104_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 240
	offset_end 247
}
unicast_vlan105_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 248
	offset_end 255
}
unicast_vlan105_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 256
	offset_end 263
}
unicast_vlan106_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 264
	offset_end 271
}
unicast_vlan106_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 272
	offset_end 279
}
unicast_vlan107_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 280
	offset_end 287
}
unicast_vlan107_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 288
	offset_end 295
}
unicast_vlan108_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 296
	offset_end 303
}
unicast_vlan108_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 304
	offset_end 311
}
unicast_vlan109_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 312
	offset_end 319
}
unicast_vlan109_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 320
	offset_end 327
}
log_all_mask { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 328
	offset_end 335
}
driver { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 336
	offset_end 347
}
fifo_axi_full_offset { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 352
	offset_end 363
}
ap_start { }
ap_done { }
ap_ready { }
ap_continue { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict axilites $port_axilites


