//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_8a58_wrapper.bd
//Design : bd_8a58_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_8a58_wrapper
   (SLOT_0_AXIS_tdata,
    SLOT_0_AXIS_tkeep,
    SLOT_0_AXIS_tlast,
    SLOT_0_AXIS_tready,
    SLOT_0_AXIS_tvalid,
    SLOT_1_AXIS_tdata,
    SLOT_1_AXIS_tlast,
    SLOT_1_AXIS_tready,
    SLOT_1_AXIS_tvalid,
    SLOT_2_AXI_araddr,
    SLOT_2_AXI_arlen,
    SLOT_2_AXI_arready,
    SLOT_2_AXI_arsize,
    SLOT_2_AXI_arvalid,
    SLOT_2_AXI_awaddr,
    SLOT_2_AXI_awlen,
    SLOT_2_AXI_awready,
    SLOT_2_AXI_awsize,
    SLOT_2_AXI_awvalid,
    SLOT_2_AXI_bready,
    SLOT_2_AXI_bresp,
    SLOT_2_AXI_bvalid,
    SLOT_2_AXI_rdata,
    SLOT_2_AXI_rlast,
    SLOT_2_AXI_rready,
    SLOT_2_AXI_rvalid,
    SLOT_2_AXI_wdata,
    SLOT_2_AXI_wlast,
    SLOT_2_AXI_wready,
    SLOT_2_AXI_wstrb,
    SLOT_2_AXI_wvalid,
    SLOT_3_AXI_araddr,
    SLOT_3_AXI_arlen,
    SLOT_3_AXI_arready,
    SLOT_3_AXI_arsize,
    SLOT_3_AXI_arvalid,
    SLOT_3_AXI_awaddr,
    SLOT_3_AXI_awlen,
    SLOT_3_AXI_awready,
    SLOT_3_AXI_awsize,
    SLOT_3_AXI_awvalid,
    SLOT_3_AXI_bready,
    SLOT_3_AXI_bvalid,
    SLOT_3_AXI_rdata,
    SLOT_3_AXI_rlast,
    SLOT_3_AXI_rready,
    SLOT_3_AXI_rresp,
    SLOT_3_AXI_rvalid,
    SLOT_3_AXI_wdata,
    SLOT_3_AXI_wlast,
    SLOT_3_AXI_wready,
    SLOT_3_AXI_wvalid,
    clk,
    resetn);
  input [63:0]SLOT_0_AXIS_tdata;
  input [7:0]SLOT_0_AXIS_tkeep;
  input SLOT_0_AXIS_tlast;
  input SLOT_0_AXIS_tready;
  input SLOT_0_AXIS_tvalid;
  input [63:0]SLOT_1_AXIS_tdata;
  input SLOT_1_AXIS_tlast;
  input SLOT_1_AXIS_tready;
  input SLOT_1_AXIS_tvalid;
  input [31:0]SLOT_2_AXI_araddr;
  input [7:0]SLOT_2_AXI_arlen;
  input SLOT_2_AXI_arready;
  input [2:0]SLOT_2_AXI_arsize;
  input SLOT_2_AXI_arvalid;
  input [31:0]SLOT_2_AXI_awaddr;
  input [7:0]SLOT_2_AXI_awlen;
  input SLOT_2_AXI_awready;
  input [2:0]SLOT_2_AXI_awsize;
  input SLOT_2_AXI_awvalid;
  input SLOT_2_AXI_bready;
  input [1:0]SLOT_2_AXI_bresp;
  input SLOT_2_AXI_bvalid;
  input [63:0]SLOT_2_AXI_rdata;
  input SLOT_2_AXI_rlast;
  input SLOT_2_AXI_rready;
  input SLOT_2_AXI_rvalid;
  input [63:0]SLOT_2_AXI_wdata;
  input SLOT_2_AXI_wlast;
  input SLOT_2_AXI_wready;
  input [7:0]SLOT_2_AXI_wstrb;
  input SLOT_2_AXI_wvalid;
  input [31:0]SLOT_3_AXI_araddr;
  input [7:0]SLOT_3_AXI_arlen;
  input SLOT_3_AXI_arready;
  input [2:0]SLOT_3_AXI_arsize;
  input SLOT_3_AXI_arvalid;
  input [31:0]SLOT_3_AXI_awaddr;
  input [7:0]SLOT_3_AXI_awlen;
  input SLOT_3_AXI_awready;
  input [2:0]SLOT_3_AXI_awsize;
  input SLOT_3_AXI_awvalid;
  input SLOT_3_AXI_bready;
  input SLOT_3_AXI_bvalid;
  input [63:0]SLOT_3_AXI_rdata;
  input SLOT_3_AXI_rlast;
  input SLOT_3_AXI_rready;
  input [1:0]SLOT_3_AXI_rresp;
  input SLOT_3_AXI_rvalid;
  input [63:0]SLOT_3_AXI_wdata;
  input SLOT_3_AXI_wlast;
  input SLOT_3_AXI_wready;
  input SLOT_3_AXI_wvalid;
  input clk;
  input resetn;

  wire [63:0]SLOT_0_AXIS_tdata;
  wire [7:0]SLOT_0_AXIS_tkeep;
  wire SLOT_0_AXIS_tlast;
  wire SLOT_0_AXIS_tready;
  wire SLOT_0_AXIS_tvalid;
  wire [63:0]SLOT_1_AXIS_tdata;
  wire SLOT_1_AXIS_tlast;
  wire SLOT_1_AXIS_tready;
  wire SLOT_1_AXIS_tvalid;
  wire [31:0]SLOT_2_AXI_araddr;
  wire [7:0]SLOT_2_AXI_arlen;
  wire SLOT_2_AXI_arready;
  wire [2:0]SLOT_2_AXI_arsize;
  wire SLOT_2_AXI_arvalid;
  wire [31:0]SLOT_2_AXI_awaddr;
  wire [7:0]SLOT_2_AXI_awlen;
  wire SLOT_2_AXI_awready;
  wire [2:0]SLOT_2_AXI_awsize;
  wire SLOT_2_AXI_awvalid;
  wire SLOT_2_AXI_bready;
  wire [1:0]SLOT_2_AXI_bresp;
  wire SLOT_2_AXI_bvalid;
  wire [63:0]SLOT_2_AXI_rdata;
  wire SLOT_2_AXI_rlast;
  wire SLOT_2_AXI_rready;
  wire SLOT_2_AXI_rvalid;
  wire [63:0]SLOT_2_AXI_wdata;
  wire SLOT_2_AXI_wlast;
  wire SLOT_2_AXI_wready;
  wire [7:0]SLOT_2_AXI_wstrb;
  wire SLOT_2_AXI_wvalid;
  wire [31:0]SLOT_3_AXI_araddr;
  wire [7:0]SLOT_3_AXI_arlen;
  wire SLOT_3_AXI_arready;
  wire [2:0]SLOT_3_AXI_arsize;
  wire SLOT_3_AXI_arvalid;
  wire [31:0]SLOT_3_AXI_awaddr;
  wire [7:0]SLOT_3_AXI_awlen;
  wire SLOT_3_AXI_awready;
  wire [2:0]SLOT_3_AXI_awsize;
  wire SLOT_3_AXI_awvalid;
  wire SLOT_3_AXI_bready;
  wire SLOT_3_AXI_bvalid;
  wire [63:0]SLOT_3_AXI_rdata;
  wire SLOT_3_AXI_rlast;
  wire SLOT_3_AXI_rready;
  wire [1:0]SLOT_3_AXI_rresp;
  wire SLOT_3_AXI_rvalid;
  wire [63:0]SLOT_3_AXI_wdata;
  wire SLOT_3_AXI_wlast;
  wire SLOT_3_AXI_wready;
  wire SLOT_3_AXI_wvalid;
  wire clk;
  wire resetn;

  bd_8a58 bd_8a58_i
       (.SLOT_0_AXIS_tdata(SLOT_0_AXIS_tdata),
        .SLOT_0_AXIS_tkeep(SLOT_0_AXIS_tkeep),
        .SLOT_0_AXIS_tlast(SLOT_0_AXIS_tlast),
        .SLOT_0_AXIS_tready(SLOT_0_AXIS_tready),
        .SLOT_0_AXIS_tvalid(SLOT_0_AXIS_tvalid),
        .SLOT_1_AXIS_tdata(SLOT_1_AXIS_tdata),
        .SLOT_1_AXIS_tlast(SLOT_1_AXIS_tlast),
        .SLOT_1_AXIS_tready(SLOT_1_AXIS_tready),
        .SLOT_1_AXIS_tvalid(SLOT_1_AXIS_tvalid),
        .SLOT_2_AXI_araddr(SLOT_2_AXI_araddr),
        .SLOT_2_AXI_arlen(SLOT_2_AXI_arlen),
        .SLOT_2_AXI_arready(SLOT_2_AXI_arready),
        .SLOT_2_AXI_arsize(SLOT_2_AXI_arsize),
        .SLOT_2_AXI_arvalid(SLOT_2_AXI_arvalid),
        .SLOT_2_AXI_awaddr(SLOT_2_AXI_awaddr),
        .SLOT_2_AXI_awlen(SLOT_2_AXI_awlen),
        .SLOT_2_AXI_awready(SLOT_2_AXI_awready),
        .SLOT_2_AXI_awsize(SLOT_2_AXI_awsize),
        .SLOT_2_AXI_awvalid(SLOT_2_AXI_awvalid),
        .SLOT_2_AXI_bready(SLOT_2_AXI_bready),
        .SLOT_2_AXI_bresp(SLOT_2_AXI_bresp),
        .SLOT_2_AXI_bvalid(SLOT_2_AXI_bvalid),
        .SLOT_2_AXI_rdata(SLOT_2_AXI_rdata),
        .SLOT_2_AXI_rlast(SLOT_2_AXI_rlast),
        .SLOT_2_AXI_rready(SLOT_2_AXI_rready),
        .SLOT_2_AXI_rvalid(SLOT_2_AXI_rvalid),
        .SLOT_2_AXI_wdata(SLOT_2_AXI_wdata),
        .SLOT_2_AXI_wlast(SLOT_2_AXI_wlast),
        .SLOT_2_AXI_wready(SLOT_2_AXI_wready),
        .SLOT_2_AXI_wstrb(SLOT_2_AXI_wstrb),
        .SLOT_2_AXI_wvalid(SLOT_2_AXI_wvalid),
        .SLOT_3_AXI_araddr(SLOT_3_AXI_araddr),
        .SLOT_3_AXI_arlen(SLOT_3_AXI_arlen),
        .SLOT_3_AXI_arready(SLOT_3_AXI_arready),
        .SLOT_3_AXI_arsize(SLOT_3_AXI_arsize),
        .SLOT_3_AXI_arvalid(SLOT_3_AXI_arvalid),
        .SLOT_3_AXI_awaddr(SLOT_3_AXI_awaddr),
        .SLOT_3_AXI_awlen(SLOT_3_AXI_awlen),
        .SLOT_3_AXI_awready(SLOT_3_AXI_awready),
        .SLOT_3_AXI_awsize(SLOT_3_AXI_awsize),
        .SLOT_3_AXI_awvalid(SLOT_3_AXI_awvalid),
        .SLOT_3_AXI_bready(SLOT_3_AXI_bready),
        .SLOT_3_AXI_bvalid(SLOT_3_AXI_bvalid),
        .SLOT_3_AXI_rdata(SLOT_3_AXI_rdata),
        .SLOT_3_AXI_rlast(SLOT_3_AXI_rlast),
        .SLOT_3_AXI_rready(SLOT_3_AXI_rready),
        .SLOT_3_AXI_rresp(SLOT_3_AXI_rresp),
        .SLOT_3_AXI_rvalid(SLOT_3_AXI_rvalid),
        .SLOT_3_AXI_wdata(SLOT_3_AXI_wdata),
        .SLOT_3_AXI_wlast(SLOT_3_AXI_wlast),
        .SLOT_3_AXI_wready(SLOT_3_AXI_wready),
        .SLOT_3_AXI_wvalid(SLOT_3_AXI_wvalid),
        .clk(clk),
        .resetn(resetn));
endmodule
