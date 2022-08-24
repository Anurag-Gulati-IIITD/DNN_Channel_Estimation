set moduleName L3_up
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
set C_modelName {L3_up}
set C_modelType { void 0 }
set C_modelArgList {
	{ x_0_0_read float 32 regular  }
	{ x_0_1_read float 32 regular  }
	{ x_1_0_read float 32 regular  }
	{ x_1_1_read float 32 regular  }
	{ x_2_0_read float 32 regular  }
	{ x_2_1_read float 32 regular  }
	{ x_3_0_read float 32 regular  }
	{ x_3_1_read float 32 regular  }
	{ x_4_0_read float 32 regular  }
	{ x_4_1_read float 32 regular  }
	{ x_5_0_read float 32 regular  }
	{ x_5_1_read float 32 regular  }
	{ x_6_0_read float 32 regular  }
	{ x_6_1_read float 32 regular  }
	{ x_7_0_read float 32 regular  }
	{ x_7_1_read float 32 regular  }
	{ x_8_0_read float 32 regular  }
	{ x_8_1_read float 32 regular  }
	{ x_9_0_read float 32 regular  }
	{ x_9_1_read float 32 regular  }
	{ x_10_0_read float 32 regular  }
	{ x_10_1_read float 32 regular  }
	{ x_11_0_read float 32 regular  }
	{ x_11_1_read float 32 regular  }
	{ x_12_0_read float 32 regular  }
	{ x_12_1_read float 32 regular  }
	{ x_13_0_read float 32 regular  }
	{ x_13_1_read float 32 regular  }
	{ x_14_0_read float 32 regular  }
	{ x_14_1_read float 32 regular  }
	{ x_15_0_read float 32 regular  }
	{ x_15_1_read float 32 regular  }
	{ x_16_0_read float 32 regular  }
	{ x_16_1_read float 32 regular  }
	{ x_17_0_read float 32 regular  }
	{ x_17_1_read float 32 regular  }
	{ x_18_0_read float 32 regular  }
	{ x_18_1_read float 32 regular  }
	{ x_19_0_read float 32 regular  }
	{ x_19_1_read float 32 regular  }
	{ x_20_0_read float 32 regular  }
	{ x_20_1_read float 32 regular  }
	{ x_21_0_read float 32 regular  }
	{ x_21_1_read float 32 regular  }
	{ x_22_0_read float 32 regular  }
	{ x_22_1_read float 32 regular  }
	{ x_23_0_read float 32 regular  }
	{ x_23_1_read float 32 regular  }
	{ x_24_0_read float 32 regular  }
	{ x_24_1_read float 32 regular  }
	{ x_25_0_read float 32 regular  }
	{ x_25_1_read float 32 regular  }
	{ y_L3 float 32 regular {array 104 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "x_0_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_0_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_1_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_1_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_2_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_2_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_3_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_3_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_4_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_4_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_5_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_5_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_6_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_6_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_7_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_7_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_8_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_8_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_9_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_9_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_10_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_10_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_11_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_11_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_12_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_12_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_13_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_13_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_14_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_14_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_15_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_15_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_16_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_16_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_17_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_17_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_18_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_18_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_19_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_19_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_20_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_20_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_21_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_21_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_22_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_22_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_23_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_23_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_24_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_24_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_25_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_25_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "y_L3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 62
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ x_0_0_read sc_in sc_lv 32 signal 0 } 
	{ x_0_1_read sc_in sc_lv 32 signal 1 } 
	{ x_1_0_read sc_in sc_lv 32 signal 2 } 
	{ x_1_1_read sc_in sc_lv 32 signal 3 } 
	{ x_2_0_read sc_in sc_lv 32 signal 4 } 
	{ x_2_1_read sc_in sc_lv 32 signal 5 } 
	{ x_3_0_read sc_in sc_lv 32 signal 6 } 
	{ x_3_1_read sc_in sc_lv 32 signal 7 } 
	{ x_4_0_read sc_in sc_lv 32 signal 8 } 
	{ x_4_1_read sc_in sc_lv 32 signal 9 } 
	{ x_5_0_read sc_in sc_lv 32 signal 10 } 
	{ x_5_1_read sc_in sc_lv 32 signal 11 } 
	{ x_6_0_read sc_in sc_lv 32 signal 12 } 
	{ x_6_1_read sc_in sc_lv 32 signal 13 } 
	{ x_7_0_read sc_in sc_lv 32 signal 14 } 
	{ x_7_1_read sc_in sc_lv 32 signal 15 } 
	{ x_8_0_read sc_in sc_lv 32 signal 16 } 
	{ x_8_1_read sc_in sc_lv 32 signal 17 } 
	{ x_9_0_read sc_in sc_lv 32 signal 18 } 
	{ x_9_1_read sc_in sc_lv 32 signal 19 } 
	{ x_10_0_read sc_in sc_lv 32 signal 20 } 
	{ x_10_1_read sc_in sc_lv 32 signal 21 } 
	{ x_11_0_read sc_in sc_lv 32 signal 22 } 
	{ x_11_1_read sc_in sc_lv 32 signal 23 } 
	{ x_12_0_read sc_in sc_lv 32 signal 24 } 
	{ x_12_1_read sc_in sc_lv 32 signal 25 } 
	{ x_13_0_read sc_in sc_lv 32 signal 26 } 
	{ x_13_1_read sc_in sc_lv 32 signal 27 } 
	{ x_14_0_read sc_in sc_lv 32 signal 28 } 
	{ x_14_1_read sc_in sc_lv 32 signal 29 } 
	{ x_15_0_read sc_in sc_lv 32 signal 30 } 
	{ x_15_1_read sc_in sc_lv 32 signal 31 } 
	{ x_16_0_read sc_in sc_lv 32 signal 32 } 
	{ x_16_1_read sc_in sc_lv 32 signal 33 } 
	{ x_17_0_read sc_in sc_lv 32 signal 34 } 
	{ x_17_1_read sc_in sc_lv 32 signal 35 } 
	{ x_18_0_read sc_in sc_lv 32 signal 36 } 
	{ x_18_1_read sc_in sc_lv 32 signal 37 } 
	{ x_19_0_read sc_in sc_lv 32 signal 38 } 
	{ x_19_1_read sc_in sc_lv 32 signal 39 } 
	{ x_20_0_read sc_in sc_lv 32 signal 40 } 
	{ x_20_1_read sc_in sc_lv 32 signal 41 } 
	{ x_21_0_read sc_in sc_lv 32 signal 42 } 
	{ x_21_1_read sc_in sc_lv 32 signal 43 } 
	{ x_22_0_read sc_in sc_lv 32 signal 44 } 
	{ x_22_1_read sc_in sc_lv 32 signal 45 } 
	{ x_23_0_read sc_in sc_lv 32 signal 46 } 
	{ x_23_1_read sc_in sc_lv 32 signal 47 } 
	{ x_24_0_read sc_in sc_lv 32 signal 48 } 
	{ x_24_1_read sc_in sc_lv 32 signal 49 } 
	{ x_25_0_read sc_in sc_lv 32 signal 50 } 
	{ x_25_1_read sc_in sc_lv 32 signal 51 } 
	{ y_L3_address0 sc_out sc_lv 7 signal 52 } 
	{ y_L3_ce0 sc_out sc_logic 1 signal 52 } 
	{ y_L3_we0 sc_out sc_logic 1 signal 52 } 
	{ y_L3_d0 sc_out sc_lv 32 signal 52 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "x_0_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_0_0_read", "role": "default" }} , 
 	{ "name": "x_0_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_0_1_read", "role": "default" }} , 
 	{ "name": "x_1_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_1_0_read", "role": "default" }} , 
 	{ "name": "x_1_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_1_1_read", "role": "default" }} , 
 	{ "name": "x_2_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_2_0_read", "role": "default" }} , 
 	{ "name": "x_2_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_2_1_read", "role": "default" }} , 
 	{ "name": "x_3_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_3_0_read", "role": "default" }} , 
 	{ "name": "x_3_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_3_1_read", "role": "default" }} , 
 	{ "name": "x_4_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_4_0_read", "role": "default" }} , 
 	{ "name": "x_4_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_4_1_read", "role": "default" }} , 
 	{ "name": "x_5_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_5_0_read", "role": "default" }} , 
 	{ "name": "x_5_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_5_1_read", "role": "default" }} , 
 	{ "name": "x_6_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_6_0_read", "role": "default" }} , 
 	{ "name": "x_6_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_6_1_read", "role": "default" }} , 
 	{ "name": "x_7_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_7_0_read", "role": "default" }} , 
 	{ "name": "x_7_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_7_1_read", "role": "default" }} , 
 	{ "name": "x_8_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_8_0_read", "role": "default" }} , 
 	{ "name": "x_8_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_8_1_read", "role": "default" }} , 
 	{ "name": "x_9_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_9_0_read", "role": "default" }} , 
 	{ "name": "x_9_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_9_1_read", "role": "default" }} , 
 	{ "name": "x_10_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_10_0_read", "role": "default" }} , 
 	{ "name": "x_10_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_10_1_read", "role": "default" }} , 
 	{ "name": "x_11_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_11_0_read", "role": "default" }} , 
 	{ "name": "x_11_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_11_1_read", "role": "default" }} , 
 	{ "name": "x_12_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_12_0_read", "role": "default" }} , 
 	{ "name": "x_12_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_12_1_read", "role": "default" }} , 
 	{ "name": "x_13_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_13_0_read", "role": "default" }} , 
 	{ "name": "x_13_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_13_1_read", "role": "default" }} , 
 	{ "name": "x_14_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_14_0_read", "role": "default" }} , 
 	{ "name": "x_14_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_14_1_read", "role": "default" }} , 
 	{ "name": "x_15_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_15_0_read", "role": "default" }} , 
 	{ "name": "x_15_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_15_1_read", "role": "default" }} , 
 	{ "name": "x_16_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_16_0_read", "role": "default" }} , 
 	{ "name": "x_16_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_16_1_read", "role": "default" }} , 
 	{ "name": "x_17_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_17_0_read", "role": "default" }} , 
 	{ "name": "x_17_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_17_1_read", "role": "default" }} , 
 	{ "name": "x_18_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_18_0_read", "role": "default" }} , 
 	{ "name": "x_18_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_18_1_read", "role": "default" }} , 
 	{ "name": "x_19_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_19_0_read", "role": "default" }} , 
 	{ "name": "x_19_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_19_1_read", "role": "default" }} , 
 	{ "name": "x_20_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_20_0_read", "role": "default" }} , 
 	{ "name": "x_20_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_20_1_read", "role": "default" }} , 
 	{ "name": "x_21_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_21_0_read", "role": "default" }} , 
 	{ "name": "x_21_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_21_1_read", "role": "default" }} , 
 	{ "name": "x_22_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_22_0_read", "role": "default" }} , 
 	{ "name": "x_22_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_22_1_read", "role": "default" }} , 
 	{ "name": "x_23_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_23_0_read", "role": "default" }} , 
 	{ "name": "x_23_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_23_1_read", "role": "default" }} , 
 	{ "name": "x_24_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_24_0_read", "role": "default" }} , 
 	{ "name": "x_24_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_24_1_read", "role": "default" }} , 
 	{ "name": "x_25_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_25_0_read", "role": "default" }} , 
 	{ "name": "x_25_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_25_1_read", "role": "default" }} , 
 	{ "name": "y_L3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "y_L3", "role": "address0" }} , 
 	{ "name": "y_L3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_L3", "role": "ce0" }} , 
 	{ "name": "y_L3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_L3", "role": "we0" }} , 
 	{ "name": "y_L3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_L3", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_BIAS_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_2_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_3_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_4_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_5_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_6_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_7_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_8_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_9_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_10_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_11_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_12_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_13_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_14_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_15_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_16_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_17_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_18_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_19_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_20_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_21_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_22_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_23_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_24_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_25_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_26_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_27_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_28_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_29_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_30_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_31_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_32_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_33_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_34_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_35_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_36_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_37_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_38_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_39_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_40_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_41_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_42_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_43_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_44_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_45_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_46_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_47_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_48_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_49_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_50_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L2_WEIGHTS_51_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_up_fadd_32ns_hbi_U266", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_up_fadd_32ns_hbi_U267", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_up_fadd_32ns_hbi_U268", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_up_fadd_32ns_hbi_U269", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_up_fadd_32ns_hbi_U270", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_up_fadd_32ns_hbi_U271", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_up_fadd_32ns_hbi_U272", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_up_fadd_32ns_hbi_U273", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_up_fadd_32ns_hbi_U274", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_up_fadd_32ns_hbi_U275", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_up_fadd_32ns_hbi_U276", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_up_fmul_32ns_ibs_U277", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_up_fmul_32ns_ibs_U278", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_up_fmul_32ns_ibs_U279", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_up_fmul_32ns_ibs_U280", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_up_fmul_32ns_ibs_U281", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_up_fmul_32ns_ibs_U282", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_up_fmul_32ns_ibs_U283", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_up_fmul_32ns_ibs_U284", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_up_fmul_32ns_ibs_U285", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_up_fmul_32ns_ibs_U286", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_up_fmul_32ns_ibs_U287", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		L2_WEIGHTS_51 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "787", "Max" : "787"}
	, {"Name" : "Interval", "Min" : "787", "Max" : "787"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	x_0_0_read { ap_none {  { x_0_0_read in_data 0 32 } } }
	x_0_1_read { ap_none {  { x_0_1_read in_data 0 32 } } }
	x_1_0_read { ap_none {  { x_1_0_read in_data 0 32 } } }
	x_1_1_read { ap_none {  { x_1_1_read in_data 0 32 } } }
	x_2_0_read { ap_none {  { x_2_0_read in_data 0 32 } } }
	x_2_1_read { ap_none {  { x_2_1_read in_data 0 32 } } }
	x_3_0_read { ap_none {  { x_3_0_read in_data 0 32 } } }
	x_3_1_read { ap_none {  { x_3_1_read in_data 0 32 } } }
	x_4_0_read { ap_none {  { x_4_0_read in_data 0 32 } } }
	x_4_1_read { ap_none {  { x_4_1_read in_data 0 32 } } }
	x_5_0_read { ap_none {  { x_5_0_read in_data 0 32 } } }
	x_5_1_read { ap_none {  { x_5_1_read in_data 0 32 } } }
	x_6_0_read { ap_none {  { x_6_0_read in_data 0 32 } } }
	x_6_1_read { ap_none {  { x_6_1_read in_data 0 32 } } }
	x_7_0_read { ap_none {  { x_7_0_read in_data 0 32 } } }
	x_7_1_read { ap_none {  { x_7_1_read in_data 0 32 } } }
	x_8_0_read { ap_none {  { x_8_0_read in_data 0 32 } } }
	x_8_1_read { ap_none {  { x_8_1_read in_data 0 32 } } }
	x_9_0_read { ap_none {  { x_9_0_read in_data 0 32 } } }
	x_9_1_read { ap_none {  { x_9_1_read in_data 0 32 } } }
	x_10_0_read { ap_none {  { x_10_0_read in_data 0 32 } } }
	x_10_1_read { ap_none {  { x_10_1_read in_data 0 32 } } }
	x_11_0_read { ap_none {  { x_11_0_read in_data 0 32 } } }
	x_11_1_read { ap_none {  { x_11_1_read in_data 0 32 } } }
	x_12_0_read { ap_none {  { x_12_0_read in_data 0 32 } } }
	x_12_1_read { ap_none {  { x_12_1_read in_data 0 32 } } }
	x_13_0_read { ap_none {  { x_13_0_read in_data 0 32 } } }
	x_13_1_read { ap_none {  { x_13_1_read in_data 0 32 } } }
	x_14_0_read { ap_none {  { x_14_0_read in_data 0 32 } } }
	x_14_1_read { ap_none {  { x_14_1_read in_data 0 32 } } }
	x_15_0_read { ap_none {  { x_15_0_read in_data 0 32 } } }
	x_15_1_read { ap_none {  { x_15_1_read in_data 0 32 } } }
	x_16_0_read { ap_none {  { x_16_0_read in_data 0 32 } } }
	x_16_1_read { ap_none {  { x_16_1_read in_data 0 32 } } }
	x_17_0_read { ap_none {  { x_17_0_read in_data 0 32 } } }
	x_17_1_read { ap_none {  { x_17_1_read in_data 0 32 } } }
	x_18_0_read { ap_none {  { x_18_0_read in_data 0 32 } } }
	x_18_1_read { ap_none {  { x_18_1_read in_data 0 32 } } }
	x_19_0_read { ap_none {  { x_19_0_read in_data 0 32 } } }
	x_19_1_read { ap_none {  { x_19_1_read in_data 0 32 } } }
	x_20_0_read { ap_none {  { x_20_0_read in_data 0 32 } } }
	x_20_1_read { ap_none {  { x_20_1_read in_data 0 32 } } }
	x_21_0_read { ap_none {  { x_21_0_read in_data 0 32 } } }
	x_21_1_read { ap_none {  { x_21_1_read in_data 0 32 } } }
	x_22_0_read { ap_none {  { x_22_0_read in_data 0 32 } } }
	x_22_1_read { ap_none {  { x_22_1_read in_data 0 32 } } }
	x_23_0_read { ap_none {  { x_23_0_read in_data 0 32 } } }
	x_23_1_read { ap_none {  { x_23_1_read in_data 0 32 } } }
	x_24_0_read { ap_none {  { x_24_0_read in_data 0 32 } } }
	x_24_1_read { ap_none {  { x_24_1_read in_data 0 32 } } }
	x_25_0_read { ap_none {  { x_25_0_read in_data 0 32 } } }
	x_25_1_read { ap_none {  { x_25_1_read in_data 0 32 } } }
	y_L3 { ap_memory {  { y_L3_address0 mem_address 1 7 }  { y_L3_ce0 mem_ce 1 1 }  { y_L3_we0 mem_we 1 1 }  { y_L3_d0 mem_din 1 32 } } }
}
