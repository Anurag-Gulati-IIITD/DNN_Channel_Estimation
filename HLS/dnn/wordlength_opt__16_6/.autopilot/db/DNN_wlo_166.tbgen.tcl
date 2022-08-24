set moduleName DNN_wlo_166
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
set C_modelName {DNN_wlo_166}
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "218", "222", "328", "331", "332"],
		"CDFG" : "DNN_wlo_166",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1077", "EstimateLatencyMax" : "1077",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_L2_wlo_166_fu_471"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_normalize_wlo_166_fu_789"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_L3_wlo_166_fu_798"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_separate_complex_wlo_fu_961"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_reconstruct_complex_s_fu_970"}],
		"Port" : [
			{"Name" : "LS_stream_V_data", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "328", "SubInstance" : "grp_separate_complex_wlo_fu_961", "Port" : "LS_stream_V_data"}]},
			{"Name" : "LS_stream_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "328", "SubInstance" : "grp_separate_complex_wlo_fu_961", "Port" : "LS_stream_V_last_V"}]},
			{"Name" : "DNN_out_V_data", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "331", "SubInstance" : "grp_reconstruct_complex_s_fu_970", "Port" : "DNN_out_V_data"}]},
			{"Name" : "DNN_out_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "331", "SubInstance" : "grp_reconstruct_complex_s_fu_970", "Port" : "DNN_out_V_last_V"}]},
			{"Name" : "mean_in_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "218", "SubInstance" : "grp_normalize_wlo_166_fu_789", "Port" : "mean_in_V"}]},
			{"Name" : "std_in_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "218", "SubInstance" : "grp_normalize_wlo_166_fu_789", "Port" : "std_in_V"}]},
			{"Name" : "L1_BIAS_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_BIAS_V"}]},
			{"Name" : "L1_WEIGHTS_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_0"}]},
			{"Name" : "L1_WEIGHTS_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_1"}]},
			{"Name" : "L1_WEIGHTS_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_2"}]},
			{"Name" : "L1_WEIGHTS_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_3"}]},
			{"Name" : "L1_WEIGHTS_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_4"}]},
			{"Name" : "L1_WEIGHTS_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_5"}]},
			{"Name" : "L1_WEIGHTS_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_6"}]},
			{"Name" : "L1_WEIGHTS_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_7"}]},
			{"Name" : "L1_WEIGHTS_V_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_8"}]},
			{"Name" : "L1_WEIGHTS_V_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_9"}]},
			{"Name" : "L1_WEIGHTS_V_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_10"}]},
			{"Name" : "L1_WEIGHTS_V_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_11"}]},
			{"Name" : "L1_WEIGHTS_V_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_12"}]},
			{"Name" : "L1_WEIGHTS_V_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_13"}]},
			{"Name" : "L1_WEIGHTS_V_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_14"}]},
			{"Name" : "L1_WEIGHTS_V_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_15"}]},
			{"Name" : "L1_WEIGHTS_V_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_16"}]},
			{"Name" : "L1_WEIGHTS_V_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_17"}]},
			{"Name" : "L1_WEIGHTS_V_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_18"}]},
			{"Name" : "L1_WEIGHTS_V_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_19"}]},
			{"Name" : "L1_WEIGHTS_V_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_20"}]},
			{"Name" : "L1_WEIGHTS_V_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_21"}]},
			{"Name" : "L1_WEIGHTS_V_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_22"}]},
			{"Name" : "L1_WEIGHTS_V_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_23"}]},
			{"Name" : "L1_WEIGHTS_V_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_24"}]},
			{"Name" : "L1_WEIGHTS_V_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_25"}]},
			{"Name" : "L1_WEIGHTS_V_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_26"}]},
			{"Name" : "L1_WEIGHTS_V_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_27"}]},
			{"Name" : "L1_WEIGHTS_V_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_28"}]},
			{"Name" : "L1_WEIGHTS_V_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_29"}]},
			{"Name" : "L1_WEIGHTS_V_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_30"}]},
			{"Name" : "L1_WEIGHTS_V_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_31"}]},
			{"Name" : "L1_WEIGHTS_V_32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_32"}]},
			{"Name" : "L1_WEIGHTS_V_33", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_33"}]},
			{"Name" : "L1_WEIGHTS_V_34", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_34"}]},
			{"Name" : "L1_WEIGHTS_V_35", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_35"}]},
			{"Name" : "L1_WEIGHTS_V_36", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_36"}]},
			{"Name" : "L1_WEIGHTS_V_37", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_37"}]},
			{"Name" : "L1_WEIGHTS_V_38", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_38"}]},
			{"Name" : "L1_WEIGHTS_V_39", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_39"}]},
			{"Name" : "L1_WEIGHTS_V_40", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_40"}]},
			{"Name" : "L1_WEIGHTS_V_41", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_41"}]},
			{"Name" : "L1_WEIGHTS_V_42", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_42"}]},
			{"Name" : "L1_WEIGHTS_V_43", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_43"}]},
			{"Name" : "L1_WEIGHTS_V_44", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_44"}]},
			{"Name" : "L1_WEIGHTS_V_45", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_45"}]},
			{"Name" : "L1_WEIGHTS_V_46", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_46"}]},
			{"Name" : "L1_WEIGHTS_V_47", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_47"}]},
			{"Name" : "L1_WEIGHTS_V_48", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_48"}]},
			{"Name" : "L1_WEIGHTS_V_49", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_49"}]},
			{"Name" : "L1_WEIGHTS_V_50", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_50"}]},
			{"Name" : "L1_WEIGHTS_V_51", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_51"}]},
			{"Name" : "L1_WEIGHTS_V_52", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_52"}]},
			{"Name" : "L1_WEIGHTS_V_53", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_53"}]},
			{"Name" : "L1_WEIGHTS_V_54", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_54"}]},
			{"Name" : "L1_WEIGHTS_V_55", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_55"}]},
			{"Name" : "L1_WEIGHTS_V_56", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_56"}]},
			{"Name" : "L1_WEIGHTS_V_57", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_57"}]},
			{"Name" : "L1_WEIGHTS_V_58", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_58"}]},
			{"Name" : "L1_WEIGHTS_V_59", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_59"}]},
			{"Name" : "L1_WEIGHTS_V_60", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_60"}]},
			{"Name" : "L1_WEIGHTS_V_61", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_61"}]},
			{"Name" : "L1_WEIGHTS_V_62", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_62"}]},
			{"Name" : "L1_WEIGHTS_V_63", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_63"}]},
			{"Name" : "L1_WEIGHTS_V_64", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_64"}]},
			{"Name" : "L1_WEIGHTS_V_65", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_65"}]},
			{"Name" : "L1_WEIGHTS_V_66", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_66"}]},
			{"Name" : "L1_WEIGHTS_V_67", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_67"}]},
			{"Name" : "L1_WEIGHTS_V_68", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_68"}]},
			{"Name" : "L1_WEIGHTS_V_69", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_69"}]},
			{"Name" : "L1_WEIGHTS_V_70", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_70"}]},
			{"Name" : "L1_WEIGHTS_V_71", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_71"}]},
			{"Name" : "L1_WEIGHTS_V_72", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_72"}]},
			{"Name" : "L1_WEIGHTS_V_73", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_73"}]},
			{"Name" : "L1_WEIGHTS_V_74", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_74"}]},
			{"Name" : "L1_WEIGHTS_V_75", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_75"}]},
			{"Name" : "L1_WEIGHTS_V_76", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_76"}]},
			{"Name" : "L1_WEIGHTS_V_77", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_77"}]},
			{"Name" : "L1_WEIGHTS_V_78", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_78"}]},
			{"Name" : "L1_WEIGHTS_V_79", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_79"}]},
			{"Name" : "L1_WEIGHTS_V_80", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_80"}]},
			{"Name" : "L1_WEIGHTS_V_81", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_81"}]},
			{"Name" : "L1_WEIGHTS_V_82", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_82"}]},
			{"Name" : "L1_WEIGHTS_V_83", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_83"}]},
			{"Name" : "L1_WEIGHTS_V_84", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_84"}]},
			{"Name" : "L1_WEIGHTS_V_85", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_85"}]},
			{"Name" : "L1_WEIGHTS_V_86", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_86"}]},
			{"Name" : "L1_WEIGHTS_V_87", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_87"}]},
			{"Name" : "L1_WEIGHTS_V_88", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_88"}]},
			{"Name" : "L1_WEIGHTS_V_89", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_89"}]},
			{"Name" : "L1_WEIGHTS_V_90", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_90"}]},
			{"Name" : "L1_WEIGHTS_V_91", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_91"}]},
			{"Name" : "L1_WEIGHTS_V_92", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_92"}]},
			{"Name" : "L1_WEIGHTS_V_93", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_93"}]},
			{"Name" : "L1_WEIGHTS_V_94", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_94"}]},
			{"Name" : "L1_WEIGHTS_V_95", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_95"}]},
			{"Name" : "L1_WEIGHTS_V_96", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_96"}]},
			{"Name" : "L1_WEIGHTS_V_97", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_97"}]},
			{"Name" : "L1_WEIGHTS_V_98", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_98"}]},
			{"Name" : "L1_WEIGHTS_V_99", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_99"}]},
			{"Name" : "L1_WEIGHTS_V_100", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_100"}]},
			{"Name" : "L1_WEIGHTS_V_101", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_101"}]},
			{"Name" : "L1_WEIGHTS_V_102", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_102"}]},
			{"Name" : "L1_WEIGHTS_V_103", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_166_fu_471", "Port" : "L1_WEIGHTS_V_103"}]},
			{"Name" : "L2_BIAS_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_BIAS_V"}]},
			{"Name" : "L2_WEIGHTS_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_0"}]},
			{"Name" : "L2_WEIGHTS_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_1"}]},
			{"Name" : "L2_WEIGHTS_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_2"}]},
			{"Name" : "L2_WEIGHTS_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_3"}]},
			{"Name" : "L2_WEIGHTS_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_4"}]},
			{"Name" : "L2_WEIGHTS_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_5"}]},
			{"Name" : "L2_WEIGHTS_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_6"}]},
			{"Name" : "L2_WEIGHTS_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_7"}]},
			{"Name" : "L2_WEIGHTS_V_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_8"}]},
			{"Name" : "L2_WEIGHTS_V_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_9"}]},
			{"Name" : "L2_WEIGHTS_V_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_10"}]},
			{"Name" : "L2_WEIGHTS_V_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_11"}]},
			{"Name" : "L2_WEIGHTS_V_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_12"}]},
			{"Name" : "L2_WEIGHTS_V_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_13"}]},
			{"Name" : "L2_WEIGHTS_V_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_14"}]},
			{"Name" : "L2_WEIGHTS_V_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_15"}]},
			{"Name" : "L2_WEIGHTS_V_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_16"}]},
			{"Name" : "L2_WEIGHTS_V_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_17"}]},
			{"Name" : "L2_WEIGHTS_V_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_18"}]},
			{"Name" : "L2_WEIGHTS_V_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_19"}]},
			{"Name" : "L2_WEIGHTS_V_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_20"}]},
			{"Name" : "L2_WEIGHTS_V_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_21"}]},
			{"Name" : "L2_WEIGHTS_V_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_22"}]},
			{"Name" : "L2_WEIGHTS_V_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_23"}]},
			{"Name" : "L2_WEIGHTS_V_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_24"}]},
			{"Name" : "L2_WEIGHTS_V_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_25"}]},
			{"Name" : "L2_WEIGHTS_V_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_26"}]},
			{"Name" : "L2_WEIGHTS_V_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_27"}]},
			{"Name" : "L2_WEIGHTS_V_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_28"}]},
			{"Name" : "L2_WEIGHTS_V_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_29"}]},
			{"Name" : "L2_WEIGHTS_V_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_30"}]},
			{"Name" : "L2_WEIGHTS_V_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_31"}]},
			{"Name" : "L2_WEIGHTS_V_32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_32"}]},
			{"Name" : "L2_WEIGHTS_V_33", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_33"}]},
			{"Name" : "L2_WEIGHTS_V_34", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_34"}]},
			{"Name" : "L2_WEIGHTS_V_35", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_35"}]},
			{"Name" : "L2_WEIGHTS_V_36", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_36"}]},
			{"Name" : "L2_WEIGHTS_V_37", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_37"}]},
			{"Name" : "L2_WEIGHTS_V_38", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_38"}]},
			{"Name" : "L2_WEIGHTS_V_39", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_39"}]},
			{"Name" : "L2_WEIGHTS_V_40", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_40"}]},
			{"Name" : "L2_WEIGHTS_V_41", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_41"}]},
			{"Name" : "L2_WEIGHTS_V_42", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_42"}]},
			{"Name" : "L2_WEIGHTS_V_43", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_43"}]},
			{"Name" : "L2_WEIGHTS_V_44", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_44"}]},
			{"Name" : "L2_WEIGHTS_V_45", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_45"}]},
			{"Name" : "L2_WEIGHTS_V_46", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_46"}]},
			{"Name" : "L2_WEIGHTS_V_47", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_47"}]},
			{"Name" : "L2_WEIGHTS_V_48", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_48"}]},
			{"Name" : "L2_WEIGHTS_V_49", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_49"}]},
			{"Name" : "L2_WEIGHTS_V_50", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_50"}]},
			{"Name" : "L2_WEIGHTS_V_51", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_L3_wlo_166_fu_798", "Port" : "L2_WEIGHTS_V_51"}]},
			{"Name" : "std_o_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mean_o_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.std_o_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mean_o_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LS_data_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_L3_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.denorm_DNN_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471", "Parent" : "0", "Child" : ["7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217"],
		"CDFG" : "L2_wlo_166",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "269", "EstimateLatencyMax" : "269",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_0_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_0_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_1_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_1_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_2_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_2_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_3_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_3_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_4_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_4_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_5_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_5_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_6_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_6_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_7_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_7_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_8_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_8_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_9_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_9_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_10_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_10_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_11_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_11_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_12_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_12_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_13_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_13_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_14_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_14_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_15_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_15_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_16_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_16_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_17_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_17_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_18_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_18_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_19_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_19_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_20_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_20_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_21_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_21_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_22_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_22_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_23_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_23_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_24_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_24_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_25_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_25_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_26_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_26_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_27_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_27_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_28_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_28_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_29_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_29_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_30_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_30_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_31_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_31_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_32_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_32_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_33_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_33_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_34_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_34_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_35_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_35_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_36_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_36_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_37_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_37_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_38_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_38_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_39_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_39_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_40_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_40_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_41_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_41_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_42_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_42_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_43_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_43_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_44_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_44_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_45_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_45_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_46_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_46_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_47_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_47_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_48_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_48_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_49_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_49_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_50_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_50_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_51_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_51_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "L1_BIAS_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_33", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_34", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_35", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_36", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_37", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_38", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_39", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_40", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_41", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_42", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_43", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_44", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_45", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_46", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_47", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_48", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_49", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_50", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_51", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_52", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_53", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_54", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_55", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_56", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_57", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_58", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_59", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_60", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_61", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_62", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_63", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_64", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_65", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_66", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_67", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_68", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_69", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_70", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_71", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_72", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_73", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_74", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_75", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_76", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_77", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_78", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_79", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_80", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_81", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_82", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_83", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_84", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_85", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_86", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_87", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_88", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_89", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_90", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_91", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_92", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_93", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_94", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_95", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_96", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_97", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_98", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_99", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_100", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_101", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_102", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_V_103", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_BIAS_V_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_0_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_1_U", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_2_U", "Parent" : "6"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_3_U", "Parent" : "6"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_4_U", "Parent" : "6"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_5_U", "Parent" : "6"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_6_U", "Parent" : "6"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_7_U", "Parent" : "6"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_8_U", "Parent" : "6"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_9_U", "Parent" : "6"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_10_U", "Parent" : "6"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_11_U", "Parent" : "6"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_12_U", "Parent" : "6"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_13_U", "Parent" : "6"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_14_U", "Parent" : "6"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_15_U", "Parent" : "6"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_16_U", "Parent" : "6"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_17_U", "Parent" : "6"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_18_U", "Parent" : "6"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_19_U", "Parent" : "6"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_20_U", "Parent" : "6"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_21_U", "Parent" : "6"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_22_U", "Parent" : "6"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_23_U", "Parent" : "6"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_24_U", "Parent" : "6"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_25_U", "Parent" : "6"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_26_U", "Parent" : "6"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_27_U", "Parent" : "6"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_28_U", "Parent" : "6"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_29_U", "Parent" : "6"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_30_U", "Parent" : "6"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_31_U", "Parent" : "6"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_32_U", "Parent" : "6"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_33_U", "Parent" : "6"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_34_U", "Parent" : "6"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_35_U", "Parent" : "6"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_36_U", "Parent" : "6"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_37_U", "Parent" : "6"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_38_U", "Parent" : "6"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_39_U", "Parent" : "6"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_40_U", "Parent" : "6"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_41_U", "Parent" : "6"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_42_U", "Parent" : "6"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_43_U", "Parent" : "6"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_44_U", "Parent" : "6"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_45_U", "Parent" : "6"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_46_U", "Parent" : "6"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_47_U", "Parent" : "6"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_48_U", "Parent" : "6"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_49_U", "Parent" : "6"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_50_U", "Parent" : "6"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_51_U", "Parent" : "6"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_52_U", "Parent" : "6"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_53_U", "Parent" : "6"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_54_U", "Parent" : "6"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_55_U", "Parent" : "6"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_56_U", "Parent" : "6"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_57_U", "Parent" : "6"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_58_U", "Parent" : "6"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_59_U", "Parent" : "6"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_60_U", "Parent" : "6"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_61_U", "Parent" : "6"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_62_U", "Parent" : "6"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_63_U", "Parent" : "6"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_64_U", "Parent" : "6"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_65_U", "Parent" : "6"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_66_U", "Parent" : "6"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_67_U", "Parent" : "6"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_68_U", "Parent" : "6"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_69_U", "Parent" : "6"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_70_U", "Parent" : "6"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_71_U", "Parent" : "6"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_72_U", "Parent" : "6"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_73_U", "Parent" : "6"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_74_U", "Parent" : "6"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_75_U", "Parent" : "6"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_76_U", "Parent" : "6"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_77_U", "Parent" : "6"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_78_U", "Parent" : "6"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_79_U", "Parent" : "6"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_80_U", "Parent" : "6"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_81_U", "Parent" : "6"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_82_U", "Parent" : "6"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_83_U", "Parent" : "6"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_84_U", "Parent" : "6"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_85_U", "Parent" : "6"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_86_U", "Parent" : "6"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_87_U", "Parent" : "6"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_88_U", "Parent" : "6"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_89_U", "Parent" : "6"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_90_U", "Parent" : "6"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_91_U", "Parent" : "6"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_92_U", "Parent" : "6"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_93_U", "Parent" : "6"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_94_U", "Parent" : "6"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_95_U", "Parent" : "6"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_96_U", "Parent" : "6"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_97_U", "Parent" : "6"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_98_U", "Parent" : "6"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_99_U", "Parent" : "6"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_100_U", "Parent" : "6"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_101_U", "Parent" : "6"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_102_U", "Parent" : "6"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.L1_WEIGHTS_V_103_U", "Parent" : "6"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_fpextbkb_U12", "Parent" : "6"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_fcmp_bWr_U13", "Parent" : "6"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbXr_U14", "Parent" : "6"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbYs_U15", "Parent" : "6"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U16", "Parent" : "6"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U17", "Parent" : "6"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U18", "Parent" : "6"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U19", "Parent" : "6"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U20", "Parent" : "6"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U21", "Parent" : "6"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U22", "Parent" : "6"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U23", "Parent" : "6"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U24", "Parent" : "6"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U25", "Parent" : "6"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U26", "Parent" : "6"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U27", "Parent" : "6"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U28", "Parent" : "6"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U29", "Parent" : "6"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U30", "Parent" : "6"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U31", "Parent" : "6"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U32", "Parent" : "6"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U33", "Parent" : "6"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U34", "Parent" : "6"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U35", "Parent" : "6"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U36", "Parent" : "6"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U37", "Parent" : "6"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U38", "Parent" : "6"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U39", "Parent" : "6"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U40", "Parent" : "6"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U41", "Parent" : "6"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U42", "Parent" : "6"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U43", "Parent" : "6"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U44", "Parent" : "6"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U45", "Parent" : "6"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U46", "Parent" : "6"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U47", "Parent" : "6"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U48", "Parent" : "6"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U49", "Parent" : "6"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U50", "Parent" : "6"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U51", "Parent" : "6"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U52", "Parent" : "6"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U53", "Parent" : "6"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U54", "Parent" : "6"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U55", "Parent" : "6"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U56", "Parent" : "6"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U57", "Parent" : "6"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U58", "Parent" : "6"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U59", "Parent" : "6"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U60", "Parent" : "6"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U61", "Parent" : "6"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U62", "Parent" : "6"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U63", "Parent" : "6"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U64", "Parent" : "6"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U65", "Parent" : "6"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U66", "Parent" : "6"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U67", "Parent" : "6"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U68", "Parent" : "6"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U69", "Parent" : "6"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U70", "Parent" : "6"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U71", "Parent" : "6"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U72", "Parent" : "6"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U73", "Parent" : "6"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U74", "Parent" : "6"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U75", "Parent" : "6"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U76", "Parent" : "6"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U77", "Parent" : "6"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U78", "Parent" : "6"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U79", "Parent" : "6"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U80", "Parent" : "6"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U81", "Parent" : "6"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U82", "Parent" : "6"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U83", "Parent" : "6"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U84", "Parent" : "6"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U85", "Parent" : "6"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U86", "Parent" : "6"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U87", "Parent" : "6"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U88", "Parent" : "6"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U89", "Parent" : "6"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U90", "Parent" : "6"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U91", "Parent" : "6"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U92", "Parent" : "6"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U93", "Parent" : "6"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U94", "Parent" : "6"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U95", "Parent" : "6"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U96", "Parent" : "6"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U97", "Parent" : "6"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U98", "Parent" : "6"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U99", "Parent" : "6"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U100", "Parent" : "6"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U101", "Parent" : "6"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U102", "Parent" : "6"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U103", "Parent" : "6"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U104", "Parent" : "6"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U105", "Parent" : "6"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U106", "Parent" : "6"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U107", "Parent" : "6"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U108", "Parent" : "6"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U109", "Parent" : "6"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U110", "Parent" : "6"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U111", "Parent" : "6"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U112", "Parent" : "6"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U113", "Parent" : "6"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mb0s_U114", "Parent" : "6"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U115", "Parent" : "6"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U116", "Parent" : "6"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_166_fu_471.DNN_wlo_166_mac_mbZs_U117", "Parent" : "6"},
	{"ID" : "218", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_normalize_wlo_166_fu_789", "Parent" : "0", "Child" : ["219", "220", "221"],
		"CDFG" : "normalize_wlo_166",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "137", "EstimateLatencyMax" : "137",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "LS_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mean_in_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "std_in_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_normalize_wlo_166_fu_789.mean_in_V_U", "Parent" : "218"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_normalize_wlo_166_fu_789.std_in_V_U", "Parent" : "218"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_normalize_wlo_166_fu_789.DNN_wlo_166_sdiv_eOg_U7", "Parent" : "218"},
	{"ID" : "222", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798", "Parent" : "0", "Child" : ["223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "283", "284", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327"],
		"CDFG" : "L3_wlo_166",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "443", "EstimateLatencyMax" : "443",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_0_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_0_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_1_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_1_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_2_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_2_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_3_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_3_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_4_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_4_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_5_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_5_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_6_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_6_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_7_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_7_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_8_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_8_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_9_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_9_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_10_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_10_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_11_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_11_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_12_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_12_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_13_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_13_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_14_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_14_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_15_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_15_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_16_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_16_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_17_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_17_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_18_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_18_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_19_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_19_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_20_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_20_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_21_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_21_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_22_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_22_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_23_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_23_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_24_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_24_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_25_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_25_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_L3_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "L2_BIAS_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_33", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_34", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_35", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_36", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_37", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_38", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_39", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_40", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_41", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_42", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_43", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_44", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_45", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_46", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_47", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_48", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_49", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_50", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_V_51", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_BIAS_V_U", "Parent" : "222"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_0_U", "Parent" : "222"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_1_U", "Parent" : "222"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_2_U", "Parent" : "222"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_3_U", "Parent" : "222"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_4_U", "Parent" : "222"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_5_U", "Parent" : "222"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_6_U", "Parent" : "222"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_7_U", "Parent" : "222"},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_8_U", "Parent" : "222"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_9_U", "Parent" : "222"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_10_U", "Parent" : "222"},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_11_U", "Parent" : "222"},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_12_U", "Parent" : "222"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_13_U", "Parent" : "222"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_14_U", "Parent" : "222"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_15_U", "Parent" : "222"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_16_U", "Parent" : "222"},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_17_U", "Parent" : "222"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_18_U", "Parent" : "222"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_19_U", "Parent" : "222"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_20_U", "Parent" : "222"},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_21_U", "Parent" : "222"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_22_U", "Parent" : "222"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_23_U", "Parent" : "222"},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_24_U", "Parent" : "222"},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_25_U", "Parent" : "222"},
	{"ID" : "250", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_26_U", "Parent" : "222"},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_27_U", "Parent" : "222"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_28_U", "Parent" : "222"},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_29_U", "Parent" : "222"},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_30_U", "Parent" : "222"},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_31_U", "Parent" : "222"},
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_32_U", "Parent" : "222"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_33_U", "Parent" : "222"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_34_U", "Parent" : "222"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_35_U", "Parent" : "222"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_36_U", "Parent" : "222"},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_37_U", "Parent" : "222"},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_38_U", "Parent" : "222"},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_39_U", "Parent" : "222"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_40_U", "Parent" : "222"},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_41_U", "Parent" : "222"},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_42_U", "Parent" : "222"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_43_U", "Parent" : "222"},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_44_U", "Parent" : "222"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_45_U", "Parent" : "222"},
	{"ID" : "270", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_46_U", "Parent" : "222"},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_47_U", "Parent" : "222"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_48_U", "Parent" : "222"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_49_U", "Parent" : "222"},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_50_U", "Parent" : "222"},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.L2_WEIGHTS_V_51_U", "Parent" : "222"},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mcSB_U332", "Parent" : "222"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mcTB_U333", "Parent" : "222"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mcUB_U334", "Parent" : "222"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mcVB_U335", "Parent" : "222"},
	{"ID" : "280", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mb0s_U336", "Parent" : "222"},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mcWB_U337", "Parent" : "222"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mcWB_U338", "Parent" : "222"},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mcWB_U339", "Parent" : "222"},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mcWB_U340", "Parent" : "222"},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mb0s_U341", "Parent" : "222"},
	{"ID" : "286", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mb0s_U342", "Parent" : "222"},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mbZs_U343", "Parent" : "222"},
	{"ID" : "288", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mb0s_U344", "Parent" : "222"},
	{"ID" : "289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mcWB_U345", "Parent" : "222"},
	{"ID" : "290", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mb0s_U346", "Parent" : "222"},
	{"ID" : "291", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mb0s_U347", "Parent" : "222"},
	{"ID" : "292", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mcVB_U348", "Parent" : "222"},
	{"ID" : "293", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mcXB_U349", "Parent" : "222"},
	{"ID" : "294", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mcXB_U350", "Parent" : "222"},
	{"ID" : "295", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mcVB_U351", "Parent" : "222"},
	{"ID" : "296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mcXB_U352", "Parent" : "222"},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mcVB_U353", "Parent" : "222"},
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mcWB_U354", "Parent" : "222"},
	{"ID" : "299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mb0s_U355", "Parent" : "222"},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mcXB_U356", "Parent" : "222"},
	{"ID" : "301", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mcYC_U357", "Parent" : "222"},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mb0s_U358", "Parent" : "222"},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mb0s_U359", "Parent" : "222"},
	{"ID" : "304", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mcUB_U360", "Parent" : "222"},
	{"ID" : "305", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mcWB_U361", "Parent" : "222"},
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mb0s_U362", "Parent" : "222"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mb0s_U363", "Parent" : "222"},
	{"ID" : "308", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mb0s_U364", "Parent" : "222"},
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mcUB_U365", "Parent" : "222"},
	{"ID" : "310", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mb0s_U366", "Parent" : "222"},
	{"ID" : "311", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mb0s_U367", "Parent" : "222"},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mcVB_U368", "Parent" : "222"},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mb0s_U369", "Parent" : "222"},
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mb0s_U370", "Parent" : "222"},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mb0s_U371", "Parent" : "222"},
	{"ID" : "316", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mcXB_U372", "Parent" : "222"},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mb0s_U373", "Parent" : "222"},
	{"ID" : "318", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mb0s_U374", "Parent" : "222"},
	{"ID" : "319", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mb0s_U375", "Parent" : "222"},
	{"ID" : "320", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mcXB_U376", "Parent" : "222"},
	{"ID" : "321", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mcWB_U377", "Parent" : "222"},
	{"ID" : "322", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mcVB_U378", "Parent" : "222"},
	{"ID" : "323", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mcXB_U379", "Parent" : "222"},
	{"ID" : "324", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mcWB_U380", "Parent" : "222"},
	{"ID" : "325", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mb0s_U381", "Parent" : "222"},
	{"ID" : "326", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mcWB_U382", "Parent" : "222"},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_166_fu_798.DNN_wlo_166_mac_mb0s_U383", "Parent" : "222"},
	{"ID" : "328", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_separate_complex_wlo_fu_961", "Parent" : "0", "Child" : ["329", "330"],
		"CDFG" : "separate_complex_wlo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "56", "EstimateLatencyMax" : "56",
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
			{"Name" : "sep_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_separate_complex_wlo_fu_961.DNN_wlo_166_fpextbkb_U1", "Parent" : "328"},
	{"ID" : "330", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_separate_complex_wlo_fu_961.DNN_wlo_166_fpextbkb_U2", "Parent" : "328"},
	{"ID" : "331", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_complex_s_fu_970", "Parent" : "0",
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
			{"Name" : "DNN_out_V_last_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "332", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_wlo_166_mac_mc2C_U500", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	DNN_wlo_166 {
		LS_stream_V_data {Type I LastRead 1 FirstWrite -1}
		LS_stream_V_last_V {Type I LastRead 1 FirstWrite -1}
		DNN_out_V_data {Type O LastRead -1 FirstWrite 5}
		DNN_out_V_last_V {Type O LastRead -1 FirstWrite 5}
		mean_in_V {Type I LastRead -1 FirstWrite -1}
		std_in_V {Type I LastRead -1 FirstWrite -1}
		L1_BIAS_V {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_0 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_1 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_2 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_3 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_4 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_5 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_6 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_7 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_8 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_9 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_10 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_11 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_12 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_13 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_14 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_15 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_16 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_17 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_18 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_19 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_20 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_21 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_22 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_23 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_24 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_25 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_26 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_27 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_28 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_29 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_30 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_31 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_32 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_33 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_34 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_35 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_36 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_37 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_38 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_39 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_40 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_41 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_42 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_43 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_44 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_45 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_46 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_47 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_48 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_49 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_50 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_51 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_52 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_53 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_54 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_55 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_56 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_57 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_58 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_59 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_60 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_61 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_62 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_63 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_64 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_65 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_66 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_67 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_68 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_69 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_70 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_71 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_72 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_73 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_74 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_75 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_76 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_77 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_78 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_79 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_80 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_81 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_82 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_83 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_84 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_85 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_86 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_87 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_88 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_89 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_90 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_91 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_92 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_93 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_94 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_95 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_96 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_97 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_98 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_99 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_100 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_101 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_102 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_103 {Type I LastRead -1 FirstWrite -1}
		L2_BIAS_V {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_0 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_1 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_2 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_3 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_4 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_5 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_6 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_7 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_8 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_9 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_10 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_11 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_12 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_13 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_14 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_15 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_16 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_17 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_18 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_19 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_20 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_21 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_22 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_23 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_24 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_25 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_26 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_27 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_28 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_29 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_30 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_31 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_32 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_33 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_34 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_35 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_36 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_37 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_38 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_39 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_40 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_41 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_42 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_43 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_44 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_45 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_46 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_47 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_48 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_49 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_50 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_51 {Type I LastRead -1 FirstWrite -1}
		std_o_V {Type I LastRead -1 FirstWrite -1}
		mean_o_V {Type I LastRead -1 FirstWrite -1}}
	L2_wlo_166 {
		x_0_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_0_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_1_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_1_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_2_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_2_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_3_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_3_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_4_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_4_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_5_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_5_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_6_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_6_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_7_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_7_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_8_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_8_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_9_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_9_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_10_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_10_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_11_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_11_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_12_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_12_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_13_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_13_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_14_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_14_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_15_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_15_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_16_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_16_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_17_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_17_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_18_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_18_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_19_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_19_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_20_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_20_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_21_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_21_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_22_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_22_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_23_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_23_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_24_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_24_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_25_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_25_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_26_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_26_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_27_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_27_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_28_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_28_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_29_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_29_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_30_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_30_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_31_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_31_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_32_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_32_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_33_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_33_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_34_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_34_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_35_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_35_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_36_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_36_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_37_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_37_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_38_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_38_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_39_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_39_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_40_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_40_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_41_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_41_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_42_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_42_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_43_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_43_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_44_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_44_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_45_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_45_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_46_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_46_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_47_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_47_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_48_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_48_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_49_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_49_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_50_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_50_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_51_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_51_1_V_read {Type I LastRead 0 FirstWrite -1}
		L1_BIAS_V {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_0 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_1 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_2 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_3 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_4 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_5 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_6 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_7 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_8 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_9 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_10 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_11 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_12 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_13 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_14 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_15 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_16 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_17 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_18 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_19 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_20 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_21 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_22 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_23 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_24 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_25 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_26 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_27 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_28 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_29 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_30 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_31 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_32 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_33 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_34 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_35 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_36 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_37 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_38 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_39 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_40 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_41 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_42 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_43 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_44 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_45 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_46 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_47 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_48 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_49 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_50 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_51 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_52 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_53 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_54 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_55 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_56 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_57 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_58 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_59 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_60 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_61 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_62 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_63 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_64 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_65 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_66 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_67 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_68 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_69 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_70 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_71 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_72 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_73 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_74 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_75 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_76 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_77 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_78 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_79 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_80 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_81 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_82 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_83 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_84 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_85 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_86 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_87 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_88 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_89 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_90 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_91 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_92 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_93 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_94 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_95 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_96 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_97 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_98 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_99 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_100 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_101 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_102 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_V_103 {Type I LastRead -1 FirstWrite -1}}
	normalize_wlo_166 {
		LS_data_V {Type I LastRead 1 FirstWrite -1}
		mean_in_V {Type I LastRead -1 FirstWrite -1}
		std_in_V {Type I LastRead -1 FirstWrite -1}}
	L3_wlo_166 {
		x_0_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_0_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_1_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_1_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_2_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_2_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_3_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_3_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_4_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_4_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_5_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_5_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_6_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_6_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_7_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_7_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_8_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_8_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_9_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_9_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_10_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_10_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_11_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_11_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_12_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_12_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_13_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_13_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_14_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_14_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_15_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_15_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_16_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_16_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_17_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_17_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_18_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_18_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_19_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_19_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_20_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_20_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_21_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_21_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_22_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_22_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_23_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_23_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_24_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_24_1_V_read {Type I LastRead 0 FirstWrite -1}
		x_25_0_V_read {Type I LastRead 0 FirstWrite -1}
		x_25_1_V_read {Type I LastRead 0 FirstWrite -1}
		y_L3_V {Type O LastRead -1 FirstWrite 30}
		L2_BIAS_V {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_0 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_1 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_2 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_3 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_4 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_5 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_6 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_7 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_8 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_9 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_10 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_11 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_12 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_13 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_14 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_15 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_16 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_17 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_18 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_19 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_20 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_21 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_22 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_23 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_24 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_25 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_26 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_27 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_28 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_29 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_30 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_31 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_32 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_33 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_34 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_35 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_36 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_37 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_38 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_39 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_40 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_41 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_42 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_43 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_44 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_45 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_46 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_47 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_48 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_49 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_50 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V_51 {Type I LastRead -1 FirstWrite -1}}
	separate_complex_wlo {
		LS_stream_V_data {Type I LastRead 1 FirstWrite -1}
		LS_stream_V_last_V {Type I LastRead 1 FirstWrite -1}
		sep_V {Type O LastRead -1 FirstWrite 4}}
	reconstruct_complex_s {
		y_L3_V {Type I LastRead 2 FirstWrite -1}
		DNN_out_V_data {Type O LastRead -1 FirstWrite 5}
		DNN_out_V_last_V {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1077", "Max" : "1077"}
	, {"Name" : "Interval", "Min" : "1078", "Max" : "1078"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
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
