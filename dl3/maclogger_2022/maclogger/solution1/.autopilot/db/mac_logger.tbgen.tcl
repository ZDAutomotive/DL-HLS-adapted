set moduleName mac_logger
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_chain
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {mac_logger}
set C_modelType { void 0 }
set C_modelArgList {
	{ mac_fifo int 32 regular {axi_master 0}  }
	{ ps int 32 regular {axi_master 2}  }
	{ fifo_axi_full int 32 regular {axi_master 0}  }
	{ fifo int 64 regular {axi_slave 0}  }
	{ ddr int 64 regular {axi_slave 0}  }
	{ driver int 64 regular {axi_slave 0}  }
	{ status int 32 unused {axi_slave 0}  }
	{ writeStatus int 16 unused {axi_slave 0}  }
	{ timestamp int 64 regular  }
	{ logger_vlan_enable_mask int 32 regular {axi_slave 0}  }
	{ vlan100_received int 32 regular {axi_slave 1}  }
	{ vlan101_received int 32 regular {axi_slave 1}  }
	{ vlan102_received int 32 regular {axi_slave 1}  }
	{ vlan103_received int 32 regular {axi_slave 1}  }
	{ vlan104_received int 32 regular {axi_slave 1}  }
	{ vlan105_received int 32 regular {axi_slave 1}  }
	{ vlan106_received int 32 regular {axi_slave 1}  }
	{ vlan107_received int 32 regular {axi_slave 1}  }
	{ vlan108_received int 32 regular {axi_slave 1}  }
	{ vlan109_received int 32 regular {axi_slave 1}  }
	{ droped int 32 regular {axi_slave 1}  }
	{ multicast_recv_enable int 32 regular {axi_slave 0}  }
	{ unicast_filter_enable int 32 regular {axi_slave 0}  }
	{ unicast_vlan100_macaddr_lsb int 32 regular {axi_slave 0}  }
	{ unicast_vlan100_macaddr_msb int 32 regular {axi_slave 0}  }
	{ unicast_vlan101_macaddr_lsb int 32 regular {axi_slave 0}  }
	{ unicast_vlan101_macaddr_msb int 32 regular {axi_slave 0}  }
	{ unicast_vlan102_macaddr_lsb int 32 regular {axi_slave 0}  }
	{ unicast_vlan102_macaddr_msb int 32 regular {axi_slave 0}  }
	{ unicast_vlan103_macaddr_lsb int 32 regular {axi_slave 0}  }
	{ unicast_vlan103_macaddr_msb int 32 regular {axi_slave 0}  }
	{ unicast_vlan104_macaddr_lsb int 32 regular {axi_slave 0}  }
	{ unicast_vlan104_macaddr_msb int 32 regular {axi_slave 0}  }
	{ unicast_vlan105_macaddr_lsb int 32 regular {axi_slave 0}  }
	{ unicast_vlan105_macaddr_msb int 32 regular {axi_slave 0}  }
	{ unicast_vlan106_macaddr_lsb int 32 regular {axi_slave 0}  }
	{ unicast_vlan106_macaddr_msb int 32 regular {axi_slave 0}  }
	{ unicast_vlan107_macaddr_lsb int 32 regular {axi_slave 0}  }
	{ unicast_vlan107_macaddr_msb int 32 regular {axi_slave 0}  }
	{ unicast_vlan108_macaddr_lsb int 32 regular {axi_slave 0}  }
	{ unicast_vlan108_macaddr_msb int 32 regular {axi_slave 0}  }
	{ unicast_vlan109_macaddr_lsb int 32 regular {axi_slave 0}  }
	{ unicast_vlan109_macaddr_msb int 32 regular {axi_slave 0}  }
	{ log_all_mask int 32 regular {axi_slave 0}  }
	{ fifo_axi_full_offset int 64 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mac_fifo", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "fifo","offset": { "type": "dynamic","port_name": "fifo","bundle": "axilites"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "ps", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "ddr","offset": { "type": "dynamic","port_name": "ddr","bundle": "axilites"},"direction": "READWRITE"},{"cName": "driver","offset": { "type": "dynamic","port_name": "driver","bundle": "axilites"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "fifo_axi_full", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "fifo_axi_full_offset","offset": { "type": "dynamic","port_name": "fifo_axi_full_offset"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "fifo", "interface" : "axi_slave", "bundle":"axilites","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "ddr", "interface" : "axi_slave", "bundle":"axilites","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "driver", "interface" : "axi_slave", "bundle":"axilites","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":336}, "offset_end" : {"in":347}} , 
 	{ "Name" : "status", "interface" : "axi_slave", "bundle":"axilites","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "writeStatus", "interface" : "axi_slave", "bundle":"axilites","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "timestamp", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "logger_vlan_enable_mask", "interface" : "axi_slave", "bundle":"axilites","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "vlan100_received", "interface" : "axi_slave", "bundle":"axilites","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":64}, "offset_end" : {"out":71}} , 
 	{ "Name" : "vlan101_received", "interface" : "axi_slave", "bundle":"axilites","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":72}, "offset_end" : {"out":79}} , 
 	{ "Name" : "vlan102_received", "interface" : "axi_slave", "bundle":"axilites","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":80}, "offset_end" : {"out":87}} , 
 	{ "Name" : "vlan103_received", "interface" : "axi_slave", "bundle":"axilites","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":88}, "offset_end" : {"out":95}} , 
 	{ "Name" : "vlan104_received", "interface" : "axi_slave", "bundle":"axilites","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":96}, "offset_end" : {"out":103}} , 
 	{ "Name" : "vlan105_received", "interface" : "axi_slave", "bundle":"axilites","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":104}, "offset_end" : {"out":111}} , 
 	{ "Name" : "vlan106_received", "interface" : "axi_slave", "bundle":"axilites","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":112}, "offset_end" : {"out":119}} , 
 	{ "Name" : "vlan107_received", "interface" : "axi_slave", "bundle":"axilites","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":120}, "offset_end" : {"out":127}} , 
 	{ "Name" : "vlan108_received", "interface" : "axi_slave", "bundle":"axilites","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":128}, "offset_end" : {"out":135}} , 
 	{ "Name" : "vlan109_received", "interface" : "axi_slave", "bundle":"axilites","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":136}, "offset_end" : {"out":143}} , 
 	{ "Name" : "droped", "interface" : "axi_slave", "bundle":"axilites","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":144}, "offset_end" : {"out":151}} , 
 	{ "Name" : "multicast_recv_enable", "interface" : "axi_slave", "bundle":"axilites","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":152}, "offset_end" : {"in":159}} , 
 	{ "Name" : "unicast_filter_enable", "interface" : "axi_slave", "bundle":"axilites","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":160}, "offset_end" : {"in":167}} , 
 	{ "Name" : "unicast_vlan100_macaddr_lsb", "interface" : "axi_slave", "bundle":"axilites","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":168}, "offset_end" : {"in":175}} , 
 	{ "Name" : "unicast_vlan100_macaddr_msb", "interface" : "axi_slave", "bundle":"axilites","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":176}, "offset_end" : {"in":183}} , 
 	{ "Name" : "unicast_vlan101_macaddr_lsb", "interface" : "axi_slave", "bundle":"axilites","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":184}, "offset_end" : {"in":191}} , 
 	{ "Name" : "unicast_vlan101_macaddr_msb", "interface" : "axi_slave", "bundle":"axilites","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":192}, "offset_end" : {"in":199}} , 
 	{ "Name" : "unicast_vlan102_macaddr_lsb", "interface" : "axi_slave", "bundle":"axilites","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":200}, "offset_end" : {"in":207}} , 
 	{ "Name" : "unicast_vlan102_macaddr_msb", "interface" : "axi_slave", "bundle":"axilites","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":208}, "offset_end" : {"in":215}} , 
 	{ "Name" : "unicast_vlan103_macaddr_lsb", "interface" : "axi_slave", "bundle":"axilites","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":216}, "offset_end" : {"in":223}} , 
 	{ "Name" : "unicast_vlan103_macaddr_msb", "interface" : "axi_slave", "bundle":"axilites","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":224}, "offset_end" : {"in":231}} , 
 	{ "Name" : "unicast_vlan104_macaddr_lsb", "interface" : "axi_slave", "bundle":"axilites","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":232}, "offset_end" : {"in":239}} , 
 	{ "Name" : "unicast_vlan104_macaddr_msb", "interface" : "axi_slave", "bundle":"axilites","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":240}, "offset_end" : {"in":247}} , 
 	{ "Name" : "unicast_vlan105_macaddr_lsb", "interface" : "axi_slave", "bundle":"axilites","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":248}, "offset_end" : {"in":255}} , 
 	{ "Name" : "unicast_vlan105_macaddr_msb", "interface" : "axi_slave", "bundle":"axilites","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":256}, "offset_end" : {"in":263}} , 
 	{ "Name" : "unicast_vlan106_macaddr_lsb", "interface" : "axi_slave", "bundle":"axilites","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":264}, "offset_end" : {"in":271}} , 
 	{ "Name" : "unicast_vlan106_macaddr_msb", "interface" : "axi_slave", "bundle":"axilites","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":272}, "offset_end" : {"in":279}} , 
 	{ "Name" : "unicast_vlan107_macaddr_lsb", "interface" : "axi_slave", "bundle":"axilites","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":280}, "offset_end" : {"in":287}} , 
 	{ "Name" : "unicast_vlan107_macaddr_msb", "interface" : "axi_slave", "bundle":"axilites","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":288}, "offset_end" : {"in":295}} , 
 	{ "Name" : "unicast_vlan108_macaddr_lsb", "interface" : "axi_slave", "bundle":"axilites","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":296}, "offset_end" : {"in":303}} , 
 	{ "Name" : "unicast_vlan108_macaddr_msb", "interface" : "axi_slave", "bundle":"axilites","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":304}, "offset_end" : {"in":311}} , 
 	{ "Name" : "unicast_vlan109_macaddr_lsb", "interface" : "axi_slave", "bundle":"axilites","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":312}, "offset_end" : {"in":319}} , 
 	{ "Name" : "unicast_vlan109_macaddr_msb", "interface" : "axi_slave", "bundle":"axilites","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":320}, "offset_end" : {"in":327}} , 
 	{ "Name" : "log_all_mask", "interface" : "axi_slave", "bundle":"axilites","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":328}, "offset_end" : {"in":335}} , 
 	{ "Name" : "fifo_axi_full_offset", "interface" : "axi_slave", "bundle":"axilites","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":352}, "offset_end" : {"in":363}} ]}
