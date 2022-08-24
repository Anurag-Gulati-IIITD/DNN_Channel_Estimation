-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:DNN_wlo_166:1.1
-- IP Revision: 0

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_LSDNN_DNN_wlo_166_0_0 IS
  PORT (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    LS_stream_TVALID : IN STD_LOGIC;
    LS_stream_TREADY : OUT STD_LOGIC;
    LS_stream_TDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    LS_stream_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    DNN_out_TVALID : OUT STD_LOGIC;
    DNN_out_TREADY : IN STD_LOGIC;
    DNN_out_TDATA : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    DNN_out_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END design_LSDNN_DNN_wlo_166_0_0;

ARCHITECTURE design_LSDNN_DNN_wlo_166_0_0_arch OF design_LSDNN_DNN_wlo_166_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_LSDNN_DNN_wlo_166_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT DNN_wlo_166 IS
    PORT (
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      LS_stream_TVALID : IN STD_LOGIC;
      LS_stream_TREADY : OUT STD_LOGIC;
      LS_stream_TDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      LS_stream_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      DNN_out_TVALID : OUT STD_LOGIC;
      DNN_out_TREADY : IN STD_LOGIC;
      DNN_out_TDATA : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      DNN_out_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
  END COMPONENT DNN_wlo_166;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_LSDNN_DNN_wlo_166_0_0_arch: ARCHITECTURE IS "HLS";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF DNN_out_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 DNN_out TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF DNN_out_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 DNN_out TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF DNN_out_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 DNN_out TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF DNN_out_TVALID: SIGNAL IS "XIL_INTERFACENAME DNN_out, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_LSDNN_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF DNN_out_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 DNN_out TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF LS_stream_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 LS_stream TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF LS_stream_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 LS_stream TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF LS_stream_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 LS_stream TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF LS_stream_TVALID: SIGNAL IS "XIL_INTERFACENAME LS_stream, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_LSDNN_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF LS_stream_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 LS_stream TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst_n: SIGNAL IS "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF LS_stream:DNN_out, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_LSDNN_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
BEGIN
  U0 : DNN_wlo_166
    PORT MAP (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      LS_stream_TVALID => LS_stream_TVALID,
      LS_stream_TREADY => LS_stream_TREADY,
      LS_stream_TDATA => LS_stream_TDATA,
      LS_stream_TLAST => LS_stream_TLAST,
      DNN_out_TVALID => DNN_out_TVALID,
      DNN_out_TREADY => DNN_out_TREADY,
      DNN_out_TDATA => DNN_out_TDATA,
      DNN_out_TLAST => DNN_out_TLAST
    );
END design_LSDNN_DNN_wlo_166_0_0_arch;
