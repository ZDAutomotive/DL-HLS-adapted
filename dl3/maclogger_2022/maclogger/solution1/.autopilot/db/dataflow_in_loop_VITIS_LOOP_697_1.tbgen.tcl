set moduleName dataflow_in_loop_VITIS_LOOP_697_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {dataflow_in_loop_VITIS_LOOP_697_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ ps int 32 regular {axi_master 2}  }
	{ ddr int 64 regular  }
	{ driver int 64 regular  }
	{ mac_fifo int 32 regular {axi_master 0}  }
	{ fifo int 64 regular  }
	{ fifo_axi_full int 32 regular {axi_master 0}  }
	{ fifo_axi_full_offset int 64 regular  }
	{ timestamp int 64 regular  }
	{ logger_vlan_enable_mask int 32 regular {pointer 0}  }
	{ multicast_recv_enable int 32 regular {pointer 0}  }
	{ unicast_filter_enable int 32 regular {pointer 0}  }
	{ unicast_vlan100_macaddr_lsb int 32 regular {pointer 0}  }
	{ unicast_vlan100_macaddr_msb int 32 regular {pointer 0}  }
	{ unicast_vlan101_macaddr_lsb int 32 regular {pointer 0}  }
	{ unicast_vlan101_macaddr_msb int 32 regular {pointer 0}  }
	{ unicast_vlan102_macaddr_lsb int 32 regular {pointer 0}  }
	{ unicast_vlan102_macaddr_msb int 32 regular {pointer 0}  }
	{ unicast_vlan103_macaddr_lsb int 32 regular {pointer 0}  }
	{ unicast_vlan103_macaddr_msb int 32 regular {pointer 0}  }
	{ unicast_vlan104_macaddr_lsb int 32 regular {pointer 0}  }
	{ unicast_vlan104_macaddr_msb int 32 regular {pointer 0}  }
	{ unicast_vlan105_macaddr_lsb int 32 regular {pointer 0}  }
	{ unicast_vlan105_macaddr_msb int 32 regular {pointer 0}  }
	{ unicast_vlan106_macaddr_lsb int 32 regular {pointer 0}  }
	{ unicast_vlan106_macaddr_msb int 32 regular {pointer 0}  }
	{ unicast_vlan107_macaddr_lsb int 32 regular {pointer 0}  }
	{ unicast_vlan107_macaddr_msb int 32 regular {pointer 0}  }
	{ unicast_vlan108_macaddr_lsb int 32 regular {pointer 0}  }
	{ unicast_vlan108_macaddr_msb int 32 regular {pointer 0}  }
	{ unicast_vlan109_macaddr_lsb int 32 regular {pointer 0}  }
	{ unicast_vlan109_macaddr_msb int 32 regular {pointer 0}  }
	{ log_all_mask int 32 regular {pointer 0}  }
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
	{ "Name" : "ps", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "ddr","offset": { "type": "dynamic","port_name": "ddr","bundle": "axilites"},"direction": "READWRITE"},{"cName": "driver","offset": { "type": "dynamic","port_name": "driver","bundle": "axilites"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "ddr", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "driver", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mac_fifo", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "fifo","offset": { "type": "dynamic","port_name": "fifo","bundle": "axilites"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "fifo", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_axi_full", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "fifo_axi_full_offset","offset": { "type": "dynamic","port_name": "fifo_axi_full_offset"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "fifo_axi_full_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "timestamp", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "logger_vlan_enable_mask", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "multicast_recv_enable", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_filter_enable", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan100_macaddr_lsb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan100_macaddr_msb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan101_macaddr_lsb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan101_macaddr_msb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan102_macaddr_lsb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan102_macaddr_msb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan103_macaddr_lsb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan103_macaddr_msb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan104_macaddr_lsb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan104_macaddr_msb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan105_macaddr_lsb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan105_macaddr_msb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan106_macaddr_lsb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan106_macaddr_msb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan107_macaddr_lsb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan107_macaddr_msb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan108_macaddr_lsb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan108_macaddr_msb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan109_macaddr_lsb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "unicast_vlan109_macaddr_msb", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "log_all_mask", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
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
set portNum 225
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ m_axi_ps_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_ps_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_ps_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_ps_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_ps_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_ps_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_ps_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_ps_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_ps_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_ps_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_ps_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_ps_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_ps_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_ps_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_ps_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_ps_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_ps_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_ps_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_ps_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_ps_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_ps_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_ps_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_ps_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_ps_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_ps_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_ps_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_ps_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_ps_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_ps_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_ps_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_ps_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_ps_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_ps_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_ps_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_ps_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_ps_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_ps_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_ps_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_ps_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_ps_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_ps_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_ps_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_ps_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_ps_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_ps_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_ps_BUSER sc_in sc_lv 1 signal 0 } 
	{ ddr sc_in sc_lv 64 signal 1 } 
	{ driver sc_in sc_lv 64 signal 2 } 
	{ m_axi_mac_fifo_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_mac_fifo_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_mac_fifo_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_mac_fifo_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_mac_fifo_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_mac_fifo_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_mac_fifo_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_mac_fifo_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_mac_fifo_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_mac_fifo_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_mac_fifo_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_mac_fifo_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_mac_fifo_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_mac_fifo_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_mac_fifo_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_mac_fifo_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_mac_fifo_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_mac_fifo_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_mac_fifo_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_mac_fifo_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_mac_fifo_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_mac_fifo_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_mac_fifo_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_mac_fifo_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_mac_fifo_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_mac_fifo_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_mac_fifo_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_mac_fifo_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_mac_fifo_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_mac_fifo_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_mac_fifo_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_mac_fifo_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_mac_fifo_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_mac_fifo_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_mac_fifo_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_mac_fifo_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_mac_fifo_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_mac_fifo_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_mac_fifo_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_mac_fifo_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_mac_fifo_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_mac_fifo_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_mac_fifo_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_mac_fifo_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_mac_fifo_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_mac_fifo_BUSER sc_in sc_lv 1 signal 3 } 
	{ fifo sc_in sc_lv 64 signal 4 } 
	{ m_axi_fifo_axi_full_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_fifo_axi_full_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_fifo_axi_full_AWADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_fifo_axi_full_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_fifo_axi_full_AWLEN sc_out sc_lv 32 signal 5 } 
	{ m_axi_fifo_axi_full_AWSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_fifo_axi_full_AWBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_fifo_axi_full_AWLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_fifo_axi_full_AWCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_fifo_axi_full_AWPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_fifo_axi_full_AWQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_fifo_axi_full_AWREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_fifo_axi_full_AWUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_fifo_axi_full_WVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_fifo_axi_full_WREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_fifo_axi_full_WDATA sc_out sc_lv 32 signal 5 } 
	{ m_axi_fifo_axi_full_WSTRB sc_out sc_lv 4 signal 5 } 
	{ m_axi_fifo_axi_full_WLAST sc_out sc_logic 1 signal 5 } 
	{ m_axi_fifo_axi_full_WID sc_out sc_lv 1 signal 5 } 
	{ m_axi_fifo_axi_full_WUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_fifo_axi_full_ARVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_fifo_axi_full_ARREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_fifo_axi_full_ARADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_fifo_axi_full_ARID sc_out sc_lv 1 signal 5 } 
	{ m_axi_fifo_axi_full_ARLEN sc_out sc_lv 32 signal 5 } 
	{ m_axi_fifo_axi_full_ARSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_fifo_axi_full_ARBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_fifo_axi_full_ARLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_fifo_axi_full_ARCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_fifo_axi_full_ARPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_fifo_axi_full_ARQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_fifo_axi_full_ARREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_fifo_axi_full_ARUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_fifo_axi_full_RVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_fifo_axi_full_RREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_fifo_axi_full_RDATA sc_in sc_lv 32 signal 5 } 
	{ m_axi_fifo_axi_full_RLAST sc_in sc_logic 1 signal 5 } 
	{ m_axi_fifo_axi_full_RID sc_in sc_lv 1 signal 5 } 
	{ m_axi_fifo_axi_full_RFIFONUM sc_in sc_lv 9 signal 5 } 
	{ m_axi_fifo_axi_full_RUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_fifo_axi_full_RRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_fifo_axi_full_BVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_fifo_axi_full_BREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_fifo_axi_full_BRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_fifo_axi_full_BID sc_in sc_lv 1 signal 5 } 
	{ m_axi_fifo_axi_full_BUSER sc_in sc_lv 1 signal 5 } 
	{ fifo_axi_full_offset sc_in sc_lv 64 signal 6 } 
	{ timestamp sc_in sc_lv 64 signal 7 } 
	{ logger_vlan_enable_mask sc_in sc_lv 32 signal 8 } 
	{ multicast_recv_enable sc_in sc_lv 32 signal 9 } 
	{ unicast_filter_enable sc_in sc_lv 32 signal 10 } 
	{ unicast_vlan100_macaddr_lsb sc_in sc_lv 32 signal 11 } 
	{ unicast_vlan100_macaddr_msb sc_in sc_lv 32 signal 12 } 
	{ unicast_vlan101_macaddr_lsb sc_in sc_lv 32 signal 13 } 
	{ unicast_vlan101_macaddr_msb sc_in sc_lv 32 signal 14 } 
	{ unicast_vlan102_macaddr_lsb sc_in sc_lv 32 signal 15 } 
	{ unicast_vlan102_macaddr_msb sc_in sc_lv 32 signal 16 } 
	{ unicast_vlan103_macaddr_lsb sc_in sc_lv 32 signal 17 } 
	{ unicast_vlan103_macaddr_msb sc_in sc_lv 32 signal 18 } 
	{ unicast_vlan104_macaddr_lsb sc_in sc_lv 32 signal 19 } 
	{ unicast_vlan104_macaddr_msb sc_in sc_lv 32 signal 20 } 
	{ unicast_vlan105_macaddr_lsb sc_in sc_lv 32 signal 21 } 
	{ unicast_vlan105_macaddr_msb sc_in sc_lv 32 signal 22 } 
	{ unicast_vlan106_macaddr_lsb sc_in sc_lv 32 signal 23 } 
	{ unicast_vlan106_macaddr_msb sc_in sc_lv 32 signal 24 } 
	{ unicast_vlan107_macaddr_lsb sc_in sc_lv 32 signal 25 } 
	{ unicast_vlan107_macaddr_msb sc_in sc_lv 32 signal 26 } 
	{ unicast_vlan108_macaddr_lsb sc_in sc_lv 32 signal 27 } 
	{ unicast_vlan108_macaddr_msb sc_in sc_lv 32 signal 28 } 
	{ unicast_vlan109_macaddr_lsb sc_in sc_lv 32 signal 29 } 
	{ unicast_vlan109_macaddr_msb sc_in sc_lv 32 signal 30 } 
	{ log_all_mask sc_in sc_lv 32 signal 31 } 
	{ vlan100_received sc_out sc_lv 32 signal 32 } 
	{ vlan101_received sc_out sc_lv 32 signal 33 } 
	{ vlan102_received sc_out sc_lv 32 signal 34 } 
	{ vlan103_received sc_out sc_lv 32 signal 35 } 
	{ vlan104_received sc_out sc_lv 32 signal 36 } 
	{ vlan105_received sc_out sc_lv 32 signal 37 } 
	{ vlan106_received sc_out sc_lv 32 signal 38 } 
	{ vlan107_received sc_out sc_lv 32 signal 39 } 
	{ vlan108_received sc_out sc_lv 32 signal 40 } 
	{ vlan109_received sc_out sc_lv 32 signal 41 } 
	{ droped sc_out sc_lv 32 signal 42 } 
	{ logger_vlan_enable_mask_ap_vld sc_in sc_logic 1 invld 8 } 
	{ multicast_recv_enable_ap_vld sc_in sc_logic 1 invld 9 } 
	{ unicast_filter_enable_ap_vld sc_in sc_logic 1 invld 10 } 
	{ unicast_vlan100_macaddr_lsb_ap_vld sc_in sc_logic 1 invld 11 } 
	{ unicast_vlan100_macaddr_msb_ap_vld sc_in sc_logic 1 invld 12 } 
	{ unicast_vlan101_macaddr_lsb_ap_vld sc_in sc_logic 1 invld 13 } 
	{ unicast_vlan101_macaddr_msb_ap_vld sc_in sc_logic 1 invld 14 } 
	{ unicast_vlan102_macaddr_lsb_ap_vld sc_in sc_logic 1 invld 15 } 
	{ unicast_vlan102_macaddr_msb_ap_vld sc_in sc_logic 1 invld 16 } 
	{ unicast_vlan103_macaddr_lsb_ap_vld sc_in sc_logic 1 invld 17 } 
	{ unicast_vlan103_macaddr_msb_ap_vld sc_in sc_logic 1 invld 18 } 
	{ unicast_vlan104_macaddr_lsb_ap_vld sc_in sc_logic 1 invld 19 } 
	{ unicast_vlan104_macaddr_msb_ap_vld sc_in sc_logic 1 invld 20 } 
	{ unicast_vlan105_macaddr_lsb_ap_vld sc_in sc_logic 1 invld 21 } 
	{ unicast_vlan105_macaddr_msb_ap_vld sc_in sc_logic 1 invld 22 } 
	{ unicast_vlan106_macaddr_lsb_ap_vld sc_in sc_logic 1 invld 23 } 
	{ unicast_vlan106_macaddr_msb_ap_vld sc_in sc_logic 1 invld 24 } 
	{ unicast_vlan107_macaddr_lsb_ap_vld sc_in sc_logic 1 invld 25 } 
	{ unicast_vlan107_macaddr_msb_ap_vld sc_in sc_logic 1 invld 26 } 
	{ unicast_vlan108_macaddr_lsb_ap_vld sc_in sc_logic 1 invld 27 } 
	{ unicast_vlan108_macaddr_msb_ap_vld sc_in sc_logic 1 invld 28 } 
	{ unicast_vlan109_macaddr_lsb_ap_vld sc_in sc_logic 1 invld 29 } 
	{ unicast_vlan109_macaddr_msb_ap_vld sc_in sc_logic 1 invld 30 } 
	{ log_all_mask_ap_vld sc_in sc_logic 1 invld 31 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ddr_ap_vld sc_in sc_logic 1 invld 1 } 
	{ driver_ap_vld sc_in sc_logic 1 invld 2 } 
	{ fifo_ap_vld sc_in sc_logic 1 invld 4 } 
	{ fifo_axi_full_offset_ap_vld sc_in sc_logic 1 invld 6 } 
	{ timestamp_ap_vld sc_in sc_logic 1 invld 7 } 
	{ vlan100_received_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ vlan101_received_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ vlan102_received_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ vlan103_received_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ vlan104_received_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ vlan105_received_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ vlan106_received_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ vlan107_received_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ vlan108_received_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ vlan109_received_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ droped_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
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
 	{ "name": "ddr", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ddr", "role": "default" }} , 
 	{ "name": "driver", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "driver", "role": "default" }} , 
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
 	{ "name": "fifo", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fifo", "role": "default" }} , 
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
 	{ "name": "fifo_axi_full_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fifo_axi_full_offset", "role": "default" }} , 
 	{ "name": "timestamp", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "timestamp", "role": "default" }} , 
 	{ "name": "logger_vlan_enable_mask", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "logger_vlan_enable_mask", "role": "default" }} , 
 	{ "name": "multicast_recv_enable", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "multicast_recv_enable", "role": "default" }} , 
 	{ "name": "unicast_filter_enable", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_filter_enable", "role": "default" }} , 
 	{ "name": "unicast_vlan100_macaddr_lsb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan100_macaddr_lsb", "role": "default" }} , 
 	{ "name": "unicast_vlan100_macaddr_msb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan100_macaddr_msb", "role": "default" }} , 
 	{ "name": "unicast_vlan101_macaddr_lsb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan101_macaddr_lsb", "role": "default" }} , 
 	{ "name": "unicast_vlan101_macaddr_msb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan101_macaddr_msb", "role": "default" }} , 
 	{ "name": "unicast_vlan102_macaddr_lsb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan102_macaddr_lsb", "role": "default" }} , 
 	{ "name": "unicast_vlan102_macaddr_msb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan102_macaddr_msb", "role": "default" }} , 
 	{ "name": "unicast_vlan103_macaddr_lsb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan103_macaddr_lsb", "role": "default" }} , 
 	{ "name": "unicast_vlan103_macaddr_msb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan103_macaddr_msb", "role": "default" }} , 
 	{ "name": "unicast_vlan104_macaddr_lsb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan104_macaddr_lsb", "role": "default" }} , 
 	{ "name": "unicast_vlan104_macaddr_msb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan104_macaddr_msb", "role": "default" }} , 
 	{ "name": "unicast_vlan105_macaddr_lsb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan105_macaddr_lsb", "role": "default" }} , 
 	{ "name": "unicast_vlan105_macaddr_msb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan105_macaddr_msb", "role": "default" }} , 
 	{ "name": "unicast_vlan106_macaddr_lsb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan106_macaddr_lsb", "role": "default" }} , 
 	{ "name": "unicast_vlan106_macaddr_msb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan106_macaddr_msb", "role": "default" }} , 
 	{ "name": "unicast_vlan107_macaddr_lsb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan107_macaddr_lsb", "role": "default" }} , 
 	{ "name": "unicast_vlan107_macaddr_msb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan107_macaddr_msb", "role": "default" }} , 
 	{ "name": "unicast_vlan108_macaddr_lsb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan108_macaddr_lsb", "role": "default" }} , 
 	{ "name": "unicast_vlan108_macaddr_msb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan108_macaddr_msb", "role": "default" }} , 
 	{ "name": "unicast_vlan109_macaddr_lsb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan109_macaddr_lsb", "role": "default" }} , 
 	{ "name": "unicast_vlan109_macaddr_msb", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "unicast_vlan109_macaddr_msb", "role": "default" }} , 
 	{ "name": "log_all_mask", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "log_all_mask", "role": "default" }} , 
 	{ "name": "vlan100_received", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vlan100_received", "role": "default" }} , 
 	{ "name": "vlan101_received", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vlan101_received", "role": "default" }} , 
 	{ "name": "vlan102_received", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vlan102_received", "role": "default" }} , 
 	{ "name": "vlan103_received", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vlan103_received", "role": "default" }} , 
 	{ "name": "vlan104_received", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vlan104_received", "role": "default" }} , 
 	{ "name": "vlan105_received", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vlan105_received", "role": "default" }} , 
 	{ "name": "vlan106_received", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vlan106_received", "role": "default" }} , 
 	{ "name": "vlan107_received", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vlan107_received", "role": "default" }} , 
 	{ "name": "vlan108_received", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vlan108_received", "role": "default" }} , 
 	{ "name": "vlan109_received", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vlan109_received", "role": "default" }} , 
 	{ "name": "droped", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "droped", "role": "default" }} , 
 	{ "name": "logger_vlan_enable_mask_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "logger_vlan_enable_mask", "role": "ap_vld" }} , 
 	{ "name": "multicast_recv_enable_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "multicast_recv_enable", "role": "ap_vld" }} , 
 	{ "name": "unicast_filter_enable_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "unicast_filter_enable", "role": "ap_vld" }} , 
 	{ "name": "unicast_vlan100_macaddr_lsb_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "unicast_vlan100_macaddr_lsb", "role": "ap_vld" }} , 
 	{ "name": "unicast_vlan100_macaddr_msb_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "unicast_vlan100_macaddr_msb", "role": "ap_vld" }} , 
 	{ "name": "unicast_vlan101_macaddr_lsb_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "unicast_vlan101_macaddr_lsb", "role": "ap_vld" }} , 
 	{ "name": "unicast_vlan101_macaddr_msb_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "unicast_vlan101_macaddr_msb", "role": "ap_vld" }} , 
 	{ "name": "unicast_vlan102_macaddr_lsb_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "unicast_vlan102_macaddr_lsb", "role": "ap_vld" }} , 
 	{ "name": "unicast_vlan102_macaddr_msb_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "unicast_vlan102_macaddr_msb", "role": "ap_vld" }} , 
 	{ "name": "unicast_vlan103_macaddr_lsb_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "unicast_vlan103_macaddr_lsb", "role": "ap_vld" }} , 
 	{ "name": "unicast_vlan103_macaddr_msb_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "unicast_vlan103_macaddr_msb", "role": "ap_vld" }} , 
 	{ "name": "unicast_vlan104_macaddr_lsb_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "unicast_vlan104_macaddr_lsb", "role": "ap_vld" }} , 
 	{ "name": "unicast_vlan104_macaddr_msb_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "unicast_vlan104_macaddr_msb", "role": "ap_vld" }} , 
 	{ "name": "unicast_vlan105_macaddr_lsb_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "unicast_vlan105_macaddr_lsb", "role": "ap_vld" }} , 
 	{ "name": "unicast_vlan105_macaddr_msb_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "unicast_vlan105_macaddr_msb", "role": "ap_vld" }} , 
 	{ "name": "unicast_vlan106_macaddr_lsb_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "unicast_vlan106_macaddr_lsb", "role": "ap_vld" }} , 
 	{ "name": "unicast_vlan106_macaddr_msb_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "unicast_vlan106_macaddr_msb", "role": "ap_vld" }} , 
 	{ "name": "unicast_vlan107_macaddr_lsb_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "unicast_vlan107_macaddr_lsb", "role": "ap_vld" }} , 
 	{ "name": "unicast_vlan107_macaddr_msb_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "unicast_vlan107_macaddr_msb", "role": "ap_vld" }} , 
 	{ "name": "unicast_vlan108_macaddr_lsb_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "unicast_vlan108_macaddr_lsb", "role": "ap_vld" }} , 
 	{ "name": "unicast_vlan108_macaddr_msb_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "unicast_vlan108_macaddr_msb", "role": "ap_vld" }} , 
 	{ "name": "unicast_vlan109_macaddr_lsb_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "unicast_vlan109_macaddr_lsb", "role": "ap_vld" }} , 
 	{ "name": "unicast_vlan109_macaddr_msb_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "unicast_vlan109_macaddr_msb", "role": "ap_vld" }} , 
 	{ "name": "log_all_mask_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "log_all_mask", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ddr_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "ddr", "role": "ap_vld" }} , 
 	{ "name": "driver_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "driver", "role": "ap_vld" }} , 
 	{ "name": "fifo_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "fifo", "role": "ap_vld" }} , 
 	{ "name": "fifo_axi_full_offset_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "fifo_axi_full_offset", "role": "ap_vld" }} , 
 	{ "name": "timestamp_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "timestamp", "role": "ap_vld" }} , 
 	{ "name": "vlan100_received_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vlan100_received", "role": "ap_vld" }} , 
 	{ "name": "vlan101_received_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vlan101_received", "role": "ap_vld" }} , 
 	{ "name": "vlan102_received_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vlan102_received", "role": "ap_vld" }} , 
 	{ "name": "vlan103_received_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vlan103_received", "role": "ap_vld" }} , 
 	{ "name": "vlan104_received_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vlan104_received", "role": "ap_vld" }} , 
 	{ "name": "vlan105_received_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vlan105_received", "role": "ap_vld" }} , 
 	{ "name": "vlan106_received_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vlan106_received", "role": "ap_vld" }} , 
 	{ "name": "vlan107_received_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vlan107_received", "role": "ap_vld" }} , 
 	{ "name": "vlan108_received_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vlan108_received", "role": "ap_vld" }} , 
 	{ "name": "vlan109_received_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vlan109_received", "role": "ap_vld" }} , 
 	{ "name": "droped_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "droped", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "10", "20", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60"],
		"CDFG" : "dataflow_in_loop_VITIS_LOOP_697_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "4", "Name" : "entry_proc_U0"},
			{"ID" : "5", "Name" : "rx_ringbuffer_header_U0"},
			{"ID" : "10", "Name" : "rx_fifo_U0"}],
		"OutputProcess" : [
			{"ID" : "20", "Name" : "tx_ddr_U0"}],
		"Port" : [
			{"Name" : "ps", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "tx_ddr_U0", "Port" : "ps"},
					{"ID" : "5", "SubInstance" : "rx_ringbuffer_header_U0", "Port" : "ps"}]},
			{"Name" : "ddr", "Type" : "None", "Direction" : "I"},
			{"Name" : "driver", "Type" : "None", "Direction" : "I"},
			{"Name" : "mac_fifo", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "rx_fifo_U0", "Port" : "mac_fifo"}]},
			{"Name" : "fifo", "Type" : "None", "Direction" : "I"},
			{"Name" : "fifo_axi_full", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "rx_fifo_U0", "Port" : "fifo_axi_full"}]},
			{"Name" : "fifo_axi_full_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "timestamp", "Type" : "None", "Direction" : "I"},
			{"Name" : "logger_vlan_enable_mask", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "entry_proc_U0", "Port" : "logger_vlan_enable_mask"}]},
			{"Name" : "multicast_recv_enable", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "entry_proc_U0", "Port" : "multicast_recv_enable"}]},
			{"Name" : "unicast_filter_enable", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "entry_proc_U0", "Port" : "unicast_filter_enable"}]},
			{"Name" : "unicast_vlan100_macaddr_lsb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan100_macaddr_lsb"}]},
			{"Name" : "unicast_vlan100_macaddr_msb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan100_macaddr_msb"}]},
			{"Name" : "unicast_vlan101_macaddr_lsb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan101_macaddr_lsb"}]},
			{"Name" : "unicast_vlan101_macaddr_msb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan101_macaddr_msb"}]},
			{"Name" : "unicast_vlan102_macaddr_lsb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan102_macaddr_lsb"}]},
			{"Name" : "unicast_vlan102_macaddr_msb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan102_macaddr_msb"}]},
			{"Name" : "unicast_vlan103_macaddr_lsb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan103_macaddr_lsb"}]},
			{"Name" : "unicast_vlan103_macaddr_msb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan103_macaddr_msb"}]},
			{"Name" : "unicast_vlan104_macaddr_lsb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan104_macaddr_lsb"}]},
			{"Name" : "unicast_vlan104_macaddr_msb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan104_macaddr_msb"}]},
			{"Name" : "unicast_vlan105_macaddr_lsb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan105_macaddr_lsb"}]},
			{"Name" : "unicast_vlan105_macaddr_msb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan105_macaddr_msb"}]},
			{"Name" : "unicast_vlan106_macaddr_lsb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan106_macaddr_lsb"}]},
			{"Name" : "unicast_vlan106_macaddr_msb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan106_macaddr_msb"}]},
			{"Name" : "unicast_vlan107_macaddr_lsb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan107_macaddr_lsb"}]},
			{"Name" : "unicast_vlan107_macaddr_msb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan107_macaddr_msb"}]},
			{"Name" : "unicast_vlan108_macaddr_lsb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan108_macaddr_lsb"}]},
			{"Name" : "unicast_vlan108_macaddr_msb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan108_macaddr_msb"}]},
			{"Name" : "unicast_vlan109_macaddr_lsb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan109_macaddr_lsb"}]},
			{"Name" : "unicast_vlan109_macaddr_msb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan109_macaddr_msb"}]},
			{"Name" : "log_all_mask", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "entry_proc_U0", "Port" : "log_all_mask"}]},
			{"Name" : "vlan100_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "tx_ddr_U0", "Port" : "vlan100_received"}]},
			{"Name" : "vlan101_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "tx_ddr_U0", "Port" : "vlan101_received"}]},
			{"Name" : "vlan102_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "tx_ddr_U0", "Port" : "vlan102_received"}]},
			{"Name" : "vlan103_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "tx_ddr_U0", "Port" : "vlan103_received"}]},
			{"Name" : "vlan104_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "tx_ddr_U0", "Port" : "vlan104_received"}]},
			{"Name" : "vlan105_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "tx_ddr_U0", "Port" : "vlan105_received"}]},
			{"Name" : "vlan106_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "tx_ddr_U0", "Port" : "vlan106_received"}]},
			{"Name" : "vlan107_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "tx_ddr_U0", "Port" : "vlan107_received"}]},
			{"Name" : "vlan108_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "tx_ddr_U0", "Port" : "vlan108_received"}]},
			{"Name" : "vlan109_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "tx_ddr_U0", "Port" : "vlan109_received"}]},
			{"Name" : "droped", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "tx_ddr_U0", "Port" : "droped"}]},
			{"Name" : "counter_vlan100", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "tx_ddr_U0", "Port" : "counter_vlan100"}]},
			{"Name" : "counter_vlan101", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "tx_ddr_U0", "Port" : "counter_vlan101"}]},
			{"Name" : "counter_vlan102", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "tx_ddr_U0", "Port" : "counter_vlan102"}]},
			{"Name" : "counter_vlan103", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "tx_ddr_U0", "Port" : "counter_vlan103"}]},
			{"Name" : "counter_vlan104", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "tx_ddr_U0", "Port" : "counter_vlan104"}]},
			{"Name" : "counter_vlan105", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "tx_ddr_U0", "Port" : "counter_vlan105"}]},
			{"Name" : "counter_vlan106", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "tx_ddr_U0", "Port" : "counter_vlan106"}]},
			{"Name" : "counter_vlan107", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "tx_ddr_U0", "Port" : "counter_vlan107"}]},
			{"Name" : "counter_vlan108", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "tx_ddr_U0", "Port" : "counter_vlan108"}]},
			{"Name" : "counter_vlan109", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "tx_ddr_U0", "Port" : "counter_vlan109"}]},
			{"Name" : "counter_droped", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "tx_ddr_U0", "Port" : "counter_droped"}]},
			{"Name" : "last_log_tx_index", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "tx_ddr_U0", "Port" : "last_log_tx_index"}]},
			{"Name" : "last_tap_tx_index", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "tx_ddr_U0", "Port" : "last_tap_tx_index"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.log_header_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tap_header_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_buf3_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc_U0", "Parent" : "0",
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
			{"Name" : "logger_vlan_enable_mask_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "35", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "logger_vlan_enable_mask_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "multicast_recv_enable", "Type" : "None", "Direction" : "I"},
			{"Name" : "multicast_recv_enable_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "36", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "multicast_recv_enable_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_filter_enable", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_filter_enable_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "37", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_filter_enable_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan100_macaddr_lsb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan100_macaddr_lsb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "38", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan100_macaddr_lsb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan100_macaddr_msb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan100_macaddr_msb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "39", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan100_macaddr_msb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan101_macaddr_lsb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan101_macaddr_lsb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "40", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan101_macaddr_lsb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan101_macaddr_msb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan101_macaddr_msb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "41", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan101_macaddr_msb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan102_macaddr_lsb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan102_macaddr_lsb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "42", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan102_macaddr_lsb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan102_macaddr_msb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan102_macaddr_msb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "43", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan102_macaddr_msb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan103_macaddr_lsb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan103_macaddr_lsb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "44", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan103_macaddr_lsb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan103_macaddr_msb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan103_macaddr_msb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "45", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan103_macaddr_msb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan104_macaddr_lsb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan104_macaddr_lsb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "46", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan104_macaddr_lsb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan104_macaddr_msb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan104_macaddr_msb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "47", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan104_macaddr_msb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan105_macaddr_lsb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan105_macaddr_lsb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "48", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan105_macaddr_lsb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan105_macaddr_msb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan105_macaddr_msb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "49", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan105_macaddr_msb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan106_macaddr_lsb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan106_macaddr_lsb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "50", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan106_macaddr_lsb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan106_macaddr_msb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan106_macaddr_msb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "51", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan106_macaddr_msb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan107_macaddr_lsb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan107_macaddr_lsb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "52", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan107_macaddr_lsb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan107_macaddr_msb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan107_macaddr_msb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "53", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan107_macaddr_msb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan108_macaddr_lsb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan108_macaddr_lsb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "54", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan108_macaddr_lsb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan108_macaddr_msb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan108_macaddr_msb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "55", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan108_macaddr_msb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan109_macaddr_lsb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan109_macaddr_lsb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "56", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan109_macaddr_lsb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan109_macaddr_msb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan109_macaddr_msb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "57", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan109_macaddr_msb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "log_all_mask", "Type" : "None", "Direction" : "I"},
			{"Name" : "log_all_mask_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "58", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "log_all_mask_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rx_ringbuffer_header_U0", "Parent" : "0", "Child" : ["6", "8"],
		"CDFG" : "rx_ringbuffer_header",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ps", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ps_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_rx_ringbuffer_header_Pipeline_VITIS_LOOP_28_1_fu_74", "Port" : "ps", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "8", "SubInstance" : "grp_rx_ringbuffer_header_Pipeline_VITIS_LOOP_32_2_fu_83", "Port" : "ps", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "log_ddr", "Type" : "None", "Direction" : "I"},
			{"Name" : "tap_ddr", "Type" : "None", "Direction" : "I"},
			{"Name" : "log_header", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "1",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_rx_ringbuffer_header_Pipeline_VITIS_LOOP_28_1_fu_74", "Port" : "log_header", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "tap_header", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "2",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_rx_ringbuffer_header_Pipeline_VITIS_LOOP_32_2_fu_83", "Port" : "tap_header", "Inst_start_state" : "17", "Inst_end_state" : "18"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rx_ringbuffer_header_U0.grp_rx_ringbuffer_header_Pipeline_VITIS_LOOP_28_1_fu_74", "Parent" : "5", "Child" : ["7"],
		"CDFG" : "rx_ringbuffer_header_Pipeline_VITIS_LOOP_28_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ps", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ps_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln28", "Type" : "None", "Direction" : "I"},
			{"Name" : "log_header", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.rx_ringbuffer_header_U0.grp_rx_ringbuffer_header_Pipeline_VITIS_LOOP_28_1_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rx_ringbuffer_header_U0.grp_rx_ringbuffer_header_Pipeline_VITIS_LOOP_32_2_fu_83", "Parent" : "5", "Child" : ["9"],
		"CDFG" : "rx_ringbuffer_header_Pipeline_VITIS_LOOP_32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ps", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ps_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln32", "Type" : "None", "Direction" : "I"},
			{"Name" : "tap_header", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_32_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.rx_ringbuffer_header_U0.grp_rx_ringbuffer_header_Pipeline_VITIS_LOOP_32_2_fu_83.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rx_fifo_U0", "Parent" : "0", "Child" : ["11", "12", "14", "16", "18"],
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
					{"ID" : "18", "SubInstance" : "grp_rx_fifo_Pipeline_4_fu_292", "Port" : "fifo_axi_full", "Inst_start_state" : "31", "Inst_end_state" : "32"},
					{"ID" : "12", "SubInstance" : "grp_rx_fifo_Pipeline_VITIS_LOOP_71_1_fu_265", "Port" : "fifo_axi_full", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "16", "SubInstance" : "grp_rx_fifo_Pipeline_rx_macfifo_data_fu_281", "Port" : "fifo_axi_full", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "fifo_axi_full1", "Type" : "None", "Direction" : "I"},
			{"Name" : "timestamp", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_buf", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "3",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_rx_fifo_Pipeline_4_fu_292", "Port" : "data_buf", "Inst_start_state" : "31", "Inst_end_state" : "32"},
					{"ID" : "14", "SubInstance" : "grp_rx_fifo_Pipeline_VITIS_LOOP_91_2_fu_273", "Port" : "data_buf", "Inst_start_state" : "20", "Inst_end_state" : "21"},
					{"ID" : "16", "SubInstance" : "grp_rx_fifo_Pipeline_rx_macfifo_data_fu_281", "Port" : "data_buf", "Inst_start_state" : "22", "Inst_end_state" : "23"}]}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rx_fifo_U0.tmp_buf_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rx_fifo_U0.grp_rx_fifo_Pipeline_VITIS_LOOP_71_1_fu_265", "Parent" : "10", "Child" : ["13"],
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
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.rx_fifo_U0.grp_rx_fifo_Pipeline_VITIS_LOOP_71_1_fu_265.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rx_fifo_U0.grp_rx_fifo_Pipeline_VITIS_LOOP_91_2_fu_273", "Parent" : "10", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.rx_fifo_U0.grp_rx_fifo_Pipeline_VITIS_LOOP_91_2_fu_273.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rx_fifo_U0.grp_rx_fifo_Pipeline_rx_macfifo_data_fu_281", "Parent" : "10", "Child" : ["17"],
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
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.rx_fifo_U0.grp_rx_fifo_Pipeline_rx_macfifo_data_fu_281.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rx_fifo_U0.grp_rx_fifo_Pipeline_4_fu_292", "Parent" : "10", "Child" : ["19"],
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
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.rx_fifo_U0.grp_rx_fifo_Pipeline_4_fu_292.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tx_ddr_U0", "Parent" : "0", "Child" : ["21", "22", "23", "25", "27", "29", "31", "32", "33", "34"],
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
			{"Name" : "data_buf", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "3",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_tx_ddr_Pipeline_tx_2_tap_ddr_fu_1320", "Port" : "data_buf", "Inst_start_state" : "106", "Inst_end_state" : "107"},
					{"ID" : "25", "SubInstance" : "grp_tx_ddr_Pipeline_tx_2_log_ddr_fu_1303", "Port" : "data_buf", "Inst_start_state" : "58", "Inst_end_state" : "59"}]},
			{"Name" : "log_header1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "1",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_tx_ddr_Pipeline_VITIS_LOOP_471_1_fu_1296", "Port" : "log_header1", "Inst_start_state" : "18", "Inst_end_state" : "19"}]},
			{"Name" : "tap_header1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "2",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_tx_ddr_Pipeline_VITIS_LOOP_531_2_fu_1313", "Port" : "tap_header1", "Inst_start_state" : "66", "Inst_end_state" : "67"}]},
			{"Name" : "ps", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ps_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "ps_blk_n_B", "Type" : "RtlSignal"},
					{"Name" : "ps_blk_n_W", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_tx_ddr_Pipeline_tx_2_tap_ddr_fu_1320", "Port" : "ps", "Inst_start_state" : "106", "Inst_end_state" : "107"},
					{"ID" : "25", "SubInstance" : "grp_tx_ddr_Pipeline_tx_2_log_ddr_fu_1303", "Port" : "ps", "Inst_start_state" : "58", "Inst_end_state" : "59"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "59", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "60", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "logger_vlan_enable_mask", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "35", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "logger_vlan_enable_mask_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "multicast_recv_enable", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "36", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "multicast_recv_enable_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_filter_enable", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "37", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_filter_enable_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan100_macaddr_lsb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "38", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan100_macaddr_lsb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan100_macaddr_msb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "39", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan100_macaddr_msb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan101_macaddr_lsb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "40", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan101_macaddr_lsb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan101_macaddr_msb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "41", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan101_macaddr_msb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan102_macaddr_lsb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "42", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan102_macaddr_lsb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan102_macaddr_msb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "43", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan102_macaddr_msb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan103_macaddr_lsb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "44", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan103_macaddr_lsb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan103_macaddr_msb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "45", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan103_macaddr_msb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan104_macaddr_lsb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "46", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan104_macaddr_lsb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan104_macaddr_msb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "47", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan104_macaddr_msb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan105_macaddr_lsb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "48", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan105_macaddr_lsb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan105_macaddr_msb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "49", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan105_macaddr_msb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan106_macaddr_lsb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "50", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan106_macaddr_lsb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan106_macaddr_msb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "51", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan106_macaddr_msb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan107_macaddr_lsb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "52", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan107_macaddr_lsb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan107_macaddr_msb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "53", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan107_macaddr_msb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan108_macaddr_lsb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "54", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan108_macaddr_lsb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan108_macaddr_msb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "55", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan108_macaddr_msb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan109_macaddr_lsb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "56", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan109_macaddr_lsb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan109_macaddr_msb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "57", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan109_macaddr_msb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "log_all_mask", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "58", "DependentChanDepth" : "3", "DependentChanType" : "2",
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
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tx_ddr_U0.log_header_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tx_ddr_U0.tap_header_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tx_ddr_U0.grp_tx_ddr_Pipeline_VITIS_LOOP_471_1_fu_1296", "Parent" : "20", "Child" : ["24"],
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
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.tx_ddr_U0.grp_tx_ddr_Pipeline_VITIS_LOOP_471_1_fu_1296.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tx_ddr_U0.grp_tx_ddr_Pipeline_tx_2_log_ddr_fu_1303", "Parent" : "20", "Child" : ["26"],
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
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.tx_ddr_U0.grp_tx_ddr_Pipeline_tx_2_log_ddr_fu_1303.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tx_ddr_U0.grp_tx_ddr_Pipeline_VITIS_LOOP_531_2_fu_1313", "Parent" : "20", "Child" : ["28"],
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
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.tx_ddr_U0.grp_tx_ddr_Pipeline_VITIS_LOOP_531_2_fu_1313.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tx_ddr_U0.grp_tx_ddr_Pipeline_tx_2_tap_ddr_fu_1320", "Parent" : "20", "Child" : ["30"],
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
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.tx_ddr_U0.grp_tx_ddr_Pipeline_tx_2_tap_ddr_fu_1320.flow_control_loop_pipe_sequential_init_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tx_ddr_U0.urem_32ns_32ns_32_36_seq_1_U95", "Parent" : "20"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tx_ddr_U0.mul_32s_32s_32_1_1_U96", "Parent" : "20"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tx_ddr_U0.urem_32ns_32ns_32_36_seq_1_U97", "Parent" : "20"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tx_ddr_U0.mul_32s_32s_32_1_1_U98", "Parent" : "20"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.logger_vlan_enable_mask_c_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.multicast_recv_enable_c_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unicast_filter_enable_c_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unicast_vlan100_macaddr_lsb_c_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unicast_vlan100_macaddr_msb_c_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unicast_vlan101_macaddr_lsb_c_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unicast_vlan101_macaddr_msb_c_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unicast_vlan102_macaddr_lsb_c_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unicast_vlan102_macaddr_msb_c_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unicast_vlan103_macaddr_lsb_c_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unicast_vlan103_macaddr_msb_c_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unicast_vlan104_macaddr_lsb_c_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unicast_vlan104_macaddr_msb_c_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unicast_vlan105_macaddr_lsb_c_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unicast_vlan105_macaddr_msb_c_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unicast_vlan106_macaddr_lsb_c_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unicast_vlan106_macaddr_msb_c_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unicast_vlan107_macaddr_lsb_c_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unicast_vlan107_macaddr_msb_c_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unicast_vlan108_macaddr_lsb_c_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unicast_vlan108_macaddr_msb_c_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unicast_vlan109_macaddr_lsb_c_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unicast_vlan109_macaddr_msb_c_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.log_all_mask_c_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ddr_c_channel_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.driver_c_channel_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dataflow_in_loop_VITIS_LOOP_697_1 {
		ps {Type IO LastRead 99 FirstWrite -1}
		ddr {Type I LastRead 0 FirstWrite -1}
		driver {Type I LastRead 0 FirstWrite -1}
		mac_fifo {Type I LastRead 17 FirstWrite -1}
		fifo {Type I LastRead 0 FirstWrite -1}
		fifo_axi_full {Type I LastRead 23 FirstWrite -1}
		fifo_axi_full_offset {Type I LastRead 0 FirstWrite -1}
		timestamp {Type I LastRead 0 FirstWrite -1}
		logger_vlan_enable_mask {Type I LastRead 0 FirstWrite -1}
		multicast_recv_enable {Type I LastRead 0 FirstWrite -1}
		unicast_filter_enable {Type I LastRead 0 FirstWrite -1}
		unicast_vlan100_macaddr_lsb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan100_macaddr_msb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan101_macaddr_lsb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan101_macaddr_msb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan102_macaddr_lsb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan102_macaddr_msb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan103_macaddr_lsb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan103_macaddr_msb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan104_macaddr_lsb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan104_macaddr_msb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan105_macaddr_lsb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan105_macaddr_msb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan106_macaddr_lsb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan106_macaddr_msb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan107_macaddr_lsb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan107_macaddr_msb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan108_macaddr_lsb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan108_macaddr_msb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan109_macaddr_lsb {Type I LastRead 0 FirstWrite -1}
		unicast_vlan109_macaddr_msb {Type I LastRead 0 FirstWrite -1}
		log_all_mask {Type I LastRead 0 FirstWrite -1}
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
		log_all_mask_c {Type O LastRead -1 FirstWrite 0}}
	rx_ringbuffer_header {
		ps {Type I LastRead 9 FirstWrite -1}
		log_ddr {Type I LastRead 0 FirstWrite -1}
		tap_ddr {Type I LastRead 9 FirstWrite -1}
		log_header {Type O LastRead -1 FirstWrite 2}
		tap_header {Type O LastRead -1 FirstWrite 2}}
	rx_ringbuffer_header_Pipeline_VITIS_LOOP_28_1 {
		ps {Type I LastRead 1 FirstWrite -1}
		sext_ln28 {Type I LastRead 0 FirstWrite -1}
		log_header {Type O LastRead -1 FirstWrite 2}}
	rx_ringbuffer_header_Pipeline_VITIS_LOOP_32_2 {
		ps {Type I LastRead 1 FirstWrite -1}
		sext_ln32 {Type I LastRead 0 FirstWrite -1}
		tap_header {Type O LastRead -1 FirstWrite 2}}
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
		M {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_ps_AWVALID VALID 1 1 }  { m_axi_ps_AWREADY READY 0 1 }  { m_axi_ps_AWADDR ADDR 1 64 }  { m_axi_ps_AWID ID 1 1 }  { m_axi_ps_AWLEN SIZE 1 32 }  { m_axi_ps_AWSIZE BURST 1 3 }  { m_axi_ps_AWBURST LOCK 1 2 }  { m_axi_ps_AWLOCK CACHE 1 2 }  { m_axi_ps_AWCACHE PROT 1 4 }  { m_axi_ps_AWPROT QOS 1 3 }  { m_axi_ps_AWQOS REGION 1 4 }  { m_axi_ps_AWREGION USER 1 4 }  { m_axi_ps_AWUSER DATA 1 1 }  { m_axi_ps_WVALID VALID 1 1 }  { m_axi_ps_WREADY READY 0 1 }  { m_axi_ps_WDATA FIFONUM 1 32 }  { m_axi_ps_WSTRB STRB 1 4 }  { m_axi_ps_WLAST LAST 1 1 }  { m_axi_ps_WID ID 1 1 }  { m_axi_ps_WUSER DATA 1 1 }  { m_axi_ps_ARVALID VALID 1 1 }  { m_axi_ps_ARREADY READY 0 1 }  { m_axi_ps_ARADDR ADDR 1 64 }  { m_axi_ps_ARID ID 1 1 }  { m_axi_ps_ARLEN SIZE 1 32 }  { m_axi_ps_ARSIZE BURST 1 3 }  { m_axi_ps_ARBURST LOCK 1 2 }  { m_axi_ps_ARLOCK CACHE 1 2 }  { m_axi_ps_ARCACHE PROT 1 4 }  { m_axi_ps_ARPROT QOS 1 3 }  { m_axi_ps_ARQOS REGION 1 4 }  { m_axi_ps_ARREGION USER 1 4 }  { m_axi_ps_ARUSER DATA 1 1 }  { m_axi_ps_RVALID VALID 0 1 }  { m_axi_ps_RREADY READY 1 1 }  { m_axi_ps_RDATA FIFONUM 0 32 }  { m_axi_ps_RLAST LAST 0 1 }  { m_axi_ps_RID ID 0 1 }  { m_axi_ps_RFIFONUM LEN 0 9 }  { m_axi_ps_RUSER DATA 0 1 }  { m_axi_ps_RRESP RESP 0 2 }  { m_axi_ps_BVALID VALID 0 1 }  { m_axi_ps_BREADY READY 1 1 }  { m_axi_ps_BRESP RESP 0 2 }  { m_axi_ps_BID ID 0 1 }  { m_axi_ps_BUSER DATA 0 1 } } }
	ddr { ap_none {  { ddr in_data 0 64 }  { ddr_ap_vld in_vld 0 1 } } }
	driver { ap_none {  { driver in_data 0 64 }  { driver_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_mac_fifo_AWVALID VALID 1 1 }  { m_axi_mac_fifo_AWREADY READY 0 1 }  { m_axi_mac_fifo_AWADDR ADDR 1 64 }  { m_axi_mac_fifo_AWID ID 1 1 }  { m_axi_mac_fifo_AWLEN SIZE 1 32 }  { m_axi_mac_fifo_AWSIZE BURST 1 3 }  { m_axi_mac_fifo_AWBURST LOCK 1 2 }  { m_axi_mac_fifo_AWLOCK CACHE 1 2 }  { m_axi_mac_fifo_AWCACHE PROT 1 4 }  { m_axi_mac_fifo_AWPROT QOS 1 3 }  { m_axi_mac_fifo_AWQOS REGION 1 4 }  { m_axi_mac_fifo_AWREGION USER 1 4 }  { m_axi_mac_fifo_AWUSER DATA 1 1 }  { m_axi_mac_fifo_WVALID VALID 1 1 }  { m_axi_mac_fifo_WREADY READY 0 1 }  { m_axi_mac_fifo_WDATA FIFONUM 1 32 }  { m_axi_mac_fifo_WSTRB STRB 1 4 }  { m_axi_mac_fifo_WLAST LAST 1 1 }  { m_axi_mac_fifo_WID ID 1 1 }  { m_axi_mac_fifo_WUSER DATA 1 1 }  { m_axi_mac_fifo_ARVALID VALID 1 1 }  { m_axi_mac_fifo_ARREADY READY 0 1 }  { m_axi_mac_fifo_ARADDR ADDR 1 64 }  { m_axi_mac_fifo_ARID ID 1 1 }  { m_axi_mac_fifo_ARLEN SIZE 1 32 }  { m_axi_mac_fifo_ARSIZE BURST 1 3 }  { m_axi_mac_fifo_ARBURST LOCK 1 2 }  { m_axi_mac_fifo_ARLOCK CACHE 1 2 }  { m_axi_mac_fifo_ARCACHE PROT 1 4 }  { m_axi_mac_fifo_ARPROT QOS 1 3 }  { m_axi_mac_fifo_ARQOS REGION 1 4 }  { m_axi_mac_fifo_ARREGION USER 1 4 }  { m_axi_mac_fifo_ARUSER DATA 1 1 }  { m_axi_mac_fifo_RVALID VALID 0 1 }  { m_axi_mac_fifo_RREADY READY 1 1 }  { m_axi_mac_fifo_RDATA FIFONUM 0 32 }  { m_axi_mac_fifo_RLAST LAST 0 1 }  { m_axi_mac_fifo_RID ID 0 1 }  { m_axi_mac_fifo_RFIFONUM LEN 0 9 }  { m_axi_mac_fifo_RUSER DATA 0 1 }  { m_axi_mac_fifo_RRESP RESP 0 2 }  { m_axi_mac_fifo_BVALID VALID 0 1 }  { m_axi_mac_fifo_BREADY READY 1 1 }  { m_axi_mac_fifo_BRESP RESP 0 2 }  { m_axi_mac_fifo_BID ID 0 1 }  { m_axi_mac_fifo_BUSER DATA 0 1 } } }
	fifo { ap_none {  { fifo in_data 0 64 }  { fifo_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_fifo_axi_full_AWVALID VALID 1 1 }  { m_axi_fifo_axi_full_AWREADY READY 0 1 }  { m_axi_fifo_axi_full_AWADDR ADDR 1 64 }  { m_axi_fifo_axi_full_AWID ID 1 1 }  { m_axi_fifo_axi_full_AWLEN SIZE 1 32 }  { m_axi_fifo_axi_full_AWSIZE BURST 1 3 }  { m_axi_fifo_axi_full_AWBURST LOCK 1 2 }  { m_axi_fifo_axi_full_AWLOCK CACHE 1 2 }  { m_axi_fifo_axi_full_AWCACHE PROT 1 4 }  { m_axi_fifo_axi_full_AWPROT QOS 1 3 }  { m_axi_fifo_axi_full_AWQOS REGION 1 4 }  { m_axi_fifo_axi_full_AWREGION USER 1 4 }  { m_axi_fifo_axi_full_AWUSER DATA 1 1 }  { m_axi_fifo_axi_full_WVALID VALID 1 1 }  { m_axi_fifo_axi_full_WREADY READY 0 1 }  { m_axi_fifo_axi_full_WDATA FIFONUM 1 32 }  { m_axi_fifo_axi_full_WSTRB STRB 1 4 }  { m_axi_fifo_axi_full_WLAST LAST 1 1 }  { m_axi_fifo_axi_full_WID ID 1 1 }  { m_axi_fifo_axi_full_WUSER DATA 1 1 }  { m_axi_fifo_axi_full_ARVALID VALID 1 1 }  { m_axi_fifo_axi_full_ARREADY READY 0 1 }  { m_axi_fifo_axi_full_ARADDR ADDR 1 64 }  { m_axi_fifo_axi_full_ARID ID 1 1 }  { m_axi_fifo_axi_full_ARLEN SIZE 1 32 }  { m_axi_fifo_axi_full_ARSIZE BURST 1 3 }  { m_axi_fifo_axi_full_ARBURST LOCK 1 2 }  { m_axi_fifo_axi_full_ARLOCK CACHE 1 2 }  { m_axi_fifo_axi_full_ARCACHE PROT 1 4 }  { m_axi_fifo_axi_full_ARPROT QOS 1 3 }  { m_axi_fifo_axi_full_ARQOS REGION 1 4 }  { m_axi_fifo_axi_full_ARREGION USER 1 4 }  { m_axi_fifo_axi_full_ARUSER DATA 1 1 }  { m_axi_fifo_axi_full_RVALID VALID 0 1 }  { m_axi_fifo_axi_full_RREADY READY 1 1 }  { m_axi_fifo_axi_full_RDATA FIFONUM 0 32 }  { m_axi_fifo_axi_full_RLAST LAST 0 1 }  { m_axi_fifo_axi_full_RID ID 0 1 }  { m_axi_fifo_axi_full_RFIFONUM LEN 0 9 }  { m_axi_fifo_axi_full_RUSER DATA 0 1 }  { m_axi_fifo_axi_full_RRESP RESP 0 2 }  { m_axi_fifo_axi_full_BVALID VALID 0 1 }  { m_axi_fifo_axi_full_BREADY READY 1 1 }  { m_axi_fifo_axi_full_BRESP RESP 0 2 }  { m_axi_fifo_axi_full_BID ID 0 1 }  { m_axi_fifo_axi_full_BUSER DATA 0 1 } } }
	fifo_axi_full_offset { ap_none {  { fifo_axi_full_offset in_data 0 64 }  { fifo_axi_full_offset_ap_vld in_vld 0 1 } } }
	timestamp { ap_none {  { timestamp in_data 0 64 }  { timestamp_ap_vld in_vld 0 1 } } }
	logger_vlan_enable_mask { ap_none {  { logger_vlan_enable_mask in_data 0 32 }  { logger_vlan_enable_mask_ap_vld in_vld 0 1 } } }
	multicast_recv_enable { ap_none {  { multicast_recv_enable in_data 0 32 }  { multicast_recv_enable_ap_vld in_vld 0 1 } } }
	unicast_filter_enable { ap_none {  { unicast_filter_enable in_data 0 32 }  { unicast_filter_enable_ap_vld in_vld 0 1 } } }
	unicast_vlan100_macaddr_lsb { ap_none {  { unicast_vlan100_macaddr_lsb in_data 0 32 }  { unicast_vlan100_macaddr_lsb_ap_vld in_vld 0 1 } } }
	unicast_vlan100_macaddr_msb { ap_none {  { unicast_vlan100_macaddr_msb in_data 0 32 }  { unicast_vlan100_macaddr_msb_ap_vld in_vld 0 1 } } }
	unicast_vlan101_macaddr_lsb { ap_none {  { unicast_vlan101_macaddr_lsb in_data 0 32 }  { unicast_vlan101_macaddr_lsb_ap_vld in_vld 0 1 } } }
	unicast_vlan101_macaddr_msb { ap_none {  { unicast_vlan101_macaddr_msb in_data 0 32 }  { unicast_vlan101_macaddr_msb_ap_vld in_vld 0 1 } } }
	unicast_vlan102_macaddr_lsb { ap_none {  { unicast_vlan102_macaddr_lsb in_data 0 32 }  { unicast_vlan102_macaddr_lsb_ap_vld in_vld 0 1 } } }
	unicast_vlan102_macaddr_msb { ap_none {  { unicast_vlan102_macaddr_msb in_data 0 32 }  { unicast_vlan102_macaddr_msb_ap_vld in_vld 0 1 } } }
	unicast_vlan103_macaddr_lsb { ap_none {  { unicast_vlan103_macaddr_lsb in_data 0 32 }  { unicast_vlan103_macaddr_lsb_ap_vld in_vld 0 1 } } }
	unicast_vlan103_macaddr_msb { ap_none {  { unicast_vlan103_macaddr_msb in_data 0 32 }  { unicast_vlan103_macaddr_msb_ap_vld in_vld 0 1 } } }
	unicast_vlan104_macaddr_lsb { ap_none {  { unicast_vlan104_macaddr_lsb in_data 0 32 }  { unicast_vlan104_macaddr_lsb_ap_vld in_vld 0 1 } } }
	unicast_vlan104_macaddr_msb { ap_none {  { unicast_vlan104_macaddr_msb in_data 0 32 }  { unicast_vlan104_macaddr_msb_ap_vld in_vld 0 1 } } }
	unicast_vlan105_macaddr_lsb { ap_none {  { unicast_vlan105_macaddr_lsb in_data 0 32 }  { unicast_vlan105_macaddr_lsb_ap_vld in_vld 0 1 } } }
	unicast_vlan105_macaddr_msb { ap_none {  { unicast_vlan105_macaddr_msb in_data 0 32 }  { unicast_vlan105_macaddr_msb_ap_vld in_vld 0 1 } } }
	unicast_vlan106_macaddr_lsb { ap_none {  { unicast_vlan106_macaddr_lsb in_data 0 32 }  { unicast_vlan106_macaddr_lsb_ap_vld in_vld 0 1 } } }
	unicast_vlan106_macaddr_msb { ap_none {  { unicast_vlan106_macaddr_msb in_data 0 32 }  { unicast_vlan106_macaddr_msb_ap_vld in_vld 0 1 } } }
	unicast_vlan107_macaddr_lsb { ap_none {  { unicast_vlan107_macaddr_lsb in_data 0 32 }  { unicast_vlan107_macaddr_lsb_ap_vld in_vld 0 1 } } }
	unicast_vlan107_macaddr_msb { ap_none {  { unicast_vlan107_macaddr_msb in_data 0 32 }  { unicast_vlan107_macaddr_msb_ap_vld in_vld 0 1 } } }
	unicast_vlan108_macaddr_lsb { ap_none {  { unicast_vlan108_macaddr_lsb in_data 0 32 }  { unicast_vlan108_macaddr_lsb_ap_vld in_vld 0 1 } } }
	unicast_vlan108_macaddr_msb { ap_none {  { unicast_vlan108_macaddr_msb in_data 0 32 }  { unicast_vlan108_macaddr_msb_ap_vld in_vld 0 1 } } }
	unicast_vlan109_macaddr_lsb { ap_none {  { unicast_vlan109_macaddr_lsb in_data 0 32 }  { unicast_vlan109_macaddr_lsb_ap_vld in_vld 0 1 } } }
	unicast_vlan109_macaddr_msb { ap_none {  { unicast_vlan109_macaddr_msb in_data 0 32 }  { unicast_vlan109_macaddr_msb_ap_vld in_vld 0 1 } } }
	log_all_mask { ap_none {  { log_all_mask in_data 0 32 }  { log_all_mask_ap_vld in_vld 0 1 } } }
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
