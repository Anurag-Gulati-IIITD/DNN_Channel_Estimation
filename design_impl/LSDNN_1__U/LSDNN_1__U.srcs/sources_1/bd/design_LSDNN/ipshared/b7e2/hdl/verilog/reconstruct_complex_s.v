// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module reconstruct_complex_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        y_L3_address0,
        y_L3_ce0,
        y_L3_q0,
        y_L3_address1,
        y_L3_ce1,
        y_L3_q1,
        DNN_out_TDATA,
        DNN_out_TVALID,
        DNN_out_TREADY,
        DNN_out_TLAST
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] y_L3_address0;
output   y_L3_ce0;
input  [31:0] y_L3_q0;
output  [6:0] y_L3_address1;
output   y_L3_ce1;
input  [31:0] y_L3_q1;
output  [63:0] DNN_out_TDATA;
output   DNN_out_TVALID;
input   DNN_out_TREADY;
output  [0:0] DNN_out_TLAST;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg y_L3_ce0;
reg y_L3_ce1;
reg DNN_out_TVALID;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    DNN_out_TDATA_blk_n;
wire    ap_CS_fsm_state3;
wire   [5:0] i_fu_96_p2;
reg   [5:0] i_reg_144;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln76_fu_90_p2;
wire   [0:0] tmp_last_V_fu_118_p2;
reg   [0:0] tmp_last_V_reg_159;
reg   [5:0] i_0_reg_75;
wire   [63:0] zext_ln79_fu_102_p1;
wire   [63:0] zext_ln79_1_fu_113_p1;
wire   [6:0] zext_ln76_fu_86_p1;
wire   [6:0] add_ln79_fu_107_p2;
wire   [31:0] bitcast_ln162_1_fu_128_p1;
wire   [31:0] bitcast_ln162_fu_124_p1;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == DNN_out_TREADY) & (1'b1 == ap_CS_fsm_state3))) begin
        i_0_reg_75 <= i_reg_144;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_75 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_144 <= i_fu_96_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln76_fu_90_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_last_V_reg_159 <= tmp_last_V_fu_118_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        DNN_out_TDATA_blk_n = DNN_out_TREADY;
    end else begin
        DNN_out_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == DNN_out_TREADY) & (1'b1 == ap_CS_fsm_state3))) begin
        DNN_out_TVALID = 1'b1;
    end else begin
        DNN_out_TVALID = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln76_fu_90_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln76_fu_90_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        y_L3_ce0 = 1'b1;
    end else begin
        y_L3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        y_L3_ce1 = 1'b1;
    end else begin
        y_L3_ce1 = 1'b0;
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
            if (((icmp_ln76_fu_90_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == DNN_out_TREADY) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign DNN_out_TDATA = {{bitcast_ln162_1_fu_128_p1}, {bitcast_ln162_fu_124_p1}};

assign DNN_out_TLAST = tmp_last_V_reg_159;

assign add_ln79_fu_107_p2 = (zext_ln76_fu_86_p1 + 7'd52);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign bitcast_ln162_1_fu_128_p1 = y_L3_q1;

assign bitcast_ln162_fu_124_p1 = y_L3_q0;

assign i_fu_96_p2 = (i_0_reg_75 + 6'd1);

assign icmp_ln76_fu_90_p2 = ((i_0_reg_75 == 6'd52) ? 1'b1 : 1'b0);

assign tmp_last_V_fu_118_p2 = ((i_0_reg_75 == 6'd51) ? 1'b1 : 1'b0);

assign y_L3_address0 = zext_ln79_fu_102_p1;

assign y_L3_address1 = zext_ln79_1_fu_113_p1;

assign zext_ln76_fu_86_p1 = i_0_reg_75;

assign zext_ln79_1_fu_113_p1 = add_ln79_fu_107_p2;

assign zext_ln79_fu_102_p1 = i_0_reg_75;

endmodule //reconstruct_complex_s
