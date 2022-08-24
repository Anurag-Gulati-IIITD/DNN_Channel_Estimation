set moduleName DNN_up
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
set C_modelName {DNN_up}
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "155", "231", "236", "237", "238", "239"],
		"CDFG" : "DNN_up",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1934", "EstimateLatencyMax" : "1934",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_L2_up_fu_461"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_L3_up_fu_779"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_normalize_up_fu_942"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_reconstruct_complex_s_fu_951"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_separate_complex_up_fu_960"}],
		"Port" : [
			{"Name" : "LS_stream_V_data", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "237", "SubInstance" : "grp_separate_complex_up_fu_960", "Port" : "LS_stream_V_data"}]},
			{"Name" : "LS_stream_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "237", "SubInstance" : "grp_separate_complex_up_fu_960", "Port" : "LS_stream_V_last_V"}]},
			{"Name" : "DNN_out_V_data", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "236", "SubInstance" : "grp_reconstruct_complex_s_fu_951", "Port" : "DNN_out_V_data"}]},
			{"Name" : "DNN_out_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "236", "SubInstance" : "grp_reconstruct_complex_s_fu_951", "Port" : "DNN_out_V_last_V"}]},
			{"Name" : "mean_in", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "231", "SubInstance" : "grp_normalize_up_fu_942", "Port" : "mean_in"}]},
			{"Name" : "std_in", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "231", "SubInstance" : "grp_normalize_up_fu_942", "Port" : "std_in"}]},
			{"Name" : "L1_BIAS", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_BIAS"}]},
			{"Name" : "L1_WEIGHTS_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_0"}]},
			{"Name" : "L1_WEIGHTS_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_1"}]},
			{"Name" : "L1_WEIGHTS_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_2"}]},
			{"Name" : "L1_WEIGHTS_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_3"}]},
			{"Name" : "L1_WEIGHTS_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_4"}]},
			{"Name" : "L1_WEIGHTS_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_5"}]},
			{"Name" : "L1_WEIGHTS_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_6"}]},
			{"Name" : "L1_WEIGHTS_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_7"}]},
			{"Name" : "L1_WEIGHTS_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_8"}]},
			{"Name" : "L1_WEIGHTS_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_9"}]},
			{"Name" : "L1_WEIGHTS_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_10"}]},
			{"Name" : "L1_WEIGHTS_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_11"}]},
			{"Name" : "L1_WEIGHTS_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_12"}]},
			{"Name" : "L1_WEIGHTS_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_13"}]},
			{"Name" : "L1_WEIGHTS_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_14"}]},
			{"Name" : "L1_WEIGHTS_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_15"}]},
			{"Name" : "L1_WEIGHTS_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_16"}]},
			{"Name" : "L1_WEIGHTS_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_17"}]},
			{"Name" : "L1_WEIGHTS_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_18"}]},
			{"Name" : "L1_WEIGHTS_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_19"}]},
			{"Name" : "L1_WEIGHTS_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_20"}]},
			{"Name" : "L1_WEIGHTS_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_21"}]},
			{"Name" : "L1_WEIGHTS_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_22"}]},
			{"Name" : "L1_WEIGHTS_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_23"}]},
			{"Name" : "L1_WEIGHTS_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_24"}]},
			{"Name" : "L1_WEIGHTS_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_25"}]},
			{"Name" : "L1_WEIGHTS_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_26"}]},
			{"Name" : "L1_WEIGHTS_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_27"}]},
			{"Name" : "L1_WEIGHTS_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_28"}]},
			{"Name" : "L1_WEIGHTS_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_29"}]},
			{"Name" : "L1_WEIGHTS_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_30"}]},
			{"Name" : "L1_WEIGHTS_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_31"}]},
			{"Name" : "L1_WEIGHTS_32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_32"}]},
			{"Name" : "L1_WEIGHTS_33", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_33"}]},
			{"Name" : "L1_WEIGHTS_34", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_34"}]},
			{"Name" : "L1_WEIGHTS_35", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_35"}]},
			{"Name" : "L1_WEIGHTS_36", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_36"}]},
			{"Name" : "L1_WEIGHTS_37", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_37"}]},
			{"Name" : "L1_WEIGHTS_38", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_38"}]},
			{"Name" : "L1_WEIGHTS_39", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_39"}]},
			{"Name" : "L1_WEIGHTS_40", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_40"}]},
			{"Name" : "L1_WEIGHTS_41", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_41"}]},
			{"Name" : "L1_WEIGHTS_42", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_42"}]},
			{"Name" : "L1_WEIGHTS_43", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_43"}]},
			{"Name" : "L1_WEIGHTS_44", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_44"}]},
			{"Name" : "L1_WEIGHTS_45", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_45"}]},
			{"Name" : "L1_WEIGHTS_46", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_46"}]},
			{"Name" : "L1_WEIGHTS_47", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_47"}]},
			{"Name" : "L1_WEIGHTS_48", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_48"}]},
			{"Name" : "L1_WEIGHTS_49", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_49"}]},
			{"Name" : "L1_WEIGHTS_50", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_50"}]},
			{"Name" : "L1_WEIGHTS_51", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_51"}]},
			{"Name" : "L1_WEIGHTS_52", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_52"}]},
			{"Name" : "L1_WEIGHTS_53", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_53"}]},
			{"Name" : "L1_WEIGHTS_54", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_54"}]},
			{"Name" : "L1_WEIGHTS_55", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_55"}]},
			{"Name" : "L1_WEIGHTS_56", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_56"}]},
			{"Name" : "L1_WEIGHTS_57", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_57"}]},
			{"Name" : "L1_WEIGHTS_58", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_58"}]},
			{"Name" : "L1_WEIGHTS_59", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_59"}]},
			{"Name" : "L1_WEIGHTS_60", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_60"}]},
			{"Name" : "L1_WEIGHTS_61", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_61"}]},
			{"Name" : "L1_WEIGHTS_62", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_62"}]},
			{"Name" : "L1_WEIGHTS_63", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_63"}]},
			{"Name" : "L1_WEIGHTS_64", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_64"}]},
			{"Name" : "L1_WEIGHTS_65", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_65"}]},
			{"Name" : "L1_WEIGHTS_66", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_66"}]},
			{"Name" : "L1_WEIGHTS_67", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_67"}]},
			{"Name" : "L1_WEIGHTS_68", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_68"}]},
			{"Name" : "L1_WEIGHTS_69", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_69"}]},
			{"Name" : "L1_WEIGHTS_70", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_70"}]},
			{"Name" : "L1_WEIGHTS_71", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_71"}]},
			{"Name" : "L1_WEIGHTS_72", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_72"}]},
			{"Name" : "L1_WEIGHTS_73", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_73"}]},
			{"Name" : "L1_WEIGHTS_74", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_74"}]},
			{"Name" : "L1_WEIGHTS_75", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_75"}]},
			{"Name" : "L1_WEIGHTS_76", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_76"}]},
			{"Name" : "L1_WEIGHTS_77", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_77"}]},
			{"Name" : "L1_WEIGHTS_78", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_78"}]},
			{"Name" : "L1_WEIGHTS_79", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_79"}]},
			{"Name" : "L1_WEIGHTS_80", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_80"}]},
			{"Name" : "L1_WEIGHTS_81", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_81"}]},
			{"Name" : "L1_WEIGHTS_82", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_82"}]},
			{"Name" : "L1_WEIGHTS_83", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_83"}]},
			{"Name" : "L1_WEIGHTS_84", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_84"}]},
			{"Name" : "L1_WEIGHTS_85", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_85"}]},
			{"Name" : "L1_WEIGHTS_86", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_86"}]},
			{"Name" : "L1_WEIGHTS_87", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_87"}]},
			{"Name" : "L1_WEIGHTS_88", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_88"}]},
			{"Name" : "L1_WEIGHTS_89", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_89"}]},
			{"Name" : "L1_WEIGHTS_90", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_90"}]},
			{"Name" : "L1_WEIGHTS_91", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_91"}]},
			{"Name" : "L1_WEIGHTS_92", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_92"}]},
			{"Name" : "L1_WEIGHTS_93", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_93"}]},
			{"Name" : "L1_WEIGHTS_94", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_94"}]},
			{"Name" : "L1_WEIGHTS_95", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_95"}]},
			{"Name" : "L1_WEIGHTS_96", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_96"}]},
			{"Name" : "L1_WEIGHTS_97", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_97"}]},
			{"Name" : "L1_WEIGHTS_98", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_98"}]},
			{"Name" : "L1_WEIGHTS_99", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_99"}]},
			{"Name" : "L1_WEIGHTS_104", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_104"}]},
			{"Name" : "L1_WEIGHTS_103", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_103"}]},
			{"Name" : "L1_WEIGHTS_102", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS_102"}]},
			{"Name" : "L1_WEIGHTS", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_up_fu_461", "Port" : "L1_WEIGHTS"}]},
			{"Name" : "L2_BIAS", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_BIAS"}]},
			{"Name" : "L2_WEIGHTS_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_0"}]},
			{"Name" : "L2_WEIGHTS_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_1"}]},
			{"Name" : "L2_WEIGHTS_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_2"}]},
			{"Name" : "L2_WEIGHTS_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_3"}]},
			{"Name" : "L2_WEIGHTS_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_4"}]},
			{"Name" : "L2_WEIGHTS_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_5"}]},
			{"Name" : "L2_WEIGHTS_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_6"}]},
			{"Name" : "L2_WEIGHTS_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_7"}]},
			{"Name" : "L2_WEIGHTS_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_8"}]},
			{"Name" : "L2_WEIGHTS_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_9"}]},
			{"Name" : "L2_WEIGHTS_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_10"}]},
			{"Name" : "L2_WEIGHTS_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_11"}]},
			{"Name" : "L2_WEIGHTS_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_12"}]},
			{"Name" : "L2_WEIGHTS_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_13"}]},
			{"Name" : "L2_WEIGHTS_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_14"}]},
			{"Name" : "L2_WEIGHTS_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_15"}]},
			{"Name" : "L2_WEIGHTS_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_16"}]},
			{"Name" : "L2_WEIGHTS_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_17"}]},
			{"Name" : "L2_WEIGHTS_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_18"}]},
			{"Name" : "L2_WEIGHTS_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_19"}]},
			{"Name" : "L2_WEIGHTS_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_20"}]},
			{"Name" : "L2_WEIGHTS_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_21"}]},
			{"Name" : "L2_WEIGHTS_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_22"}]},
			{"Name" : "L2_WEIGHTS_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_23"}]},
			{"Name" : "L2_WEIGHTS_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_24"}]},
			{"Name" : "L2_WEIGHTS_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_25"}]},
			{"Name" : "L2_WEIGHTS_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_26"}]},
			{"Name" : "L2_WEIGHTS_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_27"}]},
			{"Name" : "L2_WEIGHTS_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_28"}]},
			{"Name" : "L2_WEIGHTS_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_29"}]},
			{"Name" : "L2_WEIGHTS_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_30"}]},
			{"Name" : "L2_WEIGHTS_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_31"}]},
			{"Name" : "L2_WEIGHTS_32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_32"}]},
			{"Name" : "L2_WEIGHTS_33", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_33"}]},
			{"Name" : "L2_WEIGHTS_34", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_34"}]},
			{"Name" : "L2_WEIGHTS_35", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_35"}]},
			{"Name" : "L2_WEIGHTS_36", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_36"}]},
			{"Name" : "L2_WEIGHTS_37", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_37"}]},
			{"Name" : "L2_WEIGHTS_38", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_38"}]},
			{"Name" : "L2_WEIGHTS_39", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_39"}]},
			{"Name" : "L2_WEIGHTS_40", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_40"}]},
			{"Name" : "L2_WEIGHTS_41", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_41"}]},
			{"Name" : "L2_WEIGHTS_42", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_42"}]},
			{"Name" : "L2_WEIGHTS_43", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_43"}]},
			{"Name" : "L2_WEIGHTS_44", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_44"}]},
			{"Name" : "L2_WEIGHTS_45", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_45"}]},
			{"Name" : "L2_WEIGHTS_46", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_46"}]},
			{"Name" : "L2_WEIGHTS_47", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_47"}]},
			{"Name" : "L2_WEIGHTS_48", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_48"}]},
			{"Name" : "L2_WEIGHTS_49", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_49"}]},
			{"Name" : "L2_WEIGHTS_50", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_50"}]},
			{"Name" : "L2_WEIGHTS_51", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "155", "SubInstance" : "grp_L3_up_fu_779", "Port" : "L2_WEIGHTS_51"}]},
			{"Name" : "std_o", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mean_o", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.std_o_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mean_o_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LS_data_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_L3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.denorm_DNN_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461", "Parent" : "0", "Child" : ["7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154"],
		"CDFG" : "L2_up",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "788", "EstimateLatencyMax" : "788",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_0_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_0_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_1_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_1_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_2_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_2_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_3_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_3_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_4_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_4_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_5_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_5_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_6_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_6_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_7_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_7_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_8_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_8_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_9_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_9_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_10_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_10_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_11_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_11_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_12_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_12_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_13_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_13_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_14_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_14_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_15_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_15_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_16_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_16_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_17_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_17_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_18_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_18_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_19_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_19_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_20_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_20_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_21_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_21_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_22_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_22_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_23_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_23_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_24_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_24_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_25_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_25_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_26_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_26_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_27_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_27_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_28_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_28_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_29_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_29_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_30_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_30_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_31_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_31_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_32_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_32_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_33_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_33_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_34_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_34_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_35_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_35_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_36_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_36_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_37_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_37_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_38_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_38_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_39_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_39_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_40_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_40_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_41_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_41_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_42_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_42_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_43_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_43_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_44_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_44_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_45_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_45_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_46_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_46_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_47_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_47_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_48_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_48_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_49_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_49_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_50_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_50_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_51_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_51_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "L1_BIAS", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_33", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_34", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_35", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_36", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_37", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_38", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_39", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_40", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_41", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_42", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_43", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_44", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_45", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_46", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_47", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_48", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_49", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_50", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_51", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_52", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_53", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_54", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_55", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_56", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_57", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_58", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_59", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_60", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_61", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_62", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_63", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_64", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_65", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_66", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_67", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_68", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_69", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_70", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_71", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_72", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_73", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_74", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_75", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_76", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_77", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_78", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_79", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_80", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_81", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_82", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_83", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_84", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_85", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_86", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_87", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_88", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_89", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_90", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_91", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_92", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_93", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_94", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_95", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_96", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_97", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_98", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_99", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_104", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_103", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS_102", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_WEIGHTS", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_BIAS_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_0_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_1_U", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_2_U", "Parent" : "6"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_3_U", "Parent" : "6"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_4_U", "Parent" : "6"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_5_U", "Parent" : "6"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_6_U", "Parent" : "6"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_7_U", "Parent" : "6"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_8_U", "Parent" : "6"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_9_U", "Parent" : "6"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_10_U", "Parent" : "6"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_11_U", "Parent" : "6"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_12_U", "Parent" : "6"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_13_U", "Parent" : "6"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_14_U", "Parent" : "6"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_15_U", "Parent" : "6"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_16_U", "Parent" : "6"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_17_U", "Parent" : "6"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_18_U", "Parent" : "6"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_19_U", "Parent" : "6"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_20_U", "Parent" : "6"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_21_U", "Parent" : "6"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_22_U", "Parent" : "6"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_23_U", "Parent" : "6"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_24_U", "Parent" : "6"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_25_U", "Parent" : "6"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_26_U", "Parent" : "6"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_27_U", "Parent" : "6"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_28_U", "Parent" : "6"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_29_U", "Parent" : "6"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_30_U", "Parent" : "6"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_31_U", "Parent" : "6"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_32_U", "Parent" : "6"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_33_U", "Parent" : "6"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_34_U", "Parent" : "6"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_35_U", "Parent" : "6"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_36_U", "Parent" : "6"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_37_U", "Parent" : "6"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_38_U", "Parent" : "6"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_39_U", "Parent" : "6"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_40_U", "Parent" : "6"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_41_U", "Parent" : "6"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_42_U", "Parent" : "6"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_43_U", "Parent" : "6"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_44_U", "Parent" : "6"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_45_U", "Parent" : "6"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_46_U", "Parent" : "6"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_47_U", "Parent" : "6"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_48_U", "Parent" : "6"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_49_U", "Parent" : "6"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_50_U", "Parent" : "6"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_51_U", "Parent" : "6"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_52_U", "Parent" : "6"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_53_U", "Parent" : "6"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_54_U", "Parent" : "6"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_55_U", "Parent" : "6"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_56_U", "Parent" : "6"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_57_U", "Parent" : "6"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_58_U", "Parent" : "6"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_59_U", "Parent" : "6"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_60_U", "Parent" : "6"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_61_U", "Parent" : "6"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_62_U", "Parent" : "6"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_63_U", "Parent" : "6"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_64_U", "Parent" : "6"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_65_U", "Parent" : "6"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_66_U", "Parent" : "6"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_67_U", "Parent" : "6"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_68_U", "Parent" : "6"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_69_U", "Parent" : "6"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_70_U", "Parent" : "6"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_71_U", "Parent" : "6"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_72_U", "Parent" : "6"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_73_U", "Parent" : "6"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_74_U", "Parent" : "6"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_75_U", "Parent" : "6"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_76_U", "Parent" : "6"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_77_U", "Parent" : "6"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_78_U", "Parent" : "6"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_79_U", "Parent" : "6"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_80_U", "Parent" : "6"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_81_U", "Parent" : "6"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_82_U", "Parent" : "6"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_83_U", "Parent" : "6"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_84_U", "Parent" : "6"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_85_U", "Parent" : "6"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_86_U", "Parent" : "6"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_87_U", "Parent" : "6"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_88_U", "Parent" : "6"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_89_U", "Parent" : "6"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_90_U", "Parent" : "6"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_91_U", "Parent" : "6"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_92_U", "Parent" : "6"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_93_U", "Parent" : "6"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_94_U", "Parent" : "6"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_95_U", "Parent" : "6"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_96_U", "Parent" : "6"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_97_U", "Parent" : "6"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_98_U", "Parent" : "6"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_99_U", "Parent" : "6"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_104_U", "Parent" : "6"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_103_U", "Parent" : "6"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_102_U", "Parent" : "6"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.L1_WEIGHTS_U", "Parent" : "6"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fadd_32ns_hbi_U11", "Parent" : "6"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fadd_32ns_hbi_U12", "Parent" : "6"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fadd_32ns_hbi_U13", "Parent" : "6"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fadd_32ns_hbi_U14", "Parent" : "6"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fadd_32ns_hbi_U15", "Parent" : "6"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fadd_32ns_hbi_U16", "Parent" : "6"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fadd_32ns_hbi_U17", "Parent" : "6"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fadd_32ns_hbi_U18", "Parent" : "6"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fadd_32ns_hbi_U19", "Parent" : "6"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fadd_32ns_hbi_U20", "Parent" : "6"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fadd_32ns_hbi_U21", "Parent" : "6"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fadd_32ns_hbi_U22", "Parent" : "6"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fadd_32ns_hbi_U23", "Parent" : "6"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fadd_32ns_hbi_U24", "Parent" : "6"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fadd_32ns_hbi_U25", "Parent" : "6"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fadd_32ns_hbi_U26", "Parent" : "6"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fadd_32ns_hbi_U27", "Parent" : "6"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fadd_32ns_hbi_U28", "Parent" : "6"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fadd_32ns_hbi_U29", "Parent" : "6"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fadd_32ns_hbi_U30", "Parent" : "6"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fadd_32ns_hbi_U31", "Parent" : "6"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fmul_32ns_ibs_U32", "Parent" : "6"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fmul_32ns_ibs_U33", "Parent" : "6"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fmul_32ns_ibs_U34", "Parent" : "6"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fmul_32ns_ibs_U35", "Parent" : "6"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fmul_32ns_ibs_U36", "Parent" : "6"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fmul_32ns_ibs_U37", "Parent" : "6"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fmul_32ns_ibs_U38", "Parent" : "6"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fmul_32ns_ibs_U39", "Parent" : "6"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fmul_32ns_ibs_U40", "Parent" : "6"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fmul_32ns_ibs_U41", "Parent" : "6"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fmul_32ns_ibs_U42", "Parent" : "6"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fmul_32ns_ibs_U43", "Parent" : "6"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fmul_32ns_ibs_U44", "Parent" : "6"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fmul_32ns_ibs_U45", "Parent" : "6"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fmul_32ns_ibs_U46", "Parent" : "6"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fmul_32ns_ibs_U47", "Parent" : "6"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fmul_32ns_ibs_U48", "Parent" : "6"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fmul_32ns_ibs_U49", "Parent" : "6"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fmul_32ns_ibs_U50", "Parent" : "6"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fmul_32ns_ibs_U51", "Parent" : "6"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fmul_32ns_ibs_U52", "Parent" : "6"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_up_fu_461.DNN_up_fcmp_32ns_jbC_U53", "Parent" : "6"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779", "Parent" : "0", "Child" : ["156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230"],
		"CDFG" : "L3_up",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "787", "EstimateLatencyMax" : "787",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_0_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_0_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_1_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_1_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_2_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_2_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_3_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_3_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_4_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_4_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_5_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_5_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_6_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_6_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_7_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_7_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_8_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_8_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_9_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_9_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_10_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_10_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_11_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_11_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_12_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_12_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_13_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_13_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_14_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_14_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_15_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_15_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_16_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_16_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_17_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_17_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_18_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_18_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_19_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_19_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_20_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_20_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_21_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_21_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_22_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_22_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_23_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_23_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_24_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_24_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_25_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_25_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_L3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "L2_BIAS", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_33", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_34", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_35", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_36", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_37", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_38", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_39", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_40", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_41", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_42", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_43", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_44", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_45", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_46", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_47", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_48", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_49", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_50", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_WEIGHTS_51", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_BIAS_U", "Parent" : "155"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_0_U", "Parent" : "155"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_1_U", "Parent" : "155"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_2_U", "Parent" : "155"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_3_U", "Parent" : "155"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_4_U", "Parent" : "155"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_5_U", "Parent" : "155"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_6_U", "Parent" : "155"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_7_U", "Parent" : "155"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_8_U", "Parent" : "155"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_9_U", "Parent" : "155"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_10_U", "Parent" : "155"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_11_U", "Parent" : "155"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_12_U", "Parent" : "155"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_13_U", "Parent" : "155"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_14_U", "Parent" : "155"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_15_U", "Parent" : "155"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_16_U", "Parent" : "155"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_17_U", "Parent" : "155"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_18_U", "Parent" : "155"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_19_U", "Parent" : "155"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_20_U", "Parent" : "155"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_21_U", "Parent" : "155"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_22_U", "Parent" : "155"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_23_U", "Parent" : "155"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_24_U", "Parent" : "155"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_25_U", "Parent" : "155"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_26_U", "Parent" : "155"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_27_U", "Parent" : "155"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_28_U", "Parent" : "155"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_29_U", "Parent" : "155"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_30_U", "Parent" : "155"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_31_U", "Parent" : "155"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_32_U", "Parent" : "155"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_33_U", "Parent" : "155"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_34_U", "Parent" : "155"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_35_U", "Parent" : "155"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_36_U", "Parent" : "155"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_37_U", "Parent" : "155"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_38_U", "Parent" : "155"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_39_U", "Parent" : "155"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_40_U", "Parent" : "155"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_41_U", "Parent" : "155"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_42_U", "Parent" : "155"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_43_U", "Parent" : "155"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_44_U", "Parent" : "155"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_45_U", "Parent" : "155"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_46_U", "Parent" : "155"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_47_U", "Parent" : "155"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_48_U", "Parent" : "155"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_49_U", "Parent" : "155"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_50_U", "Parent" : "155"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.L2_WEIGHTS_51_U", "Parent" : "155"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.DNN_up_fadd_32ns_hbi_U266", "Parent" : "155"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.DNN_up_fadd_32ns_hbi_U267", "Parent" : "155"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.DNN_up_fadd_32ns_hbi_U268", "Parent" : "155"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.DNN_up_fadd_32ns_hbi_U269", "Parent" : "155"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.DNN_up_fadd_32ns_hbi_U270", "Parent" : "155"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.DNN_up_fadd_32ns_hbi_U271", "Parent" : "155"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.DNN_up_fadd_32ns_hbi_U272", "Parent" : "155"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.DNN_up_fadd_32ns_hbi_U273", "Parent" : "155"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.DNN_up_fadd_32ns_hbi_U274", "Parent" : "155"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.DNN_up_fadd_32ns_hbi_U275", "Parent" : "155"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.DNN_up_fadd_32ns_hbi_U276", "Parent" : "155"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.DNN_up_fmul_32ns_ibs_U277", "Parent" : "155"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.DNN_up_fmul_32ns_ibs_U278", "Parent" : "155"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.DNN_up_fmul_32ns_ibs_U279", "Parent" : "155"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.DNN_up_fmul_32ns_ibs_U280", "Parent" : "155"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.DNN_up_fmul_32ns_ibs_U281", "Parent" : "155"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.DNN_up_fmul_32ns_ibs_U282", "Parent" : "155"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.DNN_up_fmul_32ns_ibs_U283", "Parent" : "155"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.DNN_up_fmul_32ns_ibs_U284", "Parent" : "155"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.DNN_up_fmul_32ns_ibs_U285", "Parent" : "155"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.DNN_up_fmul_32ns_ibs_U286", "Parent" : "155"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_up_fu_779.DNN_up_fmul_32ns_ibs_U287", "Parent" : "155"},
	{"ID" : "231", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_normalize_up_fu_942", "Parent" : "0", "Child" : ["232", "233", "234", "235"],
		"CDFG" : "normalize_up",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "127", "EstimateLatencyMax" : "127",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "LS_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mean_in", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "std_in", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_normalize_up_fu_942.mean_in_U", "Parent" : "231"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_normalize_up_fu_942.std_in_U", "Parent" : "231"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_normalize_up_fu_942.DNN_up_fsub_32ns_cud_U4", "Parent" : "231"},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_normalize_up_fu_942.DNN_up_fdiv_32ns_dEe_U5", "Parent" : "231"},
	{"ID" : "236", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_complex_s_fu_951", "Parent" : "0",
		"CDFG" : "reconstruct_complex_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "54", "EstimateLatencyMax" : "54",
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
	{"ID" : "237", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_separate_complex_up_fu_960", "Parent" : "0",
		"CDFG" : "separate_complex_up",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "54", "EstimateLatencyMax" : "54",
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
	{"ID" : "238", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_up_fadd_32ns_hbi_U397", "Parent" : "0"},
	{"ID" : "239", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_up_fmul_32ns_ibs_U398", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	DNN_up {
		LS_stream_V_data {Type I LastRead 1 FirstWrite -1}
		LS_stream_V_last_V {Type I LastRead 1 FirstWrite -1}
		DNN_out_V_data {Type O LastRead -1 FirstWrite 2}
		DNN_out_V_last_V {Type O LastRead -1 FirstWrite 2}
		mean_in {Type I LastRead -1 FirstWrite -1}
		std_in {Type I LastRead -1 FirstWrite -1}
		L1_BIAS {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_0 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_1 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_2 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_3 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_4 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_5 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_6 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_7 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_8 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_9 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_10 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_11 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_12 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_13 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_14 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_15 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_16 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_17 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_18 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_19 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_20 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_21 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_22 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_23 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_24 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_25 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_26 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_27 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_28 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_29 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_30 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_31 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_32 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_33 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_34 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_35 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_36 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_37 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_38 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_39 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_40 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_41 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_42 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_43 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_44 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_45 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_46 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_47 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_48 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_49 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_50 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_51 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_52 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_53 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_54 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_55 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_56 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_57 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_58 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_59 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_60 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_61 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_62 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_63 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_64 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_65 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_66 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_67 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_68 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_69 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_70 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_71 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_72 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_73 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_74 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_75 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_76 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_77 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_78 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_79 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_80 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_81 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_82 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_83 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_84 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_85 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_86 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_87 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_88 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_89 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_90 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_91 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_92 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_93 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_94 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_95 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_96 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_97 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_98 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_99 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_104 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_103 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_102 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS {Type I LastRead -1 FirstWrite -1}
		L2_BIAS {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_0 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_1 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_2 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_3 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_4 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_5 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_6 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_7 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_8 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_9 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_10 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_11 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_12 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_13 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_14 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_15 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_16 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_17 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_18 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_19 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_20 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_21 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_22 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_23 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_24 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_25 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_26 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_27 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_28 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_29 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_30 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_31 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_32 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_33 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_34 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_35 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_36 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_37 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_38 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_39 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_40 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_41 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_42 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_43 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_44 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_45 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_46 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_47 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_48 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_49 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_50 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_51 {Type I LastRead -1 FirstWrite -1}
		std_o {Type I LastRead -1 FirstWrite -1}
		mean_o {Type I LastRead -1 FirstWrite -1}}
	L2_up {
		x_0_0_read {Type I LastRead 0 FirstWrite -1}
		x_0_1_read {Type I LastRead 0 FirstWrite -1}
		x_1_0_read {Type I LastRead 0 FirstWrite -1}
		x_1_1_read {Type I LastRead 0 FirstWrite -1}
		x_2_0_read {Type I LastRead 0 FirstWrite -1}
		x_2_1_read {Type I LastRead 0 FirstWrite -1}
		x_3_0_read {Type I LastRead 0 FirstWrite -1}
		x_3_1_read {Type I LastRead 0 FirstWrite -1}
		x_4_0_read {Type I LastRead 0 FirstWrite -1}
		x_4_1_read {Type I LastRead 0 FirstWrite -1}
		x_5_0_read {Type I LastRead 0 FirstWrite -1}
		x_5_1_read {Type I LastRead 0 FirstWrite -1}
		x_6_0_read {Type I LastRead 0 FirstWrite -1}
		x_6_1_read {Type I LastRead 0 FirstWrite -1}
		x_7_0_read {Type I LastRead 0 FirstWrite -1}
		x_7_1_read {Type I LastRead 0 FirstWrite -1}
		x_8_0_read {Type I LastRead 0 FirstWrite -1}
		x_8_1_read {Type I LastRead 0 FirstWrite -1}
		x_9_0_read {Type I LastRead 0 FirstWrite -1}
		x_9_1_read {Type I LastRead 0 FirstWrite -1}
		x_10_0_read {Type I LastRead 0 FirstWrite -1}
		x_10_1_read {Type I LastRead 0 FirstWrite -1}
		x_11_0_read {Type I LastRead 0 FirstWrite -1}
		x_11_1_read {Type I LastRead 0 FirstWrite -1}
		x_12_0_read {Type I LastRead 0 FirstWrite -1}
		x_12_1_read {Type I LastRead 0 FirstWrite -1}
		x_13_0_read {Type I LastRead 0 FirstWrite -1}
		x_13_1_read {Type I LastRead 0 FirstWrite -1}
		x_14_0_read {Type I LastRead 0 FirstWrite -1}
		x_14_1_read {Type I LastRead 0 FirstWrite -1}
		x_15_0_read {Type I LastRead 0 FirstWrite -1}
		x_15_1_read {Type I LastRead 0 FirstWrite -1}
		x_16_0_read {Type I LastRead 0 FirstWrite -1}
		x_16_1_read {Type I LastRead 0 FirstWrite -1}
		x_17_0_read {Type I LastRead 0 FirstWrite -1}
		x_17_1_read {Type I LastRead 0 FirstWrite -1}
		x_18_0_read {Type I LastRead 0 FirstWrite -1}
		x_18_1_read {Type I LastRead 0 FirstWrite -1}
		x_19_0_read {Type I LastRead 0 FirstWrite -1}
		x_19_1_read {Type I LastRead 0 FirstWrite -1}
		x_20_0_read {Type I LastRead 0 FirstWrite -1}
		x_20_1_read {Type I LastRead 0 FirstWrite -1}
		x_21_0_read {Type I LastRead 0 FirstWrite -1}
		x_21_1_read {Type I LastRead 0 FirstWrite -1}
		x_22_0_read {Type I LastRead 0 FirstWrite -1}
		x_22_1_read {Type I LastRead 0 FirstWrite -1}
		x_23_0_read {Type I LastRead 0 FirstWrite -1}
		x_23_1_read {Type I LastRead 0 FirstWrite -1}
		x_24_0_read {Type I LastRead 0 FirstWrite -1}
		x_24_1_read {Type I LastRead 0 FirstWrite -1}
		x_25_0_read {Type I LastRead 0 FirstWrite -1}
		x_25_1_read {Type I LastRead 0 FirstWrite -1}
		x_26_0_read {Type I LastRead 0 FirstWrite -1}
		x_26_1_read {Type I LastRead 0 FirstWrite -1}
		x_27_0_read {Type I LastRead 0 FirstWrite -1}
		x_27_1_read {Type I LastRead 0 FirstWrite -1}
		x_28_0_read {Type I LastRead 0 FirstWrite -1}
		x_28_1_read {Type I LastRead 0 FirstWrite -1}
		x_29_0_read {Type I LastRead 0 FirstWrite -1}
		x_29_1_read {Type I LastRead 0 FirstWrite -1}
		x_30_0_read {Type I LastRead 0 FirstWrite -1}
		x_30_1_read {Type I LastRead 0 FirstWrite -1}
		x_31_0_read {Type I LastRead 0 FirstWrite -1}
		x_31_1_read {Type I LastRead 0 FirstWrite -1}
		x_32_0_read {Type I LastRead 0 FirstWrite -1}
		x_32_1_read {Type I LastRead 0 FirstWrite -1}
		x_33_0_read {Type I LastRead 0 FirstWrite -1}
		x_33_1_read {Type I LastRead 0 FirstWrite -1}
		x_34_0_read {Type I LastRead 0 FirstWrite -1}
		x_34_1_read {Type I LastRead 0 FirstWrite -1}
		x_35_0_read {Type I LastRead 0 FirstWrite -1}
		x_35_1_read {Type I LastRead 0 FirstWrite -1}
		x_36_0_read {Type I LastRead 0 FirstWrite -1}
		x_36_1_read {Type I LastRead 0 FirstWrite -1}
		x_37_0_read {Type I LastRead 0 FirstWrite -1}
		x_37_1_read {Type I LastRead 0 FirstWrite -1}
		x_38_0_read {Type I LastRead 0 FirstWrite -1}
		x_38_1_read {Type I LastRead 0 FirstWrite -1}
		x_39_0_read {Type I LastRead 0 FirstWrite -1}
		x_39_1_read {Type I LastRead 0 FirstWrite -1}
		x_40_0_read {Type I LastRead 0 FirstWrite -1}
		x_40_1_read {Type I LastRead 0 FirstWrite -1}
		x_41_0_read {Type I LastRead 0 FirstWrite -1}
		x_41_1_read {Type I LastRead 0 FirstWrite -1}
		x_42_0_read {Type I LastRead 0 FirstWrite -1}
		x_42_1_read {Type I LastRead 0 FirstWrite -1}
		x_43_0_read {Type I LastRead 0 FirstWrite -1}
		x_43_1_read {Type I LastRead 0 FirstWrite -1}
		x_44_0_read {Type I LastRead 0 FirstWrite -1}
		x_44_1_read {Type I LastRead 0 FirstWrite -1}
		x_45_0_read {Type I LastRead 0 FirstWrite -1}
		x_45_1_read {Type I LastRead 0 FirstWrite -1}
		x_46_0_read {Type I LastRead 0 FirstWrite -1}
		x_46_1_read {Type I LastRead 0 FirstWrite -1}
		x_47_0_read {Type I LastRead 0 FirstWrite -1}
		x_47_1_read {Type I LastRead 0 FirstWrite -1}
		x_48_0_read {Type I LastRead 0 FirstWrite -1}
		x_48_1_read {Type I LastRead 0 FirstWrite -1}
		x_49_0_read {Type I LastRead 0 FirstWrite -1}
		x_49_1_read {Type I LastRead 0 FirstWrite -1}
		x_50_0_read {Type I LastRead 0 FirstWrite -1}
		x_50_1_read {Type I LastRead 0 FirstWrite -1}
		x_51_0_read {Type I LastRead 0 FirstWrite -1}
		x_51_1_read {Type I LastRead 0 FirstWrite -1}
		L1_BIAS {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_0 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_1 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_2 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_3 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_4 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_5 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_6 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_7 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_8 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_9 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_10 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_11 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_12 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_13 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_14 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_15 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_16 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_17 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_18 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_19 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_20 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_21 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_22 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_23 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_24 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_25 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_26 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_27 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_28 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_29 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_30 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_31 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_32 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_33 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_34 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_35 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_36 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_37 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_38 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_39 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_40 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_41 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_42 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_43 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_44 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_45 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_46 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_47 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_48 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_49 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_50 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_51 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_52 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_53 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_54 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_55 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_56 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_57 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_58 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_59 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_60 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_61 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_62 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_63 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_64 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_65 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_66 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_67 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_68 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_69 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_70 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_71 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_72 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_73 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_74 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_75 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_76 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_77 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_78 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_79 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_80 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_81 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_82 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_83 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_84 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_85 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_86 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_87 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_88 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_89 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_90 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_91 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_92 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_93 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_94 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_95 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_96 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_97 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_98 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_99 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_104 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_103 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS_102 {Type I LastRead -1 FirstWrite -1}
		L1_WEIGHTS {Type I LastRead -1 FirstWrite -1}}
	L3_up {
		x_0_0_read {Type I LastRead 0 FirstWrite -1}
		x_0_1_read {Type I LastRead 0 FirstWrite -1}
		x_1_0_read {Type I LastRead 0 FirstWrite -1}
		x_1_1_read {Type I LastRead 0 FirstWrite -1}
		x_2_0_read {Type I LastRead 0 FirstWrite -1}
		x_2_1_read {Type I LastRead 0 FirstWrite -1}
		x_3_0_read {Type I LastRead 0 FirstWrite -1}
		x_3_1_read {Type I LastRead 0 FirstWrite -1}
		x_4_0_read {Type I LastRead 0 FirstWrite -1}
		x_4_1_read {Type I LastRead 0 FirstWrite -1}
		x_5_0_read {Type I LastRead 0 FirstWrite -1}
		x_5_1_read {Type I LastRead 0 FirstWrite -1}
		x_6_0_read {Type I LastRead 0 FirstWrite -1}
		x_6_1_read {Type I LastRead 0 FirstWrite -1}
		x_7_0_read {Type I LastRead 0 FirstWrite -1}
		x_7_1_read {Type I LastRead 0 FirstWrite -1}
		x_8_0_read {Type I LastRead 0 FirstWrite -1}
		x_8_1_read {Type I LastRead 0 FirstWrite -1}
		x_9_0_read {Type I LastRead 0 FirstWrite -1}
		x_9_1_read {Type I LastRead 0 FirstWrite -1}
		x_10_0_read {Type I LastRead 0 FirstWrite -1}
		x_10_1_read {Type I LastRead 0 FirstWrite -1}
		x_11_0_read {Type I LastRead 0 FirstWrite -1}
		x_11_1_read {Type I LastRead 0 FirstWrite -1}
		x_12_0_read {Type I LastRead 0 FirstWrite -1}
		x_12_1_read {Type I LastRead 0 FirstWrite -1}
		x_13_0_read {Type I LastRead 0 FirstWrite -1}
		x_13_1_read {Type I LastRead 0 FirstWrite -1}
		x_14_0_read {Type I LastRead 0 FirstWrite -1}
		x_14_1_read {Type I LastRead 0 FirstWrite -1}
		x_15_0_read {Type I LastRead 0 FirstWrite -1}
		x_15_1_read {Type I LastRead 0 FirstWrite -1}
		x_16_0_read {Type I LastRead 0 FirstWrite -1}
		x_16_1_read {Type I LastRead 0 FirstWrite -1}
		x_17_0_read {Type I LastRead 0 FirstWrite -1}
		x_17_1_read {Type I LastRead 0 FirstWrite -1}
		x_18_0_read {Type I LastRead 0 FirstWrite -1}
		x_18_1_read {Type I LastRead 0 FirstWrite -1}
		x_19_0_read {Type I LastRead 0 FirstWrite -1}
		x_19_1_read {Type I LastRead 0 FirstWrite -1}
		x_20_0_read {Type I LastRead 0 FirstWrite -1}
		x_20_1_read {Type I LastRead 0 FirstWrite -1}
		x_21_0_read {Type I LastRead 0 FirstWrite -1}
		x_21_1_read {Type I LastRead 0 FirstWrite -1}
		x_22_0_read {Type I LastRead 0 FirstWrite -1}
		x_22_1_read {Type I LastRead 0 FirstWrite -1}
		x_23_0_read {Type I LastRead 0 FirstWrite -1}
		x_23_1_read {Type I LastRead 0 FirstWrite -1}
		x_24_0_read {Type I LastRead 0 FirstWrite -1}
		x_24_1_read {Type I LastRead 0 FirstWrite -1}
		x_25_0_read {Type I LastRead 0 FirstWrite -1}
		x_25_1_read {Type I LastRead 0 FirstWrite -1}
		y_L3 {Type O LastRead -1 FirstWrite 271}
		L2_BIAS {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_0 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_1 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_2 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_3 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_4 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_5 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_6 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_7 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_8 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_9 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_10 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_11 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_12 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_13 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_14 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_15 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_16 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_17 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_18 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_19 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_20 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_21 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_22 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_23 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_24 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_25 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_26 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_27 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_28 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_29 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_30 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_31 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_32 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_33 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_34 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_35 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_36 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_37 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_38 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_39 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_40 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_41 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_42 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_43 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_44 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_45 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_46 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_47 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_48 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_49 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_50 {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_51 {Type I LastRead -1 FirstWrite -1}}
	normalize_up {
		LS_data {Type I LastRead 1 FirstWrite -1}
		mean_in {Type I LastRead -1 FirstWrite -1}
		std_in {Type I LastRead -1 FirstWrite -1}}
	reconstruct_complex_s {
		y_L3 {Type I LastRead 2 FirstWrite -1}
		DNN_out_V_data {Type O LastRead -1 FirstWrite 2}
		DNN_out_V_last_V {Type O LastRead -1 FirstWrite 2}}
	separate_complex_up {
		LS_stream_V_data {Type I LastRead 1 FirstWrite -1}
		LS_stream_V_last_V {Type I LastRead 1 FirstWrite -1}
		sep {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1934", "Max" : "1934"}
	, {"Name" : "Interval", "Min" : "1935", "Max" : "1935"}
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
