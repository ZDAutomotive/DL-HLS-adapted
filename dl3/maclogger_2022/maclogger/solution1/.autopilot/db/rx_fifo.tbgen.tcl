set moduleName rx_fifo
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
set C_modelName {rx_fifo}
set C_modelType { void 0 }
set C_modelArgList {
	{ mac_fifo int 32 regular {axi_master 0}  }
	{ fifo_axi_lite int 64 regular  }
	{ fifo_axi_full int 32 regular {axi_master 0}  }
	{ fifo_axi_full1 int 64 regular  }
	{ timestamp int 64 regular  }
	{ data_buf int 32 regular {array 512 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mac_fifo", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "fifo","offset": { "type": "dynamic","port_name": "fifo","bundle": "axilites"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "fifo_axi_lite", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_axi_full", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "fifo_axi_full_offset","offset": { "type": "dynamic","port_name": "fifo_axi_full_offset"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "fifo_axi_full1", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "timestamp", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "data_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 110
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_mac_fifo_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_mac_fifo_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_mac_fifo_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_mac_fifo_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_mac_fifo_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_mac_fifo_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_mac_fifo_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_mac_fifo_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_mac_fifo_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_mac_fifo_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_mac_fifo_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_mac_fifo_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_mac_fifo_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_mac_fifo_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_mac_fifo_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_mac_fifo_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_mac_fifo_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_mac_fifo_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_mac_fifo_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_mac_fifo_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_mac_fifo_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_mac_fifo_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_mac_fifo_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_mac_fifo_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_mac_fifo_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_mac_fifo_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_mac_fifo_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_mac_fifo_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_mac_fifo_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_mac_fifo_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_mac_fifo_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_mac_fifo_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_mac_fifo_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_mac_fifo_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_mac_fifo_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_mac_fifo_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_mac_fifo_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_mac_fifo_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_mac_fifo_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_mac_fifo_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_mac_fifo_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_mac_fifo_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_mac_fifo_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_mac_fifo_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_mac_fifo_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_mac_fifo_BUSER sc_in sc_lv 1 signal 0 } 
	{ fifo_axi_lite sc_in sc_lv 64 signal 1 } 
	{ m_axi_fifo_axi_full_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_fifo_axi_full_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_fifo_axi_full_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_fifo_axi_full_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_fifo_axi_full_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_fifo_axi_full_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_fifo_axi_full_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_fifo_axi_full_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_fifo_axi_full_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_fifo_axi_full_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_fifo_axi_full_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_fifo_axi_full_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_fifo_axi_full_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_fifo_axi_full_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_fifo_axi_full_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_fifo_axi_full_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_fifo_axi_full_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_fifo_axi_full_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_fifo_axi_full_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_fifo_axi_full_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_fifo_axi_full_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_fifo_axi_full_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_fifo_axi_full_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_fifo_axi_full_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_fifo_axi_full_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_fifo_axi_full_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_fifo_axi_full_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_fifo_axi_full_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_fifo_axi_full_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_fifo_axi_full_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_fifo_axi_full_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_fifo_axi_full_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_fifo_axi_full_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_fifo_axi_full_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_fifo_axi_full_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_fifo_axi_full_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_fifo_axi_full_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_fifo_axi_full_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_fifo_axi_full_RFIFONUM sc_in sc_lv 9 signal 2 } 
	{ m_axi_fifo_axi_full_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_fifo_axi_full_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_fifo_axi_full_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_fifo_axi_full_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_fifo_axi_full_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_fifo_axi_full_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_fifo_axi_full_BUSER sc_in sc_lv 1 signal 2 } 
	{ fifo_axi_full1 sc_in sc_lv 64 signal 3 } 
	{ timestamp sc_in sc_lv 64 signal 4 } 
	{ data_buf_address0 sc_out sc_lv 9 signal 5 } 
	{ data_buf_ce0 sc_out sc_logic 1 signal 5 } 
	{ data_buf_we0 sc_out sc_logic 1 signal 5 } 
	{ data_buf_d0 sc_out sc_lv 32 signal 5 } 
	{ data_buf_address1 sc_out sc_lv 9 signal 5 } 
	{ data_buf_ce1 sc_out sc_logic 1 signal 5 } 
	{ data_buf_we1 sc_out sc_logic 1 signal 5 } 
	{ data_buf_d1 sc_out sc_lv 32 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_mac_fifo_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_fifo", "role": "AWVALID" }} , 
 	{ "name": "m_axi_mac_fifo_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_fifo", "role": "AWREADY" }} , 
 	{ "name": "m_axi_mac_fifo_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mac_fifo", "role": "AWADDR" }} , 
 	{ "name": "m_axi_mac_fifo_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_fifo", "role": "AWID" }} , 
 	{ "name": "m_axi_mac_fifo_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_fifo", "role": "AWLEN" }} , 
 	{ "name": "m_axi_mac_fifo_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mac_fifo", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_mac_fifo_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mac_fifo", "role": "AWBURST" }} , 
 	{ "name": "m_axi_mac_fifo_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mac_fifo", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_mac_fifo_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mac_fifo", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_mac_fifo_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mac_fifo", "role": "AWPROT" }} , 
 	{ "name": "m_axi_mac_fifo_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mac_fifo", "role": "AWQOS" }} , 
 	{ "name": "m_axi_mac_fifo_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mac_fifo", "role": "AWREGION" }} , 
 	{ "name": "m_axi_mac_fifo_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_fifo", "role": "AWUSER" }} , 
 	{ "name": "m_axi_mac_fifo_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_fifo", "role": "WVALID" }} , 
 	{ "name": "m_axi_mac_fifo_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_fifo", "role": "WREADY" }} , 
 	{ "name": "m_axi_mac_fifo_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_fifo", "role": "WDATA" }} , 
 	{ "name": "m_axi_mac_fifo_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mac_fifo", "role": "WSTRB" }} , 
 	{ "name": "m_axi_mac_fifo_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_fifo", "role": "WLAST" }} , 
 	{ "name": "m_axi_mac_fifo_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_fifo", "role": "WID" }} , 
 	{ "name": "m_axi_mac_fifo_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_fifo", "role": "WUSER" }} , 
 	{ "name": "m_axi_mac_fifo_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_fifo", "role": "ARVALID" }} , 
 	{ "name": "m_axi_mac_fifo_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_fifo", "role": "ARREADY" }} , 
 	{ "name": "m_axi_mac_fifo_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mac_fifo", "role": "ARADDR" }} , 
 	{ "name": "m_axi_mac_fifo_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_fifo", "role": "ARID" }} , 
 	{ "name": "m_axi_mac_fifo_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_fifo", "role": "ARLEN" }} , 
 	{ "name": "m_axi_mac_fifo_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mac_fifo", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_mac_fifo_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mac_fifo", "role": "ARBURST" }} , 
 	{ "name": "m_axi_mac_fifo_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mac_fifo", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_mac_fifo_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mac_fifo", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_mac_fifo_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mac_fifo", "role": "ARPROT" }} , 
 	{ "name": "m_axi_mac_fifo_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mac_fifo", "role": "ARQOS" }} , 
 	{ "name": "m_axi_mac_fifo_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mac_fifo", "role": "ARREGION" }} , 
 	{ "name": "m_axi_mac_fifo_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_fifo", "role": "ARUSER" }} , 
 	{ "name": "m_axi_mac_fifo_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_fifo", "role": "RVALID" }} , 
 	{ "name": "m_axi_mac_fifo_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_fifo", "role": "RREADY" }} , 
 	{ "name": "m_axi_mac_fifo_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_fifo", "role": "RDATA" }} , 
 	{ "name": "m_axi_mac_fifo_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_fifo", "role": "RLAST" }} , 
 	{ "name": "m_axi_mac_fifo_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_fifo", "role": "RID" }} , 
 	{ "name": "m_axi_mac_fifo_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mac_fifo", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_mac_fifo_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_fifo", "role": "RUSER" }} , 
 	{ "name": "m_axi_mac_fifo_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mac_fifo", "role": "RRESP" }} , 
 	{ "name": "m_axi_mac_fifo_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_fifo", "role": "BVALID" }} , 
 	{ "name": "m_axi_mac_fifo_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_fifo", "role": "BREADY" }} , 
 	{ "name": "m_axi_mac_fifo_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mac_fifo", "role": "BRESP" }} , 
 	{ "name": "m_axi_mac_fifo_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_fifo", "role": "BID" }} , 
 	{ "name": "m_axi_mac_fifo_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_fifo", "role": "BUSER" }} , 
 	{ "name": "fifo_axi_lite", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fifo_axi_lite", "role": "default" }} , 
 	{ "name": "m_axi_fifo_axi_full_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "AWVALID" }} , 
 	{ "name": "m_axi_fifo_axi_full_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "AWREADY" }} , 
 	{ "name": "m_axi_fifo_axi_full_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "AWADDR" }} , 
 	{ "name": "m_axi_fifo_axi_full_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "AWID" }} , 
 	{ "name": "m_axi_fifo_axi_full_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "AWLEN" }} , 
 	{ "name": "m_axi_fifo_axi_full_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_fifo_axi_full_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "AWBURST" }} , 
 	{ "name": "m_axi_fifo_axi_full_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_fifo_axi_full_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_fifo_axi_full_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "AWPROT" }} , 
 	{ "name": "m_axi_fifo_axi_full_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "AWQOS" }} , 
 	{ "name": "m_axi_fifo_axi_full_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "AWREGION" }} , 
 	{ "name": "m_axi_fifo_axi_full_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "AWUSER" }} , 
 	{ "name": "m_axi_fifo_axi_full_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "WVALID" }} , 
 	{ "name": "m_axi_fifo_axi_full_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "WREADY" }} , 
 	{ "name": "m_axi_fifo_axi_full_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "WDATA" }} , 
 	{ "name": "m_axi_fifo_axi_full_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "WSTRB" }} , 
 	{ "name": "m_axi_fifo_axi_full_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "WLAST" }} , 
 	{ "name": "m_axi_fifo_axi_full_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "WID" }} , 
 	{ "name": "m_axi_fifo_axi_full_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "WUSER" }} , 
 	{ "name": "m_axi_fifo_axi_full_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "ARVALID" }} , 
 	{ "name": "m_axi_fifo_axi_full_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "ARREADY" }} , 
 	{ "name": "m_axi_fifo_axi_full_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "ARADDR" }} , 
 	{ "name": "m_axi_fifo_axi_full_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "ARID" }} , 
 	{ "name": "m_axi_fifo_axi_full_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "ARLEN" }} , 
 	{ "name": "m_axi_fifo_axi_full_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_fifo_axi_full_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "ARBURST" }} , 
 	{ "name": "m_axi_fifo_axi_full_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_fifo_axi_full_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_fifo_axi_full_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "ARPROT" }} , 
 	{ "name": "m_axi_fifo_axi_full_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "ARQOS" }} , 
 	{ "name": "m_axi_fifo_axi_full_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "ARREGION" }} , 
 	{ "name": "m_axi_fifo_axi_full_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "ARUSER" }} , 
 	{ "name": "m_axi_fifo_axi_full_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "RVALID" }} , 
 	{ "name": "m_axi_fifo_axi_full_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "RREADY" }} , 
 	{ "name": "m_axi_fifo_axi_full_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "RDATA" }} , 
 	{ "name": "m_axi_fifo_axi_full_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "RLAST" }} , 
 	{ "name": "m_axi_fifo_axi_full_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "RID" }} , 
 	{ "name": "m_axi_fifo_axi_full_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_fifo_axi_full_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "RUSER" }} , 
 	{ "name": "m_axi_fifo_axi_full_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "RRESP" }} , 
 	{ "name": "m_axi_fifo_axi_full_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "BVALID" }} , 
 	{ "name": "m_axi_fifo_axi_full_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "BREADY" }} , 
 	{ "name": "m_axi_fifo_axi_full_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "BRESP" }} , 
 	{ "name": "m_axi_fifo_axi_full_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "BID" }} , 
 	{ "name": "m_axi_fifo_axi_full_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "BUSER" }} , 
 	{ "name": "fifo_axi_full1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fifo_axi_full1", "role": "default" }} , 
 	{ "name": "timestamp", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "timestamp", "role": "default" }} , 
 	{ "name": "data_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data_buf", "role": "address0" }} , 
 	{ "name": "data_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf", "role": "ce0" }} , 
 	{ "name": "data_buf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf", "role": "we0" }} , 
 	{ "name": "data_buf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_buf", "role": "d0" }} , 
 	{ "name": "data_buf_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data_buf", "role": "address1" }} , 
 	{ "name": "data_buf_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf", "role": "ce1" }} , 
 	{ "name": "data_buf_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf", "role": "we1" }} , 
 	{ "name": "data_buf_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_buf", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "6", "8"],
		"CDFG" : "rx_fifo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mac_fifo", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mac_fifo_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "mac_fifo_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_axi_lite", "Type" : "None", "Direction" : "I"},
			{"Name" : "fifo_axi_full", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fifo_axi_full_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_rx_fifo_Pipeline_4_fu_292", "Port" : "fifo_axi_full", "Inst_start_state" : "31", "Inst_end_state" : "32"},
					{"ID" : "2", "SubInstance" : "grp_rx_fifo_Pipeline_VITIS_LOOP_71_1_fu_265", "Port" : "fifo_axi_full", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "6", "SubInstance" : "grp_rx_fifo_Pipeline_rx_macfifo_data_fu_281", "Port" : "fifo_axi_full", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "fifo_axi_full1", "Type" : "None", "Direction" : "I"},
			{"Name" : "timestamp", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_buf", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_rx_fifo_Pipeline_4_fu_292", "Port" : "data_buf", "Inst_start_state" : "31", "Inst_end_state" : "32"},
					{"ID" : "4", "SubInstance" : "grp_rx_fifo_Pipeline_VITIS_LOOP_91_2_fu_273", "Port" : "data_buf", "Inst_start_state" : "20", "Inst_end_state" : "21"},
					{"ID" : "6", "SubInstance" : "grp_rx_fifo_Pipeline_rx_macfifo_data_fu_281", "Port" : "data_buf", "Inst_start_state" : "22", "Inst_end_state" : "23"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_buf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rx_fifo_Pipeline_VITIS_LOOP_71_1_fu_265", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "rx_fifo_Pipeline_VITIS_LOOP_71_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "fifo_axi_full", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fifo_axi_full_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "fifo_axi_full_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln73", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_buf", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_71_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rx_fifo_Pipeline_VITIS_LOOP_71_1_fu_265.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rx_fifo_Pipeline_VITIS_LOOP_91_2_fu_273", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "rx_fifo_Pipeline_VITIS_LOOP_91_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "select_ln91", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_buf", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rx_fifo_Pipeline_VITIS_LOOP_91_2_fu_273.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rx_fifo_Pipeline_rx_macfifo_data_fu_281", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "rx_fifo_Pipeline_rx_macfifo_data",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "fifo_axi_full", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fifo_axi_full_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "fifo_axi_full_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln73", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln97", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln100", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_buf", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "rx_macfifo_data", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage8", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage8_subdone", "QuitState" : "ap_ST_fsm_pp0_stage8", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage8_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rx_fifo_Pipeline_rx_macfifo_data_fu_281.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rx_fifo_Pipeline_4_fu_292", "Parent" : "0", "Child" : ["9"],
		"CDFG" : "rx_fifo_Pipeline_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "fifo_axi_full", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fifo_axi_full_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln73", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln3", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_buf", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "M", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rx_fifo_Pipeline_4_fu_292.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"}]}


set ArgLastReadFirstWriteLatency {
	rx_fifo {
		mac_fifo {Type I LastRead 17 FirstWrite -1}
		fifo_axi_lite {Type I LastRead 0 FirstWrite -1}
		fifo_axi_full {Type I LastRead 23 FirstWrite -1}
		fifo_axi_full1 {Type I LastRead 9 FirstWrite -1}
		timestamp {Type I LastRead 9 FirstWrite -1}
		data_buf {Type O LastRead -1 FirstWrite 1}}
	rx_fifo_Pipeline_VITIS_LOOP_71_1 {
		fifo_axi_full {Type I LastRead 8 FirstWrite -1}
		sext_ln73 {Type I LastRead 0 FirstWrite -1}
		tmp_buf {Type O LastRead -1 FirstWrite 9}}
	rx_fifo_Pipeline_VITIS_LOOP_91_2 {
		select_ln91 {Type I LastRead 0 FirstWrite -1}
		tmp_buf {Type I LastRead 0 FirstWrite -1}
		data_buf {Type O LastRead -1 FirstWrite 1}}
	rx_fifo_Pipeline_rx_macfifo_data {
		fifo_axi_full {Type I LastRead 23 FirstWrite -1}
		sext_ln73 {Type I LastRead 0 FirstWrite -1}
		sext_ln97 {Type I LastRead 0 FirstWrite -1}
		sext_ln100 {Type I LastRead 0 FirstWrite -1}
		data_buf {Type O LastRead -1 FirstWrite 9}}
	rx_fifo_Pipeline_4 {
		fifo_axi_full {Type I LastRead 0 FirstWrite -1}
		sext_ln73 {Type I LastRead 0 FirstWrite -1}
		or_ln3 {Type I LastRead 0 FirstWrite -1}
		data_buf {Type O LastRead -1 FirstWrite 1}
		M {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_mac_fifo_AWVALID VALID 1 1 }  { m_axi_mac_fifo_AWREADY READY 0 1 }  { m_axi_mac_fifo_AWADDR ADDR 1 64 }  { m_axi_mac_fifo_AWID ID 1 1 }  { m_axi_mac_fifo_AWLEN SIZE 1 32 }  { m_axi_mac_fifo_AWSIZE BURST 1 3 }  { m_axi_mac_fifo_AWBURST LOCK 1 2 }  { m_axi_mac_fifo_AWLOCK CACHE 1 2 }  { m_axi_mac_fifo_AWCACHE PROT 1 4 }  { m_axi_mac_fifo_AWPROT QOS 1 3 }  { m_axi_mac_fifo_AWQOS REGION 1 4 }  { m_axi_mac_fifo_AWREGION USER 1 4 }  { m_axi_mac_fifo_AWUSER DATA 1 1 }  { m_axi_mac_fifo_WVALID VALID 1 1 }  { m_axi_mac_fifo_WREADY READY 0 1 }  { m_axi_mac_fifo_WDATA FIFONUM 1 32 }  { m_axi_mac_fifo_WSTRB STRB 1 4 }  { m_axi_mac_fifo_WLAST LAST 1 1 }  { m_axi_mac_fifo_WID ID 1 1 }  { m_axi_mac_fifo_WUSER DATA 1 1 }  { m_axi_mac_fifo_ARVALID VALID 1 1 }  { m_axi_mac_fifo_ARREADY READY 0 1 }  { m_axi_mac_fifo_ARADDR ADDR 1 64 }  { m_axi_mac_fifo_ARID ID 1 1 }  { m_axi_mac_fifo_ARLEN SIZE 1 32 }  { m_axi_mac_fifo_ARSIZE BURST 1 3 }  { m_axi_mac_fifo_ARBURST LOCK 1 2 }  { m_axi_mac_fifo_ARLOCK CACHE 1 2 }  { m_axi_mac_fifo_ARCACHE PROT 1 4 }  { m_axi_mac_fifo_ARPROT QOS 1 3 }  { m_axi_mac_fifo_ARQOS REGION 1 4 }  { m_axi_mac_fifo_ARREGION USER 1 4 }  { m_axi_mac_fifo_ARUSER DATA 1 1 }  { m_axi_mac_fifo_RVALID VALID 0 1 }  { m_axi_mac_fifo_RREADY READY 1 1 }  { m_axi_mac_fifo_RDATA FIFONUM 0 32 }  { m_axi_mac_fifo_RLAST LAST 0 1 }  { m_axi_mac_fifo_RID ID 0 1 }  { m_axi_mac_fifo_RFIFONUM LEN 0 9 }  { m_axi_mac_fifo_RUSER DATA 0 1 }  { m_axi_mac_fifo_RRESP RESP 0 2 }  { m_axi_mac_fifo_BVALID VALID 0 1 }  { m_axi_mac_fifo_BREADY READY 1 1 }  { m_axi_mac_fifo_BRESP RESP 0 2 }  { m_axi_mac_fifo_BID ID 0 1 }  { m_axi_mac_fifo_BUSER DATA 0 1 } } }
	fifo_axi_lite { ap_none {  { fifo_axi_lite in_data 0 64 } } }
	 { m_axi {  { m_axi_fifo_axi_full_AWVALID VALID 1 1 }  { m_axi_fifo_axi_full_AWREADY READY 0 1 }  { m_axi_fifo_axi_full_AWADDR ADDR 1 64 }  { m_axi_fifo_axi_full_AWID ID 1 1 }  { m_axi_fifo_axi_full_AWLEN SIZE 1 32 }  { m_axi_fifo_axi_full_AWSIZE BURST 1 3 }  { m_axi_fifo_axi_full_AWBURST LOCK 1 2 }  { m_axi_fifo_axi_full_AWLOCK CACHE 1 2 }  { m_axi_fifo_axi_full_AWCACHE PROT 1 4 }  { m_axi_fifo_axi_full_AWPROT QOS 1 3 }  { m_axi_fifo_axi_full_AWQOS REGION 1 4 }  { m_axi_fifo_axi_full_AWREGION USER 1 4 }  { m_axi_fifo_axi_full_AWUSER DATA 1 1 }  { m_axi_fifo_axi_full_WVALID VALID 1 1 }  { m_axi_fifo_axi_full_WREADY READY 0 1 }  { m_axi_fifo_axi_full_WDATA FIFONUM 1 32 }  { m_axi_fifo_axi_full_WSTRB STRB 1 4 }  { m_axi_fifo_axi_full_WLAST LAST 1 1 }  { m_axi_fifo_axi_full_WID ID 1 1 }  { m_axi_fifo_axi_full_WUSER DATA 1 1 }  { m_axi_fifo_axi_full_ARVALID VALID 1 1 }  { m_axi_fifo_axi_full_ARREADY READY 0 1 }  { m_axi_fifo_axi_full_ARADDR ADDR 1 64 }  { m_axi_fifo_axi_full_ARID ID 1 1 }  { m_axi_fifo_axi_full_ARLEN SIZE 1 32 }  { m_axi_fifo_axi_full_ARSIZE BURST 1 3 }  { m_axi_fifo_axi_full_ARBURST LOCK 1 2 }  { m_axi_fifo_axi_full_ARLOCK CACHE 1 2 }  { m_axi_fifo_axi_full_ARCACHE PROT 1 4 }  { m_axi_fifo_axi_full_ARPROT QOS 1 3 }  { m_axi_fifo_axi_full_ARQOS REGION 1 4 }  { m_axi_fifo_axi_full_ARREGION USER 1 4 }  { m_axi_fifo_axi_full_ARUSER DATA 1 1 }  { m_axi_fifo_axi_full_RVALID VALID 0 1 }  { m_axi_fifo_axi_full_RREADY READY 1 1 }  { m_axi_fifo_axi_full_RDATA FIFONUM 0 32 }  { m_axi_fifo_axi_full_RLAST LAST 0 1 }  { m_axi_fifo_axi_full_RID ID 0 1 }  { m_axi_fifo_axi_full_RFIFONUM LEN 0 9 }  { m_axi_fifo_axi_full_RUSER DATA 0 1 }  { m_axi_fifo_axi_full_RRESP RESP 0 2 }  { m_axi_fifo_axi_full_BVALID VALID 0 1 }  { m_axi_fifo_axi_full_BREADY READY 1 1 }  { m_axi_fifo_axi_full_BRESP RESP 0 2 }  { m_axi_fifo_axi_full_BID ID 0 1 }  { m_axi_fifo_axi_full_BUSER DATA 0 1 } } }
	fifo_axi_full1 { ap_none {  { fifo_axi_full1 in_data 0 64 } } }
	timestamp { ap_none {  { timestamp in_data 0 64 } } }
	data_buf { ap_memory {  { data_buf_address0 mem_address 1 9 }  { data_buf_ce0 mem_ce 1 1 }  { data_buf_we0 mem_we 1 1 }  { data_buf_d0 mem_din 1 32 }  { data_buf_address1 MemPortADDR2 1 9 }  { data_buf_ce1 MemPortCE2 1 1 }  { data_buf_we1 MemPortWE2 1 1 }  { data_buf_d1 MemPortDIN2 1 32 } } }
}
