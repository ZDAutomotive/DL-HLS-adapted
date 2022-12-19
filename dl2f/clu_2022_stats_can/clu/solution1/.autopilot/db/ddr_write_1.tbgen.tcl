set moduleName ddr_write_1
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
set C_modelName {ddr_write.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ ps_ddr int 8 regular {axi_master 2}  }
	{ ddr_header int 32 regular  }
	{ device_id int 3 regular  }
	{ uart_fifo int 8 regular {array 1632 { 1 3 } 1 1 } {global 0}  }
	{ PL_Ctrl_fifo_index int 11 regular {array 8 { 0 3 } 0 1 } {global 1}  }
	{ PL_Header_pkt_len_bytes int 16 regular {array 8 { 0 3 } 0 1 } {global 1}  }
	{ PL_Ctrl_first_time int 1 regular {array 8 { 0 3 } 0 1 } {global 1}  }
	{ PL_Ctrl_first_timestamp int 64 regular {array 8 { 0 3 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ps_ddr", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "can_ddr","offset": { "type": "dynamic","port_name": "can_ddr","bundle": "EN"},"direction": "READWRITE"},{"cName": "uart_ddr","offset": { "type": "dynamic","port_name": "uart_ddr","bundle": "EN"},"direction": "READWRITE"},{"cName": "lin_ddr","offset": { "type": "dynamic","port_name": "lin_ddr","bundle": "EN"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "ddr_header", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "device_id", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "uart_fifo", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "PL_Ctrl_fifo_index", "interface" : "memory", "bitwidth" : 11, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "PL_Header_pkt_len_bytes", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "PL_Ctrl_first_time", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "PL_Ctrl_first_timestamp", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 73
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_ps_ddr_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_ps_ddr_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_ps_ddr_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_ps_ddr_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_ps_ddr_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_ps_ddr_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_ps_ddr_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_ps_ddr_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_ps_ddr_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_ps_ddr_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_ps_ddr_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_ps_ddr_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_ps_ddr_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_ps_ddr_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_ps_ddr_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_ps_ddr_WDATA sc_out sc_lv 8 signal 0 } 
	{ m_axi_ps_ddr_WSTRB sc_out sc_lv 1 signal 0 } 
	{ m_axi_ps_ddr_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_ps_ddr_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_ps_ddr_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_ps_ddr_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_ps_ddr_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_ps_ddr_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_ps_ddr_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_ps_ddr_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_ps_ddr_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_ps_ddr_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_ps_ddr_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_ps_ddr_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_ps_ddr_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_ps_ddr_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_ps_ddr_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_ps_ddr_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_ps_ddr_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_ps_ddr_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_ps_ddr_RDATA sc_in sc_lv 8 signal 0 } 
	{ m_axi_ps_ddr_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_ps_ddr_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_ps_ddr_RFIFONUM sc_in sc_lv 11 signal 0 } 
	{ m_axi_ps_ddr_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_ps_ddr_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_ps_ddr_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_ps_ddr_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_ps_ddr_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_ps_ddr_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_ps_ddr_BUSER sc_in sc_lv 1 signal 0 } 
	{ ddr_header sc_in sc_lv 32 signal 1 } 
	{ device_id sc_in sc_lv 3 signal 2 } 
	{ uart_fifo_address0 sc_out sc_lv 11 signal 3 } 
	{ uart_fifo_ce0 sc_out sc_logic 1 signal 3 } 
	{ uart_fifo_q0 sc_in sc_lv 8 signal 3 } 
	{ PL_Ctrl_fifo_index_address0 sc_out sc_lv 3 signal 4 } 
	{ PL_Ctrl_fifo_index_ce0 sc_out sc_logic 1 signal 4 } 
	{ PL_Ctrl_fifo_index_we0 sc_out sc_logic 1 signal 4 } 
	{ PL_Ctrl_fifo_index_d0 sc_out sc_lv 11 signal 4 } 
	{ PL_Header_pkt_len_bytes_address0 sc_out sc_lv 3 signal 5 } 
	{ PL_Header_pkt_len_bytes_ce0 sc_out sc_logic 1 signal 5 } 
	{ PL_Header_pkt_len_bytes_we0 sc_out sc_logic 1 signal 5 } 
	{ PL_Header_pkt_len_bytes_d0 sc_out sc_lv 16 signal 5 } 
	{ PL_Ctrl_first_time_address0 sc_out sc_lv 3 signal 6 } 
	{ PL_Ctrl_first_time_ce0 sc_out sc_logic 1 signal 6 } 
	{ PL_Ctrl_first_time_we0 sc_out sc_logic 1 signal 6 } 
	{ PL_Ctrl_first_time_d0 sc_out sc_lv 1 signal 6 } 
	{ PL_Ctrl_first_timestamp_address0 sc_out sc_lv 3 signal 7 } 
	{ PL_Ctrl_first_timestamp_ce0 sc_out sc_logic 1 signal 7 } 
	{ PL_Ctrl_first_timestamp_we0 sc_out sc_logic 1 signal 7 } 
	{ PL_Ctrl_first_timestamp_d0 sc_out sc_lv 64 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_ps_ddr_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "AWVALID" }} , 
 	{ "name": "m_axi_ps_ddr_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "AWREADY" }} , 
 	{ "name": "m_axi_ps_ddr_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ps_ddr", "role": "AWADDR" }} , 
 	{ "name": "m_axi_ps_ddr_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "AWID" }} , 
 	{ "name": "m_axi_ps_ddr_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ps_ddr", "role": "AWLEN" }} , 
 	{ "name": "m_axi_ps_ddr_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ps_ddr", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_ps_ddr_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ps_ddr", "role": "AWBURST" }} , 
 	{ "name": "m_axi_ps_ddr_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ps_ddr", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_ps_ddr_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ps_ddr", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_ps_ddr_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ps_ddr", "role": "AWPROT" }} , 
 	{ "name": "m_axi_ps_ddr_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ps_ddr", "role": "AWQOS" }} , 
 	{ "name": "m_axi_ps_ddr_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ps_ddr", "role": "AWREGION" }} , 
 	{ "name": "m_axi_ps_ddr_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "AWUSER" }} , 
 	{ "name": "m_axi_ps_ddr_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "WVALID" }} , 
 	{ "name": "m_axi_ps_ddr_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "WREADY" }} , 
 	{ "name": "m_axi_ps_ddr_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ps_ddr", "role": "WDATA" }} , 
 	{ "name": "m_axi_ps_ddr_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "WSTRB" }} , 
 	{ "name": "m_axi_ps_ddr_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "WLAST" }} , 
 	{ "name": "m_axi_ps_ddr_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "WID" }} , 
 	{ "name": "m_axi_ps_ddr_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "WUSER" }} , 
 	{ "name": "m_axi_ps_ddr_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "ARVALID" }} , 
 	{ "name": "m_axi_ps_ddr_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "ARREADY" }} , 
 	{ "name": "m_axi_ps_ddr_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ps_ddr", "role": "ARADDR" }} , 
 	{ "name": "m_axi_ps_ddr_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "ARID" }} , 
 	{ "name": "m_axi_ps_ddr_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ps_ddr", "role": "ARLEN" }} , 
 	{ "name": "m_axi_ps_ddr_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ps_ddr", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_ps_ddr_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ps_ddr", "role": "ARBURST" }} , 
 	{ "name": "m_axi_ps_ddr_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ps_ddr", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_ps_ddr_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ps_ddr", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_ps_ddr_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ps_ddr", "role": "ARPROT" }} , 
 	{ "name": "m_axi_ps_ddr_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ps_ddr", "role": "ARQOS" }} , 
 	{ "name": "m_axi_ps_ddr_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ps_ddr", "role": "ARREGION" }} , 
 	{ "name": "m_axi_ps_ddr_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "ARUSER" }} , 
 	{ "name": "m_axi_ps_ddr_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "RVALID" }} , 
 	{ "name": "m_axi_ps_ddr_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "RREADY" }} , 
 	{ "name": "m_axi_ps_ddr_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ps_ddr", "role": "RDATA" }} , 
 	{ "name": "m_axi_ps_ddr_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "RLAST" }} , 
 	{ "name": "m_axi_ps_ddr_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "RID" }} , 
 	{ "name": "m_axi_ps_ddr_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "ps_ddr", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_ps_ddr_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "RUSER" }} , 
 	{ "name": "m_axi_ps_ddr_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ps_ddr", "role": "RRESP" }} , 
 	{ "name": "m_axi_ps_ddr_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "BVALID" }} , 
 	{ "name": "m_axi_ps_ddr_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "BREADY" }} , 
 	{ "name": "m_axi_ps_ddr_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ps_ddr", "role": "BRESP" }} , 
 	{ "name": "m_axi_ps_ddr_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "BID" }} , 
 	{ "name": "m_axi_ps_ddr_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "BUSER" }} , 
 	{ "name": "ddr_header", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ddr_header", "role": "default" }} , 
 	{ "name": "device_id", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "device_id", "role": "default" }} , 
 	{ "name": "uart_fifo_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "uart_fifo", "role": "address0" }} , 
 	{ "name": "uart_fifo_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uart_fifo", "role": "ce0" }} , 
 	{ "name": "uart_fifo_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "uart_fifo", "role": "q0" }} , 
 	{ "name": "PL_Ctrl_fifo_index_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "PL_Ctrl_fifo_index", "role": "address0" }} , 
 	{ "name": "PL_Ctrl_fifo_index_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "PL_Ctrl_fifo_index", "role": "ce0" }} , 
 	{ "name": "PL_Ctrl_fifo_index_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "PL_Ctrl_fifo_index", "role": "we0" }} , 
 	{ "name": "PL_Ctrl_fifo_index_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "PL_Ctrl_fifo_index", "role": "d0" }} , 
 	{ "name": "PL_Header_pkt_len_bytes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "PL_Header_pkt_len_bytes", "role": "address0" }} , 
 	{ "name": "PL_Header_pkt_len_bytes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "PL_Header_pkt_len_bytes", "role": "ce0" }} , 
 	{ "name": "PL_Header_pkt_len_bytes_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "PL_Header_pkt_len_bytes", "role": "we0" }} , 
 	{ "name": "PL_Header_pkt_len_bytes_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "PL_Header_pkt_len_bytes", "role": "d0" }} , 
 	{ "name": "PL_Ctrl_first_time_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "PL_Ctrl_first_time", "role": "address0" }} , 
 	{ "name": "PL_Ctrl_first_time_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "PL_Ctrl_first_time", "role": "ce0" }} , 
 	{ "name": "PL_Ctrl_first_time_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "PL_Ctrl_first_time", "role": "we0" }} , 
 	{ "name": "PL_Ctrl_first_time_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "PL_Ctrl_first_time", "role": "d0" }} , 
 	{ "name": "PL_Ctrl_first_timestamp_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "PL_Ctrl_first_timestamp", "role": "address0" }} , 
 	{ "name": "PL_Ctrl_first_timestamp_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "PL_Ctrl_first_timestamp", "role": "ce0" }} , 
 	{ "name": "PL_Ctrl_first_timestamp_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "PL_Ctrl_first_timestamp", "role": "we0" }} , 
 	{ "name": "PL_Ctrl_first_timestamp_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "PL_Ctrl_first_timestamp", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "7", "8", "9"],
		"CDFG" : "ddr_write_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "359",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ps_ddr", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "ps_ddr_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "ps_ddr_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "ps_ddr_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "ps_ddr_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "ps_ddr_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_ddr_write_1_Pipeline_1_fu_354", "Port" : "ps_ddr", "Inst_start_state" : "52", "Inst_end_state" : "53"},
					{"ID" : "4", "SubInstance" : "grp_ddr_write_1_Pipeline_2_fu_364", "Port" : "ps_ddr", "Inst_start_state" : "59", "Inst_end_state" : "60"}]},
			{"Name" : "ddr_header", "Type" : "None", "Direction" : "I"},
			{"Name" : "device_id", "Type" : "None", "Direction" : "I"},
			{"Name" : "dropped_uart_counter", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "uart_fifo", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_ddr_write_1_Pipeline_1_fu_354", "Port" : "uart_fifo", "Inst_start_state" : "52", "Inst_end_state" : "53"}]},
			{"Name" : "PL_Ctrl_fifo_index", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "PL_Header_pkt_len_bytes", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "PL_Ctrl_first_time", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "PL_Ctrl_first_timestamp", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "72", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state11"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ringbuffer_header_bytes_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ddr_write_1_Pipeline_1_fu_354", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "ddr_write_1_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "207", "EstimateLatencyMax" : "207",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ps_ddr", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ps_ddr_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln154_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "uart_fifo", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ddr_write_1_Pipeline_1_fu_354.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ddr_write_1_Pipeline_2_fu_364", "Parent" : "0", "Child" : ["5", "6"],
		"CDFG" : "ddr_write_1_Pipeline_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ps_ddr", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ps_ddr_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln17", "Type" : "None", "Direction" : "I"},
			{"Name" : "write_index_array_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "write_index_array_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "write_index_array_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "write_index_array_3", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ddr_write_1_Pipeline_2_fu_364.mux_42_8_1_1_U5", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ddr_write_1_Pipeline_2_fu_364.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_32ns_32ns_32_36_seq_1_U13", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_9ns_32_1_1_U14", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_3ns_9ns_11_1_1_U15", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ddr_write_1 {
		ps_ddr {Type IO LastRead 58 FirstWrite 1}
		ddr_header {Type I LastRead 0 FirstWrite -1}
		device_id {Type I LastRead 6 FirstWrite -1}
		dropped_uart_counter {Type IO LastRead -1 FirstWrite -1}
		uart_fifo {Type I LastRead 0 FirstWrite -1}
		PL_Ctrl_fifo_index {Type O LastRead -1 FirstWrite 46}
		PL_Header_pkt_len_bytes {Type O LastRead -1 FirstWrite 46}
		PL_Ctrl_first_time {Type O LastRead -1 FirstWrite 46}
		PL_Ctrl_first_timestamp {Type O LastRead -1 FirstWrite 46}}
	ddr_write_1_Pipeline_1 {
		ps_ddr {Type O LastRead -1 FirstWrite 2}
		add_ln154_1 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		uart_fifo {Type I LastRead 0 FirstWrite -1}}
	ddr_write_1_Pipeline_2 {
		ps_ddr {Type O LastRead -1 FirstWrite 1}
		add_ln17 {Type I LastRead 0 FirstWrite -1}
		write_index_array_0 {Type I LastRead 0 FirstWrite -1}
		write_index_array_1 {Type I LastRead 0 FirstWrite -1}
		write_index_array_2 {Type I LastRead 0 FirstWrite -1}
		write_index_array_3 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "138", "Max" : "359"}
	, {"Name" : "Interval", "Min" : "138", "Max" : "359"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_ps_ddr_AWVALID VALID 1 1 }  { m_axi_ps_ddr_AWREADY READY 0 1 }  { m_axi_ps_ddr_AWADDR ADDR 1 32 }  { m_axi_ps_ddr_AWID ID 1 1 }  { m_axi_ps_ddr_AWLEN SIZE 1 32 }  { m_axi_ps_ddr_AWSIZE BURST 1 3 }  { m_axi_ps_ddr_AWBURST LOCK 1 2 }  { m_axi_ps_ddr_AWLOCK CACHE 1 2 }  { m_axi_ps_ddr_AWCACHE PROT 1 4 }  { m_axi_ps_ddr_AWPROT QOS 1 3 }  { m_axi_ps_ddr_AWQOS REGION 1 4 }  { m_axi_ps_ddr_AWREGION USER 1 4 }  { m_axi_ps_ddr_AWUSER DATA 1 1 }  { m_axi_ps_ddr_WVALID VALID 1 1 }  { m_axi_ps_ddr_WREADY READY 0 1 }  { m_axi_ps_ddr_WDATA FIFONUM 1 8 }  { m_axi_ps_ddr_WSTRB STRB 1 1 }  { m_axi_ps_ddr_WLAST LAST 1 1 }  { m_axi_ps_ddr_WID ID 1 1 }  { m_axi_ps_ddr_WUSER DATA 1 1 }  { m_axi_ps_ddr_ARVALID VALID 1 1 }  { m_axi_ps_ddr_ARREADY READY 0 1 }  { m_axi_ps_ddr_ARADDR ADDR 1 32 }  { m_axi_ps_ddr_ARID ID 1 1 }  { m_axi_ps_ddr_ARLEN SIZE 1 32 }  { m_axi_ps_ddr_ARSIZE BURST 1 3 }  { m_axi_ps_ddr_ARBURST LOCK 1 2 }  { m_axi_ps_ddr_ARLOCK CACHE 1 2 }  { m_axi_ps_ddr_ARCACHE PROT 1 4 }  { m_axi_ps_ddr_ARPROT QOS 1 3 }  { m_axi_ps_ddr_ARQOS REGION 1 4 }  { m_axi_ps_ddr_ARREGION USER 1 4 }  { m_axi_ps_ddr_ARUSER DATA 1 1 }  { m_axi_ps_ddr_RVALID VALID 0 1 }  { m_axi_ps_ddr_RREADY READY 1 1 }  { m_axi_ps_ddr_RDATA FIFONUM 0 8 }  { m_axi_ps_ddr_RLAST LAST 0 1 }  { m_axi_ps_ddr_RID ID 0 1 }  { m_axi_ps_ddr_RFIFONUM LEN 0 11 }  { m_axi_ps_ddr_RUSER DATA 0 1 }  { m_axi_ps_ddr_RRESP RESP 0 2 }  { m_axi_ps_ddr_BVALID VALID 0 1 }  { m_axi_ps_ddr_BREADY READY 1 1 }  { m_axi_ps_ddr_BRESP RESP 0 2 }  { m_axi_ps_ddr_BID ID 0 1 }  { m_axi_ps_ddr_BUSER DATA 0 1 } } }
	ddr_header { ap_none {  { ddr_header in_data 0 32 } } }
	device_id { ap_none {  { device_id in_data 0 3 } } }
	uart_fifo { ap_memory {  { uart_fifo_address0 mem_address 1 11 }  { uart_fifo_ce0 mem_ce 1 1 }  { uart_fifo_q0 mem_dout 0 8 } } }
	PL_Ctrl_fifo_index { ap_memory {  { PL_Ctrl_fifo_index_address0 mem_address 1 3 }  { PL_Ctrl_fifo_index_ce0 mem_ce 1 1 }  { PL_Ctrl_fifo_index_we0 mem_we 1 1 }  { PL_Ctrl_fifo_index_d0 mem_din 1 11 } } }
	PL_Header_pkt_len_bytes { ap_memory {  { PL_Header_pkt_len_bytes_address0 mem_address 1 3 }  { PL_Header_pkt_len_bytes_ce0 mem_ce 1 1 }  { PL_Header_pkt_len_bytes_we0 mem_we 1 1 }  { PL_Header_pkt_len_bytes_d0 mem_din 1 16 } } }
	PL_Ctrl_first_time { ap_memory {  { PL_Ctrl_first_time_address0 mem_address 1 3 }  { PL_Ctrl_first_time_ce0 mem_ce 1 1 }  { PL_Ctrl_first_time_we0 mem_we 1 1 }  { PL_Ctrl_first_time_d0 mem_din 1 1 } } }
	PL_Ctrl_first_timestamp { ap_memory {  { PL_Ctrl_first_timestamp_address0 mem_address 1 3 }  { PL_Ctrl_first_timestamp_ce0 mem_ce 1 1 }  { PL_Ctrl_first_timestamp_we0 mem_we 1 1 }  { PL_Ctrl_first_timestamp_d0 mem_din 1 64 } } }
}
