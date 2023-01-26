set moduleName single_lin_process_1_Pipeline_VITIS_LOOP_178_1
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
set C_modelName {single_lin_process.1_Pipeline_VITIS_LOOP_178_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ lin_addr int 32 regular {axi_master 0}  }
	{ linbase int 32 regular  }
	{ lin_frame int 8 regular {array 28 { 0 3 } 0 1 }  }
	{ PL_Data_1_load_out int 4 regular {pointer 1}  }
	{ zext_ln178_1_out int 4 regular {pointer 1}  }
	{ PL_Data_1 int 4 regular {pointer 0} {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "lin_addr", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "lin_ptr","offset": { "type": "dynamic","port_name": "lin_ptr","bundle": "EN"},"direction": "READWRITE"}]}]} , 
 	{ "Name" : "linbase", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lin_frame", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "PL_Data_1_load_out", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "zext_ln178_1_out", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "PL_Data_1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 62
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_lin_addr_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_lin_addr_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_lin_addr_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_lin_addr_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_lin_addr_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_lin_addr_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_lin_addr_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_lin_addr_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_lin_addr_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_lin_addr_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_lin_addr_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_lin_addr_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_lin_addr_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_lin_addr_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_lin_addr_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_lin_addr_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_lin_addr_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_lin_addr_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_lin_addr_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_lin_addr_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_lin_addr_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_lin_addr_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_lin_addr_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_lin_addr_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_lin_addr_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_lin_addr_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_lin_addr_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_lin_addr_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_lin_addr_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_lin_addr_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_lin_addr_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_lin_addr_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_lin_addr_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_lin_addr_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_lin_addr_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_lin_addr_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_lin_addr_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_lin_addr_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_lin_addr_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_lin_addr_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_lin_addr_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_lin_addr_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_lin_addr_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_lin_addr_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_lin_addr_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_lin_addr_BUSER sc_in sc_lv 1 signal 0 } 
	{ linbase sc_in sc_lv 32 signal 1 } 
	{ lin_frame_address0 sc_out sc_lv 5 signal 2 } 
	{ lin_frame_ce0 sc_out sc_logic 1 signal 2 } 
	{ lin_frame_we0 sc_out sc_logic 1 signal 2 } 
	{ lin_frame_d0 sc_out sc_lv 8 signal 2 } 
	{ PL_Data_1_load_out sc_out sc_lv 4 signal 3 } 
	{ PL_Data_1_load_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ zext_ln178_1_out sc_out sc_lv 4 signal 4 } 
	{ zext_ln178_1_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ PL_Data_1 sc_in sc_lv 4 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_lin_addr_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_addr", "role": "AWVALID" }} , 
 	{ "name": "m_axi_lin_addr_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_addr", "role": "AWREADY" }} , 
 	{ "name": "m_axi_lin_addr_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lin_addr", "role": "AWADDR" }} , 
 	{ "name": "m_axi_lin_addr_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_addr", "role": "AWID" }} , 
 	{ "name": "m_axi_lin_addr_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lin_addr", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_lin_addr_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lin_addr", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_lin_addr_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "lin_addr", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_lin_addr_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_addr", "role": "RUSER" }} , 
 	{ "name": "m_axi_lin_addr_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "lin_addr", "role": "RRESP" }} , 
 	{ "name": "m_axi_lin_addr_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_addr", "role": "BVALID" }} , 
 	{ "name": "m_axi_lin_addr_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_addr", "role": "BREADY" }} , 
 	{ "name": "m_axi_lin_addr_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "lin_addr", "role": "BRESP" }} , 
 	{ "name": "m_axi_lin_addr_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_addr", "role": "BID" }} , 
 	{ "name": "m_axi_lin_addr_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_addr", "role": "BUSER" }} , 
 	{ "name": "linbase", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "linbase", "role": "default" }} , 
 	{ "name": "lin_frame_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "lin_frame", "role": "address0" }} , 
 	{ "name": "lin_frame_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_frame", "role": "ce0" }} , 
 	{ "name": "lin_frame_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lin_frame", "role": "we0" }} , 
 	{ "name": "lin_frame_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lin_frame", "role": "d0" }} , 
 	{ "name": "PL_Data_1_load_out", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "PL_Data_1_load_out", "role": "default" }} , 
 	{ "name": "PL_Data_1_load_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "PL_Data_1_load_out", "role": "ap_vld" }} , 
 	{ "name": "zext_ln178_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "zext_ln178_1_out", "role": "default" }} , 
 	{ "name": "zext_ln178_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "zext_ln178_1_out", "role": "ap_vld" }} , 
 	{ "name": "PL_Data_1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "PL_Data_1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "single_lin_process_1_Pipeline_VITIS_LOOP_178_1",
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
			{"Name" : "lin_addr", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "lin_addr_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "lin_addr_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_read_lin_reg_1_fu_97", "Port" : "lin_addr", "Inst_start_state" : "2", "Inst_end_state" : "10"}]},
			{"Name" : "linbase", "Type" : "None", "Direction" : "I"},
			{"Name" : "lin_frame", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "PL_Data_1_load_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "zext_ln178_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "PL_Data_1", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_read_lin_reg_1_fu_97", "SubBlockPort" : ["lin_addr_blk_n_AR", "lin_addr_blk_n_R"]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_178_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_read_lin_reg_1_fu_97", "Parent" : "0",
		"CDFG" : "read_lin_reg_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "2",
		"VariableLatency" : "0", "ExactLatency" : "8", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "lin_addr", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "lin_addr_blk_n_AR", "Type" : "RtlPort"},
					{"Name" : "lin_addr_blk_n_R", "Type" : "RtlPort"}]},
			{"Name" : "lin_reg", "Type" : "None", "Direction" : "I"},
			{"Name" : "offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	single_lin_process_1_Pipeline_VITIS_LOOP_178_1 {
		lin_addr {Type I LastRead 8 FirstWrite -1}
		linbase {Type I LastRead 0 FirstWrite -1}
		lin_frame {Type O LastRead -1 FirstWrite 10}
		PL_Data_1_load_out {Type O LastRead -1 FirstWrite 8}
		zext_ln178_1_out {Type O LastRead -1 FirstWrite 8}
		PL_Data_1 {Type I LastRead 0 FirstWrite -1}}
	read_lin_reg_1 {
		lin_addr {Type I LastRead 8 FirstWrite -1}
		lin_reg {Type I LastRead 0 FirstWrite -1}
		offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12", "Max" : "42"}
	, {"Name" : "Interval", "Min" : "12", "Max" : "42"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_lin_addr_AWVALID VALID 1 1 }  { m_axi_lin_addr_AWREADY READY 0 1 }  { m_axi_lin_addr_AWADDR ADDR 1 32 }  { m_axi_lin_addr_AWID ID 1 1 }  { m_axi_lin_addr_AWLEN SIZE 1 32 }  { m_axi_lin_addr_AWSIZE BURST 1 3 }  { m_axi_lin_addr_AWBURST LOCK 1 2 }  { m_axi_lin_addr_AWLOCK CACHE 1 2 }  { m_axi_lin_addr_AWCACHE PROT 1 4 }  { m_axi_lin_addr_AWPROT QOS 1 3 }  { m_axi_lin_addr_AWQOS REGION 1 4 }  { m_axi_lin_addr_AWREGION USER 1 4 }  { m_axi_lin_addr_AWUSER DATA 1 1 }  { m_axi_lin_addr_WVALID VALID 1 1 }  { m_axi_lin_addr_WREADY READY 0 1 }  { m_axi_lin_addr_WDATA FIFONUM 1 32 }  { m_axi_lin_addr_WSTRB STRB 1 4 }  { m_axi_lin_addr_WLAST LAST 1 1 }  { m_axi_lin_addr_WID ID 1 1 }  { m_axi_lin_addr_WUSER DATA 1 1 }  { m_axi_lin_addr_ARVALID VALID 1 1 }  { m_axi_lin_addr_ARREADY READY 0 1 }  { m_axi_lin_addr_ARADDR ADDR 1 32 }  { m_axi_lin_addr_ARID ID 1 1 }  { m_axi_lin_addr_ARLEN SIZE 1 32 }  { m_axi_lin_addr_ARSIZE BURST 1 3 }  { m_axi_lin_addr_ARBURST LOCK 1 2 }  { m_axi_lin_addr_ARLOCK CACHE 1 2 }  { m_axi_lin_addr_ARCACHE PROT 1 4 }  { m_axi_lin_addr_ARPROT QOS 1 3 }  { m_axi_lin_addr_ARQOS REGION 1 4 }  { m_axi_lin_addr_ARREGION USER 1 4 }  { m_axi_lin_addr_ARUSER DATA 1 1 }  { m_axi_lin_addr_RVALID VALID 0 1 }  { m_axi_lin_addr_RREADY READY 1 1 }  { m_axi_lin_addr_RDATA FIFONUM 0 32 }  { m_axi_lin_addr_RLAST LAST 0 1 }  { m_axi_lin_addr_RID ID 0 1 }  { m_axi_lin_addr_RFIFONUM LEN 0 9 }  { m_axi_lin_addr_RUSER DATA 0 1 }  { m_axi_lin_addr_RRESP RESP 0 2 }  { m_axi_lin_addr_BVALID VALID 0 1 }  { m_axi_lin_addr_BREADY READY 1 1 }  { m_axi_lin_addr_BRESP RESP 0 2 }  { m_axi_lin_addr_BID ID 0 1 }  { m_axi_lin_addr_BUSER DATA 0 1 } } }
	linbase { ap_none {  { linbase in_data 0 32 } } }
	lin_frame { ap_memory {  { lin_frame_address0 mem_address 1 5 }  { lin_frame_ce0 mem_ce 1 1 }  { lin_frame_we0 mem_we 1 1 }  { lin_frame_d0 mem_din 1 8 } } }
	PL_Data_1_load_out { ap_vld {  { PL_Data_1_load_out out_data 1 4 }  { PL_Data_1_load_out_ap_vld out_vld 1 1 } } }
	zext_ln178_1_out { ap_vld {  { zext_ln178_1_out out_data 1 4 }  { zext_ln178_1_out_ap_vld out_vld 1 1 } } }
	PL_Data_1 { ap_none {  { PL_Data_1 in_data 0 4 } } }
}
