set moduleName DNN_wlo
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
set C_modelName {DNN_wlo}
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "165", "245", "250", "253", "256", "257"],
		"CDFG" : "DNN_wlo",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1765", "EstimateLatencyMax" : "1765",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_L2_wlo_fu_461"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_L3_wlo_fu_779"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_normalize_wlo_fu_942"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_separate_complex_wlo_fu_951"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_reconstruct_complex_s_fu_960"}],
		"Port" : [
			{"Name" : "LS_stream_V_data", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "250", "SubInstance" : "grp_separate_complex_wlo_fu_951", "Port" : "LS_stream_V_data"}]},
			{"Name" : "LS_stream_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "250", "SubInstance" : "grp_separate_complex_wlo_fu_951", "Port" : "LS_stream_V_last_V"}]},
			{"Name" : "DNN_out_V_data", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "grp_reconstruct_complex_s_fu_960", "Port" : "DNN_out_V_data"}]},
			{"Name" : "DNN_out_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "grp_reconstruct_complex_s_fu_960", "Port" : "DNN_out_V_last_V"}]},
			{"Name" : "mean_in", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "245", "SubInstance" : "grp_normalize_wlo_fu_942", "Port" : "mean_in"}]},
			{"Name" : "std_in", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "245", "SubInstance" : "grp_normalize_wlo_fu_942", "Port" : "std_in"}]},
			{"Name" : "L1_BIAS", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_BIAS"}]},
			{"Name" : "L1_WEIGHTS_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_0"}]},
			{"Name" : "L1_WEIGHTS_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_1"}]},
			{"Name" : "L1_WEIGHTS_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_2"}]},
			{"Name" : "L1_WEIGHTS_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_3"}]},
			{"Name" : "L1_WEIGHTS_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_4"}]},
			{"Name" : "L1_WEIGHTS_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_5"}]},
			{"Name" : "L1_WEIGHTS_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_6"}]},
			{"Name" : "L1_WEIGHTS_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_7"}]},
			{"Name" : "L1_WEIGHTS_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_8"}]},
			{"Name" : "L1_WEIGHTS_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_9"}]},
			{"Name" : "L1_WEIGHTS_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_10"}]},
			{"Name" : "L1_WEIGHTS_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_11"}]},
			{"Name" : "L1_WEIGHTS_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_12"}]},
			{"Name" : "L1_WEIGHTS_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_13"}]},
			{"Name" : "L1_WEIGHTS_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_14"}]},
			{"Name" : "L1_WEIGHTS_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_15"}]},
			{"Name" : "L1_WEIGHTS_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_16"}]},
			{"Name" : "L1_WEIGHTS_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_17"}]},
			{"Name" : "L1_WEIGHTS_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_18"}]},
			{"Name" : "L1_WEIGHTS_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_19"}]},
			{"Name" : "L1_WEIGHTS_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_20"}]},
			{"Name" : "L1_WEIGHTS_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_21"}]},
			{"Name" : "L1_WEIGHTS_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_22"}]},
			{"Name" : "L1_WEIGHTS_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_23"}]},
			{"Name" : "L1_WEIGHTS_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_24"}]},
			{"Name" : "L1_WEIGHTS_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_25"}]},
			{"Name" : "L1_WEIGHTS_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_26"}]},
			{"Name" : "L1_WEIGHTS_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_27"}]},
			{"Name" : "L1_WEIGHTS_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_28"}]},
			{"Name" : "L1_WEIGHTS_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_29"}]},
			{"Name" : "L1_WEIGHTS_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_30"}]},
			{"Name" : "L1_WEIGHTS_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_31"}]},
			{"Name" : "L1_WEIGHTS_32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_32"}]},
			{"Name" : "L1_WEIGHTS_33", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_33"}]},
			{"Name" : "L1_WEIGHTS_34", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_34"}]},
			{"Name" : "L1_WEIGHTS_35", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_35"}]},
			{"Name" : "L1_WEIGHTS_36", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_36"}]},
			{"Name" : "L1_WEIGHTS_37", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_37"}]},
			{"Name" : "L1_WEIGHTS_38", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_38"}]},
			{"Name" : "L1_WEIGHTS_39", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_39"}]},
			{"Name" : "L1_WEIGHTS_40", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_40"}]},
			{"Name" : "L1_WEIGHTS_41", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_41"}]},
			{"Name" : "L1_WEIGHTS_42", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_42"}]},
			{"Name" : "L1_WEIGHTS_43", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_43"}]},
			{"Name" : "L1_WEIGHTS_44", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_44"}]},
			{"Name" : "L1_WEIGHTS_45", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_45"}]},
			{"Name" : "L1_WEIGHTS_46", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_46"}]},
			{"Name" : "L1_WEIGHTS_47", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_47"}]},
			{"Name" : "L1_WEIGHTS_48", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_48"}]},
			{"Name" : "L1_WEIGHTS_49", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_49"}]},
			{"Name" : "L1_WEIGHTS_50", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_50"}]},
			{"Name" : "L1_WEIGHTS_51", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_51"}]},
			{"Name" : "L1_WEIGHTS_52", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_52"}]},
			{"Name" : "L1_WEIGHTS_53", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_53"}]},
			{"Name" : "L1_WEIGHTS_54", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_54"}]},
			{"Name" : "L1_WEIGHTS_55", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_55"}]},
			{"Name" : "L1_WEIGHTS_56", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_56"}]},
			{"Name" : "L1_WEIGHTS_57", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_57"}]},
			{"Name" : "L1_WEIGHTS_58", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_58"}]},
			{"Name" : "L1_WEIGHTS_59", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_59"}]},
			{"Name" : "L1_WEIGHTS_60", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_60"}]},
			{"Name" : "L1_WEIGHTS_61", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_61"}]},
			{"Name" : "L1_WEIGHTS_62", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_62"}]},
			{"Name" : "L1_WEIGHTS_63", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_63"}]},
			{"Name" : "L1_WEIGHTS_64", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_64"}]},
			{"Name" : "L1_WEIGHTS_65", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_65"}]},
			{"Name" : "L1_WEIGHTS_66", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_66"}]},
			{"Name" : "L1_WEIGHTS_67", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_67"}]},
			{"Name" : "L1_WEIGHTS_68", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_68"}]},
			{"Name" : "L1_WEIGHTS_69", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_69"}]},
			{"Name" : "L1_WEIGHTS_70", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_70"}]},
			{"Name" : "L1_WEIGHTS_71", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_71"}]},
			{"Name" : "L1_WEIGHTS_72", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_72"}]},
			{"Name" : "L1_WEIGHTS_73", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_73"}]},
			{"Name" : "L1_WEIGHTS_74", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_74"}]},
			{"Name" : "L1_WEIGHTS_75", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_75"}]},
			{"Name" : "L1_WEIGHTS_76", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_76"}]},
			{"Name" : "L1_WEIGHTS_77", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_77"}]},
			{"Name" : "L1_WEIGHTS_78", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_78"}]},
			{"Name" : "L1_WEIGHTS_79", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_79"}]},
			{"Name" : "L1_WEIGHTS_80", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_80"}]},
			{"Name" : "L1_WEIGHTS_81", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_81"}]},
			{"Name" : "L1_WEIGHTS_82", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_82"}]},
			{"Name" : "L1_WEIGHTS_83", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_83"}]},
			{"Name" : "L1_WEIGHTS_84", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_84"}]},
			{"Name" : "L1_WEIGHTS_85", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_85"}]},
			{"Name" : "L1_WEIGHTS_86", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_86"}]},
			{"Name" : "L1_WEIGHTS_87", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_87"}]},
			{"Name" : "L1_WEIGHTS_88", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_88"}]},
			{"Name" : "L1_WEIGHTS_89", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_89"}]},
			{"Name" : "L1_WEIGHTS_90", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_90"}]},
			{"Name" : "L1_WEIGHTS_91", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_91"}]},
			{"Name" : "L1_WEIGHTS_92", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_92"}]},
			{"Name" : "L1_WEIGHTS_93", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_93"}]},
			{"Name" : "L1_WEIGHTS_94", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_94"}]},
			{"Name" : "L1_WEIGHTS_95", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_95"}]},
			{"Name" : "L1_WEIGHTS_96", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_96"}]},
			{"Name" : "L1_WEIGHTS_97", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_97"}]},
			{"Name" : "L1_WEIGHTS_98", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_98"}]},
			{"Name" : "L1_WEIGHTS_99", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_99"}]},
			{"Name" : "L1_WEIGHTS_104", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_104"}]},
			{"Name" : "L1_WEIGHTS_103", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_103"}]},
			{"Name" : "L1_WEIGHTS_102", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS_102"}]},
			{"Name" : "L1_WEIGHTS", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_L2_wlo_fu_461", "Port" : "L1_WEIGHTS"}]},
			{"Name" : "L2_BIAS", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_BIAS"}]},
			{"Name" : "L2_WEIGHTS_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_0"}]},
			{"Name" : "L2_WEIGHTS_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_1"}]},
			{"Name" : "L2_WEIGHTS_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_2"}]},
			{"Name" : "L2_WEIGHTS_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_3"}]},
			{"Name" : "L2_WEIGHTS_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_4"}]},
			{"Name" : "L2_WEIGHTS_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_5"}]},
			{"Name" : "L2_WEIGHTS_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_6"}]},
			{"Name" : "L2_WEIGHTS_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_7"}]},
			{"Name" : "L2_WEIGHTS_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_8"}]},
			{"Name" : "L2_WEIGHTS_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_9"}]},
			{"Name" : "L2_WEIGHTS_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_10"}]},
			{"Name" : "L2_WEIGHTS_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_11"}]},
			{"Name" : "L2_WEIGHTS_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_12"}]},
			{"Name" : "L2_WEIGHTS_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_13"}]},
			{"Name" : "L2_WEIGHTS_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_14"}]},
			{"Name" : "L2_WEIGHTS_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_15"}]},
			{"Name" : "L2_WEIGHTS_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_16"}]},
			{"Name" : "L2_WEIGHTS_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_17"}]},
			{"Name" : "L2_WEIGHTS_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_18"}]},
			{"Name" : "L2_WEIGHTS_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_19"}]},
			{"Name" : "L2_WEIGHTS_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_20"}]},
			{"Name" : "L2_WEIGHTS_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_21"}]},
			{"Name" : "L2_WEIGHTS_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_22"}]},
			{"Name" : "L2_WEIGHTS_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_23"}]},
			{"Name" : "L2_WEIGHTS_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_24"}]},
			{"Name" : "L2_WEIGHTS_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_25"}]},
			{"Name" : "L2_WEIGHTS_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_26"}]},
			{"Name" : "L2_WEIGHTS_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_27"}]},
			{"Name" : "L2_WEIGHTS_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_28"}]},
			{"Name" : "L2_WEIGHTS_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_29"}]},
			{"Name" : "L2_WEIGHTS_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_30"}]},
			{"Name" : "L2_WEIGHTS_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_31"}]},
			{"Name" : "L2_WEIGHTS_32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_32"}]},
			{"Name" : "L2_WEIGHTS_33", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_33"}]},
			{"Name" : "L2_WEIGHTS_34", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_34"}]},
			{"Name" : "L2_WEIGHTS_35", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_35"}]},
			{"Name" : "L2_WEIGHTS_36", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_36"}]},
			{"Name" : "L2_WEIGHTS_37", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_37"}]},
			{"Name" : "L2_WEIGHTS_38", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_38"}]},
			{"Name" : "L2_WEIGHTS_39", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_39"}]},
			{"Name" : "L2_WEIGHTS_40", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_40"}]},
			{"Name" : "L2_WEIGHTS_41", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_41"}]},
			{"Name" : "L2_WEIGHTS_42", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_42"}]},
			{"Name" : "L2_WEIGHTS_43", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_43"}]},
			{"Name" : "L2_WEIGHTS_44", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_44"}]},
			{"Name" : "L2_WEIGHTS_45", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_45"}]},
			{"Name" : "L2_WEIGHTS_46", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_46"}]},
			{"Name" : "L2_WEIGHTS_47", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_47"}]},
			{"Name" : "L2_WEIGHTS_48", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_48"}]},
			{"Name" : "L2_WEIGHTS_49", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_49"}]},
			{"Name" : "L2_WEIGHTS_50", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_50"}]},
			{"Name" : "L2_WEIGHTS_51", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_L3_wlo_fu_779", "Port" : "L2_WEIGHTS_51"}]},
			{"Name" : "std_o", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mean_o", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.std_o_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mean_o_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LS_data_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_L3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.denorm_DNN_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461", "Parent" : "0", "Child" : ["7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164"],
		"CDFG" : "L2_wlo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "733", "EstimateLatencyMax" : "733",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read42", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read43", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read44", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read45", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read46", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read48", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read49", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read50", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read51", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read52", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read53", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read54", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read55", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read56", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read57", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read59", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read60", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read61", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read62", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read63", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read64", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read65", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read66", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read67", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read68", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read69", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read70", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read71", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read72", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read73", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read74", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read75", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read76", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read77", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read78", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read79", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read80", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read81", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read82", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read83", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read84", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read85", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read86", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read87", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read88", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read89", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read90", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read91", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read92", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read93", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read94", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read95", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read96", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read97", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read98", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read99", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read100", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read101", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read102", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read103", "Type" : "None", "Direction" : "I"},
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
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_BIAS_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_0_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_1_U", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_2_U", "Parent" : "6"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_3_U", "Parent" : "6"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_4_U", "Parent" : "6"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_5_U", "Parent" : "6"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_6_U", "Parent" : "6"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_7_U", "Parent" : "6"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_8_U", "Parent" : "6"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_9_U", "Parent" : "6"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_10_U", "Parent" : "6"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_11_U", "Parent" : "6"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_12_U", "Parent" : "6"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_13_U", "Parent" : "6"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_14_U", "Parent" : "6"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_15_U", "Parent" : "6"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_16_U", "Parent" : "6"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_17_U", "Parent" : "6"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_18_U", "Parent" : "6"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_19_U", "Parent" : "6"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_20_U", "Parent" : "6"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_21_U", "Parent" : "6"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_22_U", "Parent" : "6"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_23_U", "Parent" : "6"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_24_U", "Parent" : "6"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_25_U", "Parent" : "6"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_26_U", "Parent" : "6"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_27_U", "Parent" : "6"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_28_U", "Parent" : "6"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_29_U", "Parent" : "6"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_30_U", "Parent" : "6"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_31_U", "Parent" : "6"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_32_U", "Parent" : "6"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_33_U", "Parent" : "6"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_34_U", "Parent" : "6"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_35_U", "Parent" : "6"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_36_U", "Parent" : "6"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_37_U", "Parent" : "6"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_38_U", "Parent" : "6"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_39_U", "Parent" : "6"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_40_U", "Parent" : "6"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_41_U", "Parent" : "6"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_42_U", "Parent" : "6"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_43_U", "Parent" : "6"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_44_U", "Parent" : "6"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_45_U", "Parent" : "6"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_46_U", "Parent" : "6"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_47_U", "Parent" : "6"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_48_U", "Parent" : "6"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_49_U", "Parent" : "6"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_50_U", "Parent" : "6"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_51_U", "Parent" : "6"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_52_U", "Parent" : "6"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_53_U", "Parent" : "6"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_54_U", "Parent" : "6"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_55_U", "Parent" : "6"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_56_U", "Parent" : "6"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_57_U", "Parent" : "6"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_58_U", "Parent" : "6"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_59_U", "Parent" : "6"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_60_U", "Parent" : "6"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_61_U", "Parent" : "6"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_62_U", "Parent" : "6"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_63_U", "Parent" : "6"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_64_U", "Parent" : "6"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_65_U", "Parent" : "6"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_66_U", "Parent" : "6"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_67_U", "Parent" : "6"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_68_U", "Parent" : "6"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_69_U", "Parent" : "6"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_70_U", "Parent" : "6"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_71_U", "Parent" : "6"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_72_U", "Parent" : "6"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_73_U", "Parent" : "6"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_74_U", "Parent" : "6"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_75_U", "Parent" : "6"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_76_U", "Parent" : "6"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_77_U", "Parent" : "6"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_78_U", "Parent" : "6"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_79_U", "Parent" : "6"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_80_U", "Parent" : "6"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_81_U", "Parent" : "6"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_82_U", "Parent" : "6"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_83_U", "Parent" : "6"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_84_U", "Parent" : "6"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_85_U", "Parent" : "6"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_86_U", "Parent" : "6"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_87_U", "Parent" : "6"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_88_U", "Parent" : "6"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_89_U", "Parent" : "6"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_90_U", "Parent" : "6"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_91_U", "Parent" : "6"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_92_U", "Parent" : "6"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_93_U", "Parent" : "6"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_94_U", "Parent" : "6"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_95_U", "Parent" : "6"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_96_U", "Parent" : "6"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_97_U", "Parent" : "6"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_98_U", "Parent" : "6"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_99_U", "Parent" : "6"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_104_U", "Parent" : "6"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_103_U", "Parent" : "6"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_102_U", "Parent" : "6"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.L1_WEIGHTS_U", "Parent" : "6"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hadd_16nsbLp_U14", "Parent" : "6"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hadd_16nsbLp_U15", "Parent" : "6"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hadd_16nsbLp_U16", "Parent" : "6"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hadd_16nsbLp_U17", "Parent" : "6"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hadd_16nsbLp_U18", "Parent" : "6"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hadd_16nsbLp_U19", "Parent" : "6"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hadd_16nsbLp_U20", "Parent" : "6"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hadd_16nsbLp_U21", "Parent" : "6"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hadd_16nsbLp_U22", "Parent" : "6"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hadd_16nsbLp_U23", "Parent" : "6"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hadd_16nsbLp_U24", "Parent" : "6"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hadd_16nsbLp_U25", "Parent" : "6"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hadd_16nsbLp_U26", "Parent" : "6"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hadd_16nsbLp_U27", "Parent" : "6"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hadd_16nsbLp_U28", "Parent" : "6"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hadd_16nsbLp_U29", "Parent" : "6"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hadd_16nsbLp_U30", "Parent" : "6"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hadd_16nsbLp_U31", "Parent" : "6"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hadd_16nsbLp_U32", "Parent" : "6"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hadd_16nsbLp_U33", "Parent" : "6"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hadd_16nsbLp_U34", "Parent" : "6"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hadd_16nsbLp_U35", "Parent" : "6"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hadd_16nsbLp_U36", "Parent" : "6"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hadd_16nsbLp_U37", "Parent" : "6"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hadd_16nsbLp_U38", "Parent" : "6"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hadd_16nsbLp_U39", "Parent" : "6"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hmul_16nsbMq_U40", "Parent" : "6"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hmul_16nsbMq_U41", "Parent" : "6"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hmul_16nsbMq_U42", "Parent" : "6"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hmul_16nsbMq_U43", "Parent" : "6"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hmul_16nsbMq_U44", "Parent" : "6"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hmul_16nsbMq_U45", "Parent" : "6"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hmul_16nsbMq_U46", "Parent" : "6"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hmul_16nsbMq_U47", "Parent" : "6"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hmul_16nsbMq_U48", "Parent" : "6"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hmul_16nsbMq_U49", "Parent" : "6"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hmul_16nsbMq_U50", "Parent" : "6"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hmul_16nsbMq_U51", "Parent" : "6"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hmul_16nsbMq_U52", "Parent" : "6"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hmul_16nsbMq_U53", "Parent" : "6"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hmul_16nsbMq_U54", "Parent" : "6"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hmul_16nsbMq_U55", "Parent" : "6"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hmul_16nsbMq_U56", "Parent" : "6"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hmul_16nsbMq_U57", "Parent" : "6"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hmul_16nsbMq_U58", "Parent" : "6"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hmul_16nsbMq_U59", "Parent" : "6"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hmul_16nsbMq_U60", "Parent" : "6"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hmul_16nsbMq_U61", "Parent" : "6"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hmul_16nsbMq_U62", "Parent" : "6"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hmul_16nsbMq_U63", "Parent" : "6"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hmul_16nsbMq_U64", "Parent" : "6"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hmul_16nsbMq_U65", "Parent" : "6"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L2_wlo_fu_461.DNN_wlo_hcmp_16nsbNq_U66", "Parent" : "6"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779", "Parent" : "0", "Child" : ["166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244"],
		"CDFG" : "L3_wlo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "680", "EstimateLatencyMax" : "680",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read42", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read43", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read44", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read45", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read46", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read48", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read49", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read50", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read51", "Type" : "None", "Direction" : "I"},
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
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_BIAS_U", "Parent" : "165"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_0_U", "Parent" : "165"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_1_U", "Parent" : "165"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_2_U", "Parent" : "165"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_3_U", "Parent" : "165"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_4_U", "Parent" : "165"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_5_U", "Parent" : "165"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_6_U", "Parent" : "165"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_7_U", "Parent" : "165"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_8_U", "Parent" : "165"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_9_U", "Parent" : "165"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_10_U", "Parent" : "165"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_11_U", "Parent" : "165"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_12_U", "Parent" : "165"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_13_U", "Parent" : "165"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_14_U", "Parent" : "165"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_15_U", "Parent" : "165"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_16_U", "Parent" : "165"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_17_U", "Parent" : "165"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_18_U", "Parent" : "165"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_19_U", "Parent" : "165"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_20_U", "Parent" : "165"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_21_U", "Parent" : "165"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_22_U", "Parent" : "165"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_23_U", "Parent" : "165"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_24_U", "Parent" : "165"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_25_U", "Parent" : "165"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_26_U", "Parent" : "165"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_27_U", "Parent" : "165"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_28_U", "Parent" : "165"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_29_U", "Parent" : "165"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_30_U", "Parent" : "165"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_31_U", "Parent" : "165"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_32_U", "Parent" : "165"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_33_U", "Parent" : "165"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_34_U", "Parent" : "165"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_35_U", "Parent" : "165"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_36_U", "Parent" : "165"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_37_U", "Parent" : "165"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_38_U", "Parent" : "165"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_39_U", "Parent" : "165"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_40_U", "Parent" : "165"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_41_U", "Parent" : "165"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_42_U", "Parent" : "165"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_43_U", "Parent" : "165"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_44_U", "Parent" : "165"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_45_U", "Parent" : "165"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_46_U", "Parent" : "165"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_47_U", "Parent" : "165"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_48_U", "Parent" : "165"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_49_U", "Parent" : "165"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_50_U", "Parent" : "165"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.L2_WEIGHTS_51_U", "Parent" : "165"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.DNN_wlo_hadd_16nsbLp_U279", "Parent" : "165"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.DNN_wlo_hadd_16nsbLp_U280", "Parent" : "165"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.DNN_wlo_hadd_16nsbLp_U281", "Parent" : "165"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.DNN_wlo_hadd_16nsbLp_U282", "Parent" : "165"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.DNN_wlo_hadd_16nsbLp_U283", "Parent" : "165"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.DNN_wlo_hadd_16nsbLp_U284", "Parent" : "165"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.DNN_wlo_hadd_16nsbLp_U285", "Parent" : "165"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.DNN_wlo_hadd_16nsbLp_U286", "Parent" : "165"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.DNN_wlo_hadd_16nsbLp_U287", "Parent" : "165"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.DNN_wlo_hadd_16nsbLp_U288", "Parent" : "165"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.DNN_wlo_hadd_16nsbLp_U289", "Parent" : "165"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.DNN_wlo_hadd_16nsbLp_U290", "Parent" : "165"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.DNN_wlo_hadd_16nsbLp_U291", "Parent" : "165"},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.DNN_wlo_hmul_16nsbMq_U292", "Parent" : "165"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.DNN_wlo_hmul_16nsbMq_U293", "Parent" : "165"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.DNN_wlo_hmul_16nsbMq_U294", "Parent" : "165"},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.DNN_wlo_hmul_16nsbMq_U295", "Parent" : "165"},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.DNN_wlo_hmul_16nsbMq_U296", "Parent" : "165"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.DNN_wlo_hmul_16nsbMq_U297", "Parent" : "165"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.DNN_wlo_hmul_16nsbMq_U298", "Parent" : "165"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.DNN_wlo_hmul_16nsbMq_U299", "Parent" : "165"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.DNN_wlo_hmul_16nsbMq_U300", "Parent" : "165"},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.DNN_wlo_hmul_16nsbMq_U301", "Parent" : "165"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.DNN_wlo_hmul_16nsbMq_U302", "Parent" : "165"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.DNN_wlo_hmul_16nsbMq_U303", "Parent" : "165"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_L3_wlo_fu_779.DNN_wlo_hmul_16nsbMq_U304", "Parent" : "165"},
	{"ID" : "245", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_normalize_wlo_fu_942", "Parent" : "0", "Child" : ["246", "247", "248", "249"],
		"CDFG" : "normalize_wlo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "119", "EstimateLatencyMax" : "119",
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
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_normalize_wlo_fu_942.mean_in_U", "Parent" : "245"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_normalize_wlo_fu_942.std_in_U", "Parent" : "245"},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_normalize_wlo_fu_942.DNN_wlo_hsub_16nseOg_U7", "Parent" : "245"},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_normalize_wlo_fu_942.DNN_wlo_hdiv_16nsfYi_U8", "Parent" : "245"},
	{"ID" : "250", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_separate_complex_wlo_fu_951", "Parent" : "0", "Child" : ["251", "252"],
		"CDFG" : "separate_complex_wlo",
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
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_separate_complex_wlo_fu_951.DNN_wlo_sptohp_32bkb_U1", "Parent" : "250"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_separate_complex_wlo_fu_951.DNN_wlo_sptohp_32bkb_U2", "Parent" : "250"},
	{"ID" : "253", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_complex_s_fu_960", "Parent" : "0", "Child" : ["254", "255"],
		"CDFG" : "reconstruct_complex_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "55", "EstimateLatencyMax" : "55",
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
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_complex_s_fu_960.DNN_wlo_hptosp_16cux_U411", "Parent" : "253"},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_reconstruct_complex_s_fu_960.DNN_wlo_hptosp_16cux_U412", "Parent" : "253"},
	{"ID" : "256", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_wlo_hadd_16nsbLp_U417", "Parent" : "0"},
	{"ID" : "257", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_wlo_hmul_16nsbMq_U418", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	DNN_wlo {
		LS_stream_V_data {Type I LastRead 1 FirstWrite -1}
		LS_stream_V_last_V {Type I LastRead 1 FirstWrite -1}
		DNN_out_V_data {Type O LastRead -1 FirstWrite 3}
		DNN_out_V_last_V {Type O LastRead -1 FirstWrite 3}
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
	L2_wlo {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read26 {Type I LastRead 0 FirstWrite -1}
		p_read27 {Type I LastRead 0 FirstWrite -1}
		p_read28 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		p_read32 {Type I LastRead 0 FirstWrite -1}
		p_read33 {Type I LastRead 0 FirstWrite -1}
		p_read34 {Type I LastRead 0 FirstWrite -1}
		p_read35 {Type I LastRead 0 FirstWrite -1}
		p_read36 {Type I LastRead 0 FirstWrite -1}
		p_read37 {Type I LastRead 0 FirstWrite -1}
		p_read38 {Type I LastRead 0 FirstWrite -1}
		p_read39 {Type I LastRead 0 FirstWrite -1}
		p_read40 {Type I LastRead 0 FirstWrite -1}
		p_read41 {Type I LastRead 0 FirstWrite -1}
		p_read42 {Type I LastRead 0 FirstWrite -1}
		p_read43 {Type I LastRead 0 FirstWrite -1}
		p_read44 {Type I LastRead 0 FirstWrite -1}
		p_read45 {Type I LastRead 0 FirstWrite -1}
		p_read46 {Type I LastRead 0 FirstWrite -1}
		p_read47 {Type I LastRead 0 FirstWrite -1}
		p_read48 {Type I LastRead 0 FirstWrite -1}
		p_read49 {Type I LastRead 0 FirstWrite -1}
		p_read50 {Type I LastRead 0 FirstWrite -1}
		p_read51 {Type I LastRead 0 FirstWrite -1}
		p_read52 {Type I LastRead 0 FirstWrite -1}
		p_read53 {Type I LastRead 0 FirstWrite -1}
		p_read54 {Type I LastRead 0 FirstWrite -1}
		p_read55 {Type I LastRead 0 FirstWrite -1}
		p_read56 {Type I LastRead 0 FirstWrite -1}
		p_read57 {Type I LastRead 0 FirstWrite -1}
		p_read58 {Type I LastRead 0 FirstWrite -1}
		p_read59 {Type I LastRead 0 FirstWrite -1}
		p_read60 {Type I LastRead 0 FirstWrite -1}
		p_read61 {Type I LastRead 0 FirstWrite -1}
		p_read62 {Type I LastRead 0 FirstWrite -1}
		p_read63 {Type I LastRead 0 FirstWrite -1}
		p_read64 {Type I LastRead 0 FirstWrite -1}
		p_read65 {Type I LastRead 0 FirstWrite -1}
		p_read66 {Type I LastRead 0 FirstWrite -1}
		p_read67 {Type I LastRead 0 FirstWrite -1}
		p_read68 {Type I LastRead 0 FirstWrite -1}
		p_read69 {Type I LastRead 0 FirstWrite -1}
		p_read70 {Type I LastRead 0 FirstWrite -1}
		p_read71 {Type I LastRead 0 FirstWrite -1}
		p_read72 {Type I LastRead 0 FirstWrite -1}
		p_read73 {Type I LastRead 0 FirstWrite -1}
		p_read74 {Type I LastRead 0 FirstWrite -1}
		p_read75 {Type I LastRead 0 FirstWrite -1}
		p_read76 {Type I LastRead 0 FirstWrite -1}
		p_read77 {Type I LastRead 0 FirstWrite -1}
		p_read78 {Type I LastRead 0 FirstWrite -1}
		p_read79 {Type I LastRead 0 FirstWrite -1}
		p_read80 {Type I LastRead 0 FirstWrite -1}
		p_read81 {Type I LastRead 0 FirstWrite -1}
		p_read82 {Type I LastRead 0 FirstWrite -1}
		p_read83 {Type I LastRead 0 FirstWrite -1}
		p_read84 {Type I LastRead 0 FirstWrite -1}
		p_read85 {Type I LastRead 0 FirstWrite -1}
		p_read86 {Type I LastRead 0 FirstWrite -1}
		p_read87 {Type I LastRead 0 FirstWrite -1}
		p_read88 {Type I LastRead 0 FirstWrite -1}
		p_read89 {Type I LastRead 0 FirstWrite -1}
		p_read90 {Type I LastRead 0 FirstWrite -1}
		p_read91 {Type I LastRead 0 FirstWrite -1}
		p_read92 {Type I LastRead 0 FirstWrite -1}
		p_read93 {Type I LastRead 0 FirstWrite -1}
		p_read94 {Type I LastRead 0 FirstWrite -1}
		p_read95 {Type I LastRead 0 FirstWrite -1}
		p_read96 {Type I LastRead 0 FirstWrite -1}
		p_read97 {Type I LastRead 0 FirstWrite -1}
		p_read98 {Type I LastRead 0 FirstWrite -1}
		p_read99 {Type I LastRead 0 FirstWrite -1}
		p_read100 {Type I LastRead 0 FirstWrite -1}
		p_read101 {Type I LastRead 0 FirstWrite -1}
		p_read102 {Type I LastRead 0 FirstWrite -1}
		p_read103 {Type I LastRead 0 FirstWrite -1}
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
	L3_wlo {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read26 {Type I LastRead 0 FirstWrite -1}
		p_read27 {Type I LastRead 0 FirstWrite -1}
		p_read28 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		p_read32 {Type I LastRead 0 FirstWrite -1}
		p_read33 {Type I LastRead 0 FirstWrite -1}
		p_read34 {Type I LastRead 0 FirstWrite -1}
		p_read35 {Type I LastRead 0 FirstWrite -1}
		p_read36 {Type I LastRead 0 FirstWrite -1}
		p_read37 {Type I LastRead 0 FirstWrite -1}
		p_read38 {Type I LastRead 0 FirstWrite -1}
		p_read39 {Type I LastRead 0 FirstWrite -1}
		p_read40 {Type I LastRead 0 FirstWrite -1}
		p_read41 {Type I LastRead 0 FirstWrite -1}
		p_read42 {Type I LastRead 0 FirstWrite -1}
		p_read43 {Type I LastRead 0 FirstWrite -1}
		p_read44 {Type I LastRead 0 FirstWrite -1}
		p_read45 {Type I LastRead 0 FirstWrite -1}
		p_read46 {Type I LastRead 0 FirstWrite -1}
		p_read47 {Type I LastRead 0 FirstWrite -1}
		p_read48 {Type I LastRead 0 FirstWrite -1}
		p_read49 {Type I LastRead 0 FirstWrite -1}
		p_read50 {Type I LastRead 0 FirstWrite -1}
		p_read51 {Type I LastRead 0 FirstWrite -1}
		y_L3 {Type O LastRead -1 FirstWrite 267}
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
	normalize_wlo {
		LS_data {Type I LastRead 1 FirstWrite -1}
		mean_in {Type I LastRead -1 FirstWrite -1}
		std_in {Type I LastRead -1 FirstWrite -1}}
	separate_complex_wlo {
		LS_stream_V_data {Type I LastRead 1 FirstWrite -1}
		LS_stream_V_last_V {Type I LastRead 1 FirstWrite -1}
		sep {Type O LastRead -1 FirstWrite 2}}
	reconstruct_complex_s {
		y_L3 {Type I LastRead 2 FirstWrite -1}
		DNN_out_V_data {Type O LastRead -1 FirstWrite 3}
		DNN_out_V_last_V {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1765", "Max" : "1765"}
	, {"Name" : "Interval", "Min" : "1766", "Max" : "1766"}
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
