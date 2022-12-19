# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mac_logger_mac_fifo_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mac_logger_ps_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mac_logger_fifo_axi_full_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

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
fifo_axi_full_offset { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
ddr { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
driver { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
status { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
writeStatus { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 72
	offset_end 79
}
logger_vlan_enable_mask { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 80
	offset_end 87
}
vlan100_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 88
	offset_end 95
}
vlan101_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 96
	offset_end 103
}
vlan102_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 104
	offset_end 111
}
vlan103_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 112
	offset_end 119
}
vlan104_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 120
	offset_end 127
}
vlan105_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 128
	offset_end 135
}
vlan106_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 136
	offset_end 143
}
vlan107_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 144
	offset_end 151
}
vlan108_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 152
	offset_end 159
}
vlan109_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 160
	offset_end 167
}
vlan110_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 168
	offset_end 175
}
vlan111_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 176
	offset_end 183
}
vlan112_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 184
	offset_end 191
}
vlan113_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 192
	offset_end 199
}
vlan114_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 200
	offset_end 207
}
vlan115_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 208
	offset_end 215
}
vlan116_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 216
	offset_end 223
}
vlan117_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 224
	offset_end 231
}
vlan118_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 232
	offset_end 239
}
vlan119_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 240
	offset_end 247
}
vlan120_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 248
	offset_end 255
}
vlan121_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 272
	offset_end 279
}
vlan122_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 280
	offset_end 287
}
vlan123_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 288
	offset_end 295
}
vlan124_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 296
	offset_end 303
}
vlan125_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 304
	offset_end 311
}
vlan126_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 312
	offset_end 319
}
vlan127_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 320
	offset_end 327
}
vlan128_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 328
	offset_end 335
}
vlan129_received { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 336
	offset_end 343
}
droped { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 344
	offset_end 351
}
multicast_recv_enable { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 352
	offset_end 359
}
unicast_filter_enable { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 360
	offset_end 367
}
unicast_vlan100_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 368
	offset_end 375
}
unicast_vlan100_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 376
	offset_end 383
}
unicast_vlan101_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 384
	offset_end 391
}
unicast_vlan101_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 392
	offset_end 399
}
unicast_vlan102_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 400
	offset_end 407
}
unicast_vlan102_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 408
	offset_end 415
}
unicast_vlan103_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 416
	offset_end 423
}
unicast_vlan103_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 424
	offset_end 431
}
unicast_vlan104_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 432
	offset_end 439
}
unicast_vlan104_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 440
	offset_end 447
}
unicast_vlan105_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 448
	offset_end 455
}
unicast_vlan105_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 456
	offset_end 463
}
unicast_vlan106_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 464
	offset_end 471
}
unicast_vlan106_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 472
	offset_end 479
}
unicast_vlan107_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 480
	offset_end 487
}
unicast_vlan107_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 488
	offset_end 495
}
unicast_vlan108_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 496
	offset_end 503
}
unicast_vlan108_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 504
	offset_end 511
}
unicast_vlan109_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 512
	offset_end 519
}
unicast_vlan109_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 520
	offset_end 527
}
unicast_vlan110_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 528
	offset_end 535
}
unicast_vlan110_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 536
	offset_end 543
}
unicast_vlan111_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 544
	offset_end 551
}
unicast_vlan111_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 552
	offset_end 559
}
unicast_vlan112_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 560
	offset_end 567
}
unicast_vlan112_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 568
	offset_end 575
}
unicast_vlan113_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 576
	offset_end 583
}
unicast_vlan113_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 584
	offset_end 591
}
unicast_vlan114_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 592
	offset_end 599
}
unicast_vlan114_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 600
	offset_end 607
}
unicast_vlan115_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 608
	offset_end 615
}
unicast_vlan115_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 616
	offset_end 623
}
unicast_vlan116_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 624
	offset_end 631
}
unicast_vlan116_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 632
	offset_end 639
}
unicast_vlan117_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 640
	offset_end 647
}
unicast_vlan117_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 648
	offset_end 655
}
unicast_vlan118_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 656
	offset_end 663
}
unicast_vlan118_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 664
	offset_end 671
}
unicast_vlan119_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 672
	offset_end 679
}
unicast_vlan119_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 680
	offset_end 687
}
unicast_vlan120_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 688
	offset_end 695
}
unicast_vlan120_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 696
	offset_end 703
}
unicast_vlan121_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 704
	offset_end 711
}
unicast_vlan121_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 712
	offset_end 719
}
unicast_vlan122_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 720
	offset_end 727
}
unicast_vlan122_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 728
	offset_end 735
}
unicast_vlan123_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 736
	offset_end 743
}
unicast_vlan123_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 744
	offset_end 751
}
unicast_vlan124_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 752
	offset_end 759
}
unicast_vlan124_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 760
	offset_end 767
}
unicast_vlan125_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 768
	offset_end 775
}
unicast_vlan125_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 776
	offset_end 783
}
unicast_vlan126_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 784
	offset_end 791
}
unicast_vlan126_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 792
	offset_end 799
}
unicast_vlan127_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 800
	offset_end 807
}
unicast_vlan127_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 808
	offset_end 815
}
unicast_vlan128_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 816
	offset_end 823
}
unicast_vlan128_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 824
	offset_end 831
}
unicast_vlan129_macaddr_lsb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 832
	offset_end 839
}
unicast_vlan129_macaddr_msb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 840
	offset_end 847
}
log_all_mask { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 848
	offset_end 855
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


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 454 \
			corename mac_logger_axilites_axilite \
			name mac_logger_axilites_s_axi \
			ports {$port_axilites} \
			op interface \
			interrupt_clear_mode TOW \
			interrupt_trigger_type default \
			is_flushable 0 \
			is_datawidth64 0 \
			is_addrwidth64 1 \
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'axilites'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mac_logger_axilites_s_axi BINDTYPE interface TYPE interface_s_axilite
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 458 \
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


