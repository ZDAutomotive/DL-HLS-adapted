set moduleName tx_ddr
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {tx_ddr}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_buf int 32 regular {array 512 { 1 1 } 1 1 }  }
	{ log_header1 int 32 regular {array 7 { 1 3 } 1 1 }  }
	{ tap_header1 int 32 regular {array 7 { 1 3 } 1 1 }  }
	{ ps int 32 regular {axi_master 1}  }
	{ p_read int 64 regular  }
	{ p_read1 int 64 regular  }
	{ logger_vlan_enable_mask int 32 regular {fifo 0}  }
	{ multicast_recv_enable int 32 regular {fifo 0}  }
	{ unicast_filter_enable int 32 regular {fifo 0}  }
	{ unicast_vlan100_macaddr_lsb int 32 regular {fifo 0}  }
	{ unicast_vlan100_macaddr_msb int 16 regular {fifo 0}  }
	{ unicast_vlan101_macaddr_lsb int 32 regular {fifo 0}  }
	{ unicast_vlan101_macaddr_msb int 16 regular {fifo 0}  }
	{ unicast_vlan102_macaddr_lsb int 32 regular {fifo 0}  }
	{ unicast_vlan102_macaddr_msb int 16 regular {fifo 0}  }
	{ unicast_vlan103_macaddr_lsb int 32 regular {fifo 0}  }
	{ unicast_vlan103_macaddr_msb int 16 regular {fifo 0}  }
	{ unicast_vlan104_macaddr_lsb int 32 regular {fifo 0}  }
	{ unicast_vlan104_macaddr_msb int 16 regular {fifo 0}  }
	{ unicast_vlan105_macaddr_lsb int 32 regular {fifo 0}  }
	{ unicast_vlan105_macaddr_msb int 16 regular {fifo 0}  }
	{ unicast_vlan106_macaddr_lsb int 32 regular {fifo 0}  }
	{ unicast_vlan106_macaddr_msb int 16 regular {fifo 0}  }
	{ unicast_vlan107_macaddr_lsb int 32 regular {fifo 0}  }
	{ unicast_vlan107_macaddr_msb int 16 regular {fifo 0}  }
	{ unicast_vlan108_macaddr_lsb int 32 regular {fifo 0}  }
	{ unicast_vlan108_macaddr_msb int 16 regular {fifo 0}  }
	{ unicast_vlan109_macaddr_lsb int 32 regular {fifo 0}  }
	{ unicast_vlan109_macaddr_msb int 16 regular {fifo 0}  }
	{ log_all_mask int 32 regular {fifo 0}  }
	{ vlan100_received int 32 regular {pointer 1}  }
	{ vlan101_received int 32 regular {pointer 1}  }
	{ vlan102_received int 32 regular {pointer 1}  }
	{ vlan103_received int 32 regular {pointer 1}  }
	{ vlan104_received int 32 regular {pointer 1}  }
	{ vlan105_received int 32 regular {pointer 1}  }
	{ vlan106_received int 32 regular {pointer 1}  }
	{ vlan107_received int 32 regular {pointer 1}  }
	{ vlan108_received int 32 regular {pointer 1}  }
	{ vlan109_received int 32 regular {pointer 1}  }
	{ droped int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "log_header1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tap_header1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ps", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "ddr","offset": { "type": "dynamic","port_name": "ddr","bundle": "axilites"},"direction": "READWRITE"},{"cName": "driver","offset": { "type": "dynamic","port_name": "driver","bundle": "axilites"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "logger_vlan_enable_mask", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "multicast_recv_enable", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_filter_enable", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan100_macaddr_lsb", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan100_macaddr_msb", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan101_macaddr_lsb", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan101_macaddr_msb", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan102_macaddr_lsb", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan102_macaddr_msb", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan103_macaddr_lsb", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan103_macaddr_msb", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan104_macaddr_lsb", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan104_macaddr_msb", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan105_macaddr_lsb", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan105_macaddr_msb", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan106_macaddr_lsb", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan106_macaddr_msb", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan107_macaddr_lsb", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan107_macaddr_msb", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan108_macaddr_lsb", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan108_macaddr_msb", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan109_macaddr_lsb", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan109_macaddr_msb", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "log_all_mask", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "vlan100_received", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vlan101_received", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vlan102_received", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vlan103_received", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vlan104_received", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vlan105_received", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vlan106_received", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vlan107_received", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vlan108_received", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vlan109_received", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "droped", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 209
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_buf_address0 sc_out sc_lv 9 signal 0 } 
	{ data_buf_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_buf_q0 sc_in sc_lv 32 signal 0 } 
	{ data_buf_address1 sc_out sc_lv 9 signal 0 } 
	{ data_buf_ce1 sc_out sc_logic 1 signal 0 } 
	{ data_buf_q1 sc_in sc_lv 32 signal 0 } 
	{ log_header1_address0 sc_out sc_lv 3 signal 1 } 
	{ log_header1_ce0 sc_out sc_logic 1 signal 1 } 
	{ log_header1_q0 sc_in sc_lv 32 signal 1 } 
	{ tap_header1_address0 sc_out sc_lv 3 signal 2 } 
	{ tap_header1_ce0 sc_out sc_logic 1 signal 2 } 
	{ tap_header1_q0 sc_in sc_lv 32 signal 2 } 
	{ m_axi_ps_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_ps_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_ps_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_ps_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_ps_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_ps_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_ps_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_ps_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_ps_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_ps_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_ps_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_ps_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_ps_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_ps_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_ps_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_ps_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_ps_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_ps_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_ps_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_ps_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_ps_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_ps_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_ps_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_ps_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_ps_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_ps_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_ps_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_ps_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_ps_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_ps_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_ps_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_ps_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_ps_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_ps_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_ps_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_ps_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_ps_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_ps_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_ps_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_ps_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_ps_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_ps_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_ps_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_ps_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_ps_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_ps_BUSER sc_in sc_lv 1 signal 3 } 
	{ p_read sc_in sc_lv 64 signal 4 } 
	{ p_read1 sc_in sc_lv 64 signal 5 } 
	{ logger_vlan_enable_mask_dout sc_in sc_lv 32 signal 6 } 
	{ logger_vlan_enable_mask_num_data_valid sc_in sc_lv 3 signal 6 } 
	{ logger_vlan_enable_mask_fifo_cap sc_in sc_lv 3 signal 6 } 
	{ logger_vlan_enable_mask_empty_n sc_in sc_logic 1 signal 6 } 
	{ logger_vlan_enable_mask_read sc_out sc_logic 1 signal 6 } 
	{ multicast_recv_enable_dout sc_in sc_lv 32 signal 7 } 
	{ multicast_recv_enable_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ multicast_recv_enable_fifo_cap sc_in sc_lv 3 signal 7 } 
	{ multicast_recv_enable_empty_n sc_in sc_logic 1 signal 7 } 
	{ multicast_recv_enable_read sc_out sc_logic 1 signal 7 } 
	{ unicast_filter_enable_dout sc_in sc_lv 32 signal 8 } 
	{ unicast_filter_enable_num_data_valid sc_in sc_lv 3 signal 8 } 
	{ unicast_filter_enable_fifo_cap sc_in sc_lv 3 signal 8 } 
	{ unicast_filter_enable_empty_n sc_in sc_logic 1 signal 8 } 
	{ unicast_filter_enable_read sc_out sc_logic 1 signal 8 } 
	{ unicast_vlan100_macaddr_lsb_dout sc_in sc_lv 32 signal 9 } 
	{ unicast_vlan100_macaddr_lsb_num_data_valid sc_in sc_lv 3 signal 9 } 
	{ unicast_vlan100_macaddr_lsb_fifo_cap sc_in sc_lv 3 signal 9 } 
	{ unicast_vlan100_macaddr_lsb_empty_n sc_in sc_logic 1 signal 9 } 
	{ unicast_vlan100_macaddr_lsb_read sc_out sc_logic 1 signal 9 } 
	{ unicast_vlan100_macaddr_msb_dout sc_in sc_lv 16 signal 10 } 
	{ unicast_vlan100_macaddr_msb_num_data_valid sc_in sc_lv 3 signal 10 } 
	{ unicast_vlan100_macaddr_msb_fifo_cap sc_in sc_lv 3 signal 10 } 
	{ unicast_vlan100_macaddr_msb_empty_n sc_in sc_logic 1 signal 10 } 
	{ unicast_vlan100_macaddr_msb_read sc_out sc_logic 1 signal 10 } 
	{ unicast_vlan101_macaddr_lsb_dout sc_in sc_lv 32 signal 11 } 
	{ unicast_vlan101_macaddr_lsb_num_data_valid sc_in sc_lv 3 signal 11 } 
	{ unicast_vlan101_macaddr_lsb_fifo_cap sc_in sc_lv 3 signal 11 } 
	{ unicast_vlan101_macaddr_lsb_empty_n sc_in sc_logic 1 signal 11 } 
	{ unicast_vlan101_macaddr_lsb_read sc_out sc_logic 1 signal 11 } 
	{ unicast_vlan101_macaddr_msb_dout sc_in sc_lv 16 signal 12 } 
	{ unicast_vlan101_macaddr_msb_num_data_valid sc_in sc_lv 3 signal 12 } 
	{ unicast_vlan101_macaddr_msb_fifo_cap sc_in sc_lv 3 signal 12 } 
	{ unicast_vlan101_macaddr_msb_empty_n sc_in sc_logic 1 signal 12 } 
	{ unicast_vlan101_macaddr_msb_read sc_out sc_logic 1 signal 12 } 
	{ unicast_vlan102_macaddr_lsb_dout sc_in sc_lv 32 signal 13 } 
	{ unicast_vlan102_macaddr_lsb_num_data_valid sc_in sc_lv 3 signal 13 } 
	{ unicast_vlan102_macaddr_lsb_fifo_cap sc_in sc_lv 3 signal 13 } 
	{ unicast_vlan102_macaddr_lsb_empty_n sc_in sc_logic 1 signal 13 } 
	{ unicast_vlan102_macaddr_lsb_read sc_out sc_logic 1 signal 13 } 
	{ unicast_vlan102_macaddr_msb_dout sc_in sc_lv 16 signal 14 } 
	{ unicast_vlan102_macaddr_msb_num_data_valid sc_in sc_lv 3 signal 14 } 
	{ unicast_vlan102_macaddr_msb_fifo_cap sc_in sc_lv 3 signal 14 } 
	{ unicast_vlan102_macaddr_msb_empty_n sc_in sc_logic 1 signal 14 } 
	{ unicast_vlan102_macaddr_msb_read sc_out sc_logic 1 signal 14 } 
	{ unicast_vlan103_macaddr_lsb_dout sc_in sc_lv 32 signal 15 } 
	{ unicast_vlan103_macaddr_lsb_num_data_valid sc_in sc_lv 3 signal 15 } 
	{ unicast_vlan103_macaddr_lsb_fifo_cap sc_in sc_lv 3 signal 15 } 
	{ unicast_vlan103_macaddr_lsb_empty_n sc_in sc_logic 1 signal 15 } 
	{ unicast_vlan103_macaddr_lsb_read sc_out sc_logic 1 signal 15 } 
	{ unicast_vlan103_macaddr_msb_dout sc_in sc_lv 16 signal 16 } 
	{ unicast_vlan103_macaddr_msb_num_data_valid sc_in sc_lv 3 signal 16 } 
	{ unicast_vlan103_macaddr_msb_fifo_cap sc_in sc_lv 3 signal 16 } 
	{ unicast_vlan103_macaddr_msb_empty_n sc_in sc_logic 1 signal 16 } 
	{ unicast_vlan103_macaddr_msb_read sc_out sc_logic 1 signal 16 } 
	{ unicast_vlan104_macaddr_lsb_dout sc_in sc_lv 32 signal 17 } 
	{ unicast_vlan104_macaddr_lsb_num_data_valid sc_in sc_lv 3 signal 17 } 
	{ unicast_vlan104_macaddr_lsb_fifo_cap sc_in sc_lv 3 signal 17 } 
	{ unicast_vlan104_macaddr_lsb_empty_n sc_in sc_logic 1 signal 17 } 
	{ unicast_vlan104_macaddr_lsb_read sc_out sc_logic 1 signal 17 } 
	{ unicast_vlan104_macaddr_msb_dout sc_in sc_lv 16 signal 18 } 
	{ unicast_vlan104_macaddr_msb_num_data_valid sc_in sc_lv 3 signal 18 } 
	{ unicast_vlan104_macaddr_msb_fifo_cap sc_in sc_lv 3 signal 18 } 
	{ unicast_vlan104_macaddr_msb_empty_n sc_in sc_logic 1 signal 18 } 
	{ unicast_vlan104_macaddr_msb_read sc_out sc_logic 1 signal 18 } 
	{ unicast_vlan105_macaddr_lsb_dout sc_in sc_lv 32 signal 19 } 
	{ unicast_vlan105_macaddr_lsb_num_data_valid sc_in sc_lv 3 signal 19 } 
	{ unicast_vlan105_macaddr_lsb_fifo_cap sc_in sc_lv 3 signal 19 } 
	{ unicast_vlan105_macaddr_lsb_empty_n sc_in sc_logic 1 signal 19 } 
	{ unicast_vlan105_macaddr_lsb_read sc_out sc_logic 1 signal 19 } 
	{ unicast_vlan105_macaddr_msb_dout sc_in sc_lv 16 signal 20 } 
	{ unicast_vlan105_macaddr_msb_num_data_valid sc_in sc_lv 3 signal 20 } 
	{ unicast_vlan105_macaddr_msb_fifo_cap sc_in sc_lv 3 signal 20 } 
	{ unicast_vlan105_macaddr_msb_empty_n sc_in sc_logic 1 signal 20 } 
	{ unicast_vlan105_macaddr_msb_read sc_out sc_logic 1 signal 20 } 
	{ unicast_vlan106_macaddr_lsb_dout sc_in sc_lv 32 signal 21 } 
	{ unicast_vlan106_macaddr_lsb_num_data_valid sc_in sc_lv 3 signal 21 } 
	{ unicast_vlan106_macaddr_lsb_fifo_cap sc_in sc_lv 3 signal 21 } 
	{ unicast_vlan106_macaddr_lsb_empty_n sc_in sc_logic 1 signal 21 } 
	{ unicast_vlan106_macaddr_lsb_read sc_out sc_logic 1 signal 21 } 
	{ unicast_vlan106_macaddr_msb_dout sc_in sc_lv 16 signal 22 } 
	{ unicast_vlan106_macaddr_msb_num_data_valid sc_in sc_lv 3 signal 22 } 
	{ unicast_vlan106_macaddr_msb_fifo_cap sc_in sc_lv 3 signal 22 } 
	{ unicast_vlan106_macaddr_msb_empty_n sc_in sc_logic 1 signal 22 } 
	{ unicast_vlan106_macaddr_msb_read sc_out sc_logic 1 signal 22 } 
	{ unicast_vlan107_macaddr_lsb_dout sc_in sc_lv 32 signal 23 } 
	{ unicast_vlan107_macaddr_lsb_num_data_valid sc_in sc_lv 3 signal 23 } 
	{ unicast_vlan107_macaddr_lsb_fifo_cap sc_in sc_lv 3 signal 23 } 
	{ unicast_vlan107_macaddr_lsb_empty_n sc_in sc_logic 1 signal 23 } 
	{ unicast_vlan107_macaddr_lsb_read sc_out sc_logic 1 signal 23 } 
	{ unicast_vlan107_macaddr_msb_dout sc_in sc_lv 16 signal 24 } 
	{ unicast_vlan107_macaddr_msb_num_data_valid sc_in sc_lv 3 signal 24 } 
	{ unicast_vlan107_macaddr_msb_fifo_cap sc_in sc_lv 3 signal 24 } 
	{ unicast_vlan107_macaddr_msb_empty_n sc_in sc_logic 1 signal 24 } 
	{ unicast_vlan107_macaddr_msb_read sc_out sc_logic 1 signal 24 } 
	{ unicast_vlan108_macaddr_lsb_dout sc_in sc_lv 32 signal 25 } 
	{ unicast_vlan108_macaddr_lsb_num_data_valid sc_in sc_lv 3 signal 25 } 
	{ unicast_vlan108_macaddr_lsb_fifo_cap sc_in sc_lv 3 signal 25 } 
	{ unicast_vlan108_macaddr_lsb_empty_n sc_in sc_logic 1 signal 25 } 
	{ unicast_vlan108_macaddr_lsb_read sc_out sc_logic 1 signal 25 } 
	{ unicast_vlan108_macaddr_msb_dout sc_in sc_lv 16 signal 26 } 
	{ unicast_vlan108_macaddr_msb_num_data_valid sc_in sc_lv 3 signal 26 } 
	{ unicast_vlan108_macaddr_msb_fifo_cap sc_in sc_lv 3 signal 26 } 
	{ unicast_vlan108_macaddr_msb_empty_n sc_in sc_logic 1 signal 26 } 
	{ unicast_vlan108_macaddr_msb_read sc_out sc_logic 1 signal 26 } 
	{ unicast_vlan109_macaddr_lsb_dout sc_in sc_lv 32 signal 27 } 
	{ unicast_vlan109_macaddr_lsb_num_data_valid sc_in sc_lv 3 signal 27 } 
	{ unicast_vlan109_macaddr_lsb_fifo_cap sc_in sc_lv 3 signal 27 } 
	{ unicast_vlan109_macaddr_lsb_empty_n sc_in sc_logic 1 signal 27 } 
	{ unicast_vlan109_macaddr_lsb_read sc_out sc_logic 1 signal 27 } 
	{ unicast_vlan109_macaddr_msb_dout sc_in sc_lv 16 signal 28 } 
	{ unicast_vlan109_macaddr_msb_num_data_valid sc_in sc_lv 3 signal 28 } 
	{ unicast_vlan109_macaddr_msb_fifo_cap sc_in sc_lv 3 signal 28 } 
	{ unicast_vlan109_macaddr_msb_empty_n sc_in sc_logic 1 signal 28 } 
	{ unicast_vlan109_macaddr_msb_read sc_out sc_logic 1 signal 28 } 
	{ log_all_mask_dout sc_in sc_lv 32 signal 29 } 
	{ log_all_mask_num_data_valid sc_in sc_lv 3 signal 29 } 
	{ log_all_mask_fifo_cap sc_in sc_lv 3 signal 29 } 
	{ log_all_mask_empty_n sc_in sc_logic 1 signal 29 } 
	{ log_all_mask_read sc_out sc_logic 1 signal 29 } 
	{ vlan100_received sc_out sc_lv 32 signal 30 } 
	{ vlan100_received_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ vlan101_received sc_out sc_lv 32 signal 31 } 
	{ vlan101_received_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ vlan102_received sc_out sc_lv 32 signal 32 } 
	{ vlan102_received_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ vlan103_received sc_out sc_lv 32 signal 33 } 
	{ vlan103_received_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ vlan104_received sc_out sc_lv 32 signal 34 } 
	{ vlan104_received_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ vlan105_received sc_out sc_lv 32 signal 35 } 
	{ vlan105_received_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ vlan106_received sc_out sc_lv 32 signal 36 } 
	{ vlan106_received_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ vlan107_received sc_out sc_lv 32 signal 37 } 
	{ vlan107_received_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ vlan108_received sc_out sc_lv 32 signal 38 } 
	{ vlan108_received_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ vlan109_received sc_out sc_lv 32 signal 39 } 
	{ vlan109_received_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ droped sc_out sc_lv 32 signal 40 } 
	{ droped_ap_vld sc_out sc_logic 1 outvld 40 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data_buf", "role": "address0" }} , 
 	{ "name": "data_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf", "role": "ce0" }} , 
 	{ "name": "data_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_buf", "role": "q0" }} , 
 	{ "name": "data_buf_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data_buf", "role": "address1" }} , 
 	{ "name": "data_buf_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf", "role": "ce1" }} , 
 	{ "name": "data_buf_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_buf", "role": "q1" }} , 
 	{ "name": "log_header1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "log_header1", "role": "address0" }} , 
 	{ "name": "log_header1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "log_header1", "role": "ce0" }} , 
 	{ "name": "log_header1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "log_header1", "role": "q0" }} , 
 	{ "name": "tap_header1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tap_header1", "role": "address0" }} , 
 	{ "name": "tap_header1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tap_header1", "role": "ce0" }} , 
 	{ "name": "tap_header1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tap_header1", "role": "q0" }} , 
 	{ "name": "m_axi_ps_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps", "role": "AWVALID" }} , 
 	{ "name": "m_axi_ps_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps", "role": "AWREADY" }} , 
 	{ "name": "m_axi_ps_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ps", "role": "AWADDR" }} , 
 	{ "name": "m_axi_ps_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps", "role": "AWID" }} , 
 	{ "name": "m_axi_ps_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ps", "role": "AWLEN" }} , 
 	{ "name": "m_axi_ps_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ps", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_ps_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ps", "role": "AWBURST" }} , 
 	{ "name": "m_axi_ps_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ps", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_ps_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ps", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_ps_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ps", "role": "AWPROT" }} , 
 	{ "name": "m_axi_ps_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ps", "role": "AWQOS" }} , 
 	{ "name": "m_axi_ps_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ps", "role": "AWREGION" }} , 
 	{ "name": "m_axi_ps_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps", "role": "AWUSER" }} , 
 	{ "name": "m_axi_ps_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps", "role": "WVALID" }} , 
 	{ "name": "m_axi_ps_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps", "role": "WREADY" }} , 
 	{ "name": "m_axi_ps_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ps", "role": "WDATA" }} , 
 	{ "name": "m_axi_ps_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ps", "role": "WSTRB" }} , 
 	{ "name": "m_axi_ps_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps", "role": "WLAST" }} , 
 	{ "name": "m_axi_ps_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps", "role": "WID" }} , 
 	{ "name": "m_axi_ps_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps", "role": "WUSER" }} , 
 	{ "name": "m_axi_ps_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps", "role": "ARVALID" }} , 
 	{ "name": "m_axi_ps_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps", "role": "ARREADY" }} , 
 	{ "name": "m_axi_ps_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ps", "role": "ARADDR" }} , 
 	{ "name": "m_axi_ps_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps", "role": "ARID" }} , 
 	{ "name": "m_axi_ps_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ps", "role": "ARLEN" }} , 
 	{ "name": "m_axi_ps_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ps", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_ps_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ps", "role": "ARBURST" }} , 
 	{ "name": "m_axi_ps_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ps", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_ps_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ps", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_ps_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ps", "role": "ARPROT" }} , 
 	{ "name": "m_axi_ps_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ps", "role": "ARQOS" }} , 
 	{ "name": "m_axi_ps_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ps", "role": "ARREGION" }} , 
 	{ "name": "m_axi_ps_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps", "role": "ARUSER" }} , 
 	{ "name": "m_axi_ps_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps", "role": "RVALID" }} , 
 	{ "name": "m_axi_ps_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps", "role": "RREADY" }} , 
 	{ "name": "m_axi_ps_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ps", "role": "RDATA" }} , 
 	{ "name": "m_axi_ps_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps", "role": "RLAST" }} , 
 	{ "name": "m_axi_ps_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps", "role": "RID" }} , 
 	{ "name": "m_axi_ps_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ps", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_ps_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps", "role": "RUSER" }} , 
 	{ "name": "m_axi_ps_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ps", "role": "RRESP" }} , 
 	{ "name": "m_axi_ps_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps", "role": "BVALID" }} , 
 	{ "name": "m_axi_ps_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps", "role": "BREADY" }} , 
 	{ "name": "m_axi_ps_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ps", "role": "BRESP" }} , 
 	{ "name": "m_axi_ps_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps", "role": "BID" }} , 
 	{ "name": "m_axi_ps_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps", "role": "BUSER" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "logger_vlan_enable_mask_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "logger_vlan_enable_mask", "role": "dout" }} , 
 	{ "name": "logger_vlan_enable_mask_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "logger_vlan_enable_mask", "role": "num_data_valid" }} , 
 	{ "name": "logger_vlan_enable_mask_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "logger_vlan_enable_mask", "role": "fifo_cap" }} , 
 	{ "name": "logger_vlan_enable_mask_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "logger_vlan_enable_mask", "role": "empty_n" }} , 
 	{ "name": "logger_vlan_enable_mask_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "logger_vlan_enable_mask", "role": "read" }} , 
 	{ "name": "multicast_recv_enable_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "multicast_recv_enable", "role": "dout" }} , 
 	{ "name": "multicast_recv_enable_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "multicast_recv_enable", "role": "num_data_valid" }} , 
 	{ "name": "multicast_recv_enable_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "multicast_recv_enable", "role": "fifo_cap" }} , 
 	{ "name": "multicast_recv_enable_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "multicast_recv_enable", "role": "empty_n" }} , 
 	{ "name": "multicast_recv_enable_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "multicast_recv_enable", "role": "read" }} , 
 	{ "name": "unicast_filter_enable_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_filter_enable", "role": "dout" }} , 
 	{ "name": "unicast_filter_enable_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_filter_enable", "role": "num_data_valid" }} , 
 	{ "name": "unicast_filter_enable_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_filter_enable", "role": "fifo_cap" }} , 
 	{ "name": "unicast_filter_enable_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_filter_enable", "role": "empty_n" }} , 
 	{ "name": "unicast_filter_enable_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_filter_enable", "role": "read" }} , 
 	{ "name": "unicast_vlan100_macaddr_lsb_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan100_macaddr_lsb", "role": "dout" }} , 
 	{ "name": "unicast_vlan100_macaddr_lsb_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan100_macaddr_lsb", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan100_macaddr_lsb_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan100_macaddr_lsb", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan100_macaddr_lsb_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan100_macaddr_lsb", "role": "empty_n" }} , 
 	{ "name": "unicast_vlan100_macaddr_lsb_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan100_macaddr_lsb", "role": "read" }} , 
 	{ "name": "unicast_vlan100_macaddr_msb_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unicast_vlan100_macaddr_msb", "role": "dout" }} , 
 	{ "name": "unicast_vlan100_macaddr_msb_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan100_macaddr_msb", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan100_macaddr_msb_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan100_macaddr_msb", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan100_macaddr_msb_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan100_macaddr_msb", "role": "empty_n" }} , 
 	{ "name": "unicast_vlan100_macaddr_msb_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan100_macaddr_msb", "role": "read" }} , 
 	{ "name": "unicast_vlan101_macaddr_lsb_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan101_macaddr_lsb", "role": "dout" }} , 
 	{ "name": "unicast_vlan101_macaddr_lsb_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan101_macaddr_lsb", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan101_macaddr_lsb_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan101_macaddr_lsb", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan101_macaddr_lsb_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan101_macaddr_lsb", "role": "empty_n" }} , 
 	{ "name": "unicast_vlan101_macaddr_lsb_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan101_macaddr_lsb", "role": "read" }} , 
 	{ "name": "unicast_vlan101_macaddr_msb_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unicast_vlan101_macaddr_msb", "role": "dout" }} , 
 	{ "name": "unicast_vlan101_macaddr_msb_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan101_macaddr_msb", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan101_macaddr_msb_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan101_macaddr_msb", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan101_macaddr_msb_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan101_macaddr_msb", "role": "empty_n" }} , 
 	{ "name": "unicast_vlan101_macaddr_msb_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan101_macaddr_msb", "role": "read" }} , 
 	{ "name": "unicast_vlan102_macaddr_lsb_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan102_macaddr_lsb", "role": "dout" }} , 
 	{ "name": "unicast_vlan102_macaddr_lsb_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan102_macaddr_lsb", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan102_macaddr_lsb_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan102_macaddr_lsb", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan102_macaddr_lsb_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan102_macaddr_lsb", "role": "empty_n" }} , 
 	{ "name": "unicast_vlan102_macaddr_lsb_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan102_macaddr_lsb", "role": "read" }} , 
 	{ "name": "unicast_vlan102_macaddr_msb_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unicast_vlan102_macaddr_msb", "role": "dout" }} , 
 	{ "name": "unicast_vlan102_macaddr_msb_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan102_macaddr_msb", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan102_macaddr_msb_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan102_macaddr_msb", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan102_macaddr_msb_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan102_macaddr_msb", "role": "empty_n" }} , 
 	{ "name": "unicast_vlan102_macaddr_msb_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan102_macaddr_msb", "role": "read" }} , 
 	{ "name": "unicast_vlan103_macaddr_lsb_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan103_macaddr_lsb", "role": "dout" }} , 
 	{ "name": "unicast_vlan103_macaddr_lsb_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan103_macaddr_lsb", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan103_macaddr_lsb_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan103_macaddr_lsb", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan103_macaddr_lsb_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan103_macaddr_lsb", "role": "empty_n" }} , 
 	{ "name": "unicast_vlan103_macaddr_lsb_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan103_macaddr_lsb", "role": "read" }} , 
 	{ "name": "unicast_vlan103_macaddr_msb_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unicast_vlan103_macaddr_msb", "role": "dout" }} , 
 	{ "name": "unicast_vlan103_macaddr_msb_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan103_macaddr_msb", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan103_macaddr_msb_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan103_macaddr_msb", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan103_macaddr_msb_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan103_macaddr_msb", "role": "empty_n" }} , 
 	{ "name": "unicast_vlan103_macaddr_msb_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan103_macaddr_msb", "role": "read" }} , 
 	{ "name": "unicast_vlan104_macaddr_lsb_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan104_macaddr_lsb", "role": "dout" }} , 
 	{ "name": "unicast_vlan104_macaddr_lsb_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan104_macaddr_lsb", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan104_macaddr_lsb_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan104_macaddr_lsb", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan104_macaddr_lsb_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan104_macaddr_lsb", "role": "empty_n" }} , 
 	{ "name": "unicast_vlan104_macaddr_lsb_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan104_macaddr_lsb", "role": "read" }} , 
 	{ "name": "unicast_vlan104_macaddr_msb_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unicast_vlan104_macaddr_msb", "role": "dout" }} , 
 	{ "name": "unicast_vlan104_macaddr_msb_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan104_macaddr_msb", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan104_macaddr_msb_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan104_macaddr_msb", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan104_macaddr_msb_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan104_macaddr_msb", "role": "empty_n" }} , 
 	{ "name": "unicast_vlan104_macaddr_msb_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan104_macaddr_msb", "role": "read" }} , 
 	{ "name": "unicast_vlan105_macaddr_lsb_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan105_macaddr_lsb", "role": "dout" }} , 
 	{ "name": "unicast_vlan105_macaddr_lsb_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan105_macaddr_lsb", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan105_macaddr_lsb_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan105_macaddr_lsb", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan105_macaddr_lsb_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan105_macaddr_lsb", "role": "empty_n" }} , 
 	{ "name": "unicast_vlan105_macaddr_lsb_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan105_macaddr_lsb", "role": "read" }} , 
 	{ "name": "unicast_vlan105_macaddr_msb_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unicast_vlan105_macaddr_msb", "role": "dout" }} , 
 	{ "name": "unicast_vlan105_macaddr_msb_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan105_macaddr_msb", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan105_macaddr_msb_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan105_macaddr_msb", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan105_macaddr_msb_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan105_macaddr_msb", "role": "empty_n" }} , 
 	{ "name": "unicast_vlan105_macaddr_msb_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan105_macaddr_msb", "role": "read" }} , 
 	{ "name": "unicast_vlan106_macaddr_lsb_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan106_macaddr_lsb", "role": "dout" }} , 
 	{ "name": "unicast_vlan106_macaddr_lsb_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan106_macaddr_lsb", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan106_macaddr_lsb_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan106_macaddr_lsb", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan106_macaddr_lsb_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan106_macaddr_lsb", "role": "empty_n" }} , 
 	{ "name": "unicast_vlan106_macaddr_lsb_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan106_macaddr_lsb", "role": "read" }} , 
 	{ "name": "unicast_vlan106_macaddr_msb_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unicast_vlan106_macaddr_msb", "role": "dout" }} , 
 	{ "name": "unicast_vlan106_macaddr_msb_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan106_macaddr_msb", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan106_macaddr_msb_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan106_macaddr_msb", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan106_macaddr_msb_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan106_macaddr_msb", "role": "empty_n" }} , 
 	{ "name": "unicast_vlan106_macaddr_msb_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan106_macaddr_msb", "role": "read" }} , 
 	{ "name": "unicast_vlan107_macaddr_lsb_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan107_macaddr_lsb", "role": "dout" }} , 
 	{ "name": "unicast_vlan107_macaddr_lsb_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan107_macaddr_lsb", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan107_macaddr_lsb_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan107_macaddr_lsb", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan107_macaddr_lsb_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan107_macaddr_lsb", "role": "empty_n" }} , 
 	{ "name": "unicast_vlan107_macaddr_lsb_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan107_macaddr_lsb", "role": "read" }} , 
 	{ "name": "unicast_vlan107_macaddr_msb_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unicast_vlan107_macaddr_msb", "role": "dout" }} , 
 	{ "name": "unicast_vlan107_macaddr_msb_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan107_macaddr_msb", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan107_macaddr_msb_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan107_macaddr_msb", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan107_macaddr_msb_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan107_macaddr_msb", "role": "empty_n" }} , 
 	{ "name": "unicast_vlan107_macaddr_msb_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan107_macaddr_msb", "role": "read" }} , 
 	{ "name": "unicast_vlan108_macaddr_lsb_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan108_macaddr_lsb", "role": "dout" }} , 
 	{ "name": "unicast_vlan108_macaddr_lsb_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan108_macaddr_lsb", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan108_macaddr_lsb_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan108_macaddr_lsb", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan108_macaddr_lsb_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan108_macaddr_lsb", "role": "empty_n" }} , 
 	{ "name": "unicast_vlan108_macaddr_lsb_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan108_macaddr_lsb", "role": "read" }} , 
 	{ "name": "unicast_vlan108_macaddr_msb_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unicast_vlan108_macaddr_msb", "role": "dout" }} , 
 	{ "name": "unicast_vlan108_macaddr_msb_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan108_macaddr_msb", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan108_macaddr_msb_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan108_macaddr_msb", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan108_macaddr_msb_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan108_macaddr_msb", "role": "empty_n" }} , 
 	{ "name": "unicast_vlan108_macaddr_msb_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan108_macaddr_msb", "role": "read" }} , 
 	{ "name": "unicast_vlan109_macaddr_lsb_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan109_macaddr_lsb", "role": "dout" }} , 
 	{ "name": "unicast_vlan109_macaddr_lsb_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan109_macaddr_lsb", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan109_macaddr_lsb_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan109_macaddr_lsb", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan109_macaddr_lsb_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan109_macaddr_lsb", "role": "empty_n" }} , 
 	{ "name": "unicast_vlan109_macaddr_lsb_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan109_macaddr_lsb", "role": "read" }} , 
 	{ "name": "unicast_vlan109_macaddr_msb_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "unicast_vlan109_macaddr_msb", "role": "dout" }} , 
 	{ "name": "unicast_vlan109_macaddr_msb_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan109_macaddr_msb", "role": "num_data_valid" }} , 
 	{ "name": "unicast_vlan109_macaddr_msb_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "unicast_vlan109_macaddr_msb", "role": "fifo_cap" }} , 
 	{ "name": "unicast_vlan109_macaddr_msb_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan109_macaddr_msb", "role": "empty_n" }} , 
 	{ "name": "unicast_vlan109_macaddr_msb_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "unicast_vlan109_macaddr_msb", "role": "read" }} , 
 	{ "name": "log_all_mask_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "log_all_mask", "role": "dout" }} , 
 	{ "name": "log_all_mask_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "log_all_mask", "role": "num_data_valid" }} , 
 	{ "name": "log_all_mask_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "log_all_mask", "role": "fifo_cap" }} , 
 	{ "name": "log_all_mask_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "log_all_mask", "role": "empty_n" }} , 
 	{ "name": "log_all_mask_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "log_all_mask", "role": "read" }} , 
 	{ "name": "vlan100_received", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vlan100_received", "role": "default" }} , 
 	{ "name": "vlan100_received_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vlan100_received", "role": "ap_vld" }} , 
 	{ "name": "vlan101_received", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vlan101_received", "role": "default" }} , 
 	{ "name": "vlan101_received_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vlan101_received", "role": "ap_vld" }} , 
 	{ "name": "vlan102_received", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vlan102_received", "role": "default" }} , 
 	{ "name": "vlan102_received_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vlan102_received", "role": "ap_vld" }} , 
 	{ "name": "vlan103_received", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vlan103_received", "role": "default" }} , 
 	{ "name": "vlan103_received_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vlan103_received", "role": "ap_vld" }} , 
 	{ "name": "vlan104_received", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vlan104_received", "role": "default" }} , 
 	{ "name": "vlan104_received_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vlan104_received", "role": "ap_vld" }} , 
 	{ "name": "vlan105_received", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vlan105_received", "role": "default" }} , 
 	{ "name": "vlan105_received_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vlan105_received", "role": "ap_vld" }} , 
 	{ "name": "vlan106_received", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vlan106_received", "role": "default" }} , 
 	{ "name": "vlan106_received_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vlan106_received", "role": "ap_vld" }} , 
 	{ "name": "vlan107_received", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vlan107_received", "role": "default" }} , 
 	{ "name": "vlan107_received_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vlan107_received", "role": "ap_vld" }} , 
 	{ "name": "vlan108_received", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vlan108_received", "role": "default" }} , 
 	{ "name": "vlan108_received_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vlan108_received", "role": "ap_vld" }} , 
 	{ "name": "vlan109_received", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vlan109_received", "role": "default" }} , 
 	{ "name": "vlan109_received_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vlan109_received", "role": "ap_vld" }} , 
 	{ "name": "droped", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "droped", "role": "default" }} , 
 	{ "name": "droped_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "droped", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "7", "9", "11", "12", "13", "14"],
		"CDFG" : "tx_ddr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "987",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data_buf", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_tx_ddr_Pipeline_tx_2_tap_ddr_fu_1320", "Port" : "data_buf", "Inst_start_state" : "106", "Inst_end_state" : "107"},
					{"ID" : "5", "SubInstance" : "grp_tx_ddr_Pipeline_tx_2_log_ddr_fu_1303", "Port" : "data_buf", "Inst_start_state" : "58", "Inst_end_state" : "59"}]},
			{"Name" : "log_header1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_tx_ddr_Pipeline_VITIS_LOOP_471_1_fu_1296", "Port" : "log_header1", "Inst_start_state" : "18", "Inst_end_state" : "19"}]},
			{"Name" : "tap_header1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_tx_ddr_Pipeline_VITIS_LOOP_531_2_fu_1313", "Port" : "tap_header1", "Inst_start_state" : "66", "Inst_end_state" : "67"}]},
			{"Name" : "ps", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ps_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "ps_blk_n_B", "Type" : "RtlSignal"},
					{"Name" : "ps_blk_n_W", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_tx_ddr_Pipeline_tx_2_tap_ddr_fu_1320", "Port" : "ps", "Inst_start_state" : "106", "Inst_end_state" : "107"},
					{"ID" : "5", "SubInstance" : "grp_tx_ddr_Pipeline_tx_2_log_ddr_fu_1303", "Port" : "ps", "Inst_start_state" : "58", "Inst_end_state" : "59"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "logger_vlan_enable_mask", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "logger_vlan_enable_mask_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "multicast_recv_enable", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "multicast_recv_enable_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_filter_enable", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_filter_enable_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan100_macaddr_lsb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan100_macaddr_lsb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan100_macaddr_msb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan100_macaddr_msb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan101_macaddr_lsb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan101_macaddr_lsb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan101_macaddr_msb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan101_macaddr_msb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan102_macaddr_lsb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan102_macaddr_lsb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan102_macaddr_msb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan102_macaddr_msb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan103_macaddr_lsb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan103_macaddr_lsb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan103_macaddr_msb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan103_macaddr_msb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan104_macaddr_lsb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan104_macaddr_lsb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan104_macaddr_msb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan104_macaddr_msb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan105_macaddr_lsb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan105_macaddr_lsb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan105_macaddr_msb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan105_macaddr_msb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan106_macaddr_lsb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan106_macaddr_lsb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan106_macaddr_msb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan106_macaddr_msb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan107_macaddr_lsb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan107_macaddr_lsb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan107_macaddr_msb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan107_macaddr_msb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan108_macaddr_lsb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan108_macaddr_lsb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan108_macaddr_msb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan108_macaddr_msb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan109_macaddr_lsb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan109_macaddr_lsb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan109_macaddr_msb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan109_macaddr_msb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "log_all_mask", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "log_all_mask_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vlan100_received", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vlan101_received", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vlan102_received", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vlan103_received", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vlan104_received", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vlan105_received", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vlan106_received", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vlan107_received", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vlan108_received", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vlan109_received", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "droped", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "counter_vlan100", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "counter_vlan101", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "counter_vlan102", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "counter_vlan103", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "counter_vlan104", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "counter_vlan105", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "counter_vlan106", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "counter_vlan107", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "counter_vlan108", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "counter_vlan109", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "counter_droped", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "last_log_tx_index", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "last_tap_tx_index", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.log_header_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tap_header_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_tx_ddr_Pipeline_VITIS_LOOP_471_1_fu_1296", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "tx_ddr_Pipeline_VITIS_LOOP_471_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "log_header1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "log_header", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_471_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_tx_ddr_Pipeline_VITIS_LOOP_471_1_fu_1296.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_tx_ddr_Pipeline_tx_2_log_ddr_fu_1303", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "tx_ddr_Pipeline_tx_2_log_ddr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "423",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ps", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ps_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln512", "Type" : "None", "Direction" : "I"},
			{"Name" : "N", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_buf", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "tx_2_log_ddr", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_tx_ddr_Pipeline_tx_2_log_ddr_fu_1303.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_tx_ddr_Pipeline_VITIS_LOOP_531_2_fu_1313", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "tx_ddr_Pipeline_VITIS_LOOP_531_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tap_header1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tap_header", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_531_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_tx_ddr_Pipeline_VITIS_LOOP_531_2_fu_1313.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_tx_ddr_Pipeline_tx_2_tap_ddr_fu_1320", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "tx_ddr_Pipeline_tx_2_tap_ddr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "443",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ps", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ps_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln570", "Type" : "None", "Direction" : "I"},
			{"Name" : "N_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_buf", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "tx_2_tap_ddr", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_tx_ddr_Pipeline_tx_2_tap_ddr_fu_1320.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_32ns_32ns_32_36_seq_1_U95", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U96", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_32ns_32ns_32_36_seq_1_U97", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U98", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	tx_ddr {
		data_buf {Type I LastRead 6 FirstWrite -1}
		log_header1 {Type I LastRead 0 FirstWrite -1}
		tap_header1 {Type I LastRead 0 FirstWrite -1}
		ps {Type O LastRead 99 FirstWrite 2}
		p_read {Type I LastRead 1 FirstWrite -1}
		p_read1 {Type I LastRead 1 FirstWrite -1}
		logger_vlan_enable_mask {Type I LastRead 1 FirstWrite -1}
		multicast_recv_enable {Type I LastRead 1 FirstWrite -1}
		unicast_filter_enable {Type I LastRead 1 FirstWrite -1}
		unicast_vlan100_macaddr_lsb {Type I LastRead 1 FirstWrite -1}
		unicast_vlan100_macaddr_msb {Type I LastRead 1 FirstWrite -1}
		unicast_vlan101_macaddr_lsb {Type I LastRead 1 FirstWrite -1}
		unicast_vlan101_macaddr_msb {Type I LastRead 1 FirstWrite -1}
		unicast_vlan102_macaddr_lsb {Type I LastRead 1 FirstWrite -1}
		unicast_vlan102_macaddr_msb {Type I LastRead 1 FirstWrite -1}
		unicast_vlan103_macaddr_lsb {Type I LastRead 1 FirstWrite -1}
		unicast_vlan103_macaddr_msb {Type I LastRead 1 FirstWrite -1}
		unicast_vlan104_macaddr_lsb {Type I LastRead 1 FirstWrite -1}
		unicast_vlan104_macaddr_msb {Type I LastRead 1 FirstWrite -1}
		unicast_vlan105_macaddr_lsb {Type I LastRead 1 FirstWrite -1}
		unicast_vlan105_macaddr_msb {Type I LastRead 1 FirstWrite -1}
		unicast_vlan106_macaddr_lsb {Type I LastRead 1 FirstWrite -1}
		unicast_vlan106_macaddr_msb {Type I LastRead 1 FirstWrite -1}
		unicast_vlan107_macaddr_lsb {Type I LastRead 1 FirstWrite -1}
		unicast_vlan107_macaddr_msb {Type I LastRead 1 FirstWrite -1}
		unicast_vlan108_macaddr_lsb {Type I LastRead 1 FirstWrite -1}
		unicast_vlan108_macaddr_msb {Type I LastRead 1 FirstWrite -1}
		unicast_vlan109_macaddr_lsb {Type I LastRead 1 FirstWrite -1}
		unicast_vlan109_macaddr_msb {Type I LastRead 1 FirstWrite -1}
		log_all_mask {Type I LastRead 1 FirstWrite -1}
		vlan100_received {Type O LastRead -1 FirstWrite 2}
		vlan101_received {Type O LastRead -1 FirstWrite 2}
		vlan102_received {Type O LastRead -1 FirstWrite 2}
		vlan103_received {Type O LastRead -1 FirstWrite 2}
		vlan104_received {Type O LastRead -1 FirstWrite 2}
		vlan105_received {Type O LastRead -1 FirstWrite 2}
		vlan106_received {Type O LastRead -1 FirstWrite 2}
		vlan107_received {Type O LastRead -1 FirstWrite 2}
		vlan108_received {Type O LastRead -1 FirstWrite 2}
		vlan109_received {Type O LastRead -1 FirstWrite 2}
		droped {Type O LastRead -1 FirstWrite 2}
		counter_vlan100 {Type IO LastRead -1 FirstWrite -1}
		counter_vlan101 {Type IO LastRead -1 FirstWrite -1}
		counter_vlan102 {Type IO LastRead -1 FirstWrite -1}
		counter_vlan103 {Type IO LastRead -1 FirstWrite -1}
		counter_vlan104 {Type IO LastRead -1 FirstWrite -1}
		counter_vlan105 {Type IO LastRead -1 FirstWrite -1}
		counter_vlan106 {Type IO LastRead -1 FirstWrite -1}
		counter_vlan107 {Type IO LastRead -1 FirstWrite -1}
		counter_vlan108 {Type IO LastRead -1 FirstWrite -1}
		counter_vlan109 {Type IO LastRead -1 FirstWrite -1}
		counter_droped {Type IO LastRead -1 FirstWrite -1}
		last_log_tx_index {Type IO LastRead -1 FirstWrite -1}
		last_tap_tx_index {Type IO LastRead -1 FirstWrite -1}}
	tx_ddr_Pipeline_VITIS_LOOP_471_1 {
		log_header1 {Type I LastRead 0 FirstWrite -1}
		log_header {Type O LastRead -1 FirstWrite 1}}
	tx_ddr_Pipeline_tx_2_log_ddr {
		ps {Type O LastRead -1 FirstWrite 2}
		sext_ln512 {Type I LastRead 0 FirstWrite -1}
		N {Type I LastRead 0 FirstWrite -1}
		data_buf {Type I LastRead 0 FirstWrite -1}}
	tx_ddr_Pipeline_VITIS_LOOP_531_2 {
		tap_header1 {Type I LastRead 0 FirstWrite -1}
		tap_header {Type O LastRead -1 FirstWrite 1}}
	tx_ddr_Pipeline_tx_2_tap_ddr {
		ps {Type O LastRead -1 FirstWrite 2}
		sext_ln570 {Type I LastRead 0 FirstWrite -1}
		N_1 {Type I LastRead 0 FirstWrite -1}
		data_buf {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "987"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "987"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_buf { ap_memory {  { data_buf_address0 mem_address 1 9 }  { data_buf_ce0 mem_ce 1 1 }  { data_buf_q0 in_data 0 32 }  { data_buf_address1 MemPortADDR2 1 9 }  { data_buf_ce1 MemPortCE2 1 1 }  { data_buf_q1 in_data 0 32 } } }
	log_header1 { ap_memory {  { log_header1_address0 mem_address 1 3 }  { log_header1_ce0 mem_ce 1 1 }  { log_header1_q0 mem_dout 0 32 } } }
	tap_header1 { ap_memory {  { tap_header1_address0 mem_address 1 3 }  { tap_header1_ce0 mem_ce 1 1 }  { tap_header1_q0 mem_dout 0 32 } } }
	 { m_axi {  { m_axi_ps_AWVALID VALID 1 1 }  { m_axi_ps_AWREADY READY 0 1 }  { m_axi_ps_AWADDR ADDR 1 64 }  { m_axi_ps_AWID ID 1 1 }  { m_axi_ps_AWLEN SIZE 1 32 }  { m_axi_ps_AWSIZE BURST 1 3 }  { m_axi_ps_AWBURST LOCK 1 2 }  { m_axi_ps_AWLOCK CACHE 1 2 }  { m_axi_ps_AWCACHE PROT 1 4 }  { m_axi_ps_AWPROT QOS 1 3 }  { m_axi_ps_AWQOS REGION 1 4 }  { m_axi_ps_AWREGION USER 1 4 }  { m_axi_ps_AWUSER DATA 1 1 }  { m_axi_ps_WVALID VALID 1 1 }  { m_axi_ps_WREADY READY 0 1 }  { m_axi_ps_WDATA FIFONUM 1 32 }  { m_axi_ps_WSTRB STRB 1 4 }  { m_axi_ps_WLAST LAST 1 1 }  { m_axi_ps_WID ID 1 1 }  { m_axi_ps_WUSER DATA 1 1 }  { m_axi_ps_ARVALID VALID 1 1 }  { m_axi_ps_ARREADY READY 0 1 }  { m_axi_ps_ARADDR ADDR 1 64 }  { m_axi_ps_ARID ID 1 1 }  { m_axi_ps_ARLEN SIZE 1 32 }  { m_axi_ps_ARSIZE BURST 1 3 }  { m_axi_ps_ARBURST LOCK 1 2 }  { m_axi_ps_ARLOCK CACHE 1 2 }  { m_axi_ps_ARCACHE PROT 1 4 }  { m_axi_ps_ARPROT QOS 1 3 }  { m_axi_ps_ARQOS REGION 1 4 }  { m_axi_ps_ARREGION USER 1 4 }  { m_axi_ps_ARUSER DATA 1 1 }  { m_axi_ps_RVALID VALID 0 1 }  { m_axi_ps_RREADY READY 1 1 }  { m_axi_ps_RDATA FIFONUM 0 32 }  { m_axi_ps_RLAST LAST 0 1 }  { m_axi_ps_RID ID 0 1 }  { m_axi_ps_RFIFONUM LEN 0 9 }  { m_axi_ps_RUSER DATA 0 1 }  { m_axi_ps_RRESP RESP 0 2 }  { m_axi_ps_BVALID VALID 0 1 }  { m_axi_ps_BREADY READY 1 1 }  { m_axi_ps_BRESP RESP 0 2 }  { m_axi_ps_BID ID 0 1 }  { m_axi_ps_BUSER DATA 0 1 } } }
	p_read { ap_none {  { p_read in_data 0 64 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 64 } } }
	logger_vlan_enable_mask { ap_fifo {  { logger_vlan_enable_mask_dout fifo_port_we 0 32 }  { logger_vlan_enable_mask_num_data_valid fifo_status_num_data_valid 0 3 }  { logger_vlan_enable_mask_fifo_cap fifo_update 0 3 }  { logger_vlan_enable_mask_empty_n fifo_status 0 1 }  { logger_vlan_enable_mask_read fifo_data 1 1 } } }
	multicast_recv_enable { ap_fifo {  { multicast_recv_enable_dout fifo_port_we 0 32 }  { multicast_recv_enable_num_data_valid fifo_status_num_data_valid 0 3 }  { multicast_recv_enable_fifo_cap fifo_update 0 3 }  { multicast_recv_enable_empty_n fifo_status 0 1 }  { multicast_recv_enable_read fifo_data 1 1 } } }
	unicast_filter_enable { ap_fifo {  { unicast_filter_enable_dout fifo_port_we 0 32 }  { unicast_filter_enable_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_filter_enable_fifo_cap fifo_update 0 3 }  { unicast_filter_enable_empty_n fifo_status 0 1 }  { unicast_filter_enable_read fifo_data 1 1 } } }
	unicast_vlan100_macaddr_lsb { ap_fifo {  { unicast_vlan100_macaddr_lsb_dout fifo_port_we 0 32 }  { unicast_vlan100_macaddr_lsb_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan100_macaddr_lsb_fifo_cap fifo_update 0 3 }  { unicast_vlan100_macaddr_lsb_empty_n fifo_status 0 1 }  { unicast_vlan100_macaddr_lsb_read fifo_data 1 1 } } }
	unicast_vlan100_macaddr_msb { ap_fifo {  { unicast_vlan100_macaddr_msb_dout fifo_port_we 0 16 }  { unicast_vlan100_macaddr_msb_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan100_macaddr_msb_fifo_cap fifo_update 0 3 }  { unicast_vlan100_macaddr_msb_empty_n fifo_status 0 1 }  { unicast_vlan100_macaddr_msb_read fifo_data 1 1 } } }
	unicast_vlan101_macaddr_lsb { ap_fifo {  { unicast_vlan101_macaddr_lsb_dout fifo_port_we 0 32 }  { unicast_vlan101_macaddr_lsb_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan101_macaddr_lsb_fifo_cap fifo_update 0 3 }  { unicast_vlan101_macaddr_lsb_empty_n fifo_status 0 1 }  { unicast_vlan101_macaddr_lsb_read fifo_data 1 1 } } }
	unicast_vlan101_macaddr_msb { ap_fifo {  { unicast_vlan101_macaddr_msb_dout fifo_port_we 0 16 }  { unicast_vlan101_macaddr_msb_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan101_macaddr_msb_fifo_cap fifo_update 0 3 }  { unicast_vlan101_macaddr_msb_empty_n fifo_status 0 1 }  { unicast_vlan101_macaddr_msb_read fifo_data 1 1 } } }
	unicast_vlan102_macaddr_lsb { ap_fifo {  { unicast_vlan102_macaddr_lsb_dout fifo_port_we 0 32 }  { unicast_vlan102_macaddr_lsb_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan102_macaddr_lsb_fifo_cap fifo_update 0 3 }  { unicast_vlan102_macaddr_lsb_empty_n fifo_status 0 1 }  { unicast_vlan102_macaddr_lsb_read fifo_data 1 1 } } }
	unicast_vlan102_macaddr_msb { ap_fifo {  { unicast_vlan102_macaddr_msb_dout fifo_port_we 0 16 }  { unicast_vlan102_macaddr_msb_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan102_macaddr_msb_fifo_cap fifo_update 0 3 }  { unicast_vlan102_macaddr_msb_empty_n fifo_status 0 1 }  { unicast_vlan102_macaddr_msb_read fifo_data 1 1 } } }
	unicast_vlan103_macaddr_lsb { ap_fifo {  { unicast_vlan103_macaddr_lsb_dout fifo_port_we 0 32 }  { unicast_vlan103_macaddr_lsb_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan103_macaddr_lsb_fifo_cap fifo_update 0 3 }  { unicast_vlan103_macaddr_lsb_empty_n fifo_status 0 1 }  { unicast_vlan103_macaddr_lsb_read fifo_data 1 1 } } }
	unicast_vlan103_macaddr_msb { ap_fifo {  { unicast_vlan103_macaddr_msb_dout fifo_port_we 0 16 }  { unicast_vlan103_macaddr_msb_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan103_macaddr_msb_fifo_cap fifo_update 0 3 }  { unicast_vlan103_macaddr_msb_empty_n fifo_status 0 1 }  { unicast_vlan103_macaddr_msb_read fifo_data 1 1 } } }
	unicast_vlan104_macaddr_lsb { ap_fifo {  { unicast_vlan104_macaddr_lsb_dout fifo_port_we 0 32 }  { unicast_vlan104_macaddr_lsb_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan104_macaddr_lsb_fifo_cap fifo_update 0 3 }  { unicast_vlan104_macaddr_lsb_empty_n fifo_status 0 1 }  { unicast_vlan104_macaddr_lsb_read fifo_data 1 1 } } }
	unicast_vlan104_macaddr_msb { ap_fifo {  { unicast_vlan104_macaddr_msb_dout fifo_port_we 0 16 }  { unicast_vlan104_macaddr_msb_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan104_macaddr_msb_fifo_cap fifo_update 0 3 }  { unicast_vlan104_macaddr_msb_empty_n fifo_status 0 1 }  { unicast_vlan104_macaddr_msb_read fifo_data 1 1 } } }
	unicast_vlan105_macaddr_lsb { ap_fifo {  { unicast_vlan105_macaddr_lsb_dout fifo_port_we 0 32 }  { unicast_vlan105_macaddr_lsb_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan105_macaddr_lsb_fifo_cap fifo_update 0 3 }  { unicast_vlan105_macaddr_lsb_empty_n fifo_status 0 1 }  { unicast_vlan105_macaddr_lsb_read fifo_data 1 1 } } }
	unicast_vlan105_macaddr_msb { ap_fifo {  { unicast_vlan105_macaddr_msb_dout fifo_port_we 0 16 }  { unicast_vlan105_macaddr_msb_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan105_macaddr_msb_fifo_cap fifo_update 0 3 }  { unicast_vlan105_macaddr_msb_empty_n fifo_status 0 1 }  { unicast_vlan105_macaddr_msb_read fifo_data 1 1 } } }
	unicast_vlan106_macaddr_lsb { ap_fifo {  { unicast_vlan106_macaddr_lsb_dout fifo_port_we 0 32 }  { unicast_vlan106_macaddr_lsb_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan106_macaddr_lsb_fifo_cap fifo_update 0 3 }  { unicast_vlan106_macaddr_lsb_empty_n fifo_status 0 1 }  { unicast_vlan106_macaddr_lsb_read fifo_data 1 1 } } }
	unicast_vlan106_macaddr_msb { ap_fifo {  { unicast_vlan106_macaddr_msb_dout fifo_port_we 0 16 }  { unicast_vlan106_macaddr_msb_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan106_macaddr_msb_fifo_cap fifo_update 0 3 }  { unicast_vlan106_macaddr_msb_empty_n fifo_status 0 1 }  { unicast_vlan106_macaddr_msb_read fifo_data 1 1 } } }
	unicast_vlan107_macaddr_lsb { ap_fifo {  { unicast_vlan107_macaddr_lsb_dout fifo_port_we 0 32 }  { unicast_vlan107_macaddr_lsb_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan107_macaddr_lsb_fifo_cap fifo_update 0 3 }  { unicast_vlan107_macaddr_lsb_empty_n fifo_status 0 1 }  { unicast_vlan107_macaddr_lsb_read fifo_data 1 1 } } }
	unicast_vlan107_macaddr_msb { ap_fifo {  { unicast_vlan107_macaddr_msb_dout fifo_port_we 0 16 }  { unicast_vlan107_macaddr_msb_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan107_macaddr_msb_fifo_cap fifo_update 0 3 }  { unicast_vlan107_macaddr_msb_empty_n fifo_status 0 1 }  { unicast_vlan107_macaddr_msb_read fifo_data 1 1 } } }
	unicast_vlan108_macaddr_lsb { ap_fifo {  { unicast_vlan108_macaddr_lsb_dout fifo_port_we 0 32 }  { unicast_vlan108_macaddr_lsb_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan108_macaddr_lsb_fifo_cap fifo_update 0 3 }  { unicast_vlan108_macaddr_lsb_empty_n fifo_status 0 1 }  { unicast_vlan108_macaddr_lsb_read fifo_data 1 1 } } }
	unicast_vlan108_macaddr_msb { ap_fifo {  { unicast_vlan108_macaddr_msb_dout fifo_port_we 0 16 }  { unicast_vlan108_macaddr_msb_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan108_macaddr_msb_fifo_cap fifo_update 0 3 }  { unicast_vlan108_macaddr_msb_empty_n fifo_status 0 1 }  { unicast_vlan108_macaddr_msb_read fifo_data 1 1 } } }
	unicast_vlan109_macaddr_lsb { ap_fifo {  { unicast_vlan109_macaddr_lsb_dout fifo_port_we 0 32 }  { unicast_vlan109_macaddr_lsb_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan109_macaddr_lsb_fifo_cap fifo_update 0 3 }  { unicast_vlan109_macaddr_lsb_empty_n fifo_status 0 1 }  { unicast_vlan109_macaddr_lsb_read fifo_data 1 1 } } }
	unicast_vlan109_macaddr_msb { ap_fifo {  { unicast_vlan109_macaddr_msb_dout fifo_port_we 0 16 }  { unicast_vlan109_macaddr_msb_num_data_valid fifo_status_num_data_valid 0 3 }  { unicast_vlan109_macaddr_msb_fifo_cap fifo_update 0 3 }  { unicast_vlan109_macaddr_msb_empty_n fifo_status 0 1 }  { unicast_vlan109_macaddr_msb_read fifo_data 1 1 } } }
	log_all_mask { ap_fifo {  { log_all_mask_dout fifo_port_we 0 32 }  { log_all_mask_num_data_valid fifo_status_num_data_valid 0 3 }  { log_all_mask_fifo_cap fifo_update 0 3 }  { log_all_mask_empty_n fifo_status 0 1 }  { log_all_mask_read fifo_data 1 1 } } }
	vlan100_received { ap_vld {  { vlan100_received out_data 1 32 }  { vlan100_received_ap_vld out_vld 1 1 } } }
	vlan101_received { ap_vld {  { vlan101_received out_data 1 32 }  { vlan101_received_ap_vld out_vld 1 1 } } }
	vlan102_received { ap_vld {  { vlan102_received out_data 1 32 }  { vlan102_received_ap_vld out_vld 1 1 } } }
	vlan103_received { ap_vld {  { vlan103_received out_data 1 32 }  { vlan103_received_ap_vld out_vld 1 1 } } }
	vlan104_received { ap_vld {  { vlan104_received out_data 1 32 }  { vlan104_received_ap_vld out_vld 1 1 } } }
	vlan105_received { ap_vld {  { vlan105_received out_data 1 32 }  { vlan105_received_ap_vld out_vld 1 1 } } }
	vlan106_received { ap_vld {  { vlan106_received out_data 1 32 }  { vlan106_received_ap_vld out_vld 1 1 } } }
	vlan107_received { ap_vld {  { vlan107_received out_data 1 32 }  { vlan107_received_ap_vld out_vld 1 1 } } }
	vlan108_received { ap_vld {  { vlan108_received out_data 1 32 }  { vlan108_received_ap_vld out_vld 1 1 } } }
	vlan109_received { ap_vld {  { vlan109_received out_data 1 32 }  { vlan109_received_ap_vld out_vld 1 1 } } }
	droped { ap_vld {  { droped out_data 1 32 }  { droped_ap_vld out_vld 1 1 } } }
}
