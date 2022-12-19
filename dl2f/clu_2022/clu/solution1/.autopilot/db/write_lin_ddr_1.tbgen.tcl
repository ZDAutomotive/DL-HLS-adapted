set moduleName write_lin_ddr_1
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
set C_modelName {write_lin_ddr.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ ps_ddr int 8 regular {axi_master 2}  }
	{ ddr_header int 64 regular  }
	{ data int 8 regular {array 28 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ps_ddr", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "can_ddr","offset": { "type": "dynamic","port_name": "can_ddr","bundle": "EN"},"direction": "READWRITE"},{"cName": "uart_ddr","offset": { "type": "dynamic","port_name": "uart_ddr","bundle": "EN"},"direction": "READWRITE"},{"cName": "lin_ddr","offset": { "type": "dynamic","port_name": "lin_ddr","bundle": "EN"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "ddr_header", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 56
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_ps_ddr_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_ps_ddr_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_ps_ddr_AWADDR sc_out sc_lv 64 signal 0 } 
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
	{ m_axi_ps_ddr_ARADDR sc_out sc_lv 64 signal 0 } 
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
	{ ddr_header sc_in sc_lv 64 signal 1 } 
	{ data_address0 sc_out sc_lv 5 signal 2 } 
	{ data_ce0 sc_out sc_logic 1 signal 2 } 
	{ data_q0 sc_in sc_lv 8 signal 2 } 
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
 	{ "name": "m_axi_ps_ddr_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ps_ddr", "role": "AWADDR" }} , 
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
 	{ "name": "m_axi_ps_ddr_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ps_ddr", "role": "ARADDR" }} , 
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
 	{ "name": "ddr_header", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ddr_header", "role": "default" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ringbuffer_header_bytes_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_32ns_32ns_32_36_seq_1_U46", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U47", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	write_lin_ddr_1 {
		ps_ddr {Type IO LastRead 55 FirstWrite 48}
		ddr_header {Type I LastRead 0 FirstWrite -1}
		data {Type I LastRead 48 FirstWrite -1}
		dropped_lin_counter {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "138", "Max" : "235"}
	, {"Name" : "Interval", "Min" : "138", "Max" : "235"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_ps_ddr_AWVALID VALID 1 1 }  { m_axi_ps_ddr_AWREADY READY 0 1 }  { m_axi_ps_ddr_AWADDR ADDR 1 64 }  { m_axi_ps_ddr_AWID ID 1 1 }  { m_axi_ps_ddr_AWLEN SIZE 1 32 }  { m_axi_ps_ddr_AWSIZE BURST 1 3 }  { m_axi_ps_ddr_AWBURST LOCK 1 2 }  { m_axi_ps_ddr_AWLOCK CACHE 1 2 }  { m_axi_ps_ddr_AWCACHE PROT 1 4 }  { m_axi_ps_ddr_AWPROT QOS 1 3 }  { m_axi_ps_ddr_AWQOS REGION 1 4 }  { m_axi_ps_ddr_AWREGION USER 1 4 }  { m_axi_ps_ddr_AWUSER DATA 1 1 }  { m_axi_ps_ddr_WVALID VALID 1 1 }  { m_axi_ps_ddr_WREADY READY 0 1 }  { m_axi_ps_ddr_WDATA FIFONUM 1 8 }  { m_axi_ps_ddr_WSTRB STRB 1 1 }  { m_axi_ps_ddr_WLAST LAST 1 1 }  { m_axi_ps_ddr_WID ID 1 1 }  { m_axi_ps_ddr_WUSER DATA 1 1 }  { m_axi_ps_ddr_ARVALID VALID 1 1 }  { m_axi_ps_ddr_ARREADY READY 0 1 }  { m_axi_ps_ddr_ARADDR ADDR 1 64 }  { m_axi_ps_ddr_ARID ID 1 1 }  { m_axi_ps_ddr_ARLEN SIZE 1 32 }  { m_axi_ps_ddr_ARSIZE BURST 1 3 }  { m_axi_ps_ddr_ARBURST LOCK 1 2 }  { m_axi_ps_ddr_ARLOCK CACHE 1 2 }  { m_axi_ps_ddr_ARCACHE PROT 1 4 }  { m_axi_ps_ddr_ARPROT QOS 1 3 }  { m_axi_ps_ddr_ARQOS REGION 1 4 }  { m_axi_ps_ddr_ARREGION USER 1 4 }  { m_axi_ps_ddr_ARUSER DATA 1 1 }  { m_axi_ps_ddr_RVALID VALID 0 1 }  { m_axi_ps_ddr_RREADY READY 1 1 }  { m_axi_ps_ddr_RDATA FIFONUM 0 8 }  { m_axi_ps_ddr_RLAST LAST 0 1 }  { m_axi_ps_ddr_RID ID 0 1 }  { m_axi_ps_ddr_RFIFONUM LEN 0 11 }  { m_axi_ps_ddr_RUSER DATA 0 1 }  { m_axi_ps_ddr_RRESP RESP 0 2 }  { m_axi_ps_ddr_BVALID VALID 0 1 }  { m_axi_ps_ddr_BREADY READY 1 1 }  { m_axi_ps_ddr_BRESP RESP 0 2 }  { m_axi_ps_ddr_BID ID 0 1 }  { m_axi_ps_ddr_BUSER DATA 0 1 } } }
	ddr_header { ap_none {  { ddr_header in_data 0 64 } } }
	data { ap_memory {  { data_address0 mem_address 1 5 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 8 } } }
}
