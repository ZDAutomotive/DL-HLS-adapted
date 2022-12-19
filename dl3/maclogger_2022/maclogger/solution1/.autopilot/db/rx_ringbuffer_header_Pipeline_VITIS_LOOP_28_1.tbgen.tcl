set moduleName rx_ringbuffer_header_Pipeline_VITIS_LOOP_28_1
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
set C_modelName {rx_ringbuffer_header_Pipeline_VITIS_LOOP_28_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ ps int 32 regular {axi_master 0}  }
	{ sext_ln28 int 62 regular  }
	{ log_header int 32 regular {array 7 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ps", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "ddr","offset": { "type": "dynamic","port_name": "ddr","bundle": "axilites"},"direction": "READWRITE"},{"cName": "driver","offset": { "type": "dynamic","port_name": "driver","bundle": "axilites"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "sext_ln28", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "log_header", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 57
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
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
	{ sext_ln28 sc_in sc_lv 62 signal 1 } 
	{ log_header_address0 sc_out sc_lv 3 signal 2 } 
	{ log_header_ce0 sc_out sc_logic 1 signal 2 } 
	{ log_header_we0 sc_out sc_logic 1 signal 2 } 
	{ log_header_d0 sc_out sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
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
 	{ "name": "sext_ln28", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln28", "role": "default" }} , 
 	{ "name": "log_header_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "log_header", "role": "address0" }} , 
 	{ "name": "log_header_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "log_header", "role": "ce0" }} , 
 	{ "name": "log_header_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "log_header", "role": "we0" }} , 
 	{ "name": "log_header_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "log_header", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rx_ringbuffer_header_Pipeline_VITIS_LOOP_28_1 {
		ps {Type I LastRead 1 FirstWrite -1}
		sext_ln28 {Type I LastRead 0 FirstWrite -1}
		log_header {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "10", "Max" : "10"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_ps_AWVALID VALID 1 1 }  { m_axi_ps_AWREADY READY 0 1 }  { m_axi_ps_AWADDR ADDR 1 64 }  { m_axi_ps_AWID ID 1 1 }  { m_axi_ps_AWLEN SIZE 1 32 }  { m_axi_ps_AWSIZE BURST 1 3 }  { m_axi_ps_AWBURST LOCK 1 2 }  { m_axi_ps_AWLOCK CACHE 1 2 }  { m_axi_ps_AWCACHE PROT 1 4 }  { m_axi_ps_AWPROT QOS 1 3 }  { m_axi_ps_AWQOS REGION 1 4 }  { m_axi_ps_AWREGION USER 1 4 }  { m_axi_ps_AWUSER DATA 1 1 }  { m_axi_ps_WVALID VALID 1 1 }  { m_axi_ps_WREADY READY 0 1 }  { m_axi_ps_WDATA FIFONUM 1 32 }  { m_axi_ps_WSTRB STRB 1 4 }  { m_axi_ps_WLAST LAST 1 1 }  { m_axi_ps_WID ID 1 1 }  { m_axi_ps_WUSER DATA 1 1 }  { m_axi_ps_ARVALID VALID 1 1 }  { m_axi_ps_ARREADY READY 0 1 }  { m_axi_ps_ARADDR ADDR 1 64 }  { m_axi_ps_ARID ID 1 1 }  { m_axi_ps_ARLEN SIZE 1 32 }  { m_axi_ps_ARSIZE BURST 1 3 }  { m_axi_ps_ARBURST LOCK 1 2 }  { m_axi_ps_ARLOCK CACHE 1 2 }  { m_axi_ps_ARCACHE PROT 1 4 }  { m_axi_ps_ARPROT QOS 1 3 }  { m_axi_ps_ARQOS REGION 1 4 }  { m_axi_ps_ARREGION USER 1 4 }  { m_axi_ps_ARUSER DATA 1 1 }  { m_axi_ps_RVALID VALID 0 1 }  { m_axi_ps_RREADY READY 1 1 }  { m_axi_ps_RDATA FIFONUM 0 32 }  { m_axi_ps_RLAST LAST 0 1 }  { m_axi_ps_RID ID 0 1 }  { m_axi_ps_RFIFONUM LEN 0 9 }  { m_axi_ps_RUSER DATA 0 1 }  { m_axi_ps_RRESP RESP 0 2 }  { m_axi_ps_BVALID VALID 0 1 }  { m_axi_ps_BREADY READY 1 1 }  { m_axi_ps_BRESP RESP 0 2 }  { m_axi_ps_BID ID 0 1 }  { m_axi_ps_BUSER DATA 0 1 } } }
	sext_ln28 { ap_none {  { sext_ln28 in_data 0 62 } } }
	log_header { ap_memory {  { log_header_address0 mem_address 1 3 }  { log_header_ce0 mem_ce 1 1 }  { log_header_we0 mem_we 1 1 }  { log_header_d0 mem_din 1 32 } } }
}
