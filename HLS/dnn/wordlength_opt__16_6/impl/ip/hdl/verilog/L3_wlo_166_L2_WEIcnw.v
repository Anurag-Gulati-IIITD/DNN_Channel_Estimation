// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
(* rom_style = "distributed" *) module L3_wlo_166_L2_WEIcnw_rom (
addr0, ce0, q0, clk);

parameter DWIDTH = 6;
parameter AWIDTH = 7;
parameter MEM_SIZE = 104;

input[AWIDTH-1:0] addr0;
input ce0;
output reg[DWIDTH-1:0] q0;
input clk;

(* ram_style = "distributed" *)reg [DWIDTH-1:0] ram[0:MEM_SIZE-1];

initial begin
    $readmemh("./L3_wlo_166_L2_WEIcnw_rom.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        q0 <= ram[addr0];
    end
end



endmodule

`timescale 1 ns / 1 ps
module L3_wlo_166_L2_WEIcnw(
    reset,
    clk,
    address0,
    ce0,
    q0);

parameter DataWidth = 32'd6;
parameter AddressRange = 32'd104;
parameter AddressWidth = 32'd7;
input reset;
input clk;
input[AddressWidth - 1:0] address0;
input ce0;
output[DataWidth - 1:0] q0;



L3_wlo_166_L2_WEIcnw_rom L3_wlo_166_L2_WEIcnw_rom_U(
    .clk( clk ),
    .addr0( address0 ),
    .ce0( ce0 ),
    .q0( q0 ));

endmodule

