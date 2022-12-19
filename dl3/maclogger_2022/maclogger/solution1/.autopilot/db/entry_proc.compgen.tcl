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
    id 1 \
    name logger_vlan_enable_mask \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_logger_vlan_enable_mask \
    op interface \
    ports { logger_vlan_enable_mask { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name logger_vlan_enable_mask_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_logger_vlan_enable_mask_c \
    op interface \
    ports { logger_vlan_enable_mask_c_din { O 32 vector } logger_vlan_enable_mask_c_num_data_valid { I 3 vector } logger_vlan_enable_mask_c_fifo_cap { I 3 vector } logger_vlan_enable_mask_c_full_n { I 1 bit } logger_vlan_enable_mask_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name multicast_recv_enable \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_multicast_recv_enable \
    op interface \
    ports { multicast_recv_enable { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name multicast_recv_enable_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_multicast_recv_enable_c \
    op interface \
    ports { multicast_recv_enable_c_din { O 32 vector } multicast_recv_enable_c_num_data_valid { I 3 vector } multicast_recv_enable_c_fifo_cap { I 3 vector } multicast_recv_enable_c_full_n { I 1 bit } multicast_recv_enable_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name unicast_filter_enable \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_filter_enable \
    op interface \
    ports { unicast_filter_enable { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name unicast_filter_enable_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_filter_enable_c \
    op interface \
    ports { unicast_filter_enable_c_din { O 32 vector } unicast_filter_enable_c_num_data_valid { I 3 vector } unicast_filter_enable_c_fifo_cap { I 3 vector } unicast_filter_enable_c_full_n { I 1 bit } unicast_filter_enable_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name unicast_vlan100_macaddr_lsb \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan100_macaddr_lsb \
    op interface \
    ports { unicast_vlan100_macaddr_lsb { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name unicast_vlan100_macaddr_lsb_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan100_macaddr_lsb_c \
    op interface \
    ports { unicast_vlan100_macaddr_lsb_c_din { O 32 vector } unicast_vlan100_macaddr_lsb_c_num_data_valid { I 3 vector } unicast_vlan100_macaddr_lsb_c_fifo_cap { I 3 vector } unicast_vlan100_macaddr_lsb_c_full_n { I 1 bit } unicast_vlan100_macaddr_lsb_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name unicast_vlan100_macaddr_msb \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan100_macaddr_msb \
    op interface \
    ports { unicast_vlan100_macaddr_msb { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name unicast_vlan100_macaddr_msb_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan100_macaddr_msb_c \
    op interface \
    ports { unicast_vlan100_macaddr_msb_c_din { O 16 vector } unicast_vlan100_macaddr_msb_c_num_data_valid { I 3 vector } unicast_vlan100_macaddr_msb_c_fifo_cap { I 3 vector } unicast_vlan100_macaddr_msb_c_full_n { I 1 bit } unicast_vlan100_macaddr_msb_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name unicast_vlan101_macaddr_lsb \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan101_macaddr_lsb \
    op interface \
    ports { unicast_vlan101_macaddr_lsb { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name unicast_vlan101_macaddr_lsb_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan101_macaddr_lsb_c \
    op interface \
    ports { unicast_vlan101_macaddr_lsb_c_din { O 32 vector } unicast_vlan101_macaddr_lsb_c_num_data_valid { I 3 vector } unicast_vlan101_macaddr_lsb_c_fifo_cap { I 3 vector } unicast_vlan101_macaddr_lsb_c_full_n { I 1 bit } unicast_vlan101_macaddr_lsb_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name unicast_vlan101_macaddr_msb \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan101_macaddr_msb \
    op interface \
    ports { unicast_vlan101_macaddr_msb { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name unicast_vlan101_macaddr_msb_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan101_macaddr_msb_c \
    op interface \
    ports { unicast_vlan101_macaddr_msb_c_din { O 16 vector } unicast_vlan101_macaddr_msb_c_num_data_valid { I 3 vector } unicast_vlan101_macaddr_msb_c_fifo_cap { I 3 vector } unicast_vlan101_macaddr_msb_c_full_n { I 1 bit } unicast_vlan101_macaddr_msb_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name unicast_vlan102_macaddr_lsb \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan102_macaddr_lsb \
    op interface \
    ports { unicast_vlan102_macaddr_lsb { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name unicast_vlan102_macaddr_lsb_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan102_macaddr_lsb_c \
    op interface \
    ports { unicast_vlan102_macaddr_lsb_c_din { O 32 vector } unicast_vlan102_macaddr_lsb_c_num_data_valid { I 3 vector } unicast_vlan102_macaddr_lsb_c_fifo_cap { I 3 vector } unicast_vlan102_macaddr_lsb_c_full_n { I 1 bit } unicast_vlan102_macaddr_lsb_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name unicast_vlan102_macaddr_msb \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan102_macaddr_msb \
    op interface \
    ports { unicast_vlan102_macaddr_msb { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name unicast_vlan102_macaddr_msb_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan102_macaddr_msb_c \
    op interface \
    ports { unicast_vlan102_macaddr_msb_c_din { O 16 vector } unicast_vlan102_macaddr_msb_c_num_data_valid { I 3 vector } unicast_vlan102_macaddr_msb_c_fifo_cap { I 3 vector } unicast_vlan102_macaddr_msb_c_full_n { I 1 bit } unicast_vlan102_macaddr_msb_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name unicast_vlan103_macaddr_lsb \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan103_macaddr_lsb \
    op interface \
    ports { unicast_vlan103_macaddr_lsb { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name unicast_vlan103_macaddr_lsb_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan103_macaddr_lsb_c \
    op interface \
    ports { unicast_vlan103_macaddr_lsb_c_din { O 32 vector } unicast_vlan103_macaddr_lsb_c_num_data_valid { I 3 vector } unicast_vlan103_macaddr_lsb_c_fifo_cap { I 3 vector } unicast_vlan103_macaddr_lsb_c_full_n { I 1 bit } unicast_vlan103_macaddr_lsb_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name unicast_vlan103_macaddr_msb \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan103_macaddr_msb \
    op interface \
    ports { unicast_vlan103_macaddr_msb { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name unicast_vlan103_macaddr_msb_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan103_macaddr_msb_c \
    op interface \
    ports { unicast_vlan103_macaddr_msb_c_din { O 16 vector } unicast_vlan103_macaddr_msb_c_num_data_valid { I 3 vector } unicast_vlan103_macaddr_msb_c_fifo_cap { I 3 vector } unicast_vlan103_macaddr_msb_c_full_n { I 1 bit } unicast_vlan103_macaddr_msb_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name unicast_vlan104_macaddr_lsb \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan104_macaddr_lsb \
    op interface \
    ports { unicast_vlan104_macaddr_lsb { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name unicast_vlan104_macaddr_lsb_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan104_macaddr_lsb_c \
    op interface \
    ports { unicast_vlan104_macaddr_lsb_c_din { O 32 vector } unicast_vlan104_macaddr_lsb_c_num_data_valid { I 3 vector } unicast_vlan104_macaddr_lsb_c_fifo_cap { I 3 vector } unicast_vlan104_macaddr_lsb_c_full_n { I 1 bit } unicast_vlan104_macaddr_lsb_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name unicast_vlan104_macaddr_msb \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan104_macaddr_msb \
    op interface \
    ports { unicast_vlan104_macaddr_msb { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name unicast_vlan104_macaddr_msb_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan104_macaddr_msb_c \
    op interface \
    ports { unicast_vlan104_macaddr_msb_c_din { O 16 vector } unicast_vlan104_macaddr_msb_c_num_data_valid { I 3 vector } unicast_vlan104_macaddr_msb_c_fifo_cap { I 3 vector } unicast_vlan104_macaddr_msb_c_full_n { I 1 bit } unicast_vlan104_macaddr_msb_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name unicast_vlan105_macaddr_lsb \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan105_macaddr_lsb \
    op interface \
    ports { unicast_vlan105_macaddr_lsb { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name unicast_vlan105_macaddr_lsb_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan105_macaddr_lsb_c \
    op interface \
    ports { unicast_vlan105_macaddr_lsb_c_din { O 32 vector } unicast_vlan105_macaddr_lsb_c_num_data_valid { I 3 vector } unicast_vlan105_macaddr_lsb_c_fifo_cap { I 3 vector } unicast_vlan105_macaddr_lsb_c_full_n { I 1 bit } unicast_vlan105_macaddr_lsb_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name unicast_vlan105_macaddr_msb \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan105_macaddr_msb \
    op interface \
    ports { unicast_vlan105_macaddr_msb { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name unicast_vlan105_macaddr_msb_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan105_macaddr_msb_c \
    op interface \
    ports { unicast_vlan105_macaddr_msb_c_din { O 16 vector } unicast_vlan105_macaddr_msb_c_num_data_valid { I 3 vector } unicast_vlan105_macaddr_msb_c_fifo_cap { I 3 vector } unicast_vlan105_macaddr_msb_c_full_n { I 1 bit } unicast_vlan105_macaddr_msb_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name unicast_vlan106_macaddr_lsb \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan106_macaddr_lsb \
    op interface \
    ports { unicast_vlan106_macaddr_lsb { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name unicast_vlan106_macaddr_lsb_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan106_macaddr_lsb_c \
    op interface \
    ports { unicast_vlan106_macaddr_lsb_c_din { O 32 vector } unicast_vlan106_macaddr_lsb_c_num_data_valid { I 3 vector } unicast_vlan106_macaddr_lsb_c_fifo_cap { I 3 vector } unicast_vlan106_macaddr_lsb_c_full_n { I 1 bit } unicast_vlan106_macaddr_lsb_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name unicast_vlan106_macaddr_msb \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan106_macaddr_msb \
    op interface \
    ports { unicast_vlan106_macaddr_msb { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name unicast_vlan106_macaddr_msb_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan106_macaddr_msb_c \
    op interface \
    ports { unicast_vlan106_macaddr_msb_c_din { O 16 vector } unicast_vlan106_macaddr_msb_c_num_data_valid { I 3 vector } unicast_vlan106_macaddr_msb_c_fifo_cap { I 3 vector } unicast_vlan106_macaddr_msb_c_full_n { I 1 bit } unicast_vlan106_macaddr_msb_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name unicast_vlan107_macaddr_lsb \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan107_macaddr_lsb \
    op interface \
    ports { unicast_vlan107_macaddr_lsb { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name unicast_vlan107_macaddr_lsb_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan107_macaddr_lsb_c \
    op interface \
    ports { unicast_vlan107_macaddr_lsb_c_din { O 32 vector } unicast_vlan107_macaddr_lsb_c_num_data_valid { I 3 vector } unicast_vlan107_macaddr_lsb_c_fifo_cap { I 3 vector } unicast_vlan107_macaddr_lsb_c_full_n { I 1 bit } unicast_vlan107_macaddr_lsb_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name unicast_vlan107_macaddr_msb \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan107_macaddr_msb \
    op interface \
    ports { unicast_vlan107_macaddr_msb { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name unicast_vlan107_macaddr_msb_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan107_macaddr_msb_c \
    op interface \
    ports { unicast_vlan107_macaddr_msb_c_din { O 16 vector } unicast_vlan107_macaddr_msb_c_num_data_valid { I 3 vector } unicast_vlan107_macaddr_msb_c_fifo_cap { I 3 vector } unicast_vlan107_macaddr_msb_c_full_n { I 1 bit } unicast_vlan107_macaddr_msb_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name unicast_vlan108_macaddr_lsb \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan108_macaddr_lsb \
    op interface \
    ports { unicast_vlan108_macaddr_lsb { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name unicast_vlan108_macaddr_lsb_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan108_macaddr_lsb_c \
    op interface \
    ports { unicast_vlan108_macaddr_lsb_c_din { O 32 vector } unicast_vlan108_macaddr_lsb_c_num_data_valid { I 3 vector } unicast_vlan108_macaddr_lsb_c_fifo_cap { I 3 vector } unicast_vlan108_macaddr_lsb_c_full_n { I 1 bit } unicast_vlan108_macaddr_lsb_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name unicast_vlan108_macaddr_msb \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan108_macaddr_msb \
    op interface \
    ports { unicast_vlan108_macaddr_msb { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name unicast_vlan108_macaddr_msb_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan108_macaddr_msb_c \
    op interface \
    ports { unicast_vlan108_macaddr_msb_c_din { O 16 vector } unicast_vlan108_macaddr_msb_c_num_data_valid { I 3 vector } unicast_vlan108_macaddr_msb_c_fifo_cap { I 3 vector } unicast_vlan108_macaddr_msb_c_full_n { I 1 bit } unicast_vlan108_macaddr_msb_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name unicast_vlan109_macaddr_lsb \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan109_macaddr_lsb \
    op interface \
    ports { unicast_vlan109_macaddr_lsb { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name unicast_vlan109_macaddr_lsb_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan109_macaddr_lsb_c \
    op interface \
    ports { unicast_vlan109_macaddr_lsb_c_din { O 32 vector } unicast_vlan109_macaddr_lsb_c_num_data_valid { I 3 vector } unicast_vlan109_macaddr_lsb_c_fifo_cap { I 3 vector } unicast_vlan109_macaddr_lsb_c_full_n { I 1 bit } unicast_vlan109_macaddr_lsb_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name unicast_vlan109_macaddr_msb \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan109_macaddr_msb \
    op interface \
    ports { unicast_vlan109_macaddr_msb { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name unicast_vlan109_macaddr_msb_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_unicast_vlan109_macaddr_msb_c \
    op interface \
    ports { unicast_vlan109_macaddr_msb_c_din { O 16 vector } unicast_vlan109_macaddr_msb_c_num_data_valid { I 3 vector } unicast_vlan109_macaddr_msb_c_fifo_cap { I 3 vector } unicast_vlan109_macaddr_msb_c_full_n { I 1 bit } unicast_vlan109_macaddr_msb_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name log_all_mask \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_log_all_mask \
    op interface \
    ports { log_all_mask { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name log_all_mask_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_log_all_mask_c \
    op interface \
    ports { log_all_mask_c_din { O 32 vector } log_all_mask_c_num_data_valid { I 3 vector } log_all_mask_c_fifo_cap { I 3 vector } log_all_mask_c_full_n { I 1 bit } log_all_mask_c_write { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


