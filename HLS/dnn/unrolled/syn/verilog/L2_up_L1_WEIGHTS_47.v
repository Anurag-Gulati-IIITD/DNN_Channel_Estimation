// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module L2_up_L1_WEIGHTS_47_rom (
addr0, ce0, q0, clk);

parameter DWIDTH = 32;
parameter AWIDTH = 6;
parameter MEM_SIZE = 52;

input[AWIDTH-1:0] addr0;
input ce0;
output reg[DWIDTH-1:0] q0;
input clk;

reg [DWIDTH-1:0] ram[0:MEM_SIZE-1];

initial begin
    $readmemh("./L2_up_L1_WEIGHTS_47_rom.dat", ram);
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
module L2_up_L1_WEIGHTS_47(
    reset,
    clk,
    address0,
    ce0,
    q0);

parameter DataWidth = 32'd32;
parameter AddressRange = 32'd52;
parameter AddressWidth = 32'd6;
input reset;
input clk;
input[AddressWidth - 1:0] address0;
input ce0;
output[DataWidth - 1:0] q0;



L2_up_L1_WEIGHTS_47_rom L2_up_L1_WEIGHTS_47_rom_U(
    .clk( clk ),
    .addr0( address0 ),
    .ce0( ce0 ),
    .q0( q0 ));

endmodule
