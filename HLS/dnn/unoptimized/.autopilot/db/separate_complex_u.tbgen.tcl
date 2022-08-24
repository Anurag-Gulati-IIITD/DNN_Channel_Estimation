set moduleName separate_complex_u
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
set C_modelName {separate_complex_u}
set C_modelType { void 0 }
set C_modelArgList {
	{ LS_stream_V_data int 64 regular {axi_s 0 volatile  { LS_stream Data } }  }
	{ LS_stream_V_last_V int 1 regular {axi_s 0 volatile  { LS_stream Last } }  }
	{ sep float 32 regular {array 104 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "LS_stream_V_data", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "LS_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sep", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ LS_stream_TDATA sc_in sc_lv 64 signal 0 } 
	{ LS_stream_TVALID sc_in sc_logic 1 invld 0 } 
	{ LS_stream_TREADY sc_out sc_logic 1 inacc 1 } 
	{ LS_stream_TLAST sc_in sc_lv 1 signal 1 } 
	{ sep_address0 sc_out sc_lv 7 signal 2 } 
	{ sep_ce0 sc_out sc_logic 1 signal 2 } 
	{ sep_we0 sc_out sc_logic 1 signal 2 } 
	{ sep_d0 sc_out sc_lv 32 signal 2 } 
	{ sep_address1 sc_out sc_lv 7 signal 2 } 
	{ sep_ce1 sc_out sc_logic 1 signal 2 } 
	{ sep_we1 sc_out sc_logic 1 signal 2 } 
	{ sep_d1 sc_out sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "LS_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "LS_stream_V_data", "role": "default" }} , 
 	{ "name": "LS_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "LS_stream_V_data", "role": "default" }} , 
 	{ "name": "LS_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "LS_stream_V_last_V", "role": "default" }} , 
 	{ "name": "LS_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "LS_stream_V_last_V", "role": "default" }} , 
 	{ "name": "sep_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "sep", "role": "address0" }} , 
 	{ "name": "sep_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sep", "role": "ce0" }} , 
 	{ "name": "sep_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sep", "role": "we0" }} , 
 	{ "name": "sep_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sep", "role": "d0" }} , 
 	{ "name": "sep_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "sep", "role": "address1" }} , 
 	{ "name": "sep_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sep", "role": "ce1" }} , 
 	{ "name": "sep_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sep", "role": "we1" }} , 
 	{ "name": "sep_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sep", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "separate_complex_u",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "53", "EstimateLatencyMax" : "53",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "LS_stream_V_data", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "LS_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "LS_stream_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "sep", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	separate_complex_u {
		LS_stream_V_data {Type I LastRead 1 FirstWrite -1}
		LS_stream_V_last_V {Type I LastRead 1 FirstWrite -1}
		sep {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "53", "Max" : "53"}
	, {"Name" : "Interval", "Min" : "53", "Max" : "53"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	LS_stream_V_data { axis {  { LS_stream_TDATA in_data 0 64 }  { LS_stream_TVALID in_vld 0 1 } } }
	LS_stream_V_last_V { axis {  { LS_stream_TREADY in_acc 1 1 }  { LS_stream_TLAST in_data 0 1 } } }
	sep { ap_memory {  { sep_address0 mem_address 1 7 }  { sep_ce0 mem_ce 1 1 }  { sep_we0 mem_we 1 1 }  { sep_d0 mem_din 1 32 }  { sep_address1 MemPortADDR2 1 7 }  { sep_ce1 MemPortCE2 1 1 }  { sep_we1 MemPortWE2 1 1 }  { sep_d1 MemPortDIN2 1 32 } } }
}
