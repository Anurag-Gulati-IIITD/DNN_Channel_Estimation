set moduleName reconstruct_complex_s
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {reconstruct_complex_}
set C_modelType { void 0 }
set C_modelArgList {
	{ y_L3_V int 16 regular {array 104 { 1 1 } 1 1 }  }
	{ DNN_out_V_data int 64 regular {axi_s 1 volatile  { DNN_out Data } }  }
	{ DNN_out_V_last_V int 1 regular {axi_s 1 volatile  { DNN_out Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "y_L3_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "DNN_out_V_data", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "DNN_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ y_L3_V_address0 sc_out sc_lv 7 signal 0 } 
	{ y_L3_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ y_L3_V_q0 sc_in sc_lv 16 signal 0 } 
	{ y_L3_V_address1 sc_out sc_lv 7 signal 0 } 
	{ y_L3_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ y_L3_V_q1 sc_in sc_lv 16 signal 0 } 
	{ DNN_out_TDATA sc_out sc_lv 64 signal 1 } 
	{ DNN_out_TVALID sc_out sc_logic 1 outvld 2 } 
	{ DNN_out_TREADY sc_in sc_logic 1 outacc 1 } 
	{ DNN_out_TLAST sc_out sc_lv 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "y_L3_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "y_L3_V", "role": "address0" }} , 
 	{ "name": "y_L3_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_L3_V", "role": "ce0" }} , 
 	{ "name": "y_L3_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "y_L3_V", "role": "q0" }} , 
 	{ "name": "y_L3_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "y_L3_V", "role": "address1" }} , 
 	{ "name": "y_L3_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_L3_V", "role": "ce1" }} , 
 	{ "name": "y_L3_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "y_L3_V", "role": "q1" }} , 
 	{ "name": "DNN_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "DNN_out_V_data", "role": "default" }} , 
 	{ "name": "DNN_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "DNN_out_V_last_V", "role": "default" }} , 
 	{ "name": "DNN_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "DNN_out_V_data", "role": "default" }} , 
 	{ "name": "DNN_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DNN_out_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "reconstruct_complex_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "57",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "y_L3_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "DNN_out_V_data", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "DNN_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "DNN_out_V_last_V", "Type" : "Axis", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	reconstruct_complex_s {
		y_L3_V {Type I LastRead 2 FirstWrite -1}
		DNN_out_V_data {Type O LastRead -1 FirstWrite 5}
		DNN_out_V_last_V {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "57", "Max" : "57"}
	, {"Name" : "Interval", "Min" : "57", "Max" : "57"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	y_L3_V { ap_memory {  { y_L3_V_address0 mem_address 1 7 }  { y_L3_V_ce0 mem_ce 1 1 }  { y_L3_V_q0 mem_dout 0 16 }  { y_L3_V_address1 MemPortADDR2 1 7 }  { y_L3_V_ce1 MemPortCE2 1 1 }  { y_L3_V_q1 MemPortDOUT2 0 16 } } }
	DNN_out_V_data { axis {  { DNN_out_TDATA out_data 1 64 }  { DNN_out_TREADY out_acc 0 1 } } }
	DNN_out_V_last_V { axis {  { DNN_out_TVALID out_vld 1 1 }  { DNN_out_TLAST out_data 1 1 } } }
}
