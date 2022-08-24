############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project least_squares
set_top LS_estimator
add_files least_squares/least_squares.h
add_files least_squares/least_squares.cpp
add_files -tb least_squares/least_squares_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "2__pipelined"
set_part {xc7z020-clg484-1} -tool vivado
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog -version 1.1.0
set_clock_uncertainty 1.25
#source "./least_squares/2__pipelined/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -version "1.1.0"