# RTL Port declarations: 
set portNum 156
set portList { 
	{ s_axi_axilites_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_axilites_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_axilites_AWADDR sc_in sc_lv 9 signal -1 } 
	{ s_axi_axilites_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_axilites_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_axilites_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_axilites_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_axilites_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_axilites_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_axilites_ARADDR sc_in sc_lv 9 signal -1 } 
	{ s_axi_axilites_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_axilites_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_axilites_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_axilites_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_axilites_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_axilites_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_axilites_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ m_axi_fifo_axi_full_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_fifo_axi_full_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_fifo_axi_full_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_fifo_axi_full_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_fifo_axi_full_AWLEN sc_out sc_lv 8 signal 2 } 
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
	{ m_axi_fifo_axi_full_ARLEN sc_out sc_lv 8 signal 2 } 
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
	{ m_axi_fifo_axi_full_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_fifo_axi_full_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_fifo_axi_full_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_fifo_axi_full_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_fifo_axi_full_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_fifo_axi_full_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_fifo_axi_full_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_mac_fifo_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_mac_fifo_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_mac_fifo_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_mac_fifo_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_mac_fifo_AWLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_mac_fifo_ARLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_mac_fifo_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_mac_fifo_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_mac_fifo_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_mac_fifo_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_mac_fifo_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_mac_fifo_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_mac_fifo_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_ps_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_ps_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_ps_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_ps_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_ps_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_ps_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_ps_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_ps_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_ps_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_ps_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_ps_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_ps_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_ps_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_ps_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_ps_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_ps_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_ps_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_ps_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_ps_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_ps_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_ps_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_ps_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_ps_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_ps_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_ps_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_ps_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_ps_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_ps_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_ps_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_ps_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_ps_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_ps_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_ps_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_ps_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_ps_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_ps_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_ps_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_ps_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_ps_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_ps_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_ps_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_ps_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_ps_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_ps_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_ps_BUSER sc_in sc_lv 1 signal 1 } 
	{ timestamp sc_in sc_lv 64 signal 8 } 
}
set NewPortList {[ 
	{ "name": "s_axi_axilites_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "axilites", "role": "AWADDR" },"address":[{"name":"mac_logger","role":"start","value":"0","valid_bit":"0"},{"name":"mac_logger","role":"continue","value":"0","valid_bit":"4"},{"name":"mac_logger","role":"auto_start","value":"0","valid_bit":"7"},{"name":"fifo","role":"data","value":"16"},{"name":"ddr","role":"data","value":"28"},{"name":"status","role":"data","value":"40"},{"name":"writeStatus","role":"data","value":"48"},{"name":"logger_vlan_enable_mask","role":"data","value":"56"},{"name":"multicast_recv_enable","role":"data","value":"152"},{"name":"unicast_filter_enable","role":"data","value":"160"},{"name":"unicast_vlan100_macaddr_lsb","role":"data","value":"168"},{"name":"unicast_vlan100_macaddr_msb","role":"data","value":"176"},{"name":"unicast_vlan101_macaddr_lsb","role":"data","value":"184"},{"name":"unicast_vlan101_macaddr_msb","role":"data","value":"192"},{"name":"unicast_vlan102_macaddr_lsb","role":"data","value":"200"},{"name":"unicast_vlan102_macaddr_msb","role":"data","value":"208"},{"name":"unicast_vlan103_macaddr_lsb","role":"data","value":"216"},{"name":"unicast_vlan103_macaddr_msb","role":"data","value":"224"},{"name":"unicast_vlan104_macaddr_lsb","role":"data","value":"232"},{"name":"unicast_vlan104_macaddr_msb","role":"data","value":"240"},{"name":"unicast_vlan105_macaddr_lsb","role":"data","value":"248"},{"name":"unicast_vlan105_macaddr_msb","role":"data","value":"256"},{"name":"unicast_vlan106_macaddr_lsb","role":"data","value":"264"},{"name":"unicast_vlan106_macaddr_msb","role":"data","value":"272"},{"name":"unicast_vlan107_macaddr_lsb","role":"data","value":"280"},{"name":"unicast_vlan107_macaddr_msb","role":"data","value":"288"},{"name":"unicast_vlan108_macaddr_lsb","role":"data","value":"296"},{"name":"unicast_vlan108_macaddr_msb","role":"data","value":"304"},{"name":"unicast_vlan109_macaddr_lsb","role":"data","value":"312"},{"name":"unicast_vlan109_macaddr_msb","role":"data","value":"320"},{"name":"log_all_mask","role":"data","value":"328"},{"name":"driver","role":"data","value":"336"},{"name":"fifo_axi_full_offset","role":"data","value":"352"}] },
	{ "name": "s_axi_axilites_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axilites", "role": "AWVALID" } },
	{ "name": "s_axi_axilites_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axilites", "role": "AWREADY" } },
	{ "name": "s_axi_axilites_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axilites", "role": "WVALID" } },
	{ "name": "s_axi_axilites_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axilites", "role": "WREADY" } },
	{ "name": "s_axi_axilites_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "axilites", "role": "WDATA" } },
	{ "name": "s_axi_axilites_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "axilites", "role": "WSTRB" } },
	{ "name": "s_axi_axilites_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "axilites", "role": "ARADDR" },"address":[{"name":"mac_logger","role":"start","value":"0","valid_bit":"0"},{"name":"mac_logger","role":"done","value":"0","valid_bit":"1"},{"name":"mac_logger","role":"idle","value":"0","valid_bit":"2"},{"name":"mac_logger","role":"ready","value":"0","valid_bit":"3"},{"name":"mac_logger","role":"auto_start","value":"0","valid_bit":"7"},{"name":"vlan100_received","role":"data","value":"64"}, {"name":"vlan100_received","role":"valid","value":"68","valid_bit":"0"},{"name":"vlan101_received","role":"data","value":"72"}, {"name":"vlan101_received","role":"valid","value":"76","valid_bit":"0"},{"name":"vlan102_received","role":"data","value":"80"}, {"name":"vlan102_received","role":"valid","value":"84","valid_bit":"0"},{"name":"vlan103_received","role":"data","value":"88"}, {"name":"vlan103_received","role":"valid","value":"92","valid_bit":"0"},{"name":"vlan104_received","role":"data","value":"96"}, {"name":"vlan104_received","role":"valid","value":"100","valid_bit":"0"},{"name":"vlan105_received","role":"data","value":"104"}, {"name":"vlan105_received","role":"valid","value":"108","valid_bit":"0"},{"name":"vlan106_received","role":"data","value":"112"}, {"name":"vlan106_received","role":"valid","value":"116","valid_bit":"0"},{"name":"vlan107_received","role":"data","value":"120"}, {"name":"vlan107_received","role":"valid","value":"124","valid_bit":"0"},{"name":"vlan108_received","role":"data","value":"128"}, {"name":"vlan108_received","role":"valid","value":"132","valid_bit":"0"},{"name":"vlan109_received","role":"data","value":"136"}, {"name":"vlan109_received","role":"valid","value":"140","valid_bit":"0"},{"name":"droped","role":"data","value":"144"}, {"name":"droped","role":"valid","value":"148","valid_bit":"0"}] },
	{ "name": "s_axi_axilites_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axilites", "role": "ARVALID" } },
	{ "name": "s_axi_axilites_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axilites", "role": "ARREADY" } },
	{ "name": "s_axi_axilites_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axilites", "role": "RVALID" } },
	{ "name": "s_axi_axilites_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axilites", "role": "RREADY" } },
	{ "name": "s_axi_axilites_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "axilites", "role": "RDATA" } },
	{ "name": "s_axi_axilites_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "axilites", "role": "RRESP" } },
	{ "name": "s_axi_axilites_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axilites", "role": "BVALID" } },
	{ "name": "s_axi_axilites_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axilites", "role": "BREADY" } },
	{ "name": "s_axi_axilites_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "axilites", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "axilites", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_fifo_axi_full_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "AWVALID" }} , 
 	{ "name": "m_axi_fifo_axi_full_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "AWREADY" }} , 
 	{ "name": "m_axi_fifo_axi_full_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "AWADDR" }} , 
 	{ "name": "m_axi_fifo_axi_full_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "AWID" }} , 
 	{ "name": "m_axi_fifo_axi_full_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_fifo_axi_full_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_fifo_axi_full_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "RUSER" }} , 
 	{ "name": "m_axi_fifo_axi_full_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "RRESP" }} , 
 	{ "name": "m_axi_fifo_axi_full_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "BVALID" }} , 
 	{ "name": "m_axi_fifo_axi_full_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "BREADY" }} , 
 	{ "name": "m_axi_fifo_axi_full_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "BRESP" }} , 
 	{ "name": "m_axi_fifo_axi_full_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "BID" }} , 
 	{ "name": "m_axi_fifo_axi_full_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_axi_full", "role": "BUSER" }} , 
 	{ "name": "m_axi_mac_fifo_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_fifo", "role": "AWVALID" }} , 
 	{ "name": "m_axi_mac_fifo_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_fifo", "role": "AWREADY" }} , 
 	{ "name": "m_axi_mac_fifo_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mac_fifo", "role": "AWADDR" }} , 
 	{ "name": "m_axi_mac_fifo_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_fifo", "role": "AWID" }} , 
 	{ "name": "m_axi_mac_fifo_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mac_fifo", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_mac_fifo_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mac_fifo", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_mac_fifo_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_fifo", "role": "RUSER" }} , 
 	{ "name": "m_axi_mac_fifo_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mac_fifo", "role": "RRESP" }} , 
 	{ "name": "m_axi_mac_fifo_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_fifo", "role": "BVALID" }} , 
 	{ "name": "m_axi_mac_fifo_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_fifo", "role": "BREADY" }} , 
 	{ "name": "m_axi_mac_fifo_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mac_fifo", "role": "BRESP" }} , 
 	{ "name": "m_axi_mac_fifo_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_fifo", "role": "BID" }} , 
 	{ "name": "m_axi_mac_fifo_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_fifo", "role": "BUSER" }} , 
 	{ "name": "m_axi_ps_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps", "role": "AWVALID" }} , 
 	{ "name": "m_axi_ps_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps", "role": "AWREADY" }} , 
 	{ "name": "m_axi_ps_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ps", "role": "AWADDR" }} , 
 	{ "name": "m_axi_ps_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps", "role": "AWID" }} , 
 	{ "name": "m_axi_ps_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ps", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_ps_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ps", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_ps_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps", "role": "RUSER" }} , 
 	{ "name": "m_axi_ps_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ps", "role": "RRESP" }} , 
 	{ "name": "m_axi_ps_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps", "role": "BVALID" }} , 
 	{ "name": "m_axi_ps_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps", "role": "BREADY" }} , 
 	{ "name": "m_axi_ps_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ps", "role": "BRESP" }} , 
 	{ "name": "m_axi_ps_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps", "role": "BID" }} , 
 	{ "name": "m_axi_ps_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps", "role": "BUSER" }} , 
 	{ "name": "timestamp", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "timestamp", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "mac_logger",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "5", "Name" : "dataflow_in_loop_VITIS_LOOP_697_1_U0"}],
		"OutputProcess" : [
			{"ID" : "5", "Name" : "dataflow_in_loop_VITIS_LOOP_697_1_U0"}],
		"Port" : [
			{"Name" : "mac_fifo", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "mac_fifo"}]},
			{"Name" : "ps", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "ps"}]},
			{"Name" : "fifo_axi_full", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "fifo_axi_full"}]},
			{"Name" : "fifo", "Type" : "None", "Direction" : "I"},
			{"Name" : "ddr", "Type" : "None", "Direction" : "I"},
			{"Name" : "driver", "Type" : "None", "Direction" : "I"},
			{"Name" : "status", "Type" : "None", "Direction" : "I"},
			{"Name" : "writeStatus", "Type" : "None", "Direction" : "I"},
			{"Name" : "timestamp", "Type" : "None", "Direction" : "I"},
			{"Name" : "logger_vlan_enable_mask", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "logger_vlan_enable_mask"}]},
			{"Name" : "vlan100_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "vlan100_received"}]},
			{"Name" : "vlan101_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "vlan101_received"}]},
			{"Name" : "vlan102_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "vlan102_received"}]},
			{"Name" : "vlan103_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "vlan103_received"}]},
			{"Name" : "vlan104_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "vlan104_received"}]},
			{"Name" : "vlan105_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "vlan105_received"}]},
			{"Name" : "vlan106_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "vlan106_received"}]},
			{"Name" : "vlan107_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "vlan107_received"}]},
			{"Name" : "vlan108_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "vlan108_received"}]},
			{"Name" : "vlan109_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "vlan109_received"}]},
			{"Name" : "droped", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "droped"}]},
			{"Name" : "multicast_recv_enable", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "multicast_recv_enable"}]},
			{"Name" : "unicast_filter_enable", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "unicast_filter_enable"}]},
			{"Name" : "unicast_vlan100_macaddr_lsb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "unicast_vlan100_macaddr_lsb"}]},
			{"Name" : "unicast_vlan100_macaddr_msb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "unicast_vlan100_macaddr_msb"}]},
			{"Name" : "unicast_vlan101_macaddr_lsb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "unicast_vlan101_macaddr_lsb"}]},
			{"Name" : "unicast_vlan101_macaddr_msb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "unicast_vlan101_macaddr_msb"}]},
			{"Name" : "unicast_vlan102_macaddr_lsb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "unicast_vlan102_macaddr_lsb"}]},
			{"Name" : "unicast_vlan102_macaddr_msb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "unicast_vlan102_macaddr_msb"}]},
			{"Name" : "unicast_vlan103_macaddr_lsb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "unicast_vlan103_macaddr_lsb"}]},
			{"Name" : "unicast_vlan103_macaddr_msb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "unicast_vlan103_macaddr_msb"}]},
			{"Name" : "unicast_vlan104_macaddr_lsb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "unicast_vlan104_macaddr_lsb"}]},
			{"Name" : "unicast_vlan104_macaddr_msb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "unicast_vlan104_macaddr_msb"}]},
			{"Name" : "unicast_vlan105_macaddr_lsb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "unicast_vlan105_macaddr_lsb"}]},
			{"Name" : "unicast_vlan105_macaddr_msb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "unicast_vlan105_macaddr_msb"}]},
			{"Name" : "unicast_vlan106_macaddr_lsb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "unicast_vlan106_macaddr_lsb"}]},
			{"Name" : "unicast_vlan106_macaddr_msb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "unicast_vlan106_macaddr_msb"}]},
			{"Name" : "unicast_vlan107_macaddr_lsb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "unicast_vlan107_macaddr_lsb"}]},
			{"Name" : "unicast_vlan107_macaddr_msb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "unicast_vlan107_macaddr_msb"}]},
			{"Name" : "unicast_vlan108_macaddr_lsb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "unicast_vlan108_macaddr_lsb"}]},
			{"Name" : "unicast_vlan108_macaddr_msb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "unicast_vlan108_macaddr_msb"}]},
			{"Name" : "unicast_vlan109_macaddr_lsb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "unicast_vlan109_macaddr_lsb"}]},
			{"Name" : "unicast_vlan109_macaddr_msb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "unicast_vlan109_macaddr_msb"}]},
			{"Name" : "log_all_mask", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "log_all_mask"}]},
			{"Name" : "fifo_axi_full_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "counter_vlan100", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "counter_vlan100"}]},
			{"Name" : "counter_vlan101", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "counter_vlan101"}]},
			{"Name" : "counter_vlan102", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "counter_vlan102"}]},
			{"Name" : "counter_vlan103", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "counter_vlan103"}]},
			{"Name" : "counter_vlan104", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "counter_vlan104"}]},
			{"Name" : "counter_vlan105", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "counter_vlan105"}]},
			{"Name" : "counter_vlan106", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "counter_vlan106"}]},
			{"Name" : "counter_vlan107", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "counter_vlan107"}]},
			{"Name" : "counter_vlan108", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "counter_vlan108"}]},
			{"Name" : "counter_vlan109", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "counter_vlan109"}]},
			{"Name" : "counter_droped", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "counter_droped"}]},
			{"Name" : "last_log_tx_index", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "last_log_tx_index"}]},
			{"Name" : "last_tap_tx_index", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "Port" : "last_tap_tx_index"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_697_1", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_in_loop_VITIS_LOOP_697_1_U0", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.axilites_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_axi_full_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_fifo_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ps_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0", "Parent" : "0", "Child" : ["6", "7", "8", "9", "10", "15", "25", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65"],
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
			{"ID" : "9", "Name" : "entry_proc_U0"},
			{"ID" : "10", "Name" : "rx_ringbuffer_header_U0"},
			{"ID" : "15", "Name" : "rx_fifo_U0"}],
		"OutputProcess" : [
			{"ID" : "25", "Name" : "tx_ddr_U0"}],
		"Port" : [
			{"Name" : "ps", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "tx_ddr_U0", "Port" : "ps"},
					{"ID" : "10", "SubInstance" : "rx_ringbuffer_header_U0", "Port" : "ps"}]},
			{"Name" : "ddr", "Type" : "None", "Direction" : "I"},
			{"Name" : "driver", "Type" : "None", "Direction" : "I"},
			{"Name" : "mac_fifo", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "rx_fifo_U0", "Port" : "mac_fifo"}]},
			{"Name" : "fifo", "Type" : "None", "Direction" : "I"},
			{"Name" : "fifo_axi_full", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "rx_fifo_U0", "Port" : "fifo_axi_full"}]},
			{"Name" : "fifo_axi_full_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "timestamp", "Type" : "None", "Direction" : "I"},
			{"Name" : "logger_vlan_enable_mask", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "entry_proc_U0", "Port" : "logger_vlan_enable_mask"}]},
			{"Name" : "multicast_recv_enable", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "entry_proc_U0", "Port" : "multicast_recv_enable"}]},
			{"Name" : "unicast_filter_enable", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "entry_proc_U0", "Port" : "unicast_filter_enable"}]},
			{"Name" : "unicast_vlan100_macaddr_lsb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan100_macaddr_lsb"}]},
			{"Name" : "unicast_vlan100_macaddr_msb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan100_macaddr_msb"}]},
			{"Name" : "unicast_vlan101_macaddr_lsb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan101_macaddr_lsb"}]},
			{"Name" : "unicast_vlan101_macaddr_msb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan101_macaddr_msb"}]},
			{"Name" : "unicast_vlan102_macaddr_lsb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan102_macaddr_lsb"}]},
			{"Name" : "unicast_vlan102_macaddr_msb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan102_macaddr_msb"}]},
			{"Name" : "unicast_vlan103_macaddr_lsb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan103_macaddr_lsb"}]},
			{"Name" : "unicast_vlan103_macaddr_msb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan103_macaddr_msb"}]},
			{"Name" : "unicast_vlan104_macaddr_lsb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan104_macaddr_lsb"}]},
			{"Name" : "unicast_vlan104_macaddr_msb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan104_macaddr_msb"}]},
			{"Name" : "unicast_vlan105_macaddr_lsb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan105_macaddr_lsb"}]},
			{"Name" : "unicast_vlan105_macaddr_msb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan105_macaddr_msb"}]},
			{"Name" : "unicast_vlan106_macaddr_lsb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan106_macaddr_lsb"}]},
			{"Name" : "unicast_vlan106_macaddr_msb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan106_macaddr_msb"}]},
			{"Name" : "unicast_vlan107_macaddr_lsb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan107_macaddr_lsb"}]},
			{"Name" : "unicast_vlan107_macaddr_msb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan107_macaddr_msb"}]},
			{"Name" : "unicast_vlan108_macaddr_lsb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan108_macaddr_lsb"}]},
			{"Name" : "unicast_vlan108_macaddr_msb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan108_macaddr_msb"}]},
			{"Name" : "unicast_vlan109_macaddr_lsb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan109_macaddr_lsb"}]},
			{"Name" : "unicast_vlan109_macaddr_msb", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "entry_proc_U0", "Port" : "unicast_vlan109_macaddr_msb"}]},
			{"Name" : "log_all_mask", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "entry_proc_U0", "Port" : "log_all_mask"}]},
			{"Name" : "vlan100_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "tx_ddr_U0", "Port" : "vlan100_received"}]},
			{"Name" : "vlan101_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "tx_ddr_U0", "Port" : "vlan101_received"}]},
			{"Name" : "vlan102_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "tx_ddr_U0", "Port" : "vlan102_received"}]},
			{"Name" : "vlan103_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "tx_ddr_U0", "Port" : "vlan103_received"}]},
			{"Name" : "vlan104_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "tx_ddr_U0", "Port" : "vlan104_received"}]},
			{"Name" : "vlan105_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "tx_ddr_U0", "Port" : "vlan105_received"}]},
			{"Name" : "vlan106_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "tx_ddr_U0", "Port" : "vlan106_received"}]},
			{"Name" : "vlan107_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "tx_ddr_U0", "Port" : "vlan107_received"}]},
			{"Name" : "vlan108_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "tx_ddr_U0", "Port" : "vlan108_received"}]},
			{"Name" : "vlan109_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "tx_ddr_U0", "Port" : "vlan109_received"}]},
			{"Name" : "droped", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "tx_ddr_U0", "Port" : "droped"}]},
			{"Name" : "counter_vlan100", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "tx_ddr_U0", "Port" : "counter_vlan100"}]},
			{"Name" : "counter_vlan101", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "tx_ddr_U0", "Port" : "counter_vlan101"}]},
			{"Name" : "counter_vlan102", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "tx_ddr_U0", "Port" : "counter_vlan102"}]},
			{"Name" : "counter_vlan103", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "tx_ddr_U0", "Port" : "counter_vlan103"}]},
			{"Name" : "counter_vlan104", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "tx_ddr_U0", "Port" : "counter_vlan104"}]},
			{"Name" : "counter_vlan105", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "tx_ddr_U0", "Port" : "counter_vlan105"}]},
			{"Name" : "counter_vlan106", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "tx_ddr_U0", "Port" : "counter_vlan106"}]},
			{"Name" : "counter_vlan107", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "tx_ddr_U0", "Port" : "counter_vlan107"}]},
			{"Name" : "counter_vlan108", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "tx_ddr_U0", "Port" : "counter_vlan108"}]},
			{"Name" : "counter_vlan109", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "tx_ddr_U0", "Port" : "counter_vlan109"}]},
			{"Name" : "counter_droped", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "tx_ddr_U0", "Port" : "counter_droped"}]},
			{"Name" : "last_log_tx_index", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "tx_ddr_U0", "Port" : "last_log_tx_index"}]},
			{"Name" : "last_tap_tx_index", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "tx_ddr_U0", "Port" : "last_tap_tx_index"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.log_header_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.tap_header_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.data_buf3_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.entry_proc_U0", "Parent" : "5",
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
			{"Name" : "logger_vlan_enable_mask_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "40", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "logger_vlan_enable_mask_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "multicast_recv_enable", "Type" : "None", "Direction" : "I"},
			{"Name" : "multicast_recv_enable_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "41", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "multicast_recv_enable_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_filter_enable", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_filter_enable_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "42", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_filter_enable_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan100_macaddr_lsb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan100_macaddr_lsb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "43", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan100_macaddr_lsb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan100_macaddr_msb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan100_macaddr_msb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "44", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan100_macaddr_msb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan101_macaddr_lsb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan101_macaddr_lsb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "45", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan101_macaddr_lsb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan101_macaddr_msb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan101_macaddr_msb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "46", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan101_macaddr_msb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan102_macaddr_lsb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan102_macaddr_lsb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "47", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan102_macaddr_lsb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan102_macaddr_msb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan102_macaddr_msb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "48", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan102_macaddr_msb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan103_macaddr_lsb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan103_macaddr_lsb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "49", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan103_macaddr_lsb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan103_macaddr_msb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan103_macaddr_msb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "50", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan103_macaddr_msb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan104_macaddr_lsb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan104_macaddr_lsb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "51", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan104_macaddr_lsb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan104_macaddr_msb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan104_macaddr_msb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "52", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan104_macaddr_msb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan105_macaddr_lsb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan105_macaddr_lsb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "53", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan105_macaddr_lsb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan105_macaddr_msb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan105_macaddr_msb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "54", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan105_macaddr_msb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan106_macaddr_lsb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan106_macaddr_lsb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "55", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan106_macaddr_lsb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan106_macaddr_msb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan106_macaddr_msb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "56", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan106_macaddr_msb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan107_macaddr_lsb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan107_macaddr_lsb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "57", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan107_macaddr_lsb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan107_macaddr_msb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan107_macaddr_msb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "58", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan107_macaddr_msb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan108_macaddr_lsb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan108_macaddr_lsb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "59", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan108_macaddr_lsb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan108_macaddr_msb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan108_macaddr_msb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "60", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan108_macaddr_msb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan109_macaddr_lsb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan109_macaddr_lsb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "61", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan109_macaddr_lsb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan109_macaddr_msb", "Type" : "None", "Direction" : "I"},
			{"Name" : "unicast_vlan109_macaddr_msb_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "62", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan109_macaddr_msb_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "log_all_mask", "Type" : "None", "Direction" : "I"},
			{"Name" : "log_all_mask_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "63", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "log_all_mask_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.rx_ringbuffer_header_U0", "Parent" : "5", "Child" : ["11", "13"],
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
					{"ID" : "11", "SubInstance" : "grp_rx_ringbuffer_header_Pipeline_VITIS_LOOP_28_1_fu_74", "Port" : "ps", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "13", "SubInstance" : "grp_rx_ringbuffer_header_Pipeline_VITIS_LOOP_32_2_fu_83", "Port" : "ps", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "log_ddr", "Type" : "None", "Direction" : "I"},
			{"Name" : "tap_ddr", "Type" : "None", "Direction" : "I"},
			{"Name" : "log_header", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "6",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_rx_ringbuffer_header_Pipeline_VITIS_LOOP_28_1_fu_74", "Port" : "log_header", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "tap_header", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "7",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_rx_ringbuffer_header_Pipeline_VITIS_LOOP_32_2_fu_83", "Port" : "tap_header", "Inst_start_state" : "17", "Inst_end_state" : "18"}]}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.rx_ringbuffer_header_U0.grp_rx_ringbuffer_header_Pipeline_VITIS_LOOP_28_1_fu_74", "Parent" : "10", "Child" : ["12"],
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
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.rx_ringbuffer_header_U0.grp_rx_ringbuffer_header_Pipeline_VITIS_LOOP_28_1_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.rx_ringbuffer_header_U0.grp_rx_ringbuffer_header_Pipeline_VITIS_LOOP_32_2_fu_83", "Parent" : "10", "Child" : ["14"],
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
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.rx_ringbuffer_header_U0.grp_rx_ringbuffer_header_Pipeline_VITIS_LOOP_32_2_fu_83.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.rx_fifo_U0", "Parent" : "5", "Child" : ["16", "17", "19", "21", "23"],
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
					{"ID" : "23", "SubInstance" : "grp_rx_fifo_Pipeline_4_fu_292", "Port" : "fifo_axi_full", "Inst_start_state" : "31", "Inst_end_state" : "32"},
					{"ID" : "17", "SubInstance" : "grp_rx_fifo_Pipeline_VITIS_LOOP_71_1_fu_265", "Port" : "fifo_axi_full", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "21", "SubInstance" : "grp_rx_fifo_Pipeline_rx_macfifo_data_fu_281", "Port" : "fifo_axi_full", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "fifo_axi_full1", "Type" : "None", "Direction" : "I"},
			{"Name" : "timestamp", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_buf", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "8",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_rx_fifo_Pipeline_4_fu_292", "Port" : "data_buf", "Inst_start_state" : "31", "Inst_end_state" : "32"},
					{"ID" : "19", "SubInstance" : "grp_rx_fifo_Pipeline_VITIS_LOOP_91_2_fu_273", "Port" : "data_buf", "Inst_start_state" : "20", "Inst_end_state" : "21"},
					{"ID" : "21", "SubInstance" : "grp_rx_fifo_Pipeline_rx_macfifo_data_fu_281", "Port" : "data_buf", "Inst_start_state" : "22", "Inst_end_state" : "23"}]}]},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.rx_fifo_U0.tmp_buf_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.rx_fifo_U0.grp_rx_fifo_Pipeline_VITIS_LOOP_71_1_fu_265", "Parent" : "15", "Child" : ["18"],
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
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.rx_fifo_U0.grp_rx_fifo_Pipeline_VITIS_LOOP_71_1_fu_265.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.rx_fifo_U0.grp_rx_fifo_Pipeline_VITIS_LOOP_91_2_fu_273", "Parent" : "15", "Child" : ["20"],
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
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.rx_fifo_U0.grp_rx_fifo_Pipeline_VITIS_LOOP_91_2_fu_273.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.rx_fifo_U0.grp_rx_fifo_Pipeline_rx_macfifo_data_fu_281", "Parent" : "15", "Child" : ["22"],
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
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.rx_fifo_U0.grp_rx_fifo_Pipeline_rx_macfifo_data_fu_281.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.rx_fifo_U0.grp_rx_fifo_Pipeline_4_fu_292", "Parent" : "15", "Child" : ["24"],
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
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.rx_fifo_U0.grp_rx_fifo_Pipeline_4_fu_292.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.tx_ddr_U0", "Parent" : "5", "Child" : ["26", "27", "28", "30", "32", "34", "36", "37", "38", "39"],
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
			{"Name" : "data_buf", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["15"], "DependentChan" : "8",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_tx_ddr_Pipeline_tx_2_tap_ddr_fu_1320", "Port" : "data_buf", "Inst_start_state" : "106", "Inst_end_state" : "107"},
					{"ID" : "30", "SubInstance" : "grp_tx_ddr_Pipeline_tx_2_log_ddr_fu_1303", "Port" : "data_buf", "Inst_start_state" : "58", "Inst_end_state" : "59"}]},
			{"Name" : "log_header1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "6",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_tx_ddr_Pipeline_VITIS_LOOP_471_1_fu_1296", "Port" : "log_header1", "Inst_start_state" : "18", "Inst_end_state" : "19"}]},
			{"Name" : "tap_header1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "7",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_tx_ddr_Pipeline_VITIS_LOOP_531_2_fu_1313", "Port" : "tap_header1", "Inst_start_state" : "66", "Inst_end_state" : "67"}]},
			{"Name" : "ps", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ps_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "ps_blk_n_B", "Type" : "RtlSignal"},
					{"Name" : "ps_blk_n_W", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_tx_ddr_Pipeline_tx_2_tap_ddr_fu_1320", "Port" : "ps", "Inst_start_state" : "106", "Inst_end_state" : "107"},
					{"ID" : "30", "SubInstance" : "grp_tx_ddr_Pipeline_tx_2_log_ddr_fu_1303", "Port" : "ps", "Inst_start_state" : "58", "Inst_end_state" : "59"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "64", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "65", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "logger_vlan_enable_mask", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "40", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "logger_vlan_enable_mask_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "multicast_recv_enable", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "41", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "multicast_recv_enable_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_filter_enable", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "42", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_filter_enable_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan100_macaddr_lsb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "43", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan100_macaddr_lsb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan100_macaddr_msb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "44", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan100_macaddr_msb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan101_macaddr_lsb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "45", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan101_macaddr_lsb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan101_macaddr_msb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "46", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan101_macaddr_msb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan102_macaddr_lsb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "47", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan102_macaddr_lsb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan102_macaddr_msb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "48", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan102_macaddr_msb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan103_macaddr_lsb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "49", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan103_macaddr_lsb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan103_macaddr_msb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "50", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan103_macaddr_msb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan104_macaddr_lsb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "51", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan104_macaddr_lsb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan104_macaddr_msb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "52", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan104_macaddr_msb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan105_macaddr_lsb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "53", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan105_macaddr_lsb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan105_macaddr_msb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "54", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan105_macaddr_msb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan106_macaddr_lsb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "55", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan106_macaddr_lsb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan106_macaddr_msb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "56", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan106_macaddr_msb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan107_macaddr_lsb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "57", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan107_macaddr_lsb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan107_macaddr_msb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "58", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan107_macaddr_msb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan108_macaddr_lsb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "59", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan108_macaddr_lsb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan108_macaddr_msb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "60", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan108_macaddr_msb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan109_macaddr_lsb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "61", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan109_macaddr_lsb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "unicast_vlan109_macaddr_msb", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "62", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "unicast_vlan109_macaddr_msb_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "log_all_mask", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "63", "DependentChanDepth" : "3", "DependentChanType" : "2",
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
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.tx_ddr_U0.log_header_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.tx_ddr_U0.tap_header_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.tx_ddr_U0.grp_tx_ddr_Pipeline_VITIS_LOOP_471_1_fu_1296", "Parent" : "25", "Child" : ["29"],
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
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.tx_ddr_U0.grp_tx_ddr_Pipeline_VITIS_LOOP_471_1_fu_1296.flow_control_loop_pipe_sequential_init_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.tx_ddr_U0.grp_tx_ddr_Pipeline_tx_2_log_ddr_fu_1303", "Parent" : "25", "Child" : ["31"],
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
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.tx_ddr_U0.grp_tx_ddr_Pipeline_tx_2_log_ddr_fu_1303.flow_control_loop_pipe_sequential_init_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.tx_ddr_U0.grp_tx_ddr_Pipeline_VITIS_LOOP_531_2_fu_1313", "Parent" : "25", "Child" : ["33"],
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
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.tx_ddr_U0.grp_tx_ddr_Pipeline_VITIS_LOOP_531_2_fu_1313.flow_control_loop_pipe_sequential_init_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.tx_ddr_U0.grp_tx_ddr_Pipeline_tx_2_tap_ddr_fu_1320", "Parent" : "25", "Child" : ["35"],
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
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.tx_ddr_U0.grp_tx_ddr_Pipeline_tx_2_tap_ddr_fu_1320.flow_control_loop_pipe_sequential_init_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.tx_ddr_U0.urem_32ns_32ns_32_36_seq_1_U95", "Parent" : "25"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.tx_ddr_U0.mul_32s_32s_32_1_1_U96", "Parent" : "25"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.tx_ddr_U0.urem_32ns_32ns_32_36_seq_1_U97", "Parent" : "25"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.tx_ddr_U0.mul_32s_32s_32_1_1_U98", "Parent" : "25"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.logger_vlan_enable_mask_c_U", "Parent" : "5"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.multicast_recv_enable_c_U", "Parent" : "5"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.unicast_filter_enable_c_U", "Parent" : "5"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.unicast_vlan100_macaddr_lsb_c_U", "Parent" : "5"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.unicast_vlan100_macaddr_msb_c_U", "Parent" : "5"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.unicast_vlan101_macaddr_lsb_c_U", "Parent" : "5"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.unicast_vlan101_macaddr_msb_c_U", "Parent" : "5"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.unicast_vlan102_macaddr_lsb_c_U", "Parent" : "5"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.unicast_vlan102_macaddr_msb_c_U", "Parent" : "5"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.unicast_vlan103_macaddr_lsb_c_U", "Parent" : "5"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.unicast_vlan103_macaddr_msb_c_U", "Parent" : "5"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.unicast_vlan104_macaddr_lsb_c_U", "Parent" : "5"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.unicast_vlan104_macaddr_msb_c_U", "Parent" : "5"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.unicast_vlan105_macaddr_lsb_c_U", "Parent" : "5"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.unicast_vlan105_macaddr_msb_c_U", "Parent" : "5"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.unicast_vlan106_macaddr_lsb_c_U", "Parent" : "5"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.unicast_vlan106_macaddr_msb_c_U", "Parent" : "5"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.unicast_vlan107_macaddr_lsb_c_U", "Parent" : "5"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.unicast_vlan107_macaddr_msb_c_U", "Parent" : "5"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.unicast_vlan108_macaddr_lsb_c_U", "Parent" : "5"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.unicast_vlan108_macaddr_msb_c_U", "Parent" : "5"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.unicast_vlan109_macaddr_lsb_c_U", "Parent" : "5"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.unicast_vlan109_macaddr_msb_c_U", "Parent" : "5"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.log_all_mask_c_U", "Parent" : "5"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.ddr_c_channel_U", "Parent" : "5"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_697_1_U0.driver_c_channel_U", "Parent" : "5"}]}


