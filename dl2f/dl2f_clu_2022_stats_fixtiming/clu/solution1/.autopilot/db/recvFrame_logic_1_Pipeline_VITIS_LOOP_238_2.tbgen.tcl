set moduleName recvFrame_logic_1_Pipeline_VITIS_LOOP_238_2
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
set C_modelName {recvFrame_logic.1_Pipeline_VITIS_LOOP_238_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln27 int 7 regular  }
	{ zext_ln223 int 15 regular  }
	{ canbase int 32 regular  }
	{ can_addr int 32 regular {axi_master 0}  }
	{ can_frame int 8 regular {array 92 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln27", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln223", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "canbase", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "can_addr", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "can_ptr","offset": { "type": "dynamic","port_name": "can_ptr","bundle": "EN"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "can_frame", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 63
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_can_addr_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_can_addr_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_can_addr_AWADDR sc_out sc_lv 32 signal 3 } 
	{ m_axi_can_addr_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_can_addr_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_can_addr_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_can_addr_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_can_addr_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_can_addr_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_can_addr_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_can_addr_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_can_addr_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_can_addr_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_can_addr_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_can_addr_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_can_addr_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_can_addr_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_can_addr_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_can_addr_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_can_addr_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_can_addr_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_can_addr_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_can_addr_ARADDR sc_out sc_lv 32 signal 3 } 
	{ m_axi_can_addr_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_can_addr_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_can_addr_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_can_addr_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_can_addr_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_can_addr_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_can_addr_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_can_addr_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_can_addr_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_can_addr_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_can_addr_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_can_addr_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_can_addr_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_can_addr_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_can_addr_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_can_addr_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_can_addr_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_can_addr_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_can_addr_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_can_addr_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_can_addr_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_can_addr_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_can_addr_BUSER sc_in sc_lv 1 signal 3 } 
	{ zext_ln27 sc_in sc_lv 7 signal 0 } 
	{ zext_ln223 sc_in sc_lv 15 signal 1 } 
	{ canbase sc_in sc_lv 32 signal 2 } 
	{ can_frame_address0 sc_out sc_lv 7 signal 4 } 
	{ can_frame_ce0 sc_out sc_logic 1 signal 4 } 
	{ can_frame_we0 sc_out sc_logic 1 signal 4 } 
	{ can_frame_d0 sc_out sc_lv 8 signal 4 } 
	{ can_frame_address1 sc_out sc_lv 7 signal 4 } 
	{ can_frame_ce1 sc_out sc_logic 1 signal 4 } 
	{ can_frame_we1 sc_out sc_logic 1 signal 4 } 
	{ can_frame_d1 sc_out sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_can_addr_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "can_addr", "role": "AWVALID" }} , 
 	{ "name": "m_axi_can_addr_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "can_addr", "role": "AWREADY" }} , 
 	{ "name": "m_axi_can_addr_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "can_addr", "role": "AWADDR" }} , 
 	{ "name": "m_axi_can_addr_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "can_addr", "role": "AWID" }} , 
 	{ "name": "m_axi_can_addr_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "can_addr", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_can_addr_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "can_addr", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_can_addr_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "can_addr", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_can_addr_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "can_addr", "role": "RUSER" }} , 
 	{ "name": "m_axi_can_addr_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "can_addr", "role": "RRESP" }} , 
 	{ "name": "m_axi_can_addr_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "can_addr", "role": "BVALID" }} , 
 	{ "name": "m_axi_can_addr_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "can_addr", "role": "BREADY" }} , 
 	{ "name": "m_axi_can_addr_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "can_addr", "role": "BRESP" }} , 
 	{ "name": "m_axi_can_addr_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "can_addr", "role": "BID" }} , 
 	{ "name": "m_axi_can_addr_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "can_addr", "role": "BUSER" }} , 
 	{ "name": "zext_ln27", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "zext_ln27", "role": "default" }} , 
 	{ "name": "zext_ln223", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln223", "role": "default" }} , 
 	{ "name": "canbase", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "canbase", "role": "default" }} , 
 	{ "name": "can_frame_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "can_frame", "role": "address0" }} , 
 	{ "name": "can_frame_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "can_frame", "role": "ce0" }} , 
 	{ "name": "can_frame_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "can_frame", "role": "we0" }} , 
 	{ "name": "can_frame_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "can_frame", "role": "d0" }} , 
 	{ "name": "can_frame_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "can_frame", "role": "address1" }} , 
 	{ "name": "can_frame_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "can_frame", "role": "ce1" }} , 
 	{ "name": "can_frame_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "can_frame", "role": "we1" }} , 
 	{ "name": "can_frame_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "can_frame", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "recvFrame_logic_1_Pipeline_VITIS_LOOP_238_2",
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
			{"Name" : "VITIS_LOOP_238_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	recvFrame_logic_1_Pipeline_VITIS_LOOP_238_2 {
		zext_ln27 {Type I LastRead 0 FirstWrite -1}
		zext_ln223 {Type I LastRead 0 FirstWrite -1}
		canbase {Type I LastRead 0 FirstWrite -1}
		can_addr {Type I LastRead 9 FirstWrite -1}
		can_frame {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln27 { ap_none {  { zext_ln27 in_data 0 7 } } }
	zext_ln223 { ap_none {  { zext_ln223 in_data 0 15 } } }
	canbase { ap_none {  { canbase in_data 0 32 } } }
	 { m_axi {  { m_axi_can_addr_AWVALID VALID 1 1 }  { m_axi_can_addr_AWREADY READY 0 1 }  { m_axi_can_addr_AWADDR ADDR 1 32 }  { m_axi_can_addr_AWID ID 1 1 }  { m_axi_can_addr_AWLEN SIZE 1 32 }  { m_axi_can_addr_AWSIZE BURST 1 3 }  { m_axi_can_addr_AWBURST LOCK 1 2 }  { m_axi_can_addr_AWLOCK CACHE 1 2 }  { m_axi_can_addr_AWCACHE PROT 1 4 }  { m_axi_can_addr_AWPROT QOS 1 3 }  { m_axi_can_addr_AWQOS REGION 1 4 }  { m_axi_can_addr_AWREGION USER 1 4 }  { m_axi_can_addr_AWUSER DATA 1 1 }  { m_axi_can_addr_WVALID VALID 1 1 }  { m_axi_can_addr_WREADY READY 0 1 }  { m_axi_can_addr_WDATA FIFONUM 1 32 }  { m_axi_can_addr_WSTRB STRB 1 4 }  { m_axi_can_addr_WLAST LAST 1 1 }  { m_axi_can_addr_WID ID 1 1 }  { m_axi_can_addr_WUSER DATA 1 1 }  { m_axi_can_addr_ARVALID VALID 1 1 }  { m_axi_can_addr_ARREADY READY 0 1 }  { m_axi_can_addr_ARADDR ADDR 1 32 }  { m_axi_can_addr_ARID ID 1 1 }  { m_axi_can_addr_ARLEN SIZE 1 32 }  { m_axi_can_addr_ARSIZE BURST 1 3 }  { m_axi_can_addr_ARBURST LOCK 1 2 }  { m_axi_can_addr_ARLOCK CACHE 1 2 }  { m_axi_can_addr_ARCACHE PROT 1 4 }  { m_axi_can_addr_ARPROT QOS 1 3 }  { m_axi_can_addr_ARQOS REGION 1 4 }  { m_axi_can_addr_ARREGION USER 1 4 }  { m_axi_can_addr_ARUSER DATA 1 1 }  { m_axi_can_addr_RVALID VALID 0 1 }  { m_axi_can_addr_RREADY READY 1 1 }  { m_axi_can_addr_RDATA FIFONUM 0 32 }  { m_axi_can_addr_RLAST LAST 0 1 }  { m_axi_can_addr_RID ID 0 1 }  { m_axi_can_addr_RFIFONUM LEN 0 9 }  { m_axi_can_addr_RUSER DATA 0 1 }  { m_axi_can_addr_RRESP RESP 0 2 }  { m_axi_can_addr_BVALID VALID 0 1 }  { m_axi_can_addr_BREADY READY 1 1 }  { m_axi_can_addr_BRESP RESP 0 2 }  { m_axi_can_addr_BID ID 0 1 }  { m_axi_can_addr_BUSER DATA 0 1 } } }
	can_frame { ap_memory {  { can_frame_address0 mem_address 1 7 }  { can_frame_ce0 mem_ce 1 1 }  { can_frame_we0 mem_we 1 1 }  { can_frame_d0 mem_din 1 8 }  { can_frame_address1 MemPortADDR2 1 7 }  { can_frame_ce1 MemPortCE2 1 1 }  { can_frame_we1 MemPortWE2 1 1 }  { can_frame_d1 MemPortDIN2 1 8 } } }
}
