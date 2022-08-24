-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Jul 28 21:34:54 2022
-- Host        : LAPTOP-RIOQP2DJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/IIIT-D/Independent_Project/design_impl/LSDNN_1__U/LSDNN_1__U.srcs/sources_1/bd/design_LSDNN/ip/design_LSDNN_DNN_u_0_0/design_LSDNN_DNN_u_0_0_stub.vhdl
-- Design      : design_LSDNN_DNN_u_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_LSDNN_DNN_u_0_0 is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    LS_stream_TVALID : in STD_LOGIC;
    LS_stream_TREADY : out STD_LOGIC;
    LS_stream_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    LS_stream_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    DNN_out_TVALID : out STD_LOGIC;
    DNN_out_TREADY : in STD_LOGIC;
    DNN_out_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    DNN_out_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end design_LSDNN_DNN_u_0_0;

architecture stub of design_LSDNN_DNN_u_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,LS_stream_TVALID,LS_stream_TREADY,LS_stream_TDATA[63:0],LS_stream_TLAST[0:0],DNN_out_TVALID,DNN_out_TREADY,DNN_out_TDATA[63:0],DNN_out_TLAST[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "DNN_u,Vivado 2019.1";
begin
end;