set ArgLastReadFirstWriteLatency {
	mac_logger {
		mac_fifo {Type I LastRead 17 FirstWrite -1}
		ps {Type IO LastRead 99 FirstWrite -1}
		fifo_axi_full {Type I LastRead 23 FirstWrite -1}
		fifo {Type I LastRead 0 FirstWrite -1}
		ddr {Type I LastRead 0 FirstWrite -1}
		driver {Type I LastRead 0 FirstWrite -1}
		status {Type I LastRead -1 FirstWrite -1}
		writeStatus {Type I LastRead -1 FirstWrite -1}
		timestamp {Type I LastRead 0 FirstWrite -1}
		logger_vlan_enable_mask {Type I LastRead 0 FirstWrite -1}
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
		fifo_axi_full_offset {Type I LastRead 0 FirstWrite -1}
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
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mac_fifo { m_axi {  { m_axi_mac_fifo_AWVALID VALID 1 1 }  { m_axi_mac_fifo_AWREADY READY 0 1 }  { m_axi_mac_fifo_AWADDR ADDR 1 64 }  { m_axi_mac_fifo_AWID ID 1 1 }  { m_axi_mac_fifo_AWLEN SIZE 1 8 }  { m_axi_mac_fifo_AWSIZE BURST 1 3 }  { m_axi_mac_fifo_AWBURST LOCK 1 2 }  { m_axi_mac_fifo_AWLOCK CACHE 1 2 }  { m_axi_mac_fifo_AWCACHE PROT 1 4 }  { m_axi_mac_fifo_AWPROT QOS 1 3 }  { m_axi_mac_fifo_AWQOS REGION 1 4 }  { m_axi_mac_fifo_AWREGION USER 1 4 }  { m_axi_mac_fifo_AWUSER DATA 1 1 }  { m_axi_mac_fifo_WVALID VALID 1 1 }  { m_axi_mac_fifo_WREADY READY 0 1 }  { m_axi_mac_fifo_WDATA FIFONUM 1 32 }  { m_axi_mac_fifo_WSTRB STRB 1 4 }  { m_axi_mac_fifo_WLAST LAST 1 1 }  { m_axi_mac_fifo_WID ID 1 1 }  { m_axi_mac_fifo_WUSER DATA 1 1 }  { m_axi_mac_fifo_ARVALID VALID 1 1 }  { m_axi_mac_fifo_ARREADY READY 0 1 }  { m_axi_mac_fifo_ARADDR ADDR 1 64 }  { m_axi_mac_fifo_ARID ID 1 1 }  { m_axi_mac_fifo_ARLEN SIZE 1 8 }  { m_axi_mac_fifo_ARSIZE BURST 1 3 }  { m_axi_mac_fifo_ARBURST LOCK 1 2 }  { m_axi_mac_fifo_ARLOCK CACHE 1 2 }  { m_axi_mac_fifo_ARCACHE PROT 1 4 }  { m_axi_mac_fifo_ARPROT QOS 1 3 }  { m_axi_mac_fifo_ARQOS REGION 1 4 }  { m_axi_mac_fifo_ARREGION USER 1 4 }  { m_axi_mac_fifo_ARUSER DATA 1 1 }  { m_axi_mac_fifo_RVALID VALID 0 1 }  { m_axi_mac_fifo_RREADY READY 1 1 }  { m_axi_mac_fifo_RDATA FIFONUM 0 32 }  { m_axi_mac_fifo_RLAST LAST 0 1 }  { m_axi_mac_fifo_RID ID 0 1 }  { m_axi_mac_fifo_RUSER DATA 0 1 }  { m_axi_mac_fifo_RRESP RESP 0 2 }  { m_axi_mac_fifo_BVALID VALID 0 1 }  { m_axi_mac_fifo_BREADY READY 1 1 }  { m_axi_mac_fifo_BRESP RESP 0 2 }  { m_axi_mac_fifo_BID ID 0 1 }  { m_axi_mac_fifo_BUSER DATA 0 1 } } }
	ps { m_axi {  { m_axi_ps_AWVALID VALID 1 1 }  { m_axi_ps_AWREADY READY 0 1 }  { m_axi_ps_AWADDR ADDR 1 64 }  { m_axi_ps_AWID ID 1 1 }  { m_axi_ps_AWLEN SIZE 1 8 }  { m_axi_ps_AWSIZE BURST 1 3 }  { m_axi_ps_AWBURST LOCK 1 2 }  { m_axi_ps_AWLOCK CACHE 1 2 }  { m_axi_ps_AWCACHE PROT 1 4 }  { m_axi_ps_AWPROT QOS 1 3 }  { m_axi_ps_AWQOS REGION 1 4 }  { m_axi_ps_AWREGION USER 1 4 }  { m_axi_ps_AWUSER DATA 1 1 }  { m_axi_ps_WVALID VALID 1 1 }  { m_axi_ps_WREADY READY 0 1 }  { m_axi_ps_WDATA FIFONUM 1 32 }  { m_axi_ps_WSTRB STRB 1 4 }  { m_axi_ps_WLAST LAST 1 1 }  { m_axi_ps_WID ID 1 1 }  { m_axi_ps_WUSER DATA 1 1 }  { m_axi_ps_ARVALID VALID 1 1 }  { m_axi_ps_ARREADY READY 0 1 }  { m_axi_ps_ARADDR ADDR 1 64 }  { m_axi_ps_ARID ID 1 1 }  { m_axi_ps_ARLEN SIZE 1 8 }  { m_axi_ps_ARSIZE BURST 1 3 }  { m_axi_ps_ARBURST LOCK 1 2 }  { m_axi_ps_ARLOCK CACHE 1 2 }  { m_axi_ps_ARCACHE PROT 1 4 }  { m_axi_ps_ARPROT QOS 1 3 }  { m_axi_ps_ARQOS REGION 1 4 }  { m_axi_ps_ARREGION USER 1 4 }  { m_axi_ps_ARUSER DATA 1 1 }  { m_axi_ps_RVALID VALID 0 1 }  { m_axi_ps_RREADY READY 1 1 }  { m_axi_ps_RDATA FIFONUM 0 32 }  { m_axi_ps_RLAST LAST 0 1 }  { m_axi_ps_RID ID 0 1 }  { m_axi_ps_RUSER DATA 0 1 }  { m_axi_ps_RRESP RESP 0 2 }  { m_axi_ps_BVALID VALID 0 1 }  { m_axi_ps_BREADY READY 1 1 }  { m_axi_ps_BRESP RESP 0 2 }  { m_axi_ps_BID ID 0 1 }  { m_axi_ps_BUSER DATA 0 1 } } }
	fifo_axi_full { m_axi {  { m_axi_fifo_axi_full_AWVALID VALID 1 1 }  { m_axi_fifo_axi_full_AWREADY READY 0 1 }  { m_axi_fifo_axi_full_AWADDR ADDR 1 64 }  { m_axi_fifo_axi_full_AWID ID 1 1 }  { m_axi_fifo_axi_full_AWLEN SIZE 1 8 }  { m_axi_fifo_axi_full_AWSIZE BURST 1 3 }  { m_axi_fifo_axi_full_AWBURST LOCK 1 2 }  { m_axi_fifo_axi_full_AWLOCK CACHE 1 2 }  { m_axi_fifo_axi_full_AWCACHE PROT 1 4 }  { m_axi_fifo_axi_full_AWPROT QOS 1 3 }  { m_axi_fifo_axi_full_AWQOS REGION 1 4 }  { m_axi_fifo_axi_full_AWREGION USER 1 4 }  { m_axi_fifo_axi_full_AWUSER DATA 1 1 }  { m_axi_fifo_axi_full_WVALID VALID 1 1 }  { m_axi_fifo_axi_full_WREADY READY 0 1 }  { m_axi_fifo_axi_full_WDATA FIFONUM 1 32 }  { m_axi_fifo_axi_full_WSTRB STRB 1 4 }  { m_axi_fifo_axi_full_WLAST LAST 1 1 }  { m_axi_fifo_axi_full_WID ID 1 1 }  { m_axi_fifo_axi_full_WUSER DATA 1 1 }  { m_axi_fifo_axi_full_ARVALID VALID 1 1 }  { m_axi_fifo_axi_full_ARREADY READY 0 1 }  { m_axi_fifo_axi_full_ARADDR ADDR 1 64 }  { m_axi_fifo_axi_full_ARID ID 1 1 }  { m_axi_fifo_axi_full_ARLEN SIZE 1 8 }  { m_axi_fifo_axi_full_ARSIZE BURST 1 3 }  { m_axi_fifo_axi_full_ARBURST LOCK 1 2 }  { m_axi_fifo_axi_full_ARLOCK CACHE 1 2 }  { m_axi_fifo_axi_full_ARCACHE PROT 1 4 }  { m_axi_fifo_axi_full_ARPROT QOS 1 3 }  { m_axi_fifo_axi_full_ARQOS REGION 1 4 }  { m_axi_fifo_axi_full_ARREGION USER 1 4 }  { m_axi_fifo_axi_full_ARUSER DATA 1 1 }  { m_axi_fifo_axi_full_RVALID VALID 0 1 }  { m_axi_fifo_axi_full_RREADY READY 1 1 }  { m_axi_fifo_axi_full_RDATA FIFONUM 0 32 }  { m_axi_fifo_axi_full_RLAST LAST 0 1 }  { m_axi_fifo_axi_full_RID ID 0 1 }  { m_axi_fifo_axi_full_RUSER DATA 0 1 }  { m_axi_fifo_axi_full_RRESP RESP 0 2 }  { m_axi_fifo_axi_full_BVALID VALID 0 1 }  { m_axi_fifo_axi_full_BREADY READY 1 1 }  { m_axi_fifo_axi_full_BRESP RESP 0 2 }  { m_axi_fifo_axi_full_BID ID 0 1 }  { m_axi_fifo_axi_full_BUSER DATA 0 1 } } }
	timestamp { ap_none {  { timestamp in_data 0 64 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict mac_fifo {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict ps {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 64 READ_WRITE_MODE READ_WRITE}
dict set maxi_interface_dict fifo_axi_full {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ mac_fifo 1 }
	{ ps 1 }
	{ fifo_axi_full 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ mac_fifo 1 }
	{ ps 1 }
	{ fifo_axi_full 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
