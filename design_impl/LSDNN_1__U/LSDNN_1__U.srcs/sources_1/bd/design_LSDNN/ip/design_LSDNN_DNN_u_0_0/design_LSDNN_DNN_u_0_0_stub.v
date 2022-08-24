// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Jul 28 21:34:54 2022
// Host        : LAPTOP-RIOQP2DJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/IIIT-D/Independent_Project/design_impl/LSDNN_1__U/LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_DNN_u_0_0/design_LSDNN_DNN_u_0_0_stub.v
// Design      : design_LSDNN_DNN_u_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "DNN_u,Vivado 2019.1" *)
module design_LSDNN_DNN_u_0_0(ap_clk, ap_rst_n, LS_stream_TVALID, 
  LS_stream_TREADY, LS_stream_TDATA, LS_stream_TLAST, DNN_out_TVALID, DNN_out_TREADY, 
  DNN_out_TDATA, DNN_out_TLAST)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,LS_stream_TVALID,LS_stream_TREADY,LS_stream_TDATA[63:0],LS_stream_TLAST[0:0],DNN_out_TVALID,DNN_out_TREADY,DNN_out_TDATA[63:0],DNN_out_TLAST[0:0]" */;
  input ap_clk;
  input ap_rst_n;
  input LS_stream_TVALID;
  output LS_stream_TREADY;
  input [63:0]LS_stream_TDATA;
  input [0:0]LS_stream_TLAST;
  output DNN_out_TVALID;
  input DNN_out_TREADY;
  output [63:0]DNN_out_TDATA;
  output [0:0]DNN_out_TLAST;
endmodule
