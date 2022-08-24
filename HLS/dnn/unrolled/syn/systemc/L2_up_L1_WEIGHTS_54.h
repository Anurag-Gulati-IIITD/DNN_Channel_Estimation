// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_54_H__
#define __L2_up_L1_WEIGHTS_54_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_54_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_54_ram) {
        ram[0] = "0b10111100101000100001101001110010";
        ram[1] = "0b00111110001100110101111001110100";
        ram[2] = "0b00111110001011101100010111110100";
        ram[3] = "0b00111011101000110110000110011001";
        ram[4] = "0b10111100111111011001000100100101";
        ram[5] = "0b00111110100000101011011001101011";
        ram[6] = "0b00111011111100101010111000001000";
        ram[7] = "0b10111101101100100010011000111110";
        ram[8] = "0b10111101101110001001110001011110";
        ram[9] = "0b10111101100011000011101100001100";
        ram[10] = "0b00111101010000101111100101000100";
        ram[11] = "0b00111110010110100101100111000000";
        ram[12] = "0b10111100011101100001011001110010";
        ram[13] = "0b10111100110011001001001000010100";
        ram[14] = "0b00111110001110011100110100111110";
        ram[15] = "0b10111100011000110100001100110001";
        ram[16] = "0b00111101011111110011010010010100";
        ram[17] = "0b10111110010011101100010101101101";
        ram[18] = "0b10111101010000010110001101111000";
        ram[19] = "0b00111100101001100000101100101101";
        ram[20] = "0b10111100110000011000000011010100";
        ram[21] = "0b10111110001001011011011111010000";
        ram[22] = "0b00111101000101111111100101010001";
        ram[23] = "0b10111101111011110100000111110010";
        ram[24] = "0b10111010110000101110011101110001";
        ram[25] = "0b10111100101001110001111111111111";
        ram[26] = "0b00111110001011101001000110000110";
        ram[27] = "0b10111101100000010011100100000000";
        ram[28] = "0b00111100110001101001001011110111";
        ram[29] = "0b10111110100101001011001111000100";
        ram[30] = "0b10111110011010111101111001000000";
        ram[31] = "0b10111011111011101011011100000010";
        ram[32] = "0b00111100101101011101010001100011";
        ram[33] = "0b00111100111011000001011111101100";
        ram[34] = "0b00111101011000111110110100001111";
        ram[35] = "0b10111101001111000100010111001100";
        ram[36] = "0b00111101110000111100110110011010";
        ram[37] = "0b10111101100111110100111011001010";
        ram[38] = "0b10111011010011010111010010010010";
        ram[39] = "0b00111110000101011101101010101101";
        ram[40] = "0b10111101001110111111100000110100";
        ram[41] = "0b00111101100110111001111100010010";
        ram[42] = "0b00111101100001101011010110010001";
        ram[43] = "0b10111101001011101011110001000001";
        ram[44] = "0b10111101000001000101111111100001";
        ram[45] = "0b10111101111011100000011111100110";
        ram[46] = "0b00111101101000101011011010101110";
        ram[47] = "0b10111101100001001101101110011100";
        ram[48] = "0b00111110001101110100011001000101";
        ram[49] = "0b10111110000100001000011111001010";
        ram[50] = "0b00111101010100110101110010011110";
        ram[51] = "0b10111101100011101000110100010001";


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


SC_MODULE(L2_up_L1_WEIGHTS_54) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_54_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_54) {
meminst = new L2_up_L1_WEIGHTS_54_ram("L2_up_L1_WEIGHTS_54_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_54() {
    delete meminst;
}


};//endmodule
#endif
