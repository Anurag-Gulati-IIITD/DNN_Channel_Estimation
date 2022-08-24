// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_OUT_DNN_out_TDATA "../tv/rtldatafile/rtl.DNN_u.autotvout_DNN_out_V_data.dat"
`define EGRESS_STATUS_DNN_out_TDATA "../tv/stream_size/stream_egress_status_DNN_out_V_data.dat"
`define TV_OUT_DNN_out_TLAST "../tv/rtldatafile/rtl.DNN_u.autotvout_DNN_out_V_last_V.dat"
`define EGRESS_STATUS_DNN_out_TLAST "../tv/stream_size/stream_egress_status_DNN_out_V_last_V.dat"

`define AUTOTB_TRANSACTION_NUM 200

module AESL_axi_s_DNN_out (
    input clk,
    input reset,
    input [64 - 1:0] TRAN_DNN_out_TDATA,
    input TRAN_DNN_out_TLAST,
    input TRAN_DNN_out_TVALID,
    output TRAN_DNN_out_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_DNN_out_TVALID_temp;
    wire DNN_out_TDATA_full;
    wire DNN_out_TDATA_empty;
    reg DNN_out_TDATA_write_en;
    reg [64 - 1:0] DNN_out_TDATA_write_data;
    reg DNN_out_TDATA_read_en;
    wire [64 - 1:0] DNN_out_TDATA_read_data;
    
    fifo #(52, 64) fifo_DNN_out_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(DNN_out_TDATA_write_en),
        .write_data(DNN_out_TDATA_write_data),
        .read_clock(clk),
        .read_en(DNN_out_TDATA_read_en),
        .read_data(DNN_out_TDATA_read_data),
        .full(DNN_out_TDATA_full),
        .empty(DNN_out_TDATA_empty));
    
    always @ (*) begin
        DNN_out_TDATA_write_en <= TRAN_DNN_out_TVALID;
        DNN_out_TDATA_write_data <= TRAN_DNN_out_TDATA;
        DNN_out_TDATA_read_en <= 0;
    end
    wire DNN_out_TLAST_full;
    wire DNN_out_TLAST_empty;
    reg DNN_out_TLAST_write_en;
    reg [1 - 1:0] DNN_out_TLAST_write_data;
    reg DNN_out_TLAST_read_en;
    wire [1 - 1:0] DNN_out_TLAST_read_data;
    
    fifo #(52, 1) fifo_DNN_out_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(DNN_out_TLAST_write_en),
        .write_data(DNN_out_TLAST_write_data),
        .read_clock(clk),
        .read_en(DNN_out_TLAST_read_en),
        .read_data(DNN_out_TLAST_read_data),
        .full(DNN_out_TLAST_full),
        .empty(DNN_out_TLAST_empty));
    
    always @ (*) begin
        DNN_out_TLAST_write_en <= TRAN_DNN_out_TVALID;
        DNN_out_TLAST_write_data <= TRAN_DNN_out_TLAST;
        DNN_out_TLAST_read_en <= 0;
    end
    assign TRAN_DNN_out_TVALID = TRAN_DNN_out_TVALID_temp;

    
    assign TRAN_DNN_out_TREADY = ~(DNN_out_TDATA_full || DNN_out_TLAST_full);
    
    function is_blank_char(input [7:0] in_char);
        if (in_char == " " || in_char == "\011" || in_char == "\012" || in_char == "\015") begin
            is_blank_char = 1;
        end else begin
            is_blank_char = 0;
        end
    endfunction
    
    function [151:0] read_token(input integer fp);
        integer ret;
        begin
            read_token = "";
                    ret = 0;
                    ret = $fscanf(fp,"%s",read_token);
        end
    endfunction
    
    function [151:0] rm_0x(input [151:0] token);
        reg [151:0] token_tmp;
        integer i;
        begin
            token_tmp = "";
            for (i = 0; token[15:0] != "0x"; token = token >> 8) begin
                token_tmp = (token[7:0] << (8 * i)) | token_tmp;
                i = i + 1;
            end
            rm_0x = token_tmp;
        end
    endfunction
    
    reg done_1;
    
    always @ (posedge clk or reset) begin
        if (~reset) begin
            done_1 <= 0;
        end else begin
            done_1 <= done;
        end
    end
    
    reg [31:0] transaction_save_DNN_out_TDATA;
    
    assign transaction = transaction_save_DNN_out_TDATA;
    
    initial begin : AXI_stream_receiver_DNN_out_TDATA
        integer fp;
        reg [64 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_DNN_out_TDATA = 0;
        fifo_DNN_out_TDATA.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_DNN_out_TDATA, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_DNN_out_TDATA);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_DNN_out_TDATA);
                while (~fifo_DNN_out_TDATA.empty) begin
                    fifo_DNN_out_TDATA.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_DNN_out_TDATA = transaction_save_DNN_out_TDATA + 1;
                fifo_DNN_out_TDATA.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_DNN_out_TLAST;
    
    initial begin : AXI_stream_receiver_DNN_out_TLAST
        integer fp;
        reg [1 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_DNN_out_TLAST = 0;
        fifo_DNN_out_TLAST.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_DNN_out_TLAST, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_DNN_out_TLAST);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_DNN_out_TLAST);
                while (~fifo_DNN_out_TLAST.empty) begin
                    fifo_DNN_out_TLAST.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_DNN_out_TLAST = transaction_save_DNN_out_TLAST + 1;
                fifo_DNN_out_TLAST.clear();
                $fclose(fp);
            end
        end
    end

endmodule
