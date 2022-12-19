set moduleName single_lin_process_1_Pipeline_VITIS_LOOP_176_1
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
set C_modelName {single_lin_process.1_Pipeline_VITIS_LOOP_176_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ clu_addr int 32 regular {axi_master 0}  }
	{ sext_ln81_2 int 62 regular  }
	{ add_ln176 int 5 regular  }
	{ lin_frame int 8 regular {array 28 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "clu_addr", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "can_ptr","offset": { "type": "dynamic","port_name": "can_ptr","bundle": "EN"},"direction": "READWRITE"},{"cName": "uart_ptr","offset": { "type": "dynamic","port_name": "uart_ptr","bundle": "EN"},"direction": "READONLY"},{"cName": "lin_ptr","offset": { "type": "dynamic","port_name": "lin_ptr","bundle": "EN"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "sext_ln81_2", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln176", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "lin_frame", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 58
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_clu_addr_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_clu_addr_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_clu_addr_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_clu_addr_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_clu_addr_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_clu_addr_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_clu_addr_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_clu_addr_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_clu_addr_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_clu_addr_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_clu_addr_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_clu_addr_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_clu_addr_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_clu_addr_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_clu_addr_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_clu_addr_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_clu_addr_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_clu_addr_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_clu_addr_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_clu_addr_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_clu_addr_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_clu_addr_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_clu_addr_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_clu_addr_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_clu_addr_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_clu_addr_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_clu_addr_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_clu_addr_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_clu_addr_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_clu_addr_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_clu_addr_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_clu_addr_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_clu_addr_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_clu_addr_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_clu_addr_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_clu_addr_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_clu_addr_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_clu_addr_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_clu_addr_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_clu_addr_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_clu_addr_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_clu_addr_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_clu_addr_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_clu_addr_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_clu_addr_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_clu_addr_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln81_2 sc_in sc_lv 62 signal 1 } 
	{ add_ln176 sc_in sc_lv 5 signal 2 } 
	{ lin_frame_address0 sc_out sc_lv 5 signal 3 } 
	{ lin_frame_ce0 sc_out sc_logic 1 signal 3 } 
	{ lin_frame_we0 sc_out sc_logic 1 signal 3 } 
	{ lin_frame_d0 sc_out sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_clu_addr_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clu_addr", "role": "AWVALID" }} , 
 	{ "name": "m_axi_clu_addr_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clu_addr", "role": "AWREADY" }} , 
 	{ "name": "m_axi_clu_addr_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "clu_addr", "role": "AWADDR" }} , 
 	{ "name": "m_axi_clu_addr_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "clu_addr", "role": "AWID" }} , 
 	{ "name": "m_axi_clu_addr_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "clu_addr", "role": "AWLEN" }} , 
 	{ "name": "m_axi_clu_addr_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "clu_addr", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_clu_addr_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "clu_addr", "role": "AWBURST" }} , 
 	{ "name": "m_axi_clu_addr_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "clu_addr", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_clu_addr_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "clu_addr", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_clu_addr_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "clu_addr", "role": "AWPROT" }} , 
 	{ "name": "m_axi_clu_addr_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "clu_addr", "role": "AWQOS" }} , 
 	{ "name": "m_axi_clu_addr_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "clu_addr", "role": "AWREGION" }} , 
 	{ "name": "m_axi_clu_addr_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "clu_addr", "role": "AWUSER" }} , 
 	{ "name": "m_axi_clu_addr_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clu_addr", "role": "WVALID" }} , 
 	{ "name": "m_axi_clu_addr_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clu_addr", "role": "WREADY" }} , 
 	{ "name": "m_axi_clu_addr_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "clu_addr", "role": "WDATA" }} , 
 	{ "name": "m_axi_clu_addr_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "clu_addr", "role": "WSTRB" }} , 
 	{ "name": "m_axi_clu_addr_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clu_addr", "role": "WLAST" }} , 
 	{ "name": "m_axi_clu_addr_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "clu_addr", "role": "WID" }} , 
 	{ "name": "m_axi_clu_addr_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "clu_addr", "role": "WUSER" }} , 
 	{ "name": "m_axi_clu_addr_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clu_addr", "role": "ARVALID" }} , 
 	{ "name": "m_axi_clu_addr_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clu_addr", "role": "ARREADY" }} , 
 	{ "name": "m_axi_clu_addr_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "clu_addr", "role": "ARADDR" }} , 
 	{ "name": "m_axi_clu_addr_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "clu_addr", "role": "ARID" }} , 
 	{ "name": "m_axi_clu_addr_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "clu_addr", "role": "ARLEN" }} , 
 	{ "name": "m_axi_clu_addr_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "clu_addr", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_clu_addr_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "clu_addr", "role": "ARBURST" }} , 
 	{ "name": "m_axi_clu_addr_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "clu_addr", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_clu_addr_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "clu_addr", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_clu_addr_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "clu_addr", "role": "ARPROT" }} , 
 	{ "name": "m_axi_clu_addr_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "clu_addr", "role": "ARQOS" }} , 
 	{ "name": "m_axi_clu_addr_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "clu_addr", "role": "ARREGION" }} , 
 	{ "name": "m_axi_clu_addr_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "clu_addr", "role": "ARUSER" }} , 
 	{ "name": "m_axi_clu_addr_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clu_addr", "role": "RVALID" }} , 
 	{ "name": "m_axi_clu_addr_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clu_addr", "role": "RREADY" }} , 
 	{ "name": "m_axi_clu_addr_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "clu_addr", "role": "RDATA" }} , 
 	{ "name": "m_axi_clu_addr_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clu_addr", "role": "RLAST" }} , 
 	{ "name": "m_axi_clu_addr_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "clu_addr", "role": "RID" }} , 
 	{ "name": "m_axi_clu_addr_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "clu_addr", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_clu_addr_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "clu_addr", "role": "RUSER" }} , 
 	{ "name": "m_axi_clu_addr_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "clu_addr", "role": "RRESP" }} , 
 	{ "name": "m_axi_clu_addr_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clu_addr", "role": "BVALID" }} , 
 	{ "name": "m_axi_clu_addr_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clu_addr", "role": "BREADY" }} , 
 	{ "name": "m_axi_clu_addr_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "clu_addr", "role": "BRESP" }} , 
 	{ "name": "m_axi_clu_addr_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "clu_addr", "role": "BID" }} , 
 	{ "name": "m_axi_clu_addr_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "clu_addr", "role": "BUSER" }} , 
 	{ "name": "sext_ln81_2", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln81_2", "role": "default" }} , 
 	{ "name": "add_ln176", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "add_ln176", "role": "default" }} , 
 	{ "name": "lin_frame_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "lin_frame", "role": "address0" }} , 
 	{ "name": "lin_frame_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_frame", "role": "ce0" }} , 
 	{ "name": "lin_frame_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_frame", "role": "we0" }} , 
 	{ "name": "lin_frame_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lin_frame", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "single_lin_process_1_Pipeline_VITIS_LOOP_176_1",
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
			{"Name" : "clu_addr", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "clu_addr_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "clu_addr_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln81_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln176", "Type" : "None", "Direction" : "I"},
			{"Name" : "lin_frame", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_176_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	single_lin_process_1_Pipeline_VITIS_LOOP_176_1 {
		clu_addr {Type I LastRead 8 FirstWrite -1}
		sext_ln81_2 {Type I LastRead 0 FirstWrite -1}
		add_ln176 {Type I LastRead 0 FirstWrite -1}
		lin_frame {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "11", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "11", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_clu_addr_AWVALID VALID 1 1 }  { m_axi_clu_addr_AWREADY READY 0 1 }  { m_axi_clu_addr_AWADDR ADDR 1 64 }  { m_axi_clu_addr_AWID ID 1 1 }  { m_axi_clu_addr_AWLEN SIZE 1 32 }  { m_axi_clu_addr_AWSIZE BURST 1 3 }  { m_axi_clu_addr_AWBURST LOCK 1 2 }  { m_axi_clu_addr_AWLOCK CACHE 1 2 }  { m_axi_clu_addr_AWCACHE PROT 1 4 }  { m_axi_clu_addr_AWPROT QOS 1 3 }  { m_axi_clu_addr_AWQOS REGION 1 4 }  { m_axi_clu_addr_AWREGION USER 1 4 }  { m_axi_clu_addr_AWUSER DATA 1 1 }  { m_axi_clu_addr_WVALID VALID 1 1 }  { m_axi_clu_addr_WREADY READY 0 1 }  { m_axi_clu_addr_WDATA FIFONUM 1 32 }  { m_axi_clu_addr_WSTRB STRB 1 4 }  { m_axi_clu_addr_WLAST LAST 1 1 }  { m_axi_clu_addr_WID ID 1 1 }  { m_axi_clu_addr_WUSER DATA 1 1 }  { m_axi_clu_addr_ARVALID VALID 1 1 }  { m_axi_clu_addr_ARREADY READY 0 1 }  { m_axi_clu_addr_ARADDR ADDR 1 64 }  { m_axi_clu_addr_ARID ID 1 1 }  { m_axi_clu_addr_ARLEN SIZE 1 32 }  { m_axi_clu_addr_ARSIZE BURST 1 3 }  { m_axi_clu_addr_ARBURST LOCK 1 2 }  { m_axi_clu_addr_ARLOCK CACHE 1 2 }  { m_axi_clu_addr_ARCACHE PROT 1 4 }  { m_axi_clu_addr_ARPROT QOS 1 3 }  { m_axi_clu_addr_ARQOS REGION 1 4 }  { m_axi_clu_addr_ARREGION USER 1 4 }  { m_axi_clu_addr_ARUSER DATA 1 1 }  { m_axi_clu_addr_RVALID VALID 0 1 }  { m_axi_clu_addr_RREADY READY 1 1 }  { m_axi_clu_addr_RDATA FIFONUM 0 32 }  { m_axi_clu_addr_RLAST LAST 0 1 }  { m_axi_clu_addr_RID ID 0 1 }  { m_axi_clu_addr_RFIFONUM LEN 0 9 }  { m_axi_clu_addr_RUSER DATA 0 1 }  { m_axi_clu_addr_RRESP RESP 0 2 }  { m_axi_clu_addr_BVALID VALID 0 1 }  { m_axi_clu_addr_BREADY READY 1 1 }  { m_axi_clu_addr_BRESP RESP 0 2 }  { m_axi_clu_addr_BID ID 0 1 }  { m_axi_clu_addr_BUSER DATA 0 1 } } }
	sext_ln81_2 { ap_none {  { sext_ln81_2 in_data 0 62 } } }
	add_ln176 { ap_none {  { add_ln176 in_data 0 5 } } }
	lin_frame { ap_memory {  { lin_frame_address0 mem_address 1 5 }  { lin_frame_ce0 mem_ce 1 1 }  { lin_frame_we0 mem_we 1 1 }  { lin_frame_d0 mem_din 1 8 } } }
}
