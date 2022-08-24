// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_98_H__
#define __L2_up_L1_WEIGHTS_98_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_98_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
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


   SC_CTOR(L2_up_L1_WEIGHTS_98_ram) {
        ram[0] = "0b10111101101001011110100000001100";
        ram[1] = "0b10111110000000011000010011000010";
        ram[2] = "0b00111101100000001010000011110101";
        ram[3] = "0b10111011001111100101000100001001";
        ram[4] = "0b00111101110001010001111111000101";
        ram[5] = "0b10111100100001000011111001010011";
        ram[6] = "0b10111100000101110110011110010000";
        ram[7] = "0b00111101000100010001111000000000";
        ram[8] = "0b10111011001010010011011011000110";
        ram[9] = "0b00111110100011110010000011001001";
        ram[10] = "0b10111011111100100001011100001001";
        ram[11] = "0b00111101011010010000011110010110";
        ram[12] = "0b10111101100001100010101110101110";
        ram[13] = "0b00111110000001111000100011011011";
        ram[14] = "0b00111110010000111001110000001111";
        ram[15] = "0b10111101100100101101000100101000";
        ram[16] = "0b10111101001110000001011000100111";
        ram[17] = "0b10111101110001001010110011110011";
        ram[18] = "0b00111100101101001011101101011110";
        ram[19] = "0b00111100100100000010010101111101";
        ram[20] = "0b00111101011010110011000100111100";
        ram[21] = "0b00111011011010011010001011000110";
        ram[22] = "0b10111101101100001111100011000110";
        ram[23] = "0b00111110001011111010110010100011";
        ram[24] = "0b00111101001001011100100000010001";
        ram[25] = "0b00111011001000101011100111010100";
        ram[26] = "0b00111101100110000010011001100111";
        ram[27] = "0b00111101100011001111001110011001";
        ram[28] = "0b00111101001101010111100100101001";
        ram[29] = "0b10111101110001010011100111111100";
        ram[30] = "0b10111110001100001000100110100000";
        ram[31] = "0b10111010110000010001000110101110";
        ram[32] = "0b10111101101000101101101011011100";
        ram[33] = "0b10111100000101001100110010101011";
        ram[34] = "0b10111101110010110010010100101101";
        ram[35] = "0b10111101111100111000100100101111";
        ram[36] = "0b00111100110010010001110100010101";
        ram[37] = "0b00111101110000011011010111001000";
        ram[38] = "0b10111100111100101000010000010110";
        ram[39] = "0b00111101000010101010000100001110";
        ram[40] = "0b10111101101000010011111111010001";
        ram[41] = "0b10111101110101110110001101011110";
        ram[42] = "0b10111110001110111011111101010001";
        ram[43] = "0b00111110000011011010101110011111";
        ram[44] = "0b10111100100111101001011011000100";
        ram[45] = "0b10111101110000100101010000011110";
        ram[46] = "0b10111101010001110000100101110100";
        ram[47] = "0b00111100000000011111010100111000";
        ram[48] = "0b00111101111000100010101100111001";
        ram[49] = "0b00111101000011001000011110011000";
        ram[50] = "0b00111100010000010000010100011000";
        ram[51] = "0b10111011010100110000011010100011";


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


SC_MODULE(L2_up_L1_WEIGHTS_98) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_98_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_98) {
meminst = new L2_up_L1_WEIGHTS_98_ram("L2_up_L1_WEIGHTS_98_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_98() {
    delete meminst;
}


};//endmodule
#endif
