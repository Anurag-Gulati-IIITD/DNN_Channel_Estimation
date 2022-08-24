// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Jul 31 15:10:20 2022
// Host        : LAPTOP-RIOQP2DJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_LSDNN_LS_estimator_0_0_stub.v
// Design      : design_LSDNN_LS_estimator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "LS_estimator,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_clk, ap_rst_n, in_stream_TVALID, 
  in_stream_TREADY, in_stream_TDATA, in_stream_TLAST, out_stream_TVALID, out_stream_TREADY, 
  out_stream_TDATA, out_stream_TLAST)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,in_stream_TVALID,in_stream_TREADY,in_stream_TDATA[63:0],in_stream_TLAST[0:0],out_stream_TVALID,out_stream_TREADY,out_stream_TDATA[63:0],out_stream_TLAST[0:0]" */;
  input ap_clk;
  input ap_rst_n;
  input in_stream_TVALID;
  output in_stream_TREADY;
  input [63:0]in_stream_TDATA;
  input [0:0]in_stream_TLAST;
  output out_stream_TVALID;
  input out_stream_TREADY;
  output [63:0]out_stream_TDATA;
  output [0:0]out_stream_TLAST;
endmodule
