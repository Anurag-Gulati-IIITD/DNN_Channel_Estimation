// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_IN_LS_stream_TDATA "./c.DNN_wlo.autotvin_LS_stream_V_data.dat"
`define INGRESS_STATUS_LS_stream_TDATA "./stream_ingress_status_LS_stream_V_data.dat"
`define TV_IN_LS_stream_TLAST "./c.DNN_wlo.autotvin_LS_stream_V_last_V.dat"
`define INGRESS_STATUS_LS_stream_TLAST "./stream_ingress_status_LS_stream_V_last_V.dat"

`define AUTOTB_TRANSACTION_NUM 200

module AESL_axi_s_LS_stream (
    input clk,
    input reset,
    output [64 - 1:0] TRAN_LS_stream_TDATA,
    output TRAN_LS_stream_TLAST,
    output TRAN_LS_stream_TVALID,
    input TRAN_LS_stream_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_LS_stream_TVALID_temp;
    wire LS_stream_TDATA_full;
    wire LS_stream_TDATA_empty;
    reg LS_stream_TDATA_write_en;
    reg [64 - 1:0] LS_stream_TDATA_write_data;
    reg LS_stream_TDATA_read_en;
    wire [64 - 1:0] LS_stream_TDATA_read_data;
    
    fifo #(52, 64) fifo_LS_stream_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(LS_stream_TDATA_write_en),
        .write_data(LS_stream_TDATA_write_data),
        .read_clock(clk),
        .read_en(LS_stream_TDATA_read_en),
        .read_data(LS_stream_TDATA_read_data),
        .full(LS_stream_TDATA_full),
        .empty(LS_stream_TDATA_empty));
    
    always @ (*) begin
        LS_stream_TDATA_write_en <= 0;
        LS_stream_TDATA_read_en <= TRAN_LS_stream_TREADY & TRAN_LS_stream_TVALID;
    end
    
    assign TRAN_LS_stream_TDATA = LS_stream_TDATA_read_data;
    wire LS_stream_TLAST_full;
    wire LS_stream_TLAST_empty;
    reg LS_stream_TLAST_write_en;
    reg [1 - 1:0] LS_stream_TLAST_write_data;
    reg LS_stream_TLAST_read_en;
    wire [1 - 1:0] LS_stream_TLAST_read_data;
    
    fifo #(52, 1) fifo_LS_stream_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(LS_stream_TLAST_write_en),
        .write_data(LS_stream_TLAST_write_data),
        .read_clock(clk),
        .read_en(LS_stream_TLAST_read_en),
        .read_data(LS_stream_TLAST_read_data),
        .full(LS_stream_TLAST_full),
        .empty(LS_stream_TLAST_empty));
    
    always @ (*) begin
        LS_stream_TLAST_write_en <= 0;
        LS_stream_TLAST_read_en <= TRAN_LS_stream_TREADY & TRAN_LS_stream_TVALID;
    end
    
    assign TRAN_LS_stream_TLAST = LS_stream_TLAST_read_data;
    assign TRAN_LS_stream_TVALID = TRAN_LS_stream_TVALID_temp;

    
    reg LS_stream_TDATA_valid = 0; // ingress buffer indicator: LS_stream_TDATA
    reg LS_stream_TLAST_valid = 0; // ingress buffer indicator: LS_stream_TLAST
    
    assign TRAN_LS_stream_TVALID_temp = ~(LS_stream_TDATA_empty || LS_stream_TLAST_empty) || (LS_stream_TDATA_valid && LS_stream_TLAST_valid);
    
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
    
    reg [31:0] transaction_load_LS_stream_TDATA;
    
    assign transaction = transaction_load_LS_stream_TDATA;
    
    initial begin : AXI_stream_driver_LS_stream_TDATA
        integer fp;
        reg [151:0] token;
        reg [64 - 1:0] data;
        reg [151:0] data_integer;
        integer fp_ingress_status;
        reg [151:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_LS_stream_TDATA = 0;
        fifo_LS_stream_TDATA.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_LS_stream_TDATA, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_LS_stream_TDATA);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_LS_stream_TDATA, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_LS_stream_TDATA);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_LS_stream_TDATA.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_LS_stream_TDATA.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_LS_stream_TDATA.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    LS_stream_TDATA_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_LS_stream_TDATA.snapshot();
                end else begin
                    fifo_LS_stream_TDATA.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_LS_stream_TDATA = transaction_load_LS_stream_TDATA + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_LS_stream_TLAST;
    
    initial begin : AXI_stream_driver_LS_stream_TLAST
        integer fp;
        reg [151:0] token;
        reg [1 - 1:0] data;
        reg [151:0] data_integer;
        integer fp_ingress_status;
        reg [151:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_LS_stream_TLAST = 0;
        fifo_LS_stream_TLAST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_LS_stream_TLAST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_LS_stream_TLAST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_LS_stream_TLAST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_LS_stream_TLAST);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_LS_stream_TLAST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_LS_stream_TLAST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_LS_stream_TLAST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    LS_stream_TLAST_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                    fifo_LS_stream_TLAST.snapshot();
                end else begin
                    fifo_LS_stream_TLAST.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_LS_stream_TLAST = transaction_load_LS_stream_TLAST + 1;
            end
        end
    end

endmodule
