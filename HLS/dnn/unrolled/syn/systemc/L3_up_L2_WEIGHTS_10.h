// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_up_L2_WEIGHTS_10_H__
#define __L3_up_L2_WEIGHTS_10_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_up_L2_WEIGHTS_10_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_up_L2_WEIGHTS_10_ram) {
        ram[0] = "0b10111100110011001010000011000011";
        ram[1] = "0b10111101011101110101111110110011";
        ram[2] = "0b10111101101110011001001011001001";
        ram[3] = "0b10111101101011010100100100001110";
        ram[4] = "0b10111101000010111101110110111010";
        ram[5] = "0b00111101001101111010111101100100";
        ram[6] = "0b00111101111001010100101101001001";
        ram[7] = "0b00111110000010110100000011110110";
        ram[8] = "0b00111101110010001101100001100110";
        ram[9] = "0b10111100111011011100110000100001";
        ram[10] = "0b10111110000010001100011010010011";
        ram[11] = "0b10111110001010111101001011111010";
        ram[12] = "0b10111101111001110110100011100000";
        ram[13] = "0b00111100111000110001101101011000";
        ram[14] = "0b00111101111001001101011001011110";
        ram[15] = "0b00111110000100101001011000101101";
        ram[16] = "0b00111101111000000101100110100111";
        ram[17] = "0b00111101010000011111110010001111";
        ram[18] = "0b10111101001010110000010100110010";
        ram[19] = "0b10111110000011100111000000111011";
        ram[20] = "0b10111110000001010001101011001010";
        ram[21] = "0b10111101101100111100010101111010";
        ram[22] = "0b00111011001010101100100101101101";
        ram[23] = "0b00111101110100010011101011010110";
        ram[24] = "0b00111110000001011100000001110110";
        ram[25] = "0b00111101110110001000011001011001";
        ram[26] = "0b10111101010011010111001110000110";
        ram[27] = "0b10111101100111001001110101011010";
        ram[28] = "0b10111101010100001000110101001100";
        ram[29] = "0b00111011000111001100001100011010";
        ram[30] = "0b10111100100000010000111010001000";
        ram[31] = "0b10111100101000010101011101101001";
        ram[32] = "0b10111100100101011011100110100110";
        ram[33] = "0b00111100100010010011001100011010";
        ram[34] = "0b00111101101110100100001011110010";
        ram[35] = "0b00111101111101110000001001100000";
        ram[36] = "0b00111101011100111100110001001011";
        ram[37] = "0b10111101010010110111101000011100";
        ram[38] = "0b10111110000011010101101010011111";
        ram[39] = "0b10111110000101000010010011100110";
        ram[40] = "0b10111101010101010110011111011100";
        ram[41] = "0b00111101100010110110110100000001";
        ram[42] = "0b00111110000010100001111110001110";
        ram[43] = "0b00111101110110000101001011111000";
        ram[44] = "0b00111101000101000100100010001100";
        ram[45] = "0b10111101011101101101011001010110";
        ram[46] = "0b10111101101000101101101001010101";
        ram[47] = "0b10111101101000110110111010110101";
        ram[48] = "0b10111101000010101110000100000101";
        ram[49] = "0b00111010000001010110111001101001";
        ram[50] = "0b00111101010110010101101110111100";
        ram[51] = "0b00111101011001001000100001000000";
        ram[52] = "0b10111101100001011000000111001111";
        ram[53] = "0b10111101000111100111100101101000";
        ram[54] = "0b10111100100101101010111100000100";
        ram[55] = "0b00111101001101100100100111010100";
        ram[56] = "0b00111101110010001111001110101010";
        ram[57] = "0b00111101111100000101011000111111";
        ram[58] = "0b00111101100101011100010010101000";
        ram[59] = "0b10111101000010010101111000011000";
        ram[60] = "0b10111110000000010001100001111110";
        ram[61] = "0b10111110001000100010100000010011";
        ram[62] = "0b10111101110000111011110101011010";
        ram[63] = "0b00111100111100110110111011111000";
        ram[64] = "0b00111110000010000110100111000110";
        ram[65] = "0b00111110000111011111010011000011";
        ram[66] = "0b00111101110111100100010011111010";
        ram[67] = "0b00111100110010010111111110100110";
        ram[68] = "0b10111101101101110111110110010101";
        ram[69] = "0b10111110000011011011000010011010";
        ram[70] = "0b10111110000010001101101100000101";
        ram[71] = "0b10111101100011001110101110111100";
        ram[72] = "0b00111101001000001111101100100010";
        ram[73] = "0b00111101111101000010111111101000";
        ram[74] = "0b00111110000010110011101010101100";
        ram[75] = "0b00111101110001001011001111000100";
        ram[76] = "0b00111101000000100110100110011100";
        ram[77] = "0b10111101100011101101110111001110";
        ram[78] = "0b10111101100011111011101110010101";
        ram[79] = "0b10111100111010110001010111111001";
        ram[80] = "0b00111100110110001001001001101000";
        ram[81] = "0b00111100111011010000101100110001";
        ram[82] = "0b00111010101100100010000001111001";
        ram[83] = "0b00111100101001011001011111010101";
        ram[84] = "0b00111101100010010110101100110011";
        ram[85] = "0b00111101100011001010111101110001";
        ram[86] = "0b00111101011101100111101100011100";
        ram[87] = "0b10111101000000111101001101011111";
        ram[88] = "0b10111110000000001100110101000010";
        ram[89] = "0b10111110000111000100100011110001";
        ram[90] = "0b10111101010111010110011110111010";
        ram[91] = "0b00111101100011001010100100100110";
        ram[92] = "0b00111110000101000011101101110001";
        ram[93] = "0b00111110000001001010100000111011";
        ram[94] = "0b00111101001101100010000011101111";
        ram[95] = "0b10111101101011100010001000011101";
        ram[96] = "0b10111101111011000010110011100100";
        ram[97] = "0b10111101110110110001011111001110";
        ram[98] = "0b10111101001010011001110110001000";
        ram[99] = "0b00111101001111110011001110000111";
        ram[100] = "0b00111101011100111111001000001010";
        ram[101] = "0b00111101100000101010101010011111";
        ram[102] = "0b00111101100010000000001110001010";
        ram[103] = "0b00111101001100101001000110111000";


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


SC_MODULE(L3_up_L2_WEIGHTS_10) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_up_L2_WEIGHTS_10_ram* meminst;


SC_CTOR(L3_up_L2_WEIGHTS_10) {
meminst = new L3_up_L2_WEIGHTS_10_ram("L3_up_L2_WEIGHTS_10_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_up_L2_WEIGHTS_10() {
    delete meminst;
}


};//endmodule
#endif