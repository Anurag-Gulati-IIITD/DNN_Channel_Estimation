set moduleName L3_wlo
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
set C_modelName {L3_wlo}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_read int 16 regular  }
	{ p_read1 int 16 regular  }
	{ p_read2 int 16 regular  }
	{ p_read3 int 16 regular  }
	{ p_read4 int 16 regular  }
	{ p_read5 int 16 regular  }
	{ p_read6 int 16 regular  }
	{ p_read7 int 16 regular  }
	{ p_read8 int 16 regular  }
	{ p_read9 int 16 regular  }
	{ p_read10 int 16 regular  }
	{ p_read11 int 16 regular  }
	{ p_read12 int 16 regular  }
	{ p_read13 int 16 regular  }
	{ p_read14 int 16 regular  }
	{ p_read15 int 16 regular  }
	{ p_read16 int 16 regular  }
	{ p_read17 int 16 regular  }
	{ p_read18 int 16 regular  }
	{ p_read19 int 16 regular  }
	{ p_read20 int 16 regular  }
	{ p_read21 int 16 regular  }
	{ p_read22 int 16 regular  }
	{ p_read23 int 16 regular  }
	{ p_read24 int 16 regular  }
	{ p_read25 int 16 regular  }
	{ p_read26 int 16 regular  }
	{ p_read27 int 16 regular  }
	{ p_read28 int 16 regular  }
	{ p_read29 int 16 regular  }
	{ p_read30 int 16 regular  }
	{ p_read31 int 16 regular  }
	{ p_read32 int 16 regular  }
	{ p_read33 int 16 regular  }
	{ p_read34 int 16 regular  }
	{ p_read35 int 16 regular  }
	{ p_read36 int 16 regular  }
	{ p_read37 int 16 regular  }
	{ p_read38 int 16 regular  }
	{ p_read39 int 16 regular  }
	{ p_read40 int 16 regular  }
	{ p_read41 int 16 regular  }
	{ p_read42 int 16 regular  }
	{ p_read43 int 16 regular  }
	{ p_read44 int 16 regular  }
	{ p_read45 int 16 regular  }
	{ p_read46 int 16 regular  }
	{ p_read47 int 16 regular  }
	{ p_read48 int 16 regular  }
	{ p_read49 int 16 regular  }
	{ p_read50 int 16 regular  }
	{ p_read51 int 16 regular  }
	{ y_L3 int 16 regular {array 104 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read6", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read7", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read8", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read9", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read10", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read11", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read12", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read13", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read14", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read15", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read16", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read17", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read18", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read19", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read20", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read21", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read22", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read23", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read24", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read25", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read26", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read27", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read28", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read29", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read30", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read31", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read32", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read33", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read34", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read35", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read36", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read37", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read38", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read39", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read40", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read41", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read42", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read43", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read44", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read45", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read46", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read47", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read48", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read49", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read50", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read51", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "y_L3", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 62
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read sc_in sc_lv 16 signal 0 } 
	{ p_read1 sc_in sc_lv 16 signal 1 } 
	{ p_read2 sc_in sc_lv 16 signal 2 } 
	{ p_read3 sc_in sc_lv 16 signal 3 } 
	{ p_read4 sc_in sc_lv 16 signal 4 } 
	{ p_read5 sc_in sc_lv 16 signal 5 } 
	{ p_read6 sc_in sc_lv 16 signal 6 } 
	{ p_read7 sc_in sc_lv 16 signal 7 } 
	{ p_read8 sc_in sc_lv 16 signal 8 } 
	{ p_read9 sc_in sc_lv 16 signal 9 } 
	{ p_read10 sc_in sc_lv 16 signal 10 } 
	{ p_read11 sc_in sc_lv 16 signal 11 } 
	{ p_read12 sc_in sc_lv 16 signal 12 } 
	{ p_read13 sc_in sc_lv 16 signal 13 } 
	{ p_read14 sc_in sc_lv 16 signal 14 } 
	{ p_read15 sc_in sc_lv 16 signal 15 } 
	{ p_read16 sc_in sc_lv 16 signal 16 } 
	{ p_read17 sc_in sc_lv 16 signal 17 } 
	{ p_read18 sc_in sc_lv 16 signal 18 } 
	{ p_read19 sc_in sc_lv 16 signal 19 } 
	{ p_read20 sc_in sc_lv 16 signal 20 } 
	{ p_read21 sc_in sc_lv 16 signal 21 } 
	{ p_read22 sc_in sc_lv 16 signal 22 } 
	{ p_read23 sc_in sc_lv 16 signal 23 } 
	{ p_read24 sc_in sc_lv 16 signal 24 } 
	{ p_read25 sc_in sc_lv 16 signal 25 } 
	{ p_read26 sc_in sc_lv 16 signal 26 } 
	{ p_read27 sc_in sc_lv 16 signal 27 } 
	{ p_read28 sc_in sc_lv 16 signal 28 } 
	{ p_read29 sc_in sc_lv 16 signal 29 } 
	{ p_read30 sc_in sc_lv 16 signal 30 } 
	{ p_read31 sc_in sc_lv 16 signal 31 } 
	{ p_read32 sc_in sc_lv 16 signal 32 } 
	{ p_read33 sc_in sc_lv 16 signal 33 } 
	{ p_read34 sc_in sc_lv 16 signal 34 } 
	{ p_read35 sc_in sc_lv 16 signal 35 } 
	{ p_read36 sc_in sc_lv 16 signal 36 } 
	{ p_read37 sc_in sc_lv 16 signal 37 } 
	{ p_read38 sc_in sc_lv 16 signal 38 } 
	{ p_read39 sc_in sc_lv 16 signal 39 } 
	{ p_read40 sc_in sc_lv 16 signal 40 } 
	{ p_read41 sc_in sc_lv 16 signal 41 } 
	{ p_read42 sc_in sc_lv 16 signal 42 } 
	{ p_read43 sc_in sc_lv 16 signal 43 } 
	{ p_read44 sc_in sc_lv 16 signal 44 } 
	{ p_read45 sc_in sc_lv 16 signal 45 } 
	{ p_read46 sc_in sc_lv 16 signal 46 } 
	{ p_read47 sc_in sc_lv 16 signal 47 } 
	{ p_read48 sc_in sc_lv 16 signal 48 } 
	{ p_read49 sc_in sc_lv 16 signal 49 } 
	{ p_read50 sc_in sc_lv 16 signal 50 } 
	{ p_read51 sc_in sc_lv 16 signal 51 } 
	{ y_L3_address0 sc_out sc_lv 7 signal 52 } 
	{ y_L3_ce0 sc_out sc_logic 1 signal 52 } 
	{ y_L3_we0 sc_out sc_logic 1 signal 52 } 
	{ y_L3_d0 sc_out sc_lv 16 signal 52 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "p_read6", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read6", "role": "default" }} , 
 	{ "name": "p_read7", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read7", "role": "default" }} , 
 	{ "name": "p_read8", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read8", "role": "default" }} , 
 	{ "name": "p_read9", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read9", "role": "default" }} , 
 	{ "name": "p_read10", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read10", "role": "default" }} , 
 	{ "name": "p_read11", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read11", "role": "default" }} , 
 	{ "name": "p_read12", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read12", "role": "default" }} , 
 	{ "name": "p_read13", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read13", "role": "default" }} , 
 	{ "name": "p_read14", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read14", "role": "default" }} , 
 	{ "name": "p_read15", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read15", "role": "default" }} , 
 	{ "name": "p_read16", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read16", "role": "default" }} , 
 	{ "name": "p_read17", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read17", "role": "default" }} , 
 	{ "name": "p_read18", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read18", "role": "default" }} , 
 	{ "name": "p_read19", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read19", "role": "default" }} , 
 	{ "name": "p_read20", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read20", "role": "default" }} , 
 	{ "name": "p_read21", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read21", "role": "default" }} , 
 	{ "name": "p_read22", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read22", "role": "default" }} , 
 	{ "name": "p_read23", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read23", "role": "default" }} , 
 	{ "name": "p_read24", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read24", "role": "default" }} , 
 	{ "name": "p_read25", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read25", "role": "default" }} , 
 	{ "name": "p_read26", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read26", "role": "default" }} , 
 	{ "name": "p_read27", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read27", "role": "default" }} , 
 	{ "name": "p_read28", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read28", "role": "default" }} , 
 	{ "name": "p_read29", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read29", "role": "default" }} , 
 	{ "name": "p_read30", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read30", "role": "default" }} , 
 	{ "name": "p_read31", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read31", "role": "default" }} , 
 	{ "name": "p_read32", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read32", "role": "default" }} , 
 	{ "name": "p_read33", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read33", "role": "default" }} , 
 	{ "name": "p_read34", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read34", "role": "default" }} , 
 	{ "name": "p_read35", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read35", "role": "default" }} , 
 	{ "name": "p_read36", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read36", "role": "default" }} , 
 	{ "name": "p_read37", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read37", "role": "default" }} , 
 	{ "name": "p_read38", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read38", "role": "default" }} , 
 	{ "name": "p_read39", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read39", "role": "default" }} , 
 	{ "name": "p_read40", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read40", "role": "default" }} , 
 	{ "name": "p_read41", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read41", "role": "default" }} , 
 	{ "name": "p_read42", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read42", "role": "default" }} , 
 	{ "name": "p_read43", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read43", "role": "default" }} , 
 	{ "name": "p_read44", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read44", "role": "default" }} , 
 	{ "name": "p_read45", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read45", "role": "default" }} , 
 	{ "name": "p_read46", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read46", "role": "default" }} , 
 	{ "name": "p_read47", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read47", "role": "default" }} , 
 	{ "name": "p_read48", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read48", "role": "default" }} , 
 	{ "name": "p_read49", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read49", "role": "default" }} , 
 	{ "name": "p_read50", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read50", "role": "default" }} , 
 	{ "name": "p_read51", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read51", "role": "default" }} , 
 	{ "name": "y_L3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "y_L3", "role": "address0" }} , 
 	{ "name": "y_L3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_L3", "role": "ce0" }} , 
 	{ "name": "y_L3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_L3", "role": "we0" }} , 
 	{ "name": "y_L3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "y_L3", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79"],
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
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_wlo_hadd_16nsbLp_U279", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_wlo_hadd_16nsbLp_U280", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_wlo_hadd_16nsbLp_U281", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_wlo_hadd_16nsbLp_U282", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_wlo_hadd_16nsbLp_U283", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_wlo_hadd_16nsbLp_U284", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_wlo_hadd_16nsbLp_U285", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_wlo_hadd_16nsbLp_U286", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_wlo_hadd_16nsbLp_U287", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_wlo_hadd_16nsbLp_U288", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_wlo_hadd_16nsbLp_U289", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_wlo_hadd_16nsbLp_U290", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_wlo_hadd_16nsbLp_U291", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_wlo_hmul_16nsbMq_U292", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_wlo_hmul_16nsbMq_U293", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_wlo_hmul_16nsbMq_U294", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_wlo_hmul_16nsbMq_U295", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_wlo_hmul_16nsbMq_U296", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_wlo_hmul_16nsbMq_U297", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_wlo_hmul_16nsbMq_U298", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_wlo_hmul_16nsbMq_U299", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_wlo_hmul_16nsbMq_U300", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_wlo_hmul_16nsbMq_U301", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_wlo_hmul_16nsbMq_U302", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_wlo_hmul_16nsbMq_U303", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DNN_wlo_hmul_16nsbMq_U304", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		L2_WEIGHTS_51 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "680", "Max" : "680"}
	, {"Name" : "Interval", "Min" : "680", "Max" : "680"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 16 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 16 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 16 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 16 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 16 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 16 } } }
	p_read6 { ap_none {  { p_read6 in_data 0 16 } } }
	p_read7 { ap_none {  { p_read7 in_data 0 16 } } }
	p_read8 { ap_none {  { p_read8 in_data 0 16 } } }
	p_read9 { ap_none {  { p_read9 in_data 0 16 } } }
	p_read10 { ap_none {  { p_read10 in_data 0 16 } } }
	p_read11 { ap_none {  { p_read11 in_data 0 16 } } }
	p_read12 { ap_none {  { p_read12 in_data 0 16 } } }
	p_read13 { ap_none {  { p_read13 in_data 0 16 } } }
	p_read14 { ap_none {  { p_read14 in_data 0 16 } } }
	p_read15 { ap_none {  { p_read15 in_data 0 16 } } }
	p_read16 { ap_none {  { p_read16 in_data 0 16 } } }
	p_read17 { ap_none {  { p_read17 in_data 0 16 } } }
	p_read18 { ap_none {  { p_read18 in_data 0 16 } } }
	p_read19 { ap_none {  { p_read19 in_data 0 16 } } }
	p_read20 { ap_none {  { p_read20 in_data 0 16 } } }
	p_read21 { ap_none {  { p_read21 in_data 0 16 } } }
	p_read22 { ap_none {  { p_read22 in_data 0 16 } } }
	p_read23 { ap_none {  { p_read23 in_data 0 16 } } }
	p_read24 { ap_none {  { p_read24 in_data 0 16 } } }
	p_read25 { ap_none {  { p_read25 in_data 0 16 } } }
	p_read26 { ap_none {  { p_read26 in_data 0 16 } } }
	p_read27 { ap_none {  { p_read27 in_data 0 16 } } }
	p_read28 { ap_none {  { p_read28 in_data 0 16 } } }
	p_read29 { ap_none {  { p_read29 in_data 0 16 } } }
	p_read30 { ap_none {  { p_read30 in_data 0 16 } } }
	p_read31 { ap_none {  { p_read31 in_data 0 16 } } }
	p_read32 { ap_none {  { p_read32 in_data 0 16 } } }
	p_read33 { ap_none {  { p_read33 in_data 0 16 } } }
	p_read34 { ap_none {  { p_read34 in_data 0 16 } } }
	p_read35 { ap_none {  { p_read35 in_data 0 16 } } }
	p_read36 { ap_none {  { p_read36 in_data 0 16 } } }
	p_read37 { ap_none {  { p_read37 in_data 0 16 } } }
	p_read38 { ap_none {  { p_read38 in_data 0 16 } } }
	p_read39 { ap_none {  { p_read39 in_data 0 16 } } }
	p_read40 { ap_none {  { p_read40 in_data 0 16 } } }
	p_read41 { ap_none {  { p_read41 in_data 0 16 } } }
	p_read42 { ap_none {  { p_read42 in_data 0 16 } } }
	p_read43 { ap_none {  { p_read43 in_data 0 16 } } }
	p_read44 { ap_none {  { p_read44 in_data 0 16 } } }
	p_read45 { ap_none {  { p_read45 in_data 0 16 } } }
	p_read46 { ap_none {  { p_read46 in_data 0 16 } } }
	p_read47 { ap_none {  { p_read47 in_data 0 16 } } }
	p_read48 { ap_none {  { p_read48 in_data 0 16 } } }
	p_read49 { ap_none {  { p_read49 in_data 0 16 } } }
	p_read50 { ap_none {  { p_read50 in_data 0 16 } } }
	p_read51 { ap_none {  { p_read51 in_data 0 16 } } }
	y_L3 { ap_memory {  { y_L3_address0 mem_address 1 7 }  { y_L3_ce0 mem_ce 1 1 }  { y_L3_we0 mem_we 1 1 }  { y_L3_d0 mem_din 1 16 } } }
}
