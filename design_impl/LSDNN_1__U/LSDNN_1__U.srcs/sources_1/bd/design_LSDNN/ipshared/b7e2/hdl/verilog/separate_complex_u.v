// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module separate_complex_u (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        LS_stream_TDATA,
        LS_stream_TVALID,
        LS_stream_TREADY,
        LS_stream_TLAST,
        sep_address0,
        sep_ce0,
        sep_we0,
        sep_d0,
        sep_address1,
        sep_ce1,
        sep_we1,
        sep_d1
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] LS_stream_TDATA;
input   LS_stream_TVALID;
output   LS_stream_TREADY;
input  [0:0] LS_stream_TLAST;
output  [6:0] sep_address0;
output   sep_ce0;
output   sep_we0;
output  [31:0] sep_d0;
output  [6:0] sep_address1;
output   sep_ce1;
output   sep_we1;
output  [31:0] sep_d1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg LS_stream_TREADY;
reg sep_ce0;
reg sep_we0;
reg sep_ce1;
reg sep_we1;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    LS_stream_TDATA_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln24_fu_90_p2;
wire   [5:0] i_fu_96_p2;
reg    ap_block_state2;
reg   [5:0] i_0_reg_75;
wire   [63:0] zext_ln26_fu_130_p1;
wire   [63:0] zext_ln27_fu_141_p1;
wire   [31:0] trunc_ln13_fu_106_p1;
wire   [31:0] tmp_data_M_imag_loa_fu_115_p4;
wire   [6:0] zext_ln24_fu_86_p1;
wire   [6:0] add_ln27_fu_135_p2;
reg   [1:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((~((icmp_ln24_fu_90_p2 == 1'd0) & (1'b0 == LS_stream_TVALID)) & (icmp_ln24_fu_90_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_0_reg_75 <= i_fu_96_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_75 <= 6'd0;
    end
end

always @ (*) begin
    if (((icmp_ln24_fu_90_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        LS_stream_TDATA_blk_n = LS_stream_TVALID;
    end else begin
        LS_stream_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((icmp_ln24_fu_90_p2 == 1'd0) & (1'b0 == LS_stream_TVALID)) & (icmp_ln24_fu_90_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        LS_stream_TREADY = 1'b1;
    end else begin
        LS_stream_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | (~((icmp_ln24_fu_90_p2 == 1'd0) & (1'b0 == LS_stream_TVALID)) & (icmp_ln24_fu_90_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((icmp_ln24_fu_90_p2 == 1'd0) & (1'b0 == LS_stream_TVALID)) & (icmp_ln24_fu_90_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((icmp_ln24_fu_90_p2 == 1'd0) & (1'b0 == LS_stream_TVALID)) & (1'b1 == ap_CS_fsm_state2))) begin
        sep_ce0 = 1'b1;
    end else begin
        sep_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((icmp_ln24_fu_90_p2 == 1'd0) & (1'b0 == LS_stream_TVALID)) & (1'b1 == ap_CS_fsm_state2))) begin
        sep_ce1 = 1'b1;
    end else begin
        sep_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((~((icmp_ln24_fu_90_p2 == 1'd0) & (1'b0 == LS_stream_TVALID)) & (icmp_ln24_fu_90_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        sep_we0 = 1'b1;
    end else begin
        sep_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((icmp_ln24_fu_90_p2 == 1'd0) & (1'b0 == LS_stream_TVALID)) & (icmp_ln24_fu_90_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        sep_we1 = 1'b1;
    end else begin
        sep_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~((icmp_ln24_fu_90_p2 == 1'd0) & (1'b0 == LS_stream_TVALID)) & (icmp_ln24_fu_90_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if ((~((icmp_ln24_fu_90_p2 == 1'd0) & (1'b0 == LS_stream_TVALID)) & (icmp_ln24_fu_90_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln27_fu_135_p2 = (7'd52 + zext_ln24_fu_86_p1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

always @ (*) begin
    ap_block_state2 = ((icmp_ln24_fu_90_p2 == 1'd0) & (1'b0 == LS_stream_TVALID));
end

assign i_fu_96_p2 = (i_0_reg_75 + 6'd1);

assign icmp_ln24_fu_90_p2 = ((i_0_reg_75 == 6'd52) ? 1'b1 : 1'b0);

assign sep_address0 = zext_ln26_fu_130_p1;

assign sep_address1 = zext_ln27_fu_141_p1;

assign sep_d0 = trunc_ln13_fu_106_p1;

assign sep_d1 = tmp_data_M_imag_loa_fu_115_p4;

assign tmp_data_M_imag_loa_fu_115_p4 = {{LS_stream_TDATA[63:32]}};

assign trunc_ln13_fu_106_p1 = LS_stream_TDATA[31:0];

assign zext_ln24_fu_86_p1 = i_0_reg_75;

assign zext_ln26_fu_130_p1 = i_0_reg_75;

assign zext_ln27_fu_141_p1 = add_ln27_fu_135_p2;

endmodule //separate_complex_u