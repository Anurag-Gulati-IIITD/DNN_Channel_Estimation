// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_up_L2_WEIGHTS_21_H__
#define __L3_up_L2_WEIGHTS_21_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_up_L2_WEIGHTS_21_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 104;
  static const unsigned AddressWidth = 7;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(L3_up_L2_WEIGHTS_21_ram) {
        ram[0] = "0b00111100100100101110000111101111";
        ram[1] = "0b00111100011101100010011100111001";
        ram[2] = "0b00111011001110100000111010000100";
        ram[3] = "0b10111011111101101011010111010100";
        ram[4] = "0b10111100001101111101110001111011";
        ram[5] = "0b10111011110000110011101101010100";
        ram[6] = "0b00111010111110111000011011110100";
        ram[7] = "0b00111011110101000110111101011000";
        ram[8] = "0b00111011011010111111111011000001";
        ram[9] = "0b10111011100000001001110101001001";
        ram[10] = "0b10111011000000100111101101110000";
        ram[11] = "0b10111011010000011010100010101100";
        ram[12] = "0b00111010010001110011101010111101";
        ram[13] = "0b00111100000001000001101010101100";
        ram[14] = "0b10111011011111001110011101000111";
        ram[15] = "0b10111100000000011010100110111001";
        ram[16] = "0b10111100000011110000110001111000";
        ram[17] = "0b10111010110000110010101010001101";
        ram[18] = "0b00111011110110001101001101101011";
        ram[19] = "0b00111100011100001011001010000101";
        ram[20] = "0b00111100010001011001001100011101";
        ram[21] = "0b00111011001010000100101111100100";
        ram[22] = "0b10111011010101100000101001100011";
        ram[23] = "0b10111011001000101010100100001101";
        ram[24] = "0b00111011101011010100111101011001";
        ram[25] = "0b00111100000000101010010101100001";
        ram[26] = "0b10111100000000101011000111110111";
        ram[27] = "0b10111100011100100101101000100101";
        ram[28] = "0b10111100000010100111111001110100";
        ram[29] = "0b00111011100111011000110001101101";
        ram[30] = "0b00111011101100101111101010010100";
        ram[31] = "0b00111011111111111011000001001111";
        ram[32] = "0b00111010000011110010000101110001";
        ram[33] = "0b10111011010101110011100001100001";
        ram[34] = "0b00111010100100000100111101101110";
        ram[35] = "0b00111001111111001011010011110010";
        ram[36] = "0b00111011101110101010110111100110";
        ram[37] = "0b10111011111011110110011100101100";
        ram[38] = "0b10111100010010001001001010101011";
        ram[39] = "0b10111011100100000000110001010010";
        ram[40] = "0b10111011001110001110000010000111";
        ram[41] = "0b10111010010011001111111100100010";
        ram[42] = "0b00111100001011001100010011110000";
        ram[43] = "0b00111010111100011011001001011111";
        ram[44] = "0b00111011100000111001000001000011";
        ram[45] = "0b10111010100101111110100110010110";
        ram[46] = "0b10111011100101111001111000010111";
        ram[47] = "0b10111011100101110001011111011111";
        ram[48] = "0b10111011111111110001000011101101";
        ram[49] = "0b10111011011001010110000001000010";
        ram[50] = "0b10111001110101011110100011010101";
        ram[51] = "0b00111100000111001000110010010011";
        ram[52] = "0b00111011010001110101110001001011";
        ram[53] = "0b10111100001011100111100100100101";
        ram[54] = "0b10111100011001001110101011010001";
        ram[55] = "0b10111100001110100001011011101000";
        ram[56] = "0b00111010110001100000110010111111";
        ram[57] = "0b00111100000000101011101001011010";
        ram[58] = "0b00111100000111010101010111100111";
        ram[59] = "0b00111011001100111111011000111100";
        ram[60] = "0b10111011110101111110100010001010";
        ram[61] = "0b10111011101110110010001101010111";
        ram[62] = "0b00111010010100101100001110000111";
        ram[63] = "0b00111011101101011011001011010101";
        ram[64] = "0b10111011011110100000010100010100";
        ram[65] = "0b10111011001100110011110110110000";
        ram[66] = "0b10111100011010001000000101011110";
        ram[67] = "0b10111011001111001010110110011011";
        ram[68] = "0b00111011111101000110001000111101";
        ram[69] = "0b00111100000011110010010110100010";
        ram[70] = "0b00111100000110101000000001001001";
        ram[71] = "0b10111010110011011110101000000011";
        ram[72] = "0b10111011111000100111111000001111";
        ram[73] = "0b10111100001011101100110100001000";
        ram[74] = "0b00111001100000101000110000110111";
        ram[75] = "0b00111010101101110011110100011001";
        ram[76] = "0b00111011100011100011011010001111";
        ram[77] = "0b10111010011001111011110000111100";
        ram[78] = "0b10111011100110101011001010011110";
        ram[79] = "0b00111010101010010001010100111000";
        ram[80] = "0b00111100000101001111101011001110";
        ram[81] = "0b00111100011010100011110111110111";
        ram[82] = "0b00111011101101000100000110111100";
        ram[83] = "0b10111010010110100001101010010011";
        ram[84] = "0b10111010011011110101011001100101";
        ram[85] = "0b10111011010011110010100011001000";
        ram[86] = "0b00111010000101011111001001000101";
        ram[87] = "0b10111011110101110001111100110110";
        ram[88] = "0b10111011000110001100001110110001";
        ram[89] = "0b10111100001001110000010010111100";
        ram[90] = "0b10111011100100010111010100001000";
        ram[91] = "0b00111011011011011000000010100001";
        ram[92] = "0b00111100001001010111101001111000";
        ram[93] = "0b00111011101111011001100001111100";
        ram[94] = "0b00111011001011100001000001001001";
        ram[95] = "0b10111010000100001111011100110100";
        ram[96] = "0b10111011110001100010111001001101";
        ram[97] = "0b10111011101010111000101001011101";
        ram[98] = "0b10111011101100111100110001001011";
        ram[99] = "0b00111001011010011101010100011011";
        ram[100] = "0b10111011100100000110100010011000";
        ram[101] = "0b00111011110100100000001010010111";
        ram[102] = "0b00111100001000110010101100010011";
        ram[103] = "0b00111010110101000111011110111100";


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


SC_MODULE(L3_up_L2_WEIGHTS_21) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_up_L2_WEIGHTS_21_ram* meminst;


SC_CTOR(L3_up_L2_WEIGHTS_21) {
meminst = new L3_up_L2_WEIGHTS_21_ram("L3_up_L2_WEIGHTS_21_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_up_L2_WEIGHTS_21() {
    delete meminst;
}


};//endmodule
#endif
