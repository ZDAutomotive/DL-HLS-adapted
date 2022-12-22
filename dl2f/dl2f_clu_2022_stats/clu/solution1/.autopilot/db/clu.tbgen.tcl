set moduleName clu
set isTopModule 1
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
set C_modelName {clu}
set C_modelType { void 0 }
set C_modelArgList {
	{ can_addr int 32 regular {axi_master 2}  }
	{ uart_addr int 32 unused {axi_master 0}  }
	{ lin_addr int 32 regular {axi_master 2}  }
	{ ps_ddr int 8 regular {axi_master 2}  }
	{ can_ptr int 32 regular {axi_slave 0}  }
	{ uart_ptr int 32 unused {axi_slave 0}  }
	{ lin_ptr int 32 regular {axi_slave 0}  }
	{ can_0_received int 32 regular {axi_slave 1 volatile }  }
	{ can_1_received int 32 regular {axi_slave 1 volatile }  }
	{ can_2_received int 32 regular {axi_slave 1 volatile }  }
	{ can_3_received int 32 regular {axi_slave 1 volatile }  }
	{ can_dropped int 32 regular {axi_slave 1 volatile }  }
	{ received_can int 32 regular {axi_slave 1 volatile }  }
	{ received_uart int 32 unused {axi_slave 0}  }
	{ lin_0_received int 32 regular {axi_slave 1 volatile }  }
	{ lin_1_received int 32 regular {axi_slave 1 volatile }  }
	{ lin_2_received int 32 regular {axi_slave 1 volatile }  }
	{ lin_3_received int 32 regular {axi_slave 1 volatile }  }
	{ lin_4_received int 32 regular {axi_slave 1 volatile }  }
	{ lin_5_received int 32 regular {axi_slave 1 volatile }  }
	{ lin_6_received int 32 regular {axi_slave 1 volatile }  }
	{ lin_7_received int 32 regular {axi_slave 1 volatile }  }
	{ lin_8_received int 32 regular {axi_slave 1 volatile }  }
	{ lin_9_received int 32 regular {axi_slave 1 volatile }  }
	{ lin_dropped int 32 regular {axi_slave 1 volatile }  }
	{ received_lin int 32 regular {axi_slave 1 volatile }  }
	{ can_en int 32 regular {axi_slave 0}  }
	{ uart_en int 8 unused {axi_slave 0}  }
	{ lin_en int 32 regular {axi_slave 0}  }
	{ can_ddr int 32 regular {axi_slave 0}  }
	{ uart_ddr int 32 unused {axi_slave 0}  }
	{ lin_ddr int 32 regular {axi_slave 0}  }
	{ timestamp int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "can_addr", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "can_ptr","offset": { "type": "dynamic","port_name": "can_ptr","bundle": "EN"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "uart_addr", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "uart_ptr","offset": { "type": "dynamic","port_name": "uart_ptr","bundle": "EN"},}]}]} , 
 	{ "Name" : "lin_addr", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "lin_ptr","offset": { "type": "dynamic","port_name": "lin_ptr","bundle": "EN"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "ps_ddr", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "can_ddr","offset": { "type": "dynamic","port_name": "can_ddr","bundle": "EN"},"direction": "READWRITE"},{"cName": "uart_ddr","offset": { "type": "dynamic","port_name": "uart_ddr","bundle": "EN"},},{"cName": "lin_ddr","offset": { "type": "dynamic","port_name": "lin_ddr","bundle": "EN"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "can_ptr", "interface" : "axi_slave", "bundle":"EN","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "uart_ptr", "interface" : "axi_slave", "bundle":"EN","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "lin_ptr", "interface" : "axi_slave", "bundle":"EN","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "can_0_received", "interface" : "axi_slave", "bundle":"EN","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":112}, "offset_end" : {"out":119}} , 
 	{ "Name" : "can_1_received", "interface" : "axi_slave", "bundle":"EN","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":120}, "offset_end" : {"out":127}} , 
 	{ "Name" : "can_2_received", "interface" : "axi_slave", "bundle":"EN","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":128}, "offset_end" : {"out":135}} , 
 	{ "Name" : "can_3_received", "interface" : "axi_slave", "bundle":"EN","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":136}, "offset_end" : {"out":143}} , 
 	{ "Name" : "can_dropped", "interface" : "axi_slave", "bundle":"EN","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":144}, "offset_end" : {"out":151}} , 
 	{ "Name" : "received_can", "interface" : "axi_slave", "bundle":"EN","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":40}, "offset_end" : {"out":47}} , 
 	{ "Name" : "received_uart", "interface" : "axi_slave", "bundle":"EN","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "lin_0_received", "interface" : "axi_slave", "bundle":"EN","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":152}, "offset_end" : {"out":159}} , 
 	{ "Name" : "lin_1_received", "interface" : "axi_slave", "bundle":"EN","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":160}, "offset_end" : {"out":167}} , 
 	{ "Name" : "lin_2_received", "interface" : "axi_slave", "bundle":"EN","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":168}, "offset_end" : {"out":175}} , 
 	{ "Name" : "lin_3_received", "interface" : "axi_slave", "bundle":"EN","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":176}, "offset_end" : {"out":183}} , 
 	{ "Name" : "lin_4_received", "interface" : "axi_slave", "bundle":"EN","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":184}, "offset_end" : {"out":191}} , 
 	{ "Name" : "lin_5_received", "interface" : "axi_slave", "bundle":"EN","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":192}, "offset_end" : {"out":199}} , 
 	{ "Name" : "lin_6_received", "interface" : "axi_slave", "bundle":"EN","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":200}, "offset_end" : {"out":207}} , 
 	{ "Name" : "lin_7_received", "interface" : "axi_slave", "bundle":"EN","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":208}, "offset_end" : {"out":215}} , 
 	{ "Name" : "lin_8_received", "interface" : "axi_slave", "bundle":"EN","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":216}, "offset_end" : {"out":223}} , 
 	{ "Name" : "lin_9_received", "interface" : "axi_slave", "bundle":"EN","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":224}, "offset_end" : {"out":231}} , 
 	{ "Name" : "lin_dropped", "interface" : "axi_slave", "bundle":"EN","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":232}, "offset_end" : {"out":239}} , 
 	{ "Name" : "received_lin", "interface" : "axi_slave", "bundle":"EN","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":56}, "offset_end" : {"out":63}} , 
 	{ "Name" : "can_en", "interface" : "axi_slave", "bundle":"EN","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "uart_en", "interface" : "axi_slave", "bundle":"EN","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":72}, "offset_end" : {"in":79}} , 
 	{ "Name" : "lin_en", "interface" : "axi_slave", "bundle":"EN","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":80}, "offset_end" : {"in":87}} , 
 	{ "Name" : "can_ddr", "interface" : "axi_slave", "bundle":"EN","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":88}, "offset_end" : {"in":95}} , 
 	{ "Name" : "uart_ddr", "interface" : "axi_slave", "bundle":"EN","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":96}, "offset_end" : {"in":103}} , 
 	{ "Name" : "lin_ddr", "interface" : "axi_slave", "bundle":"EN","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":104}, "offset_end" : {"in":111}} , 
 	{ "Name" : "timestamp", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 201
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_can_addr_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_can_addr_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_can_addr_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_can_addr_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_can_addr_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_can_addr_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_can_addr_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_can_addr_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_can_addr_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_can_addr_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_can_addr_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_can_addr_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_can_addr_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_can_addr_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_can_addr_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_can_addr_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_can_addr_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_can_addr_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_can_addr_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_can_addr_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_can_addr_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_can_addr_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_can_addr_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_can_addr_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_can_addr_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_can_addr_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_can_addr_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_can_addr_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_can_addr_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_can_addr_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_can_addr_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_can_addr_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_can_addr_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_can_addr_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_can_addr_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_can_addr_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_can_addr_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_can_addr_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_can_addr_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_can_addr_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_can_addr_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_can_addr_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_can_addr_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_can_addr_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_can_addr_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_uart_addr_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_uart_addr_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_uart_addr_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_uart_addr_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_uart_addr_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_uart_addr_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_uart_addr_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_uart_addr_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_uart_addr_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_uart_addr_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_uart_addr_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_uart_addr_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_uart_addr_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_uart_addr_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_uart_addr_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_uart_addr_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_uart_addr_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_uart_addr_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_uart_addr_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_uart_addr_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_uart_addr_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_uart_addr_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_uart_addr_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_uart_addr_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_uart_addr_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_uart_addr_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_uart_addr_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_uart_addr_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_uart_addr_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_uart_addr_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_uart_addr_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_uart_addr_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_uart_addr_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_uart_addr_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_uart_addr_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_uart_addr_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_uart_addr_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_uart_addr_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_uart_addr_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_uart_addr_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_uart_addr_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_uart_addr_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_uart_addr_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_uart_addr_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_uart_addr_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_lin_addr_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_lin_addr_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_lin_addr_AWADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_lin_addr_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_lin_addr_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_lin_addr_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_lin_addr_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_lin_addr_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_lin_addr_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_lin_addr_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_lin_addr_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_lin_addr_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_lin_addr_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_lin_addr_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_lin_addr_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_lin_addr_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_lin_addr_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_lin_addr_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_lin_addr_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_lin_addr_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_lin_addr_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_lin_addr_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_lin_addr_ARADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_lin_addr_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_lin_addr_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_lin_addr_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_lin_addr_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_lin_addr_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_lin_addr_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_lin_addr_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_lin_addr_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_lin_addr_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_lin_addr_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_lin_addr_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_lin_addr_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_lin_addr_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_lin_addr_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_lin_addr_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_lin_addr_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_lin_addr_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_lin_addr_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_lin_addr_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_lin_addr_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_lin_addr_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_lin_addr_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_ps_ddr_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_ps_ddr_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_ps_ddr_AWADDR sc_out sc_lv 32 signal 3 } 
	{ m_axi_ps_ddr_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_ps_ddr_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_ps_ddr_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_ps_ddr_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_ps_ddr_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_ps_ddr_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_ps_ddr_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_ps_ddr_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_ps_ddr_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_ps_ddr_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_ps_ddr_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_ps_ddr_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_ps_ddr_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_ps_ddr_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_ps_ddr_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_ps_ddr_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_ps_ddr_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_ps_ddr_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_ps_ddr_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_ps_ddr_ARADDR sc_out sc_lv 32 signal 3 } 
	{ m_axi_ps_ddr_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_ps_ddr_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_ps_ddr_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_ps_ddr_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_ps_ddr_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_ps_ddr_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_ps_ddr_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_ps_ddr_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_ps_ddr_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_ps_ddr_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_ps_ddr_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_ps_ddr_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_ps_ddr_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_ps_ddr_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_ps_ddr_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_ps_ddr_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_ps_ddr_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_ps_ddr_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_ps_ddr_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_ps_ddr_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_ps_ddr_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_ps_ddr_BUSER sc_in sc_lv 1 signal 3 } 
	{ timestamp sc_in sc_lv 64 signal 32 } 
	{ s_axi_EN_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_EN_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_EN_AWADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_EN_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_EN_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_EN_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_EN_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_EN_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_EN_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_EN_ARADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_EN_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_EN_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_EN_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_EN_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_EN_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_EN_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_EN_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_EN_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "EN", "role": "AWADDR" },"address":[{"name":"clu","role":"start","value":"0","valid_bit":"0"},{"name":"clu","role":"continue","value":"0","valid_bit":"4"},{"name":"clu","role":"auto_start","value":"0","valid_bit":"7"},{"name":"can_ptr","role":"data","value":"16"},{"name":"uart_ptr","role":"data","value":"24"},{"name":"lin_ptr","role":"data","value":"32"},{"name":"received_uart","role":"data","value":"48"},{"name":"can_en","role":"data","value":"64"},{"name":"uart_en","role":"data","value":"72"},{"name":"lin_en","role":"data","value":"80"},{"name":"can_ddr","role":"data","value":"88"},{"name":"uart_ddr","role":"data","value":"96"},{"name":"lin_ddr","role":"data","value":"104"}] },
	{ "name": "s_axi_EN_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "EN", "role": "AWVALID" } },
	{ "name": "s_axi_EN_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "EN", "role": "AWREADY" } },
	{ "name": "s_axi_EN_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "EN", "role": "WVALID" } },
	{ "name": "s_axi_EN_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "EN", "role": "WREADY" } },
	{ "name": "s_axi_EN_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "EN", "role": "WDATA" } },
	{ "name": "s_axi_EN_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "EN", "role": "WSTRB" } },
	{ "name": "s_axi_EN_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "EN", "role": "ARADDR" },"address":[{"name":"clu","role":"start","value":"0","valid_bit":"0"},{"name":"clu","role":"done","value":"0","valid_bit":"1"},{"name":"clu","role":"idle","value":"0","valid_bit":"2"},{"name":"clu","role":"ready","value":"0","valid_bit":"3"},{"name":"clu","role":"auto_start","value":"0","valid_bit":"7"},{"name":"received_can","role":"data","value":"40"}, {"name":"received_can","role":"valid","value":"44","valid_bit":"0"},{"name":"received_lin","role":"data","value":"56"}, {"name":"received_lin","role":"valid","value":"60","valid_bit":"0"},{"name":"can_0_received","role":"data","value":"112"}, {"name":"can_0_received","role":"valid","value":"116","valid_bit":"0"},{"name":"can_1_received","role":"data","value":"120"}, {"name":"can_1_received","role":"valid","value":"124","valid_bit":"0"},{"name":"can_2_received","role":"data","value":"128"}, {"name":"can_2_received","role":"valid","value":"132","valid_bit":"0"},{"name":"can_3_received","role":"data","value":"136"}, {"name":"can_3_received","role":"valid","value":"140","valid_bit":"0"},{"name":"can_dropped","role":"data","value":"144"}, {"name":"can_dropped","role":"valid","value":"148","valid_bit":"0"},{"name":"lin_0_received","role":"data","value":"152"}, {"name":"lin_0_received","role":"valid","value":"156","valid_bit":"0"},{"name":"lin_1_received","role":"data","value":"160"}, {"name":"lin_1_received","role":"valid","value":"164","valid_bit":"0"},{"name":"lin_2_received","role":"data","value":"168"}, {"name":"lin_2_received","role":"valid","value":"172","valid_bit":"0"},{"name":"lin_3_received","role":"data","value":"176"}, {"name":"lin_3_received","role":"valid","value":"180","valid_bit":"0"},{"name":"lin_4_received","role":"data","value":"184"}, {"name":"lin_4_received","role":"valid","value":"188","valid_bit":"0"},{"name":"lin_5_received","role":"data","value":"192"}, {"name":"lin_5_received","role":"valid","value":"196","valid_bit":"0"},{"name":"lin_6_received","role":"data","value":"200"}, {"name":"lin_6_received","role":"valid","value":"204","valid_bit":"0"},{"name":"lin_7_received","role":"data","value":"208"}, {"name":"lin_7_received","role":"valid","value":"212","valid_bit":"0"},{"name":"lin_8_received","role":"data","value":"216"}, {"name":"lin_8_received","role":"valid","value":"220","valid_bit":"0"},{"name":"lin_9_received","role":"data","value":"224"}, {"name":"lin_9_received","role":"valid","value":"228","valid_bit":"0"},{"name":"lin_dropped","role":"data","value":"232"}, {"name":"lin_dropped","role":"valid","value":"236","valid_bit":"0"}] },
	{ "name": "s_axi_EN_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "EN", "role": "ARVALID" } },
	{ "name": "s_axi_EN_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "EN", "role": "ARREADY" } },
	{ "name": "s_axi_EN_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "EN", "role": "RVALID" } },
	{ "name": "s_axi_EN_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "EN", "role": "RREADY" } },
	{ "name": "s_axi_EN_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "EN", "role": "RDATA" } },
	{ "name": "s_axi_EN_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "EN", "role": "RRESP" } },
	{ "name": "s_axi_EN_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "EN", "role": "BVALID" } },
	{ "name": "s_axi_EN_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "EN", "role": "BREADY" } },
	{ "name": "s_axi_EN_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "EN", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "EN", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_can_addr_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "can_addr", "role": "AWVALID" }} , 
 	{ "name": "m_axi_can_addr_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "can_addr", "role": "AWREADY" }} , 
 	{ "name": "m_axi_can_addr_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "can_addr", "role": "AWADDR" }} , 
 	{ "name": "m_axi_can_addr_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "can_addr", "role": "AWID" }} , 
 	{ "name": "m_axi_can_addr_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "can_addr", "role": "AWLEN" }} , 
 	{ "name": "m_axi_can_addr_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "can_addr", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_can_addr_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "can_addr", "role": "AWBURST" }} , 
 	{ "name": "m_axi_can_addr_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "can_addr", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_can_addr_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "can_addr", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_can_addr_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "can_addr", "role": "AWPROT" }} , 
 	{ "name": "m_axi_can_addr_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "can_addr", "role": "AWQOS" }} , 
 	{ "name": "m_axi_can_addr_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "can_addr", "role": "AWREGION" }} , 
 	{ "name": "m_axi_can_addr_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "can_addr", "role": "AWUSER" }} , 
 	{ "name": "m_axi_can_addr_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "can_addr", "role": "WVALID" }} , 
 	{ "name": "m_axi_can_addr_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "can_addr", "role": "WREADY" }} , 
 	{ "name": "m_axi_can_addr_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "can_addr", "role": "WDATA" }} , 
 	{ "name": "m_axi_can_addr_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "can_addr", "role": "WSTRB" }} , 
 	{ "name": "m_axi_can_addr_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "can_addr", "role": "WLAST" }} , 
 	{ "name": "m_axi_can_addr_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "can_addr", "role": "WID" }} , 
 	{ "name": "m_axi_can_addr_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "can_addr", "role": "WUSER" }} , 
 	{ "name": "m_axi_can_addr_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "can_addr", "role": "ARVALID" }} , 
 	{ "name": "m_axi_can_addr_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "can_addr", "role": "ARREADY" }} , 
 	{ "name": "m_axi_can_addr_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "can_addr", "role": "ARADDR" }} , 
 	{ "name": "m_axi_can_addr_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "can_addr", "role": "ARID" }} , 
 	{ "name": "m_axi_can_addr_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "can_addr", "role": "ARLEN" }} , 
 	{ "name": "m_axi_can_addr_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "can_addr", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_can_addr_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "can_addr", "role": "ARBURST" }} , 
 	{ "name": "m_axi_can_addr_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "can_addr", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_can_addr_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "can_addr", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_can_addr_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "can_addr", "role": "ARPROT" }} , 
 	{ "name": "m_axi_can_addr_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "can_addr", "role": "ARQOS" }} , 
 	{ "name": "m_axi_can_addr_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "can_addr", "role": "ARREGION" }} , 
 	{ "name": "m_axi_can_addr_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "can_addr", "role": "ARUSER" }} , 
 	{ "name": "m_axi_can_addr_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "can_addr", "role": "RVALID" }} , 
 	{ "name": "m_axi_can_addr_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "can_addr", "role": "RREADY" }} , 
 	{ "name": "m_axi_can_addr_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "can_addr", "role": "RDATA" }} , 
 	{ "name": "m_axi_can_addr_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "can_addr", "role": "RLAST" }} , 
 	{ "name": "m_axi_can_addr_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "can_addr", "role": "RID" }} , 
 	{ "name": "m_axi_can_addr_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "can_addr", "role": "RUSER" }} , 
 	{ "name": "m_axi_can_addr_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "can_addr", "role": "RRESP" }} , 
 	{ "name": "m_axi_can_addr_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "can_addr", "role": "BVALID" }} , 
 	{ "name": "m_axi_can_addr_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "can_addr", "role": "BREADY" }} , 
 	{ "name": "m_axi_can_addr_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "can_addr", "role": "BRESP" }} , 
 	{ "name": "m_axi_can_addr_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "can_addr", "role": "BID" }} , 
 	{ "name": "m_axi_can_addr_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "can_addr", "role": "BUSER" }} , 
 	{ "name": "m_axi_uart_addr_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uart_addr", "role": "AWVALID" }} , 
 	{ "name": "m_axi_uart_addr_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uart_addr", "role": "AWREADY" }} , 
 	{ "name": "m_axi_uart_addr_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "uart_addr", "role": "AWADDR" }} , 
 	{ "name": "m_axi_uart_addr_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "uart_addr", "role": "AWID" }} , 
 	{ "name": "m_axi_uart_addr_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "uart_addr", "role": "AWLEN" }} , 
 	{ "name": "m_axi_uart_addr_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "uart_addr", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_uart_addr_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "uart_addr", "role": "AWBURST" }} , 
 	{ "name": "m_axi_uart_addr_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "uart_addr", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_uart_addr_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "uart_addr", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_uart_addr_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "uart_addr", "role": "AWPROT" }} , 
 	{ "name": "m_axi_uart_addr_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "uart_addr", "role": "AWQOS" }} , 
 	{ "name": "m_axi_uart_addr_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "uart_addr", "role": "AWREGION" }} , 
 	{ "name": "m_axi_uart_addr_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "uart_addr", "role": "AWUSER" }} , 
 	{ "name": "m_axi_uart_addr_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uart_addr", "role": "WVALID" }} , 
 	{ "name": "m_axi_uart_addr_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uart_addr", "role": "WREADY" }} , 
 	{ "name": "m_axi_uart_addr_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "uart_addr", "role": "WDATA" }} , 
 	{ "name": "m_axi_uart_addr_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "uart_addr", "role": "WSTRB" }} , 
 	{ "name": "m_axi_uart_addr_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uart_addr", "role": "WLAST" }} , 
 	{ "name": "m_axi_uart_addr_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "uart_addr", "role": "WID" }} , 
 	{ "name": "m_axi_uart_addr_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "uart_addr", "role": "WUSER" }} , 
 	{ "name": "m_axi_uart_addr_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uart_addr", "role": "ARVALID" }} , 
 	{ "name": "m_axi_uart_addr_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uart_addr", "role": "ARREADY" }} , 
 	{ "name": "m_axi_uart_addr_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "uart_addr", "role": "ARADDR" }} , 
 	{ "name": "m_axi_uart_addr_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "uart_addr", "role": "ARID" }} , 
 	{ "name": "m_axi_uart_addr_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "uart_addr", "role": "ARLEN" }} , 
 	{ "name": "m_axi_uart_addr_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "uart_addr", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_uart_addr_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "uart_addr", "role": "ARBURST" }} , 
 	{ "name": "m_axi_uart_addr_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "uart_addr", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_uart_addr_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "uart_addr", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_uart_addr_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "uart_addr", "role": "ARPROT" }} , 
 	{ "name": "m_axi_uart_addr_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "uart_addr", "role": "ARQOS" }} , 
 	{ "name": "m_axi_uart_addr_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "uart_addr", "role": "ARREGION" }} , 
 	{ "name": "m_axi_uart_addr_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "uart_addr", "role": "ARUSER" }} , 
 	{ "name": "m_axi_uart_addr_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uart_addr", "role": "RVALID" }} , 
 	{ "name": "m_axi_uart_addr_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uart_addr", "role": "RREADY" }} , 
 	{ "name": "m_axi_uart_addr_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "uart_addr", "role": "RDATA" }} , 
 	{ "name": "m_axi_uart_addr_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uart_addr", "role": "RLAST" }} , 
 	{ "name": "m_axi_uart_addr_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "uart_addr", "role": "RID" }} , 
 	{ "name": "m_axi_uart_addr_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "uart_addr", "role": "RUSER" }} , 
 	{ "name": "m_axi_uart_addr_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "uart_addr", "role": "RRESP" }} , 
 	{ "name": "m_axi_uart_addr_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uart_addr", "role": "BVALID" }} , 
 	{ "name": "m_axi_uart_addr_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uart_addr", "role": "BREADY" }} , 
 	{ "name": "m_axi_uart_addr_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "uart_addr", "role": "BRESP" }} , 
 	{ "name": "m_axi_uart_addr_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "uart_addr", "role": "BID" }} , 
 	{ "name": "m_axi_uart_addr_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "uart_addr", "role": "BUSER" }} , 
 	{ "name": "m_axi_lin_addr_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_addr", "role": "AWVALID" }} , 
 	{ "name": "m_axi_lin_addr_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_addr", "role": "AWREADY" }} , 
 	{ "name": "m_axi_lin_addr_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lin_addr", "role": "AWADDR" }} , 
 	{ "name": "m_axi_lin_addr_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_addr", "role": "AWID" }} , 
 	{ "name": "m_axi_lin_addr_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lin_addr", "role": "AWLEN" }} , 
 	{ "name": "m_axi_lin_addr_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "lin_addr", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_lin_addr_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "lin_addr", "role": "AWBURST" }} , 
 	{ "name": "m_axi_lin_addr_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "lin_addr", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_lin_addr_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "lin_addr", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_lin_addr_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "lin_addr", "role": "AWPROT" }} , 
 	{ "name": "m_axi_lin_addr_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "lin_addr", "role": "AWQOS" }} , 
 	{ "name": "m_axi_lin_addr_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "lin_addr", "role": "AWREGION" }} , 
 	{ "name": "m_axi_lin_addr_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_addr", "role": "AWUSER" }} , 
 	{ "name": "m_axi_lin_addr_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_addr", "role": "WVALID" }} , 
 	{ "name": "m_axi_lin_addr_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_addr", "role": "WREADY" }} , 
 	{ "name": "m_axi_lin_addr_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lin_addr", "role": "WDATA" }} , 
 	{ "name": "m_axi_lin_addr_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "lin_addr", "role": "WSTRB" }} , 
 	{ "name": "m_axi_lin_addr_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_addr", "role": "WLAST" }} , 
 	{ "name": "m_axi_lin_addr_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_addr", "role": "WID" }} , 
 	{ "name": "m_axi_lin_addr_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_addr", "role": "WUSER" }} , 
 	{ "name": "m_axi_lin_addr_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_addr", "role": "ARVALID" }} , 
 	{ "name": "m_axi_lin_addr_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_addr", "role": "ARREADY" }} , 
 	{ "name": "m_axi_lin_addr_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lin_addr", "role": "ARADDR" }} , 
 	{ "name": "m_axi_lin_addr_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_addr", "role": "ARID" }} , 
 	{ "name": "m_axi_lin_addr_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lin_addr", "role": "ARLEN" }} , 
 	{ "name": "m_axi_lin_addr_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "lin_addr", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_lin_addr_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "lin_addr", "role": "ARBURST" }} , 
 	{ "name": "m_axi_lin_addr_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "lin_addr", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_lin_addr_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "lin_addr", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_lin_addr_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "lin_addr", "role": "ARPROT" }} , 
 	{ "name": "m_axi_lin_addr_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "lin_addr", "role": "ARQOS" }} , 
 	{ "name": "m_axi_lin_addr_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "lin_addr", "role": "ARREGION" }} , 
 	{ "name": "m_axi_lin_addr_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_addr", "role": "ARUSER" }} , 
 	{ "name": "m_axi_lin_addr_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_addr", "role": "RVALID" }} , 
 	{ "name": "m_axi_lin_addr_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_addr", "role": "RREADY" }} , 
 	{ "name": "m_axi_lin_addr_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lin_addr", "role": "RDATA" }} , 
 	{ "name": "m_axi_lin_addr_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_addr", "role": "RLAST" }} , 
 	{ "name": "m_axi_lin_addr_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_addr", "role": "RID" }} , 
 	{ "name": "m_axi_lin_addr_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_addr", "role": "RUSER" }} , 
 	{ "name": "m_axi_lin_addr_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "lin_addr", "role": "RRESP" }} , 
 	{ "name": "m_axi_lin_addr_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_addr", "role": "BVALID" }} , 
 	{ "name": "m_axi_lin_addr_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_addr", "role": "BREADY" }} , 
 	{ "name": "m_axi_lin_addr_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "lin_addr", "role": "BRESP" }} , 
 	{ "name": "m_axi_lin_addr_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_addr", "role": "BID" }} , 
 	{ "name": "m_axi_lin_addr_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_addr", "role": "BUSER" }} , 
 	{ "name": "m_axi_ps_ddr_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "AWVALID" }} , 
 	{ "name": "m_axi_ps_ddr_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "AWREADY" }} , 
 	{ "name": "m_axi_ps_ddr_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ps_ddr", "role": "AWADDR" }} , 
 	{ "name": "m_axi_ps_ddr_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "AWID" }} , 
 	{ "name": "m_axi_ps_ddr_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ps_ddr", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_ps_ddr_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ps_ddr", "role": "WDATA" }} , 
 	{ "name": "m_axi_ps_ddr_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ps_ddr", "role": "WSTRB" }} , 
 	{ "name": "m_axi_ps_ddr_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "WLAST" }} , 
 	{ "name": "m_axi_ps_ddr_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "WID" }} , 
 	{ "name": "m_axi_ps_ddr_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "WUSER" }} , 
 	{ "name": "m_axi_ps_ddr_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "ARVALID" }} , 
 	{ "name": "m_axi_ps_ddr_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "ARREADY" }} , 
 	{ "name": "m_axi_ps_ddr_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ps_ddr", "role": "ARADDR" }} , 
 	{ "name": "m_axi_ps_ddr_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "ARID" }} , 
 	{ "name": "m_axi_ps_ddr_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ps_ddr", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_ps_ddr_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ps_ddr", "role": "RDATA" }} , 
 	{ "name": "m_axi_ps_ddr_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "RLAST" }} , 
 	{ "name": "m_axi_ps_ddr_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "RID" }} , 
 	{ "name": "m_axi_ps_ddr_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "RUSER" }} , 
 	{ "name": "m_axi_ps_ddr_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ps_ddr", "role": "RRESP" }} , 
 	{ "name": "m_axi_ps_ddr_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "BVALID" }} , 
 	{ "name": "m_axi_ps_ddr_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "BREADY" }} , 
 	{ "name": "m_axi_ps_ddr_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ps_ddr", "role": "BRESP" }} , 
 	{ "name": "m_axi_ps_ddr_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "BID" }} , 
 	{ "name": "m_axi_ps_ddr_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ps_ddr", "role": "BUSER" }} , 
 	{ "name": "timestamp", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "timestamp", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "10", "27", "28", "29", "30"],
		"CDFG" : "clu",
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
			{"Name" : "can_addr", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "can_addr_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "can_addr_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_recvFrame_logic_1_fu_420", "Port" : "can_addr", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "uart_addr", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "lin_addr", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_single_lin_process_1_fu_354", "Port" : "lin_addr", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "ps_ddr", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_single_lin_process_1_fu_354", "Port" : "ps_ddr", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "10", "SubInstance" : "grp_recvFrame_logic_1_fu_420", "Port" : "ps_ddr", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "can_ptr", "Type" : "None", "Direction" : "I"},
			{"Name" : "uart_ptr", "Type" : "None", "Direction" : "I"},
			{"Name" : "lin_ptr", "Type" : "None", "Direction" : "I"},
			{"Name" : "can_0_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_recvFrame_logic_1_fu_420", "Port" : "can_0_received", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "can_1_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_recvFrame_logic_1_fu_420", "Port" : "can_1_received", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "can_2_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_recvFrame_logic_1_fu_420", "Port" : "can_2_received", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "can_3_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_recvFrame_logic_1_fu_420", "Port" : "can_3_received", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "can_dropped", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_recvFrame_logic_1_fu_420", "Port" : "can_dropped", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "received_can", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_recvFrame_logic_1_fu_420", "Port" : "received_can", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "received_uart", "Type" : "None", "Direction" : "I"},
			{"Name" : "lin_0_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_single_lin_process_1_fu_354", "Port" : "lin_0_received", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "lin_1_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_single_lin_process_1_fu_354", "Port" : "lin_1_received", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "lin_2_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_single_lin_process_1_fu_354", "Port" : "lin_2_received", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "lin_3_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_single_lin_process_1_fu_354", "Port" : "lin_3_received", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "lin_4_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_single_lin_process_1_fu_354", "Port" : "lin_4_received", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "lin_5_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_single_lin_process_1_fu_354", "Port" : "lin_5_received", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "lin_6_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_single_lin_process_1_fu_354", "Port" : "lin_6_received", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "lin_7_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_single_lin_process_1_fu_354", "Port" : "lin_7_received", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "lin_8_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_single_lin_process_1_fu_354", "Port" : "lin_8_received", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "lin_9_received", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_single_lin_process_1_fu_354", "Port" : "lin_9_received", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "lin_dropped", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_single_lin_process_1_fu_354", "Port" : "lin_dropped", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "received_lin", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_single_lin_process_1_fu_354", "Port" : "received_lin", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "can_en", "Type" : "None", "Direction" : "I"},
			{"Name" : "uart_en", "Type" : "None", "Direction" : "I"},
			{"Name" : "lin_en", "Type" : "None", "Direction" : "I"},
			{"Name" : "can_ddr", "Type" : "None", "Direction" : "I"},
			{"Name" : "uart_ddr", "Type" : "None", "Direction" : "I"},
			{"Name" : "lin_ddr", "Type" : "None", "Direction" : "I"},
			{"Name" : "timestamp", "Type" : "None", "Direction" : "I"},
			{"Name" : "mode_nr", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "counter_droped_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_recvFrame_logic_1_fu_420", "Port" : "counter_droped_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "internal_can_counter", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_recvFrame_logic_1_fu_420", "Port" : "internal_can_counter", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "dropped_can_counter", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_recvFrame_logic_1_fu_420", "Port" : "dropped_can_counter", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "PLIN_Ctrl_run_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_single_lin_process_1_fu_354", "Port" : "PLIN_Ctrl_run_state", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "PL_Data", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_single_lin_process_1_fu_354", "Port" : "PL_Data", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "counter_lin_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_single_lin_process_1_fu_354", "Port" : "counter_lin_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "counter_lin_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_single_lin_process_1_fu_354", "Port" : "counter_lin_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "counter_lin_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_single_lin_process_1_fu_354", "Port" : "counter_lin_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "counter_lin_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_single_lin_process_1_fu_354", "Port" : "counter_lin_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "counter_lin_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_single_lin_process_1_fu_354", "Port" : "counter_lin_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "counter_lin_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_single_lin_process_1_fu_354", "Port" : "counter_lin_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "counter_lin_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_single_lin_process_1_fu_354", "Port" : "counter_lin_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "counter_lin_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_single_lin_process_1_fu_354", "Port" : "counter_lin_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "counter_lin_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_single_lin_process_1_fu_354", "Port" : "counter_lin_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "counter_lin_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_single_lin_process_1_fu_354", "Port" : "counter_lin_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "counter_droped", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_single_lin_process_1_fu_354", "Port" : "counter_droped", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "internal_lin_counter", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_single_lin_process_1_fu_354", "Port" : "internal_lin_counter", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "dropped_lin_counter", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_single_lin_process_1_fu_354", "Port" : "dropped_lin_counter", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_335_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state14"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state15"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_375_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state15"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_single_lin_process_1_fu_354", "Parent" : "0", "Child" : ["2", "3", "4", "6"],
		"CDFG" : "single_lin_process_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "38", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "lin_addr", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "lin_addr_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "lin_addr_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "lin_addr_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "lin_addr_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "lin_addr_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_single_lin_process_1_Pipeline_VITIS_LOOP_210_1_fu_878", "Port" : "lin_addr", "Inst_start_state" : "33", "Inst_end_state" : "34"}]},
			{"Name" : "linbase", "Type" : "None", "Direction" : "I"},
			{"Name" : "ps_ddr", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_write_lin_ddr_1_fu_887", "Port" : "ps_ddr", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "ddr", "Type" : "None", "Direction" : "I"},
			{"Name" : "timestamp", "Type" : "None", "Direction" : "I"},
			{"Name" : "EN", "Type" : "None", "Direction" : "I"},
			{"Name" : "lin_0_received", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "lin_1_received", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "lin_2_received", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "lin_3_received", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "lin_4_received", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "lin_5_received", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "lin_6_received", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "lin_7_received", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "lin_8_received", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "lin_9_received", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "lin_dropped", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "received_lin", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "PLIN_Ctrl_run_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "PL_Data", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "counter_lin_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "counter_lin_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "counter_lin_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "counter_lin_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "counter_lin_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "counter_lin_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "counter_lin_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "counter_lin_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "counter_lin_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "counter_lin_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "counter_droped", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "internal_lin_counter", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dropped_lin_counter", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_write_lin_ddr_1_fu_887", "Port" : "dropped_lin_counter", "Inst_start_state" : "43", "Inst_end_state" : "44"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_single_lin_process_1_fu_354.PLIN_Ctrl_run_state_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_single_lin_process_1_fu_354.lin_frame_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_single_lin_process_1_fu_354.grp_single_lin_process_1_Pipeline_VITIS_LOOP_210_1_fu_878", "Parent" : "1", "Child" : ["5"],
		"CDFG" : "single_lin_process_1_Pipeline_VITIS_LOOP_210_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "lin_addr", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "lin_addr_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "lin_addr_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln81_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln210", "Type" : "None", "Direction" : "I"},
			{"Name" : "lin_frame", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_210_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_single_lin_process_1_fu_354.grp_single_lin_process_1_Pipeline_VITIS_LOOP_210_1_fu_878.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_single_lin_process_1_fu_354.grp_write_lin_ddr_1_fu_887", "Parent" : "1", "Child" : ["7", "8", "9"],
		"CDFG" : "write_lin_ddr_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "235",
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
					{"Name" : "ps_ddr_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "ddr_header", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dropped_lin_counter", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "72", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state11"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "72", "FirstState" : "ap_ST_fsm_state51", "LastState" : ["ap_ST_fsm_state53"], "QuitState" : ["ap_ST_fsm_state51"], "PreState" : ["ap_ST_fsm_state50"], "PostState" : ["ap_ST_fsm_state54"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "72", "FirstState" : "ap_ST_fsm_state59", "LastState" : ["ap_ST_fsm_state60"], "QuitState" : ["ap_ST_fsm_state59"], "PreState" : ["ap_ST_fsm_state58"], "PostState" : ["ap_ST_fsm_state61"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_single_lin_process_1_fu_354.grp_write_lin_ddr_1_fu_887.ringbuffer_header_bytes_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_single_lin_process_1_fu_354.grp_write_lin_ddr_1_fu_887.urem_32ns_32ns_32_36_seq_1_U5", "Parent" : "6"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_single_lin_process_1_fu_354.grp_write_lin_ddr_1_fu_887.mux_42_8_1_1_U6", "Parent" : "6"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_recvFrame_logic_1_fu_420", "Parent" : "0", "Child" : ["11", "12", "14", "16", "18"],
		"CDFG" : "recvFrame_logic_1",
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
			{"Name" : "can_addr", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "can_addr_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "can_addr_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "can_addr_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "can_addr_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "can_addr_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_recvFrame_logic_1_Pipeline_VITIS_LOOP_237_2_fu_578", "Port" : "can_addr", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "16", "SubInstance" : "grp_recvFrame_logic_1_Pipeline_VITIS_LOOP_223_1_fu_588", "Port" : "can_addr", "Inst_start_state" : "16", "Inst_end_state" : "15"}]},
			{"Name" : "canbase", "Type" : "None", "Direction" : "I"},
			{"Name" : "ps_ddr", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_write_ddr_1_fu_598", "Port" : "ps_ddr", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "ddr", "Type" : "None", "Direction" : "I"},
			{"Name" : "readIndex", "Type" : "None", "Direction" : "I"},
			{"Name" : "EN", "Type" : "None", "Direction" : "I"},
			{"Name" : "timestamp", "Type" : "None", "Direction" : "I"},
			{"Name" : "can_0_received", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "can_1_received", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "can_2_received", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "can_3_received", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "can_dropped", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "received_can", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "counter_droped_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "internal_can_counter", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dropped_can_counter", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_write_ddr_1_fu_598", "Port" : "dropped_can_counter", "Inst_start_state" : "17", "Inst_end_state" : "18"}]}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_recvFrame_logic_1_fu_420.can_frame_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_recvFrame_logic_1_fu_420.grp_recvFrame_logic_1_Pipeline_1_fu_572", "Parent" : "10", "Child" : ["13"],
		"CDFG" : "recvFrame_logic_1_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "94", "EstimateLatencyMax" : "94",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "can_frame", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_recvFrame_logic_1_fu_420.grp_recvFrame_logic_1_Pipeline_1_fu_572.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_recvFrame_logic_1_fu_420.grp_recvFrame_logic_1_Pipeline_VITIS_LOOP_237_2_fu_578", "Parent" : "10", "Child" : ["15"],
		"CDFG" : "recvFrame_logic_1_Pipeline_VITIS_LOOP_237_2",
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
			{"Name" : "zext_ln27", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln223", "Type" : "None", "Direction" : "I"},
			{"Name" : "canbase", "Type" : "None", "Direction" : "I"},
			{"Name" : "can_addr", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "can_addr_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "can_addr_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "can_frame", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_237_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_recvFrame_logic_1_fu_420.grp_recvFrame_logic_1_Pipeline_VITIS_LOOP_237_2_fu_578.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_recvFrame_logic_1_fu_420.grp_recvFrame_logic_1_Pipeline_VITIS_LOOP_223_1_fu_588", "Parent" : "10", "Child" : ["17"],
		"CDFG" : "recvFrame_logic_1_Pipeline_VITIS_LOOP_223_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "42",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "add_ln223_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "canbase", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln223", "Type" : "None", "Direction" : "I"},
			{"Name" : "can_addr", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "can_addr_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "can_addr_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "can_frame", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_223_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_recvFrame_logic_1_fu_420.grp_recvFrame_logic_1_Pipeline_VITIS_LOOP_223_1_fu_588.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_recvFrame_logic_1_fu_420.grp_write_ddr_1_fu_598", "Parent" : "10", "Child" : ["19", "20", "22", "25", "26"],
		"CDFG" : "write_ddr_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "138", "EstimateLatencyMax" : "247",
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
					{"ID" : "20", "SubInstance" : "grp_write_ddr_1_Pipeline_1_fu_272", "Port" : "ps_ddr", "Inst_start_state" : "52", "Inst_end_state" : "53"},
					{"ID" : "22", "SubInstance" : "grp_write_ddr_1_Pipeline_2_fu_281", "Port" : "ps_ddr", "Inst_start_state" : "59", "Inst_end_state" : "60"}]},
			{"Name" : "ddr_header", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_write_ddr_1_Pipeline_1_fu_272", "Port" : "data", "Inst_start_state" : "52", "Inst_end_state" : "53"}]},
			{"Name" : "dropped_can_counter", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "72", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state11"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_recvFrame_logic_1_fu_420.grp_write_ddr_1_fu_598.ringbuffer_header_bytes_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_recvFrame_logic_1_fu_420.grp_write_ddr_1_fu_598.grp_write_ddr_1_Pipeline_1_fu_272", "Parent" : "18", "Child" : ["21"],
		"CDFG" : "write_ddr_1_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "95", "EstimateLatencyMax" : "95",
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
			{"Name" : "add_ln126_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_recvFrame_logic_1_fu_420.grp_write_ddr_1_fu_598.grp_write_ddr_1_Pipeline_1_fu_272.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_recvFrame_logic_1_fu_420.grp_write_ddr_1_fu_598.grp_write_ddr_1_Pipeline_2_fu_281", "Parent" : "18", "Child" : ["23", "24"],
		"CDFG" : "write_ddr_1_Pipeline_2",
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
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_recvFrame_logic_1_fu_420.grp_write_ddr_1_fu_598.grp_write_ddr_1_Pipeline_2_fu_281.mux_42_8_1_1_U47", "Parent" : "22"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_recvFrame_logic_1_fu_420.grp_write_ddr_1_fu_598.grp_write_ddr_1_Pipeline_2_fu_281.flow_control_loop_pipe_sequential_init_U", "Parent" : "22"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_recvFrame_logic_1_fu_420.grp_write_ddr_1_fu_598.urem_32ns_32ns_32_36_seq_1_U54", "Parent" : "18"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_recvFrame_logic_1_fu_420.grp_write_ddr_1_fu_598.mul_32s_8ns_32_1_1_U55", "Parent" : "18"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.EN_s_axi_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.can_addr_m_axi_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lin_addr_m_axi_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ps_ddr_m_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	clu {
		can_addr {Type IO LastRead 25 FirstWrite -1}
		uart_addr {Type I LastRead -1 FirstWrite -1}
		lin_addr {Type IO LastRead 20 FirstWrite -1}
		ps_ddr {Type IO LastRead 58 FirstWrite 1}
		can_ptr {Type I LastRead 0 FirstWrite -1}
		uart_ptr {Type I LastRead -1 FirstWrite -1}
		lin_ptr {Type I LastRead 0 FirstWrite -1}
		can_0_received {Type O LastRead -1 FirstWrite 29}
		can_1_received {Type O LastRead -1 FirstWrite 29}
		can_2_received {Type O LastRead -1 FirstWrite 29}
		can_3_received {Type O LastRead -1 FirstWrite 29}
		can_dropped {Type O LastRead -1 FirstWrite 14}
		received_can {Type O LastRead -1 FirstWrite 14}
		received_uart {Type I LastRead -1 FirstWrite -1}
		lin_0_received {Type O LastRead -1 FirstWrite 28}
		lin_1_received {Type O LastRead -1 FirstWrite 28}
		lin_2_received {Type O LastRead -1 FirstWrite 28}
		lin_3_received {Type O LastRead -1 FirstWrite 28}
		lin_4_received {Type O LastRead -1 FirstWrite 28}
		lin_5_received {Type O LastRead -1 FirstWrite 28}
		lin_6_received {Type O LastRead -1 FirstWrite 28}
		lin_7_received {Type O LastRead -1 FirstWrite 28}
		lin_8_received {Type O LastRead -1 FirstWrite 28}
		lin_9_received {Type O LastRead -1 FirstWrite 28}
		lin_dropped {Type O LastRead -1 FirstWrite 28}
		received_lin {Type O LastRead -1 FirstWrite 28}
		can_en {Type I LastRead 0 FirstWrite -1}
		uart_en {Type I LastRead -1 FirstWrite -1}
		lin_en {Type I LastRead 0 FirstWrite -1}
		can_ddr {Type I LastRead 0 FirstWrite -1}
		uart_ddr {Type I LastRead -1 FirstWrite -1}
		lin_ddr {Type I LastRead 0 FirstWrite -1}
		timestamp {Type I LastRead 0 FirstWrite -1}
		mode_nr {Type IO LastRead -1 FirstWrite -1}
		counter_droped_1 {Type IO LastRead -1 FirstWrite -1}
		internal_can_counter {Type IO LastRead -1 FirstWrite -1}
		dropped_can_counter {Type IO LastRead -1 FirstWrite -1}
		PLIN_Ctrl_run_state {Type IO LastRead -1 FirstWrite -1}
		PL_Data {Type IO LastRead -1 FirstWrite -1}
		counter_lin_0 {Type IO LastRead -1 FirstWrite -1}
		counter_lin_1 {Type IO LastRead -1 FirstWrite -1}
		counter_lin_2 {Type IO LastRead -1 FirstWrite -1}
		counter_lin_3 {Type IO LastRead -1 FirstWrite -1}
		counter_lin_4 {Type IO LastRead -1 FirstWrite -1}
		counter_lin_5 {Type IO LastRead -1 FirstWrite -1}
		counter_lin_6 {Type IO LastRead -1 FirstWrite -1}
		counter_lin_7 {Type IO LastRead -1 FirstWrite -1}
		counter_lin_8 {Type IO LastRead -1 FirstWrite -1}
		counter_lin_9 {Type IO LastRead -1 FirstWrite -1}
		counter_droped {Type IO LastRead -1 FirstWrite -1}
		internal_lin_counter {Type IO LastRead -1 FirstWrite -1}
		dropped_lin_counter {Type IO LastRead -1 FirstWrite -1}}
	single_lin_process_1 {
		lin_addr {Type IO LastRead 20 FirstWrite -1}
		linbase {Type I LastRead 0 FirstWrite -1}
		ps_ddr {Type IO LastRead 55 FirstWrite 48}
		ddr {Type I LastRead 0 FirstWrite -1}
		timestamp {Type I LastRead 0 FirstWrite -1}
		EN {Type I LastRead 0 FirstWrite -1}
		lin_0_received {Type O LastRead -1 FirstWrite 28}
		lin_1_received {Type O LastRead -1 FirstWrite 28}
		lin_2_received {Type O LastRead -1 FirstWrite 28}
		lin_3_received {Type O LastRead -1 FirstWrite 28}
		lin_4_received {Type O LastRead -1 FirstWrite 28}
		lin_5_received {Type O LastRead -1 FirstWrite 28}
		lin_6_received {Type O LastRead -1 FirstWrite 28}
		lin_7_received {Type O LastRead -1 FirstWrite 28}
		lin_8_received {Type O LastRead -1 FirstWrite 28}
		lin_9_received {Type O LastRead -1 FirstWrite 28}
		lin_dropped {Type O LastRead -1 FirstWrite 28}
		received_lin {Type O LastRead -1 FirstWrite 28}
		PLIN_Ctrl_run_state {Type IO LastRead -1 FirstWrite -1}
		PL_Data {Type IO LastRead -1 FirstWrite -1}
		counter_lin_0 {Type IO LastRead -1 FirstWrite -1}
		counter_lin_1 {Type IO LastRead -1 FirstWrite -1}
		counter_lin_2 {Type IO LastRead -1 FirstWrite -1}
		counter_lin_3 {Type IO LastRead -1 FirstWrite -1}
		counter_lin_4 {Type IO LastRead -1 FirstWrite -1}
		counter_lin_5 {Type IO LastRead -1 FirstWrite -1}
		counter_lin_6 {Type IO LastRead -1 FirstWrite -1}
		counter_lin_7 {Type IO LastRead -1 FirstWrite -1}
		counter_lin_8 {Type IO LastRead -1 FirstWrite -1}
		counter_lin_9 {Type IO LastRead -1 FirstWrite -1}
		counter_droped {Type IO LastRead -1 FirstWrite -1}
		internal_lin_counter {Type IO LastRead -1 FirstWrite -1}
		dropped_lin_counter {Type IO LastRead -1 FirstWrite -1}}
	single_lin_process_1_Pipeline_VITIS_LOOP_210_1 {
		lin_addr {Type I LastRead 8 FirstWrite -1}
		sext_ln81_2 {Type I LastRead 0 FirstWrite -1}
		add_ln210 {Type I LastRead 0 FirstWrite -1}
		lin_frame {Type O LastRead -1 FirstWrite 9}}
	write_lin_ddr_1 {
		ps_ddr {Type IO LastRead 55 FirstWrite 48}
		ddr_header {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 48 FirstWrite -1}
		dropped_lin_counter {Type IO LastRead -1 FirstWrite -1}}
	recvFrame_logic_1 {
		can_addr {Type IO LastRead 25 FirstWrite -1}
		canbase {Type I LastRead 0 FirstWrite -1}
		ps_ddr {Type IO LastRead 58 FirstWrite 1}
		ddr {Type I LastRead 12 FirstWrite -1}
		readIndex {Type I LastRead 0 FirstWrite -1}
		EN {Type I LastRead 6 FirstWrite -1}
		timestamp {Type I LastRead 2 FirstWrite -1}
		can_0_received {Type O LastRead -1 FirstWrite 29}
		can_1_received {Type O LastRead -1 FirstWrite 29}
		can_2_received {Type O LastRead -1 FirstWrite 29}
		can_3_received {Type O LastRead -1 FirstWrite 29}
		can_dropped {Type O LastRead -1 FirstWrite 14}
		received_can {Type O LastRead -1 FirstWrite 14}
		counter_droped_1 {Type IO LastRead -1 FirstWrite -1}
		internal_can_counter {Type IO LastRead -1 FirstWrite -1}
		dropped_can_counter {Type IO LastRead -1 FirstWrite -1}}
	recvFrame_logic_1_Pipeline_1 {
		can_frame {Type O LastRead -1 FirstWrite 0}}
	recvFrame_logic_1_Pipeline_VITIS_LOOP_237_2 {
		zext_ln27 {Type I LastRead 0 FirstWrite -1}
		zext_ln223 {Type I LastRead 0 FirstWrite -1}
		canbase {Type I LastRead 0 FirstWrite -1}
		can_addr {Type I LastRead 9 FirstWrite -1}
		can_frame {Type O LastRead -1 FirstWrite 10}}
	recvFrame_logic_1_Pipeline_VITIS_LOOP_223_1 {
		add_ln223_1 {Type I LastRead 0 FirstWrite -1}
		canbase {Type I LastRead 0 FirstWrite -1}
		zext_ln223 {Type I LastRead 0 FirstWrite -1}
		can_addr {Type I LastRead 8 FirstWrite -1}
		can_frame {Type O LastRead -1 FirstWrite 9}}
	write_ddr_1 {
		ps_ddr {Type IO LastRead 58 FirstWrite 1}
		ddr_header {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 0 FirstWrite -1}
		dropped_can_counter {Type IO LastRead -1 FirstWrite -1}}
	write_ddr_1_Pipeline_1 {
		ps_ddr {Type O LastRead -1 FirstWrite 2}
		add_ln126_1 {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 0 FirstWrite -1}}
	write_ddr_1_Pipeline_2 {
		ps_ddr {Type O LastRead -1 FirstWrite 1}
		add_ln17 {Type I LastRead 0 FirstWrite -1}
		write_index_array_0 {Type I LastRead 0 FirstWrite -1}
		write_index_array_1 {Type I LastRead 0 FirstWrite -1}
		write_index_array_2 {Type I LastRead 0 FirstWrite -1}
		write_index_array_3 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	can_addr { m_axi {  { m_axi_can_addr_AWVALID VALID 1 1 }  { m_axi_can_addr_AWREADY READY 0 1 }  { m_axi_can_addr_AWADDR ADDR 1 32 }  { m_axi_can_addr_AWID ID 1 1 }  { m_axi_can_addr_AWLEN SIZE 1 8 }  { m_axi_can_addr_AWSIZE BURST 1 3 }  { m_axi_can_addr_AWBURST LOCK 1 2 }  { m_axi_can_addr_AWLOCK CACHE 1 2 }  { m_axi_can_addr_AWCACHE PROT 1 4 }  { m_axi_can_addr_AWPROT QOS 1 3 }  { m_axi_can_addr_AWQOS REGION 1 4 }  { m_axi_can_addr_AWREGION USER 1 4 }  { m_axi_can_addr_AWUSER DATA 1 1 }  { m_axi_can_addr_WVALID VALID 1 1 }  { m_axi_can_addr_WREADY READY 0 1 }  { m_axi_can_addr_WDATA FIFONUM 1 32 }  { m_axi_can_addr_WSTRB STRB 1 4 }  { m_axi_can_addr_WLAST LAST 1 1 }  { m_axi_can_addr_WID ID 1 1 }  { m_axi_can_addr_WUSER DATA 1 1 }  { m_axi_can_addr_ARVALID VALID 1 1 }  { m_axi_can_addr_ARREADY READY 0 1 }  { m_axi_can_addr_ARADDR ADDR 1 32 }  { m_axi_can_addr_ARID ID 1 1 }  { m_axi_can_addr_ARLEN SIZE 1 8 }  { m_axi_can_addr_ARSIZE BURST 1 3 }  { m_axi_can_addr_ARBURST LOCK 1 2 }  { m_axi_can_addr_ARLOCK CACHE 1 2 }  { m_axi_can_addr_ARCACHE PROT 1 4 }  { m_axi_can_addr_ARPROT QOS 1 3 }  { m_axi_can_addr_ARQOS REGION 1 4 }  { m_axi_can_addr_ARREGION USER 1 4 }  { m_axi_can_addr_ARUSER DATA 1 1 }  { m_axi_can_addr_RVALID VALID 0 1 }  { m_axi_can_addr_RREADY READY 1 1 }  { m_axi_can_addr_RDATA FIFONUM 0 32 }  { m_axi_can_addr_RLAST LAST 0 1 }  { m_axi_can_addr_RID ID 0 1 }  { m_axi_can_addr_RUSER DATA 0 1 }  { m_axi_can_addr_RRESP RESP 0 2 }  { m_axi_can_addr_BVALID VALID 0 1 }  { m_axi_can_addr_BREADY READY 1 1 }  { m_axi_can_addr_BRESP RESP 0 2 }  { m_axi_can_addr_BID ID 0 1 }  { m_axi_can_addr_BUSER DATA 0 1 } } }
	uart_addr { m_axi {  { m_axi_uart_addr_AWVALID VALID 1 1 }  { m_axi_uart_addr_AWREADY READY 0 1 }  { m_axi_uart_addr_AWADDR ADDR 1 32 }  { m_axi_uart_addr_AWID ID 1 1 }  { m_axi_uart_addr_AWLEN SIZE 1 8 }  { m_axi_uart_addr_AWSIZE BURST 1 3 }  { m_axi_uart_addr_AWBURST LOCK 1 2 }  { m_axi_uart_addr_AWLOCK CACHE 1 2 }  { m_axi_uart_addr_AWCACHE PROT 1 4 }  { m_axi_uart_addr_AWPROT QOS 1 3 }  { m_axi_uart_addr_AWQOS REGION 1 4 }  { m_axi_uart_addr_AWREGION USER 1 4 }  { m_axi_uart_addr_AWUSER DATA 1 1 }  { m_axi_uart_addr_WVALID VALID 1 1 }  { m_axi_uart_addr_WREADY READY 0 1 }  { m_axi_uart_addr_WDATA FIFONUM 1 32 }  { m_axi_uart_addr_WSTRB STRB 1 4 }  { m_axi_uart_addr_WLAST LAST 1 1 }  { m_axi_uart_addr_WID ID 1 1 }  { m_axi_uart_addr_WUSER DATA 1 1 }  { m_axi_uart_addr_ARVALID VALID 1 1 }  { m_axi_uart_addr_ARREADY READY 0 1 }  { m_axi_uart_addr_ARADDR ADDR 1 32 }  { m_axi_uart_addr_ARID ID 1 1 }  { m_axi_uart_addr_ARLEN SIZE 1 8 }  { m_axi_uart_addr_ARSIZE BURST 1 3 }  { m_axi_uart_addr_ARBURST LOCK 1 2 }  { m_axi_uart_addr_ARLOCK CACHE 1 2 }  { m_axi_uart_addr_ARCACHE PROT 1 4 }  { m_axi_uart_addr_ARPROT QOS 1 3 }  { m_axi_uart_addr_ARQOS REGION 1 4 }  { m_axi_uart_addr_ARREGION USER 1 4 }  { m_axi_uart_addr_ARUSER DATA 1 1 }  { m_axi_uart_addr_RVALID VALID 0 1 }  { m_axi_uart_addr_RREADY READY 1 1 }  { m_axi_uart_addr_RDATA FIFONUM 0 32 }  { m_axi_uart_addr_RLAST LAST 0 1 }  { m_axi_uart_addr_RID ID 0 1 }  { m_axi_uart_addr_RUSER DATA 0 1 }  { m_axi_uart_addr_RRESP RESP 0 2 }  { m_axi_uart_addr_BVALID VALID 0 1 }  { m_axi_uart_addr_BREADY READY 1 1 }  { m_axi_uart_addr_BRESP RESP 0 2 }  { m_axi_uart_addr_BID ID 0 1 }  { m_axi_uart_addr_BUSER DATA 0 1 } } }
	lin_addr { m_axi {  { m_axi_lin_addr_AWVALID VALID 1 1 }  { m_axi_lin_addr_AWREADY READY 0 1 }  { m_axi_lin_addr_AWADDR ADDR 1 32 }  { m_axi_lin_addr_AWID ID 1 1 }  { m_axi_lin_addr_AWLEN SIZE 1 8 }  { m_axi_lin_addr_AWSIZE BURST 1 3 }  { m_axi_lin_addr_AWBURST LOCK 1 2 }  { m_axi_lin_addr_AWLOCK CACHE 1 2 }  { m_axi_lin_addr_AWCACHE PROT 1 4 }  { m_axi_lin_addr_AWPROT QOS 1 3 }  { m_axi_lin_addr_AWQOS REGION 1 4 }  { m_axi_lin_addr_AWREGION USER 1 4 }  { m_axi_lin_addr_AWUSER DATA 1 1 }  { m_axi_lin_addr_WVALID VALID 1 1 }  { m_axi_lin_addr_WREADY READY 0 1 }  { m_axi_lin_addr_WDATA FIFONUM 1 32 }  { m_axi_lin_addr_WSTRB STRB 1 4 }  { m_axi_lin_addr_WLAST LAST 1 1 }  { m_axi_lin_addr_WID ID 1 1 }  { m_axi_lin_addr_WUSER DATA 1 1 }  { m_axi_lin_addr_ARVALID VALID 1 1 }  { m_axi_lin_addr_ARREADY READY 0 1 }  { m_axi_lin_addr_ARADDR ADDR 1 32 }  { m_axi_lin_addr_ARID ID 1 1 }  { m_axi_lin_addr_ARLEN SIZE 1 8 }  { m_axi_lin_addr_ARSIZE BURST 1 3 }  { m_axi_lin_addr_ARBURST LOCK 1 2 }  { m_axi_lin_addr_ARLOCK CACHE 1 2 }  { m_axi_lin_addr_ARCACHE PROT 1 4 }  { m_axi_lin_addr_ARPROT QOS 1 3 }  { m_axi_lin_addr_ARQOS REGION 1 4 }  { m_axi_lin_addr_ARREGION USER 1 4 }  { m_axi_lin_addr_ARUSER DATA 1 1 }  { m_axi_lin_addr_RVALID VALID 0 1 }  { m_axi_lin_addr_RREADY READY 1 1 }  { m_axi_lin_addr_RDATA FIFONUM 0 32 }  { m_axi_lin_addr_RLAST LAST 0 1 }  { m_axi_lin_addr_RID ID 0 1 }  { m_axi_lin_addr_RUSER DATA 0 1 }  { m_axi_lin_addr_RRESP RESP 0 2 }  { m_axi_lin_addr_BVALID VALID 0 1 }  { m_axi_lin_addr_BREADY READY 1 1 }  { m_axi_lin_addr_BRESP RESP 0 2 }  { m_axi_lin_addr_BID ID 0 1 }  { m_axi_lin_addr_BUSER DATA 0 1 } } }
	ps_ddr { m_axi {  { m_axi_ps_ddr_AWVALID VALID 1 1 }  { m_axi_ps_ddr_AWREADY READY 0 1 }  { m_axi_ps_ddr_AWADDR ADDR 1 32 }  { m_axi_ps_ddr_AWID ID 1 1 }  { m_axi_ps_ddr_AWLEN SIZE 1 8 }  { m_axi_ps_ddr_AWSIZE BURST 1 3 }  { m_axi_ps_ddr_AWBURST LOCK 1 2 }  { m_axi_ps_ddr_AWLOCK CACHE 1 2 }  { m_axi_ps_ddr_AWCACHE PROT 1 4 }  { m_axi_ps_ddr_AWPROT QOS 1 3 }  { m_axi_ps_ddr_AWQOS REGION 1 4 }  { m_axi_ps_ddr_AWREGION USER 1 4 }  { m_axi_ps_ddr_AWUSER DATA 1 1 }  { m_axi_ps_ddr_WVALID VALID 1 1 }  { m_axi_ps_ddr_WREADY READY 0 1 }  { m_axi_ps_ddr_WDATA FIFONUM 1 32 }  { m_axi_ps_ddr_WSTRB STRB 1 4 }  { m_axi_ps_ddr_WLAST LAST 1 1 }  { m_axi_ps_ddr_WID ID 1 1 }  { m_axi_ps_ddr_WUSER DATA 1 1 }  { m_axi_ps_ddr_ARVALID VALID 1 1 }  { m_axi_ps_ddr_ARREADY READY 0 1 }  { m_axi_ps_ddr_ARADDR ADDR 1 32 }  { m_axi_ps_ddr_ARID ID 1 1 }  { m_axi_ps_ddr_ARLEN SIZE 1 8 }  { m_axi_ps_ddr_ARSIZE BURST 1 3 }  { m_axi_ps_ddr_ARBURST LOCK 1 2 }  { m_axi_ps_ddr_ARLOCK CACHE 1 2 }  { m_axi_ps_ddr_ARCACHE PROT 1 4 }  { m_axi_ps_ddr_ARPROT QOS 1 3 }  { m_axi_ps_ddr_ARQOS REGION 1 4 }  { m_axi_ps_ddr_ARREGION USER 1 4 }  { m_axi_ps_ddr_ARUSER DATA 1 1 }  { m_axi_ps_ddr_RVALID VALID 0 1 }  { m_axi_ps_ddr_RREADY READY 1 1 }  { m_axi_ps_ddr_RDATA FIFONUM 0 32 }  { m_axi_ps_ddr_RLAST LAST 0 1 }  { m_axi_ps_ddr_RID ID 0 1 }  { m_axi_ps_ddr_RUSER DATA 0 1 }  { m_axi_ps_ddr_RRESP RESP 0 2 }  { m_axi_ps_ddr_BVALID VALID 0 1 }  { m_axi_ps_ddr_BREADY READY 1 1 }  { m_axi_ps_ddr_BRESP RESP 0 2 }  { m_axi_ps_ddr_BID ID 0 1 }  { m_axi_ps_ddr_BUSER DATA 0 1 } } }
	timestamp { ap_none {  { timestamp in_data 0 64 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict can_addr {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}
dict set maxi_interface_dict uart_addr {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict lin_addr {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}
dict set maxi_interface_dict ps_ddr {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ can_addr 1 }
	{ uart_addr 1 }
	{ lin_addr 1 }
	{ ps_ddr 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ can_addr 1 }
	{ uart_addr 1 }
	{ lin_addr 1 }
	{ ps_ddr 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
