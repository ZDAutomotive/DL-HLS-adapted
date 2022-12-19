set moduleName rx_fifo_Pipeline_rx_macfifo_data
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {rx_fifo_Pipeline_rx_macfifo_data}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_axi_full int 32 regular {axi_master 0}  }
	{ sext_ln73 int 62 regular  }
	{ sext_ln97 int 6 regular  }
	{ sext_ln100 int 2 regular  }
	{ data_buf int 32 regular {array 512 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_axi_full", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "fifo_axi_full_offset","offset": { "type": "dynamic","port_name": "fifo_axi_full_offset"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln73", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln97", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln100", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "data_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 59
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_fifo_axi_full_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_fifo_axi_full_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_fifo_axi_full_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_fifo_axi_full_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_fifo_axi_full_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_fifo_axi_full_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_fifo_axi_full_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_fifo_axi_full_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_fifo_axi_full_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_fifo_axi_full_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_fifo_axi_full_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_fifo_axi_full_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_fifo_axi_full_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_fifo_axi_full_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_fifo_axi_full_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_fifo_axi_full_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_fifo_axi_full_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_fifo_axi_full_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_fifo_axi_full_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_fifo_axi_full_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_fifo_axi_full_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_fifo_axi_full_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_fifo_axi_full_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_fifo_axi_full_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_fifo_axi_full_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_fifo_axi_full_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_fifo_axi_full_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_fifo_axi_full_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_fifo_axi_full_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_fifo_axi_full_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_fifo_axi_full_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_fifo_axi_full_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_fifo_axi_full_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_fifo_axi_full_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_fifo_axi_full_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_fifo_axi_full_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_fifo_axi_full_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_fifo_axi_full_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_fifo_axi_full_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_fifo_axi_full_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_fifo_axi_full_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_fifo_axi_full_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_fifo_axi_full_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_fifo_axi_full_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_fifo_axi_full_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_fifo_axi_full_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln73 sc_in sc_lv 62 signal 1 } 
	{ sext_ln97 sc_in sc_lv 6 signal 2 } 
	{ sext_ln100 sc_in sc_lv 2 signal 3 } 
	{ data_buf_address0 sc_out sc_lv 9 signal 4 } 
	{ data_buf_ce0 sc_out sc_logic 1 signal 4 } 
	{ data_buf_we0 sc_out sc_logic 1 signal 4 } 
	{ data_buf_d0 sc_out sc_lv 32 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
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
 	{ "name": "sext_ln73", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln73", "role": "default" }} , 
 	{ "name": "sext_ln97", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sext_ln97", "role": "default" }} , 
 	{ "name": "sext_ln100", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sext_ln100", "role": "default" }} , 
 	{ "name": "data_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data_buf", "role": "address0" }} , 
 	{ "name": "data_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf", "role": "ce0" }} , 
 	{ "name": "data_buf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_buf", "role": "we0" }} , 
 	{ "name": "data_buf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_buf", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "rx_fifo_Pipeline_rx_macfifo_data",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "58", "EstimateLatencyMax" : "6730",
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rx_fifo_Pipeline_rx_macfifo_data {
		fifo_axi_full {Type I LastRead 23 FirstWrite -1}
		sext_ln73 {Type I LastRead 0 FirstWrite -1}
		sext_ln97 {Type I LastRead 0 FirstWrite -1}
		sext_ln100 {Type I LastRead 0 FirstWrite -1}
		data_buf {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "58", "Max" : "6730"}
	, {"Name" : "Interval", "Min" : "58", "Max" : "6730"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_fifo_axi_full_AWVALID VALID 1 1 }  { m_axi_fifo_axi_full_AWREADY READY 0 1 }  { m_axi_fifo_axi_full_AWADDR ADDR 1 64 }  { m_axi_fifo_axi_full_AWID ID 1 1 }  { m_axi_fifo_axi_full_AWLEN SIZE 1 32 }  { m_axi_fifo_axi_full_AWSIZE BURST 1 3 }  { m_axi_fifo_axi_full_AWBURST LOCK 1 2 }  { m_axi_fifo_axi_full_AWLOCK CACHE 1 2 }  { m_axi_fifo_axi_full_AWCACHE PROT 1 4 }  { m_axi_fifo_axi_full_AWPROT QOS 1 3 }  { m_axi_fifo_axi_full_AWQOS REGION 1 4 }  { m_axi_fifo_axi_full_AWREGION USER 1 4 }  { m_axi_fifo_axi_full_AWUSER DATA 1 1 }  { m_axi_fifo_axi_full_WVALID VALID 1 1 }  { m_axi_fifo_axi_full_WREADY READY 0 1 }  { m_axi_fifo_axi_full_WDATA FIFONUM 1 32 }  { m_axi_fifo_axi_full_WSTRB STRB 1 4 }  { m_axi_fifo_axi_full_WLAST LAST 1 1 }  { m_axi_fifo_axi_full_WID ID 1 1 }  { m_axi_fifo_axi_full_WUSER DATA 1 1 }  { m_axi_fifo_axi_full_ARVALID VALID 1 1 }  { m_axi_fifo_axi_full_ARREADY READY 0 1 }  { m_axi_fifo_axi_full_ARADDR ADDR 1 64 }  { m_axi_fifo_axi_full_ARID ID 1 1 }  { m_axi_fifo_axi_full_ARLEN SIZE 1 32 }  { m_axi_fifo_axi_full_ARSIZE BURST 1 3 }  { m_axi_fifo_axi_full_ARBURST LOCK 1 2 }  { m_axi_fifo_axi_full_ARLOCK CACHE 1 2 }  { m_axi_fifo_axi_full_ARCACHE PROT 1 4 }  { m_axi_fifo_axi_full_ARPROT QOS 1 3 }  { m_axi_fifo_axi_full_ARQOS REGION 1 4 }  { m_axi_fifo_axi_full_ARREGION USER 1 4 }  { m_axi_fifo_axi_full_ARUSER DATA 1 1 }  { m_axi_fifo_axi_full_RVALID VALID 0 1 }  { m_axi_fifo_axi_full_RREADY READY 1 1 }  { m_axi_fifo_axi_full_RDATA FIFONUM 0 32 }  { m_axi_fifo_axi_full_RLAST LAST 0 1 }  { m_axi_fifo_axi_full_RID ID 0 1 }  { m_axi_fifo_axi_full_RFIFONUM LEN 0 9 }  { m_axi_fifo_axi_full_RUSER DATA 0 1 }  { m_axi_fifo_axi_full_RRESP RESP 0 2 }  { m_axi_fifo_axi_full_BVALID VALID 0 1 }  { m_axi_fifo_axi_full_BREADY READY 1 1 }  { m_axi_fifo_axi_full_BRESP RESP 0 2 }  { m_axi_fifo_axi_full_BID ID 0 1 }  { m_axi_fifo_axi_full_BUSER DATA 0 1 } } }
	sext_ln73 { ap_none {  { sext_ln73 in_data 0 62 } } }
	sext_ln97 { ap_none {  { sext_ln97 in_data 0 6 } } }
	sext_ln100 { ap_none {  { sext_ln100 in_data 0 2 } } }
	data_buf { ap_memory {  { data_buf_address0 mem_address 1 9 }  { data_buf_ce0 mem_ce 1 1 }  { data_buf_we0 mem_we 1 1 }  { data_buf_d0 mem_din 1 32 } } }
}
