set moduleName DNN_u
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {DNN_u}
set C_modelType { void 0 }
set C_modelArgList {
	{ LS_stream_V_data int 64 regular {axi_s 0 volatile  { LS_stream Data } }  }
	{ LS_stream_V_last_V int 1 regular {axi_s 0 volatile  { LS_stream Last } }  }
	{ DNN_out_V_data int 64 regular {axi_s 1 volatile  { DNN_out Data } }  }
	{ DNN_out_V_last_V int 1 regular {axi_s 1 volatile  { DNN_out Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "LS_stream_V_data", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "LS_stream.V.data._M_real","cData": "complex","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":32,"up":63,"cElement": [{"cName": "LS_stream.V.data._M_imag","cData": "complex","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "LS_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "LS_stream.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "DNN_out_V_data", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "DNN_out.V.data._M_real","cData": "complex","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":32,"up":63,"cElement": [{"cName": "DNN_out.V.data._M_imag","cData": "complex","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "DNN_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "DNN_out.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ LS_stream_TDATA sc_in sc_lv 64 signal 0 } 
	{ LS_stream_TVALID sc_in sc_logic 1 invld 1 } 
	{ LS_stream_TREADY sc_out sc_logic 1 inacc 1 } 
	{ LS_stream_TLAST sc_in sc_lv 1 signal 1 } 
	{ DNN_out_TDATA sc_out sc_lv 64 signal 2 } 
	{ DNN_out_TVALID sc_out sc_logic 1 outvld 3 } 
	{ DNN_out_TREADY sc_in sc_logic 1 outacc 3 } 
	{ DNN_out_TLAST sc_out sc_lv 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "LS_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "LS_stream_V_data", "role": "default" }} , 
 	{ "name": "LS_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "LS_stream_V_last_V", "role": "default" }} , 
 	{ "name": "LS_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "LS_stream_V_last_V", "role": "default" }} , 
 	{ "name": "LS_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "LS_stream_V_last_V", "role": "default" }} , 
 	{ "name": "DNN_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "DNN_out_V_data", "role": "default" }} , 
 	{ "name": "DNN_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "DNN_out_V_last_V", "role": "default" }} , 
 	{ "name": "DNN_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "DNN_out_V_last_V", "role": "default" }} , 
 	{ "name": "DNN_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DNN_out_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "DNN_u",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "123458", "EstimateLatencyMax" : "123458",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state68", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_reconstruct_complex_s_fu_422"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_separate_complex_u_fu_431"}],
		"Port" : [
			{"Name" : "LS_stream_V_data", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_separate_complex_u_fu_431", "Port" : "LS_stream_V_data"}]},
			{"Name" : "LS_stream_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_separate_complex_u_fu_431", "Port" : "LS_stream_V_last_V"}]},
			{"Name" : "DNN_out_V_data", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_reconstruct_complex_s_fu_422", "Port" : "DNN_out_V_data"}]},
			{"Name" : "DNN_out_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_reconstruct_complex_s_fu_422", "Port" : "DNN_out_V_last_V"}]},
			{"Name" : "mean_in", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "std_in", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_BIAS", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_BIAS", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "std_o", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mean_o", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mean_in_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.std_in_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L1_BIAS_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L1_WEIGHTS_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_BIAS_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.std_o_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mean_o_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LS_data_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.norm_LS_data_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_L2_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_L3_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.denorm_DNN_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_complex_s_fu_422", "Parent" : "0",
		"CDFG" : "reconstruct_complex_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "y_L3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "DNN_out_V_data", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "DNN_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "DNN_out_V_last_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_separate_complex_u_fu_431", "Parent" : "0",
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
			{"Name" : "sep", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_u_faddfsub_32bkb_U7", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_u_fmul_32ns_3cud_U8", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_u_fdiv_32ns_3dEe_U9", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_u_fcmp_32ns_3eOg_U10", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	DNN_u {
		LS_stream_V_data {Type I LastRead 1 FirstWrite -1}
		LS_stream_V_last_V {Type I LastRead 1 FirstWrite -1}
		DNN_out_V_data {Type O LastRead -1 FirstWrite 2}
		DNN_out_V_last_V {Type O LastRead -1 FirstWrite 2}
		mean_in {Type I LastRead -1 FirstWrite -1}
		std_in {Type I LastRead -1 FirstWrite -1}
		L1_BIAS {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS {Type I LastRead -1 FirstWrite -1}
		L2_BIAS {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS {Type I LastRead -1 FirstWrite -1}
		std_o {Type I LastRead -1 FirstWrite -1}
		mean_o {Type I LastRead -1 FirstWrite -1}}
	reconstruct_complex_s {
		y_L3 {Type I LastRead 2 FirstWrite -1}
		DNN_out_V_data {Type O LastRead -1 FirstWrite 2}
		DNN_out_V_last_V {Type O LastRead -1 FirstWrite 2}}
	separate_complex_u {
		LS_stream_V_data {Type I LastRead 1 FirstWrite -1}
		LS_stream_V_last_V {Type I LastRead 1 FirstWrite -1}
		sep {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "123458", "Max" : "123458"}
	, {"Name" : "Interval", "Min" : "123459", "Max" : "123459"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	LS_stream_V_data { axis {  { LS_stream_TDATA in_data 0 64 } } }
	LS_stream_V_last_V { axis {  { LS_stream_TVALID in_vld 0 1 }  { LS_stream_TREADY in_acc 1 1 }  { LS_stream_TLAST in_data 0 1 } } }
	DNN_out_V_data { axis {  { DNN_out_TDATA out_data 1 64 } } }
	DNN_out_V_last_V { axis {  { DNN_out_TVALID out_vld 1 1 }  { DNN_out_TREADY out_acc 0 1 }  { DNN_out_TLAST out_data 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
