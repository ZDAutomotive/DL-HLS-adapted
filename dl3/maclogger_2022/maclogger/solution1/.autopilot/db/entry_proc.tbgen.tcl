set moduleName entry_proc
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {entry_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ logger_vlan_enable_mask int 32 regular {pointer 0}  }
	{ logger_vlan_enable_mask_c int 32 regular {fifo 1}  }
	{ multicast_recv_enable int 32 regular {pointer 0}  }
	{ multicast_recv_enable_c int 32 regular {fifo 1}  }
	{ unicast_filter_enable int 32 regular {pointer 0}  }
	{ unicast_filter_enable_c int 32 regular {fifo 1}  }
	{ unicast_vlan100_macaddr_lsb int 32 regular {pointer 0}  }
	{ unicast_vlan100_macaddr_lsb_c int 32 regular {fifo 1}  }
	{ unicast_vlan100_macaddr_msb int 32 regular {pointer 0}  }
	{ unicast_vlan100_macaddr_msb_c int 16 regular {fifo 1}  }
	{ unicast_vlan101_macaddr_lsb int 32 regular {pointer 0}  }
	{ unicast_vlan101_macaddr_lsb_c int 32 regular {fifo 1}  }
	{ unicast_vlan101_macaddr_msb int 32 regular {pointer 0}  }
	{ unicast_vlan101_macaddr_msb_c int 16 regular {fifo 1}  }
	{ unicast_vlan102_macaddr_lsb int 32 regular {pointer 0}  }
	{ unicast_vlan102_macaddr_lsb_c int 32 regular {fifo 1}  }
	{ unicast_vlan102_macaddr_msb int 32 regular {pointer 0}  }
	{ unicast_vlan102_macaddr_msb_c int 16 regular {fifo 1}  }
	{ unicast_vlan103_macaddr_lsb int 32 regular {pointer 0}  }
	{ unicast_vlan103_macaddr_lsb_c int 32 regular {fifo 1}  }
	{ unicast_vlan103_macaddr_msb int 32 regular {pointer 0}  }
	{ unicast_vlan103_macaddr_msb_c int 16 regular {fifo 1}  }
	{ unicast_vlan104_macaddr_lsb int 32 regular {pointer 0}  }
	{ unicast_vlan104_macaddr_lsb_c int 32 regular {fifo 1}  }
	{ unicast_vlan104_macaddr_msb int 32 regular {pointer 0}  }
	{ unicast_vlan104_macaddr_msb_c int 16 regular {fifo 1}  }
	{ unicast_vlan105_macaddr_lsb int 32 regular {pointer 0}  }
	{ unicast_vlan105_macaddr_lsb_c int 32 regular {fifo 1}  }
	{ unicast_vlan105_macaddr_msb int 32 regular {pointer 0}  }
	{ unicast_vlan105_macaddr_msb_c int 16 regular {fifo 1}  }
	{ unicast_vlan106_macaddr_lsb int 32 regular {pointer 0}  }
	{ unicast_vlan106_macaddr_lsb_c int 32 regular {fifo 1}  }
	{ unicast_vlan106_macaddr_msb int 32 regular {pointer 0}  }
	{ unicast_vlan106_macaddr_msb_c int 16 regular {fifo 1}  }
	{ unicast_vlan107_macaddr_lsb int 32 regular {pointer 0}  }
	{ unicast_vlan107_macaddr_lsb_c int 32 regular {fifo 1}  }
	{ unicast_vlan107_macaddr_msb int 32 regular {pointer 0}  }
	{ unicast_vlan107_macaddr_msb_c int 16 regular {fifo 1}  }
	{ unicast_vlan108_macaddr_lsb int 32 regular {pointer 0}  }
	{ unicast_vlan108_macaddr_lsb_c int 32 regular {fifo 1}  }
	{ unicast_vlan108_macaddr_msb int 32 regular {pointer 0}  }
	{ unicast_vlan108_macaddr_msb_c int 16 regular {fifo 1}  }
	{ unicast_vlan109_macaddr_lsb int 32 regular {pointer 0}  }
	{ unicast_vlan109_macaddr_lsb_c int 32 regular {fifo 1}  }
	{ unicast_vlan109_macaddr_msb int 32 regular {pointer 0}  }
	{ unicast_vlan109_macaddr_msb_c int 16 regular {fifo 1}  }
	{ log_all_mask int 32 regular {pointer 0}  }
	{ log_all_mask_c int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "logger_vlan_enable_mask", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "logger_vlan_enable_mask_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "multicast_recv_enable", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "multicast_recv_enable_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "unicast_filter_enable", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_filter_enable_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "unicast_vlan100_macaddr_lsb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan100_macaddr_lsb_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "unicast_vlan100_macaddr_msb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan100_macaddr_msb_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "unicast_vlan101_macaddr_lsb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan101_macaddr_lsb_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "unicast_vlan101_macaddr_msb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan101_macaddr_msb_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "unicast_vlan102_macaddr_lsb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan102_macaddr_lsb_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "unicast_vlan102_macaddr_msb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan102_macaddr_msb_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "unicast_vlan103_macaddr_lsb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan103_macaddr_lsb_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "unicast_vlan103_macaddr_msb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan103_macaddr_msb_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "unicast_vlan104_macaddr_lsb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan104_macaddr_lsb_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "unicast_vlan104_macaddr_msb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan104_macaddr_msb_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "unicast_vlan105_macaddr_lsb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan105_macaddr_lsb_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "unicast_vlan105_macaddr_msb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan105_macaddr_msb_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "unicast_vlan106_macaddr_lsb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan106_macaddr_lsb_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "unicast_vlan106_macaddr_msb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan106_macaddr_msb_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "unicast_vlan107_macaddr_lsb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan107_macaddr_lsb_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "unicast_vlan107_macaddr_msb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan107_macaddr_msb_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "unicast_vlan108_macaddr_lsb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan108_macaddr_lsb_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "unicast_vlan108_macaddr_msb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan108_macaddr_msb_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "unicast_vlan109_macaddr_lsb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan109_macaddr_lsb_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "unicast_vlan109_macaddr_msb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan109_macaddr_msb_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "log_all_mask", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "log_all_mask_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 151
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ logger_vlan_enable_mask sc_in sc_lv 32 signal 0 } 
	{ logger_vlan_enable_mask_c_din sc_out sc_lv 32 signal 1 } 
	{ logger_vlan_enable_mask_c_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ logger_vlan_enable_mask_c_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ logger_vlan_enable_mask_c_full_n sc_in sc_logic 1 signal 1 } 
	{ logger_vlan_enable_mask_c_write sc_out sc_logic 1 signal 1 } 
	{ multicast_recv_enable sc_in sc_lv 32 signal 2 } 
	{ multicast_recv_enable_c_din sc_out sc_lv 32 signal 3 } 
	{ multicast_recv_enable_c_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ multicast_recv_enable_c_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ multicast_recv_enable_c_full_n sc_in sc_logic 1 signal 3 } 
	{ multicast_recv_enable_c_write sc_out sc_logic 1 signal 3 } 
	{ unicast_filter_enable sc_in sc_lv 32 signal 4 } 
	{ unicast_filter_enable_c_din sc_out sc_lv 32 signal 5 } 
	{ unicast_filter_enable_c_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ unicast_filter_enable_c_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ unicast_filter_enable_c_full_n sc_in sc_logic 1 signal 5 } 
	{ unicast_filter_enable_c_write sc_out sc_logic 1 signal 5 } 
	{ unicast_vlan100_macaddr_lsb sc_in sc_lv 32 signal 6 } 
	{ unicast_vlan100_macaddr_lsb_c_din sc_out sc_lv 32 signal 7 } 
	{ unicast_vlan100_macaddr_lsb_c_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ unicast_vlan100_macaddr_lsb_c_fifo_cap sc_in sc_lv 3 signal 7 } 
	{ unicast_vlan100_macaddr_lsb_c_full_n sc_in sc_logic 1 signal 7 } 
	{ unicast_vlan100_macaddr_lsb_c_write sc_out sc_logic 1 signal 7 } 
	{ unicast_vlan100_macaddr_msb sc_in sc_lv 32 signal 8 } 
	{ unicast_vlan100_macaddr_msb_c_din sc_out sc_lv 16 signal 9 } 
	{ unicast_vlan100_macaddr_msb_c_num_data_valid sc_in sc_lv 3 signal 9 } 
	{ unicast_vlan100_macaddr_msb_c_fifo_cap sc_in sc_lv 3 signal 9 } 
	{ unicast_vlan100_macaddr_msb_c_full_n sc_in sc_logic 1 signal 9 } 
	{ unicast_vlan100_macaddr_msb_c_write sc_out sc_logic 1 signal 9 } 
	{ unicast_vlan101_macaddr_lsb sc_in sc_lv 32 signal 10 } 
	{ unicast_vlan101_macaddr_lsb_c_din sc_out sc_lv 32 signal 11 } 
	{ unicast_vlan101_macaddr_lsb_c_num_data_valid sc_in sc_lv 3 signal 11 } 
	{ unicast_vlan101_macaddr_lsb_c_fifo_cap sc_in sc_lv 3 signal 11 } 
	{ unicast_vlan101_macaddr_lsb_c_full_n sc_in sc_logic 1 signal 11 } 
	{ unicast_vlan101_macaddr_lsb_c_write sc_out sc_logic 1 signal 11 } 
	{ unicast_vlan101_macaddr_msb sc_in sc_lv 32 signal 12 } 
	{ unicast_vlan101_macaddr_msb_c_din sc_out sc_lv 16 signal 13 } 
	{ unicast_vlan101_macaddr_msb_c_num_data_valid sc_in sc_lv 3 signal 13 } 
	{ unicast_vlan101_macaddr_msb_c_fifo_cap sc_in sc_lv 3 signal 13 } 
	{ unicast_vlan101_macaddr_msb_c_full_n sc_in sc_logic 1 signal 13 } 
	{ unicast_vlan101_macaddr_msb_c_write sc_out sc_logic 1 signal 13 } 
	{ unicast_vlan102_macaddr_lsb sc_in sc_lv 32 signal 14 } 
	{ unicast_vlan102_macaddr_lsb_c_din sc_out sc_lv 32 signal 15 } 
	{ unicast_vlan102_macaddr_lsb_c_num_data_valid sc_in sc_lv 3 signal 15 } 
	{ unicast_vlan102_macaddr_lsb_c_fifo_cap sc_in sc_lv 3 signal 15 } 
	{ unicast_vlan102_macaddr_lsb_c_full_n sc_in sc_logic 1 signal 15 } 
	{ unicast_vlan102_macaddr_lsb_c_write sc_out sc_logic 1 signal 15 } 
	{ unicast_vlan102_macaddr_msb sc_in sc_lv 32 signal 16 } 
	{ unicast_vlan102_macaddr_msb_c_din sc_out sc_lv 16 signal 17 } 
	{ unicast_vlan102_macaddr_msb_c_num_data_valid sc_in sc_lv 3 signal 17 } 
	{ unicast_vlan102_macaddr_msb_c_fifo_cap sc_in sc_lv 3 signal 17 } 
	{ unicast_vlan102_macaddr_msb_c_full_n sc_in sc_logic 1 signal 17 } 
	{ unicast_vlan102_macaddr_msb_c_write sc_out sc_logic 1 signal 17 } 
	{ unicast_vlan103_macaddr_lsb sc_in sc_lv 32 signal 18 } 
	{ unicast_vlan103_macaddr_lsb_c_din sc_out sc_lv 32 signal 19 } 
	{ unicast_vlan103_macaddr_lsb_c_num_data_valid sc_in sc_lv 3 signal 19 } 
	{ unicast_vlan103_macaddr_lsb_c_fifo_cap sc_in sc_lv 3 signal 19 } 
	{ unicast_vlan103_macaddr_lsb_c_full_n sc_in sc_logic 1 signal 19 } 
	{ unicast_vlan103_macaddr_lsb_c_write sc_out sc_logic 1 signal 19 } 
	{ unicast_vlan103_macaddr_msb sc_in sc_lv 32 signal 20 } 
	{ unicast_vlan103_macaddr_msb_c_din sc_out sc_lv 16 signal 21 } 
	{ unicast_vlan103_macaddr_msb_c_num_data_valid sc_in sc_lv 3 signal 21 } 
	{ unicast_vlan103_macaddr_msb_c_fifo_cap sc_in sc_lv 3 signal 21 } 
	{ unicast_vlan103_macaddr_msb_c_full_n sc_in sc_logic 1 signal 21 } 
	{ unicast_vlan103_macaddr_msb_c_write sc_out sc_logic 1 signal 21 } 
	{ unicast_vlan104_macaddr_lsb sc_in sc_lv 32 signal 22 } 
	{ unicast_vlan104_macaddr_lsb_c_din sc_out sc_lv 32 signal 23 } 
	{ unicast_vlan104_macaddr_lsb_c_num_data_valid sc_in sc_lv 3 signal 23 } 
	{ unicast_vlan104_macaddr_lsb_c_fifo_cap sc_in sc_lv 3 signal 23 } 
	{ unicast_vlan104_macaddr_lsb_c_full_n sc_in sc_logic 1 signal 23 } 
	{ unicast_vlan104_macaddr_lsb_c_write sc_out sc_logic 1 signal 23 } 
	{ unicast_vlan104_macaddr_msb sc_in sc_lv 32 signal 24 } 
	{ unicast_vlan104_macaddr_msb_c_din sc_out sc_lv 16 signal 25 } 
	{ unicast_vlan104_macaddr_msb_c_num_data_valid sc_in sc_lv 3 signal 25 } 
	{ unicast_vlan104_macaddr_msb_c_fifo_cap sc_in sc_lv 3 signal 25 } 
	{ unicast_vlan104_macaddr_msb_c_full_n sc_in sc_logic 1 signal 25 } 
	{ unicast_vlan104_macaddr_msb_c_write sc_out sc_logic 1 signal 25 } 
	{ unicast_vlan105_macaddr_lsb sc_in sc_lv 32 signal 26 } 
	{ unicast_vlan105_macaddr_lsb_c_din sc_out sc_lv 32 signal 27 } 
	{ unicast_vlan105_macaddr_lsb_c_num_data_valid sc_in sc_lv 3 signal 27 } 
	{ unicast_vlan105_macaddr_lsb_c_fifo_cap sc_in sc_lv 3 signal 27 } 
	{ unicast_vlan105_macaddr_lsb_c_full_n sc_in sc_logic 1 signal 27 } 
	{ unicast_vlan105_macaddr_lsb_c_write sc_out sc_logic 1 signal 27 } 
	{ unicast_vlan105_macaddr_msb sc_in sc_lv 32 signal 28 } 
	{ unicast_vlan105_macaddr_msb_c_din sc_out sc_lv 16 signal 29 } 
	{ unicast_vlan105_macaddr_msb_c_num_data_valid sc_in sc_lv 3 signal 29 } 
	{ unicast_vlan105_macaddr_msb_c_fifo_cap sc_in sc_lv 3 signal 29 } 
	{ unicast_vlan105_macaddr_msb_c_full_n sc_in sc_logic 1 signal 29 } 
	{ unicast_vlan105_macaddr_msb_c_write sc_out sc_logic 1 signal 29 } 
	{ unicast_vlan106_macaddr_lsb sc_in sc_lv 32 signal 30 } 
	{ unicast_vlan106_macaddr_lsb_c_din sc_out sc_lv 32 signal 31 } 
	{ unicast_vlan106_macaddr_lsb_c_num_data_valid sc_in sc_lv 3 signal 31 } 
	{ unicast_vlan106_macaddr_lsb_c_fifo_cap sc_in sc_lv 3 signal 31 } 
	{ unicast_vlan106_macaddr_lsb_c_full_n sc_in sc_logic 1 signal 31 } 
	{ unicast_vlan106_macaddr_lsb_c_write sc_out sc_logic 1 signal 31 } 
	{ unicast_vlan106_macaddr_msb sc_in sc_lv 32 signal 32 } 
	{ unicast_vlan106_macaddr_msb_c_din sc_out sc_lv 16 signal 33 } 
	{ unicast_vlan106_macaddr_msb_c_num_data_valid sc_in sc_lv 3 signal 33 } 
	{ unicast_vlan106_macaddr_msb_c_fifo_cap sc_in sc_lv 3 signal 33 } 
	{ unicast_vlan106_macaddr_msb_c_full_n sc_in sc_logic 1 signal 33 } 
	{ unicast_vlan106_macaddr_msb_c_write sc_out sc_logic 1 signal 33 } 
	{ unicast_vlan107_macaddr_lsb sc_in sc_lv 32 signal 34 } 
	{ unicast_vlan107_macaddr_lsb_c_din sc_out sc_lv 32 signal 35 } 
	{ unicast_vlan107_macaddr_lsb_c_num_data_valid sc_in sc_lv 3 signal 35 } 
	{ unicast_vlan107_macaddr_lsb_c_fifo_cap sc_in sc_lv 3 signal 35 } 
	{ unicast_vlan107_macaddr_lsb_c_full_n sc_in sc_logic 1 signal 35 } 
	{ unicast_vlan107_macaddr_lsb_c_write sc_out sc_logic 1 signal 35 } 
	{ unicast_vlan107_macaddr_msb sc_in sc_lv 32 signal 36 } 
	{ unicast_vlan107_macaddr_msb_c_din sc_out sc_lv 16 signal 37 } 
	{ unicast_vlan107_macaddr_msb_c_num_data_valid sc_in sc_lv 3 signal 37 } 
	{ unicast_vlan107_macaddr_msb_c_fifo_cap sc_in sc_lv 3 signal 37 } 
	{ unicast_vlan107_macaddr_msb_c_full_n sc_in sc_logic 1 signal 37 } 
	{ unicast_vlan107_macaddr_msb_c_write sc_out sc_logic 1 signal 37 } 
	{ unicast_vlan108_macaddr_lsb sc_in sc_lv 32 signal 38 } 
	{ unicast_vlan108_macaddr_lsb_c_din sc_out sc_lv 32 signal 39 } 
	{ unicast_vlan108_macaddr_lsb_c_num_data_valid sc_in sc_lv 3 signal 39 } 
	{ unicast_vlan108_macaddr_lsb_c_fifo_cap sc_in sc_lv 3 signal 39 } 
	{ unicast_vlan108_macaddr_lsb_c_full_n sc_in sc_logic 1 signal 39 } 
	{ unicast_vlan108_macaddr_lsb_c_write sc_out sc_logic 1 signal 39 } 
	{ unicast_vlan108_macaddr_msb sc_in sc_lv 32 signal 40 } 
	{ unicast_vlan108_macaddr_msb_c_din sc_out sc_lv 16 signal 41 } 
	{ unicast_vlan108_macaddr_msb_c_num_data_valid sc_in sc_lv 3 signal 41 } 
	{ unicast_vlan108_macaddr_msb_c_fifo_cap sc_in sc_lv 3 signal 41 } 
	{ unicast_vlan108_macaddr_msb_c_full_n sc_in sc_logic 1 signal 41 } 
	{ unicast_vlan108_macaddr_msb_c_write sc_out sc_logic 1 signal 41 } 
	{ unicast_vlan109_macaddr_lsb sc_in sc_lv 32 signal 42 } 
	{ unicast_vlan109_macaddr_lsb_c_din sc_out sc_lv 32 signal 43 } 
	{ unicast_vlan109_macaddr_lsb_c_num_data_valid sc_in sc_lv 3 signal 43 } 
	{ unicast_vlan109_macaddr_lsb_c_fifo_cap sc_in sc_lv 3 signal 43 } 
	{ unicast_vlan109_macaddr_lsb_c_full_n sc_in sc_logic 1 signal 43 } 
	{ unicast_vlan109_macaddr_lsb_c_write sc_out sc_logic 1 signal 43 } 
	{ unicast_vlan109_macaddr_msb sc_in sc_lv 32 signal 44 } 
	{ unicast_vlan109_macaddr_msb_c_din sc_out sc_lv 16 signal 45 } 
	{ unicast_vlan109_macaddr_msb_c_num_data_valid sc_in sc_lv 3 signal 45 } 
	{ unicast_vlan109_macaddr_msb_c_fifo_cap sc_in sc_lv 3 signal 45 } 
	{ unicast_vlan109_macaddr_msb_c_full_n sc_in sc_logic 1 signal 45 } 
	{ unicast_vlan109_macaddr_msb_c_write sc_out sc_logic 1 signal 45 } 
	{ log_all_mask sc_in sc_lv 32 signal 46 } 
	{ log_all_mask_c_din sc_out sc_lv 32 signal 47 } 
	{ log_all_mask_c_num_data_valid sc_in sc_lv 3 signal 47 } 
	{ log_all_mask_c_fifo_cap sc_in sc_lv 3 signal 47 } 
	{ log_all_mask_c_full_n sc_in sc_logic 1 signal 47 } 
	{ log_all_mask_c_write sc_out sc_logic 1 signal 47 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "logger_vlan_enable_mask", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "logger_vlan_enable_mask", "role": "default" }} , 
 	{ "name": "logger_vlan_enable_mask_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "logger_vlan_enable_mask_c", "role": "din" }} , 
 	{ "name": "logger_vlan_enable_mask_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "logger_vlan_enable_mask_c", "role": "num_data_valid" }} , 
 	{ "name": "logger_vlan_enable_mask_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "logger_vlan_enable_mask_c", "role": "fifo_cap" }} , 
 	{ "name": "logger_vlan_enable_mask_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "logger_vlan_enable_mask_c", "role": "full_n" }} , 
 	{ "name": "logger_vlan_enable_mask_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "logger_vlan_enable_mask_c", "role": "write" }} , 
 	{ "name": "multicast_recv_enable", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "multicast_recv_enable", "role": "default" }} , 
 	{ "name": "multicast_recv_enable_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "multicast_recv_enable_c", "role": "din" }} , 
 	{ "name": "multicast_recv_enable_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "multicast_recv_enable_c", "role": "num_data_valid" }} , 
 	{ "name": "multicast_recv_enable_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "multicast_recv_enable_c", "role": "fifo_cap" }} , 
 	{ "name": "multicast_recv_enable_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "multicast_recv_enable_c", "role": "full_n" }} , 
 	{ "name": "multicast_recv_enable_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "multicast_recv_enable_c", "role": "write" }} , 
 	{ "name": "unicast_filter_enable", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_filter_enable", "role": "default" }} , 
 	{ "name": "unicast_filter_enable_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_filter_enable_c", "role": "din" }} , 
 	{ "name": "unicast_filter_enable_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_filter_enable_c", "role": "num_data_valid" }} , 
 	{ "name": "unicast_filter_enable_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_filter_enable_c", "role": "fifo_cap" }} , 
 	{ "name": "unicast_filter_enable_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_filter_enable_c", "role": "full_n" }} , 
 	{ "name": "unicast_filter_enable_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_filter_enable_c", "role": "write" }} , 
 	{ "name": "unicast_vlan100_macaddr_lsb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan100_macaddr_lsb", "role": "default" }} , 
 	{ "name": "unicast_vlan100_macaddr_lsb_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan100_macaddr_lsb_c", "role": "din" }} , 
 	{ "name": "unicast_vlan100_macaddr_lsb_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan100_macaddr_lsb_c", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan100_macaddr_lsb_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan100_macaddr_lsb_c", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan100_macaddr_lsb_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan100_macaddr_lsb_c", "role": "full_n" }} , 
 	{ "name": "unicast_vlan100_macaddr_lsb_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan100_macaddr_lsb_c", "role": "write" }} , 
 	{ "name": "unicast_vlan100_macaddr_msb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan100_macaddr_msb", "role": "default" }} , 
 	{ "name": "unicast_vlan100_macaddr_msb_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unicast_vlan100_macaddr_msb_c", "role": "din" }} , 
 	{ "name": "unicast_vlan100_macaddr_msb_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan100_macaddr_msb_c", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan100_macaddr_msb_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan100_macaddr_msb_c", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan100_macaddr_msb_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan100_macaddr_msb_c", "role": "full_n" }} , 
 	{ "name": "unicast_vlan100_macaddr_msb_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan100_macaddr_msb_c", "role": "write" }} , 
 	{ "name": "unicast_vlan101_macaddr_lsb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan101_macaddr_lsb", "role": "default" }} , 
 	{ "name": "unicast_vlan101_macaddr_lsb_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan101_macaddr_lsb_c", "role": "din" }} , 
 	{ "name": "unicast_vlan101_macaddr_lsb_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan101_macaddr_lsb_c", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan101_macaddr_lsb_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan101_macaddr_lsb_c", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan101_macaddr_lsb_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan101_macaddr_lsb_c", "role": "full_n" }} , 
 	{ "name": "unicast_vlan101_macaddr_lsb_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan101_macaddr_lsb_c", "role": "write" }} , 
 	{ "name": "unicast_vlan101_macaddr_msb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan101_macaddr_msb", "role": "default" }} , 
 	{ "name": "unicast_vlan101_macaddr_msb_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unicast_vlan101_macaddr_msb_c", "role": "din" }} , 
 	{ "name": "unicast_vlan101_macaddr_msb_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan101_macaddr_msb_c", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan101_macaddr_msb_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan101_macaddr_msb_c", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan101_macaddr_msb_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan101_macaddr_msb_c", "role": "full_n" }} , 
 	{ "name": "unicast_vlan101_macaddr_msb_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan101_macaddr_msb_c", "role": "write" }} , 
 	{ "name": "unicast_vlan102_macaddr_lsb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan102_macaddr_lsb", "role": "default" }} , 
 	{ "name": "unicast_vlan102_macaddr_lsb_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan102_macaddr_lsb_c", "role": "din" }} , 
 	{ "name": "unicast_vlan102_macaddr_lsb_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan102_macaddr_lsb_c", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan102_macaddr_lsb_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan102_macaddr_lsb_c", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan102_macaddr_lsb_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan102_macaddr_lsb_c", "role": "full_n" }} , 
 	{ "name": "unicast_vlan102_macaddr_lsb_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan102_macaddr_lsb_c", "role": "write" }} , 
 	{ "name": "unicast_vlan102_macaddr_msb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan102_macaddr_msb", "role": "default" }} , 
 	{ "name": "unicast_vlan102_macaddr_msb_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unicast_vlan102_macaddr_msb_c", "role": "din" }} , 
 	{ "name": "unicast_vlan102_macaddr_msb_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan102_macaddr_msb_c", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan102_macaddr_msb_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan102_macaddr_msb_c", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan102_macaddr_msb_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan102_macaddr_msb_c", "role": "full_n" }} , 
 	{ "name": "unicast_vlan102_macaddr_msb_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan102_macaddr_msb_c", "role": "write" }} , 
 	{ "name": "unicast_vlan103_macaddr_lsb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan103_macaddr_lsb", "role": "default" }} , 
 	{ "name": "unicast_vlan103_macaddr_lsb_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan103_macaddr_lsb_c", "role": "din" }} , 
 	{ "name": "unicast_vlan103_macaddr_lsb_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan103_macaddr_lsb_c", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan103_macaddr_lsb_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan103_macaddr_lsb_c", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan103_macaddr_lsb_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan103_macaddr_lsb_c", "role": "full_n" }} , 
 	{ "name": "unicast_vlan103_macaddr_lsb_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan103_macaddr_lsb_c", "role": "write" }} , 
 	{ "name": "unicast_vlan103_macaddr_msb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan103_macaddr_msb", "role": "default" }} , 
 	{ "name": "unicast_vlan103_macaddr_msb_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unicast_vlan103_macaddr_msb_c", "role": "din" }} , 
 	{ "name": "unicast_vlan103_macaddr_msb_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan103_macaddr_msb_c", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan103_macaddr_msb_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan103_macaddr_msb_c", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan103_macaddr_msb_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan103_macaddr_msb_c", "role": "full_n" }} , 
 	{ "name": "unicast_vlan103_macaddr_msb_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan103_macaddr_msb_c", "role": "write" }} , 
 	{ "name": "unicast_vlan104_macaddr_lsb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan104_macaddr_lsb", "role": "default" }} , 
 	{ "name": "unicast_vlan104_macaddr_lsb_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan104_macaddr_lsb_c", "role": "din" }} , 
 	{ "name": "unicast_vlan104_macaddr_lsb_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan104_macaddr_lsb_c", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan104_macaddr_lsb_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan104_macaddr_lsb_c", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan104_macaddr_lsb_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan104_macaddr_lsb_c", "role": "full_n" }} , 
 	{ "name": "unicast_vlan104_macaddr_lsb_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan104_macaddr_lsb_c", "role": "write" }} , 
 	{ "name": "unicast_vlan104_macaddr_msb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan104_macaddr_msb", "role": "default" }} , 
 	{ "name": "unicast_vlan104_macaddr_msb_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unicast_vlan104_macaddr_msb_c", "role": "din" }} , 
 	{ "name": "unicast_vlan104_macaddr_msb_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan104_macaddr_msb_c", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan104_macaddr_msb_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan104_macaddr_msb_c", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan104_macaddr_msb_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan104_macaddr_msb_c", "role": "full_n" }} , 
 	{ "name": "unicast_vlan104_macaddr_msb_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan104_macaddr_msb_c", "role": "write" }} , 
 	{ "name": "unicast_vlan105_macaddr_lsb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan105_macaddr_lsb", "role": "default" }} , 
 	{ "name": "unicast_vlan105_macaddr_lsb_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan105_macaddr_lsb_c", "role": "din" }} , 
 	{ "name": "unicast_vlan105_macaddr_lsb_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan105_macaddr_lsb_c", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan105_macaddr_lsb_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan105_macaddr_lsb_c", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan105_macaddr_lsb_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan105_macaddr_lsb_c", "role": "full_n" }} , 
 	{ "name": "unicast_vlan105_macaddr_lsb_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan105_macaddr_lsb_c", "role": "write" }} , 
 	{ "name": "unicast_vlan105_macaddr_msb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan105_macaddr_msb", "role": "default" }} , 
 	{ "name": "unicast_vlan105_macaddr_msb_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unicast_vlan105_macaddr_msb_c", "role": "din" }} , 
 	{ "name": "unicast_vlan105_macaddr_msb_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan105_macaddr_msb_c", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan105_macaddr_msb_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan105_macaddr_msb_c", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan105_macaddr_msb_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan105_macaddr_msb_c", "role": "full_n" }} , 
 	{ "name": "unicast_vlan105_macaddr_msb_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan105_macaddr_msb_c", "role": "write" }} , 
 	{ "name": "unicast_vlan106_macaddr_lsb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan106_macaddr_lsb", "role": "default" }} , 
 	{ "name": "unicast_vlan106_macaddr_lsb_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan106_macaddr_lsb_c", "role": "din" }} , 
 	{ "name": "unicast_vlan106_macaddr_lsb_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan106_macaddr_lsb_c", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan106_macaddr_lsb_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan106_macaddr_lsb_c", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan106_macaddr_lsb_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan106_macaddr_lsb_c", "role": "full_n" }} , 
 	{ "name": "unicast_vlan106_macaddr_lsb_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan106_macaddr_lsb_c", "role": "write" }} , 
 	{ "name": "unicast_vlan106_macaddr_msb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan106_macaddr_msb", "role": "default" }} , 
 	{ "name": "unicast_vlan106_macaddr_msb_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unicast_vlan106_macaddr_msb_c", "role": "din" }} , 
 	{ "name": "unicast_vlan106_macaddr_msb_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan106_macaddr_msb_c", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan106_macaddr_msb_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan106_macaddr_msb_c", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan106_macaddr_msb_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan106_macaddr_msb_c", "role": "full_n" }} , 
 	{ "name": "unicast_vlan106_macaddr_msb_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan106_macaddr_msb_c", "role": "write" }} , 
 	{ "name": "unicast_vlan107_macaddr_lsb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan107_macaddr_lsb", "role": "default" }} , 
 	{ "name": "unicast_vlan107_macaddr_lsb_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan107_macaddr_lsb_c", "role": "din" }} , 
 	{ "name": "unicast_vlan107_macaddr_lsb_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan107_macaddr_lsb_c", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan107_macaddr_lsb_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan107_macaddr_lsb_c", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan107_macaddr_lsb_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan107_macaddr_lsb_c", "role": "full_n" }} , 
 	{ "name": "unicast_vlan107_macaddr_lsb_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan107_macaddr_lsb_c", "role": "write" }} , 
 	{ "name": "unicast_vlan107_macaddr_msb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan107_macaddr_msb", "role": "default" }} , 
 	{ "name": "unicast_vlan107_macaddr_msb_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unicast_vlan107_macaddr_msb_c", "role": "din" }} , 
 	{ "name": "unicast_vlan107_macaddr_msb_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan107_macaddr_msb_c", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan107_macaddr_msb_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan107_macaddr_msb_c", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan107_macaddr_msb_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan107_macaddr_msb_c", "role": "full_n" }} , 
 	{ "name": "unicast_vlan107_macaddr_msb_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan107_macaddr_msb_c", "role": "write" }} , 
 	{ "name": "unicast_vlan108_macaddr_lsb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan108_macaddr_lsb", "role": "default" }} , 
 	{ "name": "unicast_vlan108_macaddr_lsb_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan108_macaddr_lsb_c", "role": "din" }} , 
 	{ "name": "unicast_vlan108_macaddr_lsb_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan108_macaddr_lsb_c", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan108_macaddr_lsb_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan108_macaddr_lsb_c", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan108_macaddr_lsb_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan108_macaddr_lsb_c", "role": "full_n" }} , 
 	{ "name": "unicast_vlan108_macaddr_lsb_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan108_macaddr_lsb_c", "role": "write" }} , 
 	{ "name": "unicast_vlan108_macaddr_msb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan108_macaddr_msb", "role": "default" }} , 
 	{ "name": "unicast_vlan108_macaddr_msb_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unicast_vlan108_macaddr_msb_c", "role": "din" }} , 
 	{ "name": "unicast_vlan108_macaddr_msb_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan108_macaddr_msb_c", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan108_macaddr_msb_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan108_macaddr_msb_c", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan108_macaddr_msb_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan108_macaddr_msb_c", "role": "full_n" }} , 
 	{ "name": "unicast_vlan108_macaddr_msb_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan108_macaddr_msb_c", "role": "write" }} , 
 	{ "name": "unicast_vlan109_macaddr_lsb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan109_macaddr_lsb", "role": "default" }} , 
 	{ "name": "unicast_vlan109_macaddr_lsb_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan109_macaddr_lsb_c", "role": "din" }} , 
 	{ "name": "unicast_vlan109_macaddr_lsb_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan109_macaddr_lsb_c", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan109_macaddr_lsb_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan109_macaddr_lsb_c", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan109_macaddr_lsb_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan109_macaddr_lsb_c", "role": "full_n" }} , 
 	{ "name": "unicast_vlan109_macaddr_lsb_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan109_macaddr_lsb_c", "role": "write" }} , 
 	{ "name": "unicast_vlan109_macaddr_msb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan109_macaddr_msb", "role": "default" }} , 
 	{ "name": "unicast_vlan109_macaddr_msb_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unicast_vlan109_macaddr_msb_c", "role": "din" }} , 
 	{ "name": "unicast_vlan109_macaddr_msb_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan109_macaddr_msb_c", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan109_macaddr_msb_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan109_macaddr_msb_c", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan109_macaddr_msb_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan109_macaddr_msb_c", "role": "full_n" }} , 
 	{ "name": "unicast_vlan109_macaddr_msb_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan109_macaddr_msb_c", "role": "write" }} , 
 	{ "name": "log_all_mask", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "log_all_mask", "role": "default" }} , 
 	{ "name": "log_all_mask_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "log_all_mask_c", "role": "din" }} , 
 	{ "name": "log_all_mask_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "log_all_mask_c", "role": "num_data_valid" }} , 
 	{ "name": "log_all_mask_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "log_all_mask_c", "role": "fifo_cap" }} , 
 	{ "name": "log_all_mask_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "log_all_mask_c", "role": "full_n" }} , 
 	{ "name": "log_all_mask_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "log_all_mask_c", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "entry_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "logger_vlan_enable_mask", "Type" : "None", "Direction" : "I"},
			{"Name" : "logger_vlan_enable_mask_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "logger_vlan_enable_mask_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "multicast_recv_enable", "Type" : "None", "Direction" : "I"},
			{"Name" : "multicast_recv_enable_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "multicast_recv_enable_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_filter_enable", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_filter_enable_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_filter_enable_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan100_macaddr_lsb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan100_macaddr_lsb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan100_macaddr_lsb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan100_macaddr_msb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan100_macaddr_msb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan100_macaddr_msb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan101_macaddr_lsb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan101_macaddr_lsb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan101_macaddr_lsb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan101_macaddr_msb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan101_macaddr_msb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan101_macaddr_msb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan102_macaddr_lsb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan102_macaddr_lsb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan102_macaddr_lsb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan102_macaddr_msb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan102_macaddr_msb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan102_macaddr_msb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan103_macaddr_lsb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan103_macaddr_lsb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan103_macaddr_lsb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan103_macaddr_msb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan103_macaddr_msb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan103_macaddr_msb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan104_macaddr_lsb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan104_macaddr_lsb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan104_macaddr_lsb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan104_macaddr_msb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan104_macaddr_msb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan104_macaddr_msb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan105_macaddr_lsb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan105_macaddr_lsb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan105_macaddr_lsb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan105_macaddr_msb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan105_macaddr_msb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan105_macaddr_msb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan106_macaddr_lsb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan106_macaddr_lsb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan106_macaddr_lsb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan106_macaddr_msb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan106_macaddr_msb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan106_macaddr_msb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan107_macaddr_lsb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan107_macaddr_lsb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan107_macaddr_lsb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan107_macaddr_msb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan107_macaddr_msb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan107_macaddr_msb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan108_macaddr_lsb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan108_macaddr_lsb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan108_macaddr_lsb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan108_macaddr_msb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan108_macaddr_msb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan108_macaddr_msb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan109_macaddr_lsb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan109_macaddr_lsb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan109_macaddr_lsb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan109_macaddr_msb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan109_macaddr_msb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan109_macaddr_msb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "log_all_mask", "Type" : "None", "Direction" : "I"},
			{"Name" : "log_all_mask_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "log_all_mask_c_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	entry_proc {
		logger_vlan_enable_mask {Type I LastRead 0 FirstWrite -1}
		logger_vlan_enable_mask_c {Type O LastRead -1 FirstWrite 0}
		multicast_recv_enable {Type I LastRead 0 FirstWrite -1}
		multicast_recv_enable_c {Type O LastRead -1 FirstWrite 0}
		unicast_filter_enable {Type I LastRead 0 FirstWrite -1}
		unicast_filter_enable_c {Type O LastRead -1 FirstWrite 0}
		unicast_vlan100_macaddr_lsb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan100_macaddr_lsb_c {Type O LastRead -1 FirstWrite 0}
		unicast_vlan100_macaddr_msb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan100_macaddr_msb_c {Type O LastRead -1 FirstWrite 0}
		unicast_vlan101_macaddr_lsb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan101_macaddr_lsb_c {Type O LastRead -1 FirstWrite 0}
		unicast_vlan101_macaddr_msb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan101_macaddr_msb_c {Type O LastRead -1 FirstWrite 0}
		unicast_vlan102_macaddr_lsb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan102_macaddr_lsb_c {Type O LastRead -1 FirstWrite 0}
		unicast_vlan102_macaddr_msb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan102_macaddr_msb_c {Type O LastRead -1 FirstWrite 0}
		unicast_vlan103_macaddr_lsb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan103_macaddr_lsb_c {Type O LastRead -1 FirstWrite 0}
		unicast_vlan103_macaddr_msb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan103_macaddr_msb_c {Type O LastRead -1 FirstWrite 0}
		unicast_vlan104_macaddr_lsb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan104_macaddr_lsb_c {Type O LastRead -1 FirstWrite 0}
		unicast_vlan104_macaddr_msb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan104_macaddr_msb_c {Type O LastRead -1 FirstWrite 0}
		unicast_vlan105_macaddr_lsb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan105_macaddr_lsb_c {Type O LastRead -1 FirstWrite 0}
		unicast_vlan105_macaddr_msb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan105_macaddr_msb_c {Type O LastRead -1 FirstWrite 0}
		unicast_vlan106_macaddr_lsb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan106_macaddr_lsb_c {Type O LastRead -1 FirstWrite 0}
		unicast_vlan106_macaddr_msb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan106_macaddr_msb_c {Type O LastRead -1 FirstWrite 0}
		unicast_vlan107_macaddr_lsb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan107_macaddr_lsb_c {Type O LastRead -1 FirstWrite 0}
		unicast_vlan107_macaddr_msb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan107_macaddr_msb_c {Type O LastRead -1 FirstWrite 0}
		unicast_vlan108_macaddr_lsb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan108_macaddr_lsb_c {Type O LastRead -1 FirstWrite 0}
		unicast_vlan108_macaddr_msb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan108_macaddr_msb_c {Type O LastRead -1 FirstWrite 0}
		unicast_vlan109_macaddr_lsb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan109_macaddr_lsb_c {Type O LastRead -1 FirstWrite 0}
		unicast_vlan109_macaddr_msb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan109_macaddr_msb_c {Type O LastRead -1 FirstWrite 0}
		log_all_mask {Type I LastRead 0 FirstWrite -1}
		log_all_mask_c {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	logger_vlan_enable_mask { ap_none {  { logger_vlan_enable_mask in_data 0 32 } } }
	logger_vlan_enable_mask_c { ap_fifo {  { logger_vlan_enable_mask_c_din fifo_port_we 1 32 }  { logger_vlan_enable_mask_c_num_data_valid fifo_status_num_data_valid 0 3 }  { logger_vlan_enable_mask_c_fifo_cap fifo_update 0 3 }  { logger_vlan_enable_mask_c_full_n fifo_status 0 1 }  { logger_vlan_enable_mask_c_write fifo_data 1 1 } } }
	multicast_recv_enable { ap_none {  { multicast_recv_enable in_data 0 32 } } }
	multicast_recv_enable_c { ap_fifo {  { multicast_recv_enable_c_din fifo_port_we 1 32 }  { multicast_recv_enable_c_num_data_valid fifo_status_num_data_valid 0 3 }  { multicast_recv_enable_c_fifo_cap fifo_update 0 3 }  { multicast_recv_enable_c_full_n fifo_status 0 1 }  { multicast_recv_enable_c_write fifo_data 1 1 } } }
	unicast_filter_enable { ap_none {  { unicast_filter_enable in_data 0 32 } } }
	unicast_filter_enable_c { ap_fifo {  { unicast_filter_enable_c_din fifo_port_we 1 32 }  { unicast_filter_enable_c_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_filter_enable_c_fifo_cap fifo_update 0 3 }  { unicast_filter_enable_c_full_n fifo_status 0 1 }  { unicast_filter_enable_c_write fifo_data 1 1 } } }
	unicast_vlan100_macaddr_lsb { ap_none {  { unicast_vlan100_macaddr_lsb in_data 0 32 } } }
	unicast_vlan100_macaddr_lsb_c { ap_fifo {  { unicast_vlan100_macaddr_lsb_c_din fifo_port_we 1 32 }  { unicast_vlan100_macaddr_lsb_c_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan100_macaddr_lsb_c_fifo_cap fifo_update 0 3 }  { unicast_vlan100_macaddr_lsb_c_full_n fifo_status 0 1 }  { unicast_vlan100_macaddr_lsb_c_write fifo_data 1 1 } } }
	unicast_vlan100_macaddr_msb { ap_none {  { unicast_vlan100_macaddr_msb in_data 0 32 } } }
	unicast_vlan100_macaddr_msb_c { ap_fifo {  { unicast_vlan100_macaddr_msb_c_din fifo_port_we 1 16 }  { unicast_vlan100_macaddr_msb_c_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan100_macaddr_msb_c_fifo_cap fifo_update 0 3 }  { unicast_vlan100_macaddr_msb_c_full_n fifo_status 0 1 }  { unicast_vlan100_macaddr_msb_c_write fifo_data 1 1 } } }
	unicast_vlan101_macaddr_lsb { ap_none {  { unicast_vlan101_macaddr_lsb in_data 0 32 } } }
	unicast_vlan101_macaddr_lsb_c { ap_fifo {  { unicast_vlan101_macaddr_lsb_c_din fifo_port_we 1 32 }  { unicast_vlan101_macaddr_lsb_c_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan101_macaddr_lsb_c_fifo_cap fifo_update 0 3 }  { unicast_vlan101_macaddr_lsb_c_full_n fifo_status 0 1 }  { unicast_vlan101_macaddr_lsb_c_write fifo_data 1 1 } } }
	unicast_vlan101_macaddr_msb { ap_none {  { unicast_vlan101_macaddr_msb in_data 0 32 } } }
	unicast_vlan101_macaddr_msb_c { ap_fifo {  { unicast_vlan101_macaddr_msb_c_din fifo_port_we 1 16 }  { unicast_vlan101_macaddr_msb_c_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan101_macaddr_msb_c_fifo_cap fifo_update 0 3 }  { unicast_vlan101_macaddr_msb_c_full_n fifo_status 0 1 }  { unicast_vlan101_macaddr_msb_c_write fifo_data 1 1 } } }
	unicast_vlan102_macaddr_lsb { ap_none {  { unicast_vlan102_macaddr_lsb in_data 0 32 } } }
	unicast_vlan102_macaddr_lsb_c { ap_fifo {  { unicast_vlan102_macaddr_lsb_c_din fifo_port_we 1 32 }  { unicast_vlan102_macaddr_lsb_c_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan102_macaddr_lsb_c_fifo_cap fifo_update 0 3 }  { unicast_vlan102_macaddr_lsb_c_full_n fifo_status 0 1 }  { unicast_vlan102_macaddr_lsb_c_write fifo_data 1 1 } } }
	unicast_vlan102_macaddr_msb { ap_none {  { unicast_vlan102_macaddr_msb in_data 0 32 } } }
	unicast_vlan102_macaddr_msb_c { ap_fifo {  { unicast_vlan102_macaddr_msb_c_din fifo_port_we 1 16 }  { unicast_vlan102_macaddr_msb_c_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan102_macaddr_msb_c_fifo_cap fifo_update 0 3 }  { unicast_vlan102_macaddr_msb_c_full_n fifo_status 0 1 }  { unicast_vlan102_macaddr_msb_c_write fifo_data 1 1 } } }
	unicast_vlan103_macaddr_lsb { ap_none {  { unicast_vlan103_macaddr_lsb in_data 0 32 } } }
	unicast_vlan103_macaddr_lsb_c { ap_fifo {  { unicast_vlan103_macaddr_lsb_c_din fifo_port_we 1 32 }  { unicast_vlan103_macaddr_lsb_c_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan103_macaddr_lsb_c_fifo_cap fifo_update 0 3 }  { unicast_vlan103_macaddr_lsb_c_full_n fifo_status 0 1 }  { unicast_vlan103_macaddr_lsb_c_write fifo_data 1 1 } } }
	unicast_vlan103_macaddr_msb { ap_none {  { unicast_vlan103_macaddr_msb in_data 0 32 } } }
	unicast_vlan103_macaddr_msb_c { ap_fifo {  { unicast_vlan103_macaddr_msb_c_din fifo_port_we 1 16 }  { unicast_vlan103_macaddr_msb_c_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan103_macaddr_msb_c_fifo_cap fifo_update 0 3 }  { unicast_vlan103_macaddr_msb_c_full_n fifo_status 0 1 }  { unicast_vlan103_macaddr_msb_c_write fifo_data 1 1 } } }
	unicast_vlan104_macaddr_lsb { ap_none {  { unicast_vlan104_macaddr_lsb in_data 0 32 } } }
	unicast_vlan104_macaddr_lsb_c { ap_fifo {  { unicast_vlan104_macaddr_lsb_c_din fifo_port_we 1 32 }  { unicast_vlan104_macaddr_lsb_c_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan104_macaddr_lsb_c_fifo_cap fifo_update 0 3 }  { unicast_vlan104_macaddr_lsb_c_full_n fifo_status 0 1 }  { unicast_vlan104_macaddr_lsb_c_write fifo_data 1 1 } } }
	unicast_vlan104_macaddr_msb { ap_none {  { unicast_vlan104_macaddr_msb in_data 0 32 } } }
	unicast_vlan104_macaddr_msb_c { ap_fifo {  { unicast_vlan104_macaddr_msb_c_din fifo_port_we 1 16 }  { unicast_vlan104_macaddr_msb_c_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan104_macaddr_msb_c_fifo_cap fifo_update 0 3 }  { unicast_vlan104_macaddr_msb_c_full_n fifo_status 0 1 }  { unicast_vlan104_macaddr_msb_c_write fifo_data 1 1 } } }
	unicast_vlan105_macaddr_lsb { ap_none {  { unicast_vlan105_macaddr_lsb in_data 0 32 } } }
	unicast_vlan105_macaddr_lsb_c { ap_fifo {  { unicast_vlan105_macaddr_lsb_c_din fifo_port_we 1 32 }  { unicast_vlan105_macaddr_lsb_c_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan105_macaddr_lsb_c_fifo_cap fifo_update 0 3 }  { unicast_vlan105_macaddr_lsb_c_full_n fifo_status 0 1 }  { unicast_vlan105_macaddr_lsb_c_write fifo_data 1 1 } } }
	unicast_vlan105_macaddr_msb { ap_none {  { unicast_vlan105_macaddr_msb in_data 0 32 } } }
	unicast_vlan105_macaddr_msb_c { ap_fifo {  { unicast_vlan105_macaddr_msb_c_din fifo_port_we 1 16 }  { unicast_vlan105_macaddr_msb_c_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan105_macaddr_msb_c_fifo_cap fifo_update 0 3 }  { unicast_vlan105_macaddr_msb_c_full_n fifo_status 0 1 }  { unicast_vlan105_macaddr_msb_c_write fifo_data 1 1 } } }
	unicast_vlan106_macaddr_lsb { ap_none {  { unicast_vlan106_macaddr_lsb in_data 0 32 } } }
	unicast_vlan106_macaddr_lsb_c { ap_fifo {  { unicast_vlan106_macaddr_lsb_c_din fifo_port_we 1 32 }  { unicast_vlan106_macaddr_lsb_c_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan106_macaddr_lsb_c_fifo_cap fifo_update 0 3 }  { unicast_vlan106_macaddr_lsb_c_full_n fifo_status 0 1 }  { unicast_vlan106_macaddr_lsb_c_write fifo_data 1 1 } } }
	unicast_vlan106_macaddr_msb { ap_none {  { unicast_vlan106_macaddr_msb in_data 0 32 } } }
	unicast_vlan106_macaddr_msb_c { ap_fifo {  { unicast_vlan106_macaddr_msb_c_din fifo_port_we 1 16 }  { unicast_vlan106_macaddr_msb_c_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan106_macaddr_msb_c_fifo_cap fifo_update 0 3 }  { unicast_vlan106_macaddr_msb_c_full_n fifo_status 0 1 }  { unicast_vlan106_macaddr_msb_c_write fifo_data 1 1 } } }
	unicast_vlan107_macaddr_lsb { ap_none {  { unicast_vlan107_macaddr_lsb in_data 0 32 } } }
	unicast_vlan107_macaddr_lsb_c { ap_fifo {  { unicast_vlan107_macaddr_lsb_c_din fifo_port_we 1 32 }  { unicast_vlan107_macaddr_lsb_c_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan107_macaddr_lsb_c_fifo_cap fifo_update 0 3 }  { unicast_vlan107_macaddr_lsb_c_full_n fifo_status 0 1 }  { unicast_vlan107_macaddr_lsb_c_write fifo_data 1 1 } } }
	unicast_vlan107_macaddr_msb { ap_none {  { unicast_vlan107_macaddr_msb in_data 0 32 } } }
	unicast_vlan107_macaddr_msb_c { ap_fifo {  { unicast_vlan107_macaddr_msb_c_din fifo_port_we 1 16 }  { unicast_vlan107_macaddr_msb_c_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan107_macaddr_msb_c_fifo_cap fifo_update 0 3 }  { unicast_vlan107_macaddr_msb_c_full_n fifo_status 0 1 }  { unicast_vlan107_macaddr_msb_c_write fifo_data 1 1 } } }
	unicast_vlan108_macaddr_lsb { ap_none {  { unicast_vlan108_macaddr_lsb in_data 0 32 } } }
	unicast_vlan108_macaddr_lsb_c { ap_fifo {  { unicast_vlan108_macaddr_lsb_c_din fifo_port_we 1 32 }  { unicast_vlan108_macaddr_lsb_c_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan108_macaddr_lsb_c_fifo_cap fifo_update 0 3 }  { unicast_vlan108_macaddr_lsb_c_full_n fifo_status 0 1 }  { unicast_vlan108_macaddr_lsb_c_write fifo_data 1 1 } } }
	unicast_vlan108_macaddr_msb { ap_none {  { unicast_vlan108_macaddr_msb in_data 0 32 } } }
	unicast_vlan108_macaddr_msb_c { ap_fifo {  { unicast_vlan108_macaddr_msb_c_din fifo_port_we 1 16 }  { unicast_vlan108_macaddr_msb_c_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan108_macaddr_msb_c_fifo_cap fifo_update 0 3 }  { unicast_vlan108_macaddr_msb_c_full_n fifo_status 0 1 }  { unicast_vlan108_macaddr_msb_c_write fifo_data 1 1 } } }
	unicast_vlan109_macaddr_lsb { ap_none {  { unicast_vlan109_macaddr_lsb in_data 0 32 } } }
	unicast_vlan109_macaddr_lsb_c { ap_fifo {  { unicast_vlan109_macaddr_lsb_c_din fifo_port_we 1 32 }  { unicast_vlan109_macaddr_lsb_c_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan109_macaddr_lsb_c_fifo_cap fifo_update 0 3 }  { unicast_vlan109_macaddr_lsb_c_full_n fifo_status 0 1 }  { unicast_vlan109_macaddr_lsb_c_write fifo_data 1 1 } } }
	unicast_vlan109_macaddr_msb { ap_none {  { unicast_vlan109_macaddr_msb in_data 0 32 } } }
	unicast_vlan109_macaddr_msb_c { ap_fifo {  { unicast_vlan109_macaddr_msb_c_din fifo_port_we 1 16 }  { unicast_vlan109_macaddr_msb_c_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan109_macaddr_msb_c_fifo_cap fifo_update 0 3 }  { unicast_vlan109_macaddr_msb_c_full_n fifo_status 0 1 }  { unicast_vlan109_macaddr_msb_c_write fifo_data 1 1 } } }
	log_all_mask { ap_none {  { log_all_mask in_data 0 32 } } }
	log_all_mask_c { ap_fifo {  { log_all_mask_c_din fifo_port_we 1 32 }  { log_all_mask_c_num_data_valid fifo_status_num_data_valid 0 3 }  { log_all_mask_c_fifo_cap fifo_update 0 3 }  { log_all_mask_c_full_n fifo_status 0 1 }  { log_all_mask_c_write fifo_data 1 1 } } }
}
