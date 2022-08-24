// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbGp_H__
#define __L2_wlo_218_L1_WEIbGp_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbGp_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 12;
  static const unsigned AddressRange = 52;
  static const unsigned AddressWidth = 6;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(L2_wlo_218_L1_WEIbGp_ram) {
        ram[0] = "0b111111010010";
        ram[1] = "0b010001010001";
        ram[2] = "0b111101111111";
        ram[3] = "0b110101111100";
        ram[4] = "0b111100010010";
        ram[5] = "0b001011010000";
        ram[6] = "0b000110001001";
        ram[7] = "0b110000100000";
        ram[8] = "0b000110101000";
        ram[9] = "0b110111001100";
        ram[10] = "0b110011001011";
        ram[11] = "0b111101100001";
        ram[12] = "0b000111011000";
        ram[13] = "0b001011101000";
        ram[14] = "0b110011110000";
        ram[15] = "0b100100100010";
        ram[16] = "0b000000110100";
        ram[17] = "0b111111000010";
        ram[18] = "0b111001110111";
        ram[19] = "0b111011101011";
        ram[20] = "0b110010001110";
        ram[21] = "0b000101001100";
        ram[22] = "0b001001111101";
        ram[23] = "0b101011110100";
        ram[24] = "0b000011110011";
        ram[25] = "0b111101111011";
        ram[26] = "0b010101010001";
        ram[27] = "0b111010001011";
        ram[28] = "0b111110011001";
        ram[29] = "0b110001110000";
        ram[30] = "0b001011110101";
        ram[31] = "0b111001001101";
        ram[32] = "0b000011101000";
        ram[33] = "0b111110110110";
        ram[34] = "0b111010100100";
        ram[35] = "0b000000010100";
        ram[36] = "0b110011001010";
        ram[37] = "0b001010011100";
        ram[38] = "0b000110011110";
        ram[39] = "0b000110101100";
        ram[40] = "0b111100111001";
        ram[41] = "0b110111100110";
        ram[42] = "0b000110111100";
        ram[43] = "0b011100100110";
        ram[44] = "0b111100001001";
        ram[45] = "0b111101011011";
        ram[46] = "0b111010011101";
        ram[47] = "0b111101010101";
        ram[48] = "0b000001010011";
        ram[49] = "0b000000011010";
        ram[50] = "0b111011001110";
        ram[51] = "0b111111000000";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(L2_wlo_218_L1_WEIbGp) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbGp_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbGp) {
meminst = new L2_wlo_218_L1_WEIbGp_ram("L2_wlo_218_L1_WEIbGp_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbGp() {
    delete meminst;
}


};//endmodule
#endif
