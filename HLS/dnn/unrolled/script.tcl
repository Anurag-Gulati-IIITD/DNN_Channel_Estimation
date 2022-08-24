############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project dnn
set_top DNN_wlo_166
add_files dnn/dnn.cpp
add_files dnn/dnn.h
add_files -tb dnn/dnn_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb dnn/dnn_tb.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "unrolled"
set_part {xc7z020-clg484-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog -version 1.1.0
set_clock_uncertainty 1.25
#source "./dnn/unrolled/directives.tcl"
csim_design
csynth_design
cosim_design -setup
export_design -rtl verilog -format ip_catalog -version "1.1.0"
