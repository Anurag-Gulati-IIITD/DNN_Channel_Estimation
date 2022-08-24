// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_up_L2_WEIGHTS_1_H__
#define __L3_up_L2_WEIGHTS_1_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_up_L2_WEIGHTS_1_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_up_L2_WEIGHTS_1_ram) {
        ram[0] = "0b10111101101010011010100100010001";
        ram[1] = "0b00111101000100111100001001010101";
        ram[2] = "0b00111101111110100111010111001101";
        ram[3] = "0b00111101110111001110001010001111";
        ram[4] = "0b00111101001000111100111110110011";
        ram[5] = "0b10111101010010010010100110101010";
        ram[6] = "0b10111101110101110100111011101100";
        ram[7] = "0b10111101101110110100000010110011";
        ram[8] = "0b10111100100011011001110101110111";
        ram[9] = "0b00111101010101100000001000000000";
        ram[10] = "0b00111101101011110100010100010111";
        ram[11] = "0b00111101010010110000000001111010";
        ram[12] = "0b10111100000011001011100011100001";
        ram[13] = "0b10111101100110100011110100101110";
        ram[14] = "0b10111101101100111111000001111000";
        ram[15] = "0b10111101000111111101100110111010";
        ram[16] = "0b00111100110111011101100011111001";
        ram[17] = "0b00111101110100001010110000111011";
        ram[18] = "0b00111101110100000110000101000001";
        ram[19] = "0b00111100101110000000010001010011";
        ram[20] = "0b10111101100010000010100011000011";
        ram[21] = "0b10111110000100010010110101110111";
        ram[22] = "0b10111101111001110000100111111010";
        ram[23] = "0b10111100001111111000011101101010";
        ram[24] = "0b00111101110111100001000100010010";
        ram[25] = "0b00111110000110001100011110011111";
        ram[26] = "0b10111101001100111000000111011000";
        ram[27] = "0b10111101110100100111011011111011";
        ram[28] = "0b10111101110000000111110001000010";
        ram[29] = "0b10111011100111001011001001010011";
        ram[30] = "0b00111101101001000101111111100001";
        ram[31] = "0b00111101100100001110010001010100";
        ram[32] = "0b00111100100100110010100100111101";
        ram[33] = "0b10111101010001110101100000011001";
        ram[34] = "0b10111101100010000010010100011000";
        ram[35] = "0b10111100010100000011100101101001";
        ram[36] = "0b00111100111101001011111010000011";
        ram[37] = "0b00111101010111001001000011000101";
        ram[38] = "0b00111101001101111001011101000110";
        ram[39] = "0b10111011101111101000001101011110";
        ram[40] = "0b10111101001010011011111000001010";
        ram[41] = "0b10111101000011110001111101011000";
        ram[42] = "0b10111100101101101000011010100101";
        ram[43] = "0b00111100101001010100110001010101";
        ram[44] = "0b00111100111011111101111010110101";
        ram[45] = "0b00111100110001100111010110011011";
        ram[46] = "0b10111100100101100001100000000101";
        ram[47] = "0b10111101010000001100101101101100";
        ram[48] = "0b10111100101100101011111111011011";
        ram[49] = "0b00111100100011011000101010011000";
        ram[50] = "0b00111101010111111110101010000001";
        ram[51] = "0b00111101010111111100001010101001";
        ram[52] = "0b00111101111101110100001001010111";
        ram[53] = "0b00111110000010000111000111100111";
        ram[54] = "0b00111101011000100001111010100011";
        ram[55] = "0b10111101000111001100110010001010";
        ram[56] = "0b10111101111000000011011100001101";
        ram[57] = "0b10111101110101001000001101000101";
        ram[58] = "0b10111101000101101011110110110010";
        ram[59] = "0b00111101001111100001101010000010";
        ram[60] = "0b00111101110010101101011100001110";
        ram[61] = "0b00111101011101110101011101001111";
        ram[62] = "0b00111011100010100010011001011111";
        ram[63] = "0b10111101010101011010111000011101";
        ram[64] = "0b10111101101000111010011011001110";
        ram[65] = "0b10111101011001001101000010011010";
        ram[66] = "0b00111100100000010110001001101011";
        ram[67] = "0b00111101101010010111011111001001";
        ram[68] = "0b00111101101110111010011001101010";
        ram[69] = "0b00111101010000011010101011000101";
        ram[70] = "0b10111101010011000111000110010011";
        ram[71] = "0b10111101111001100100111011001111";
        ram[72] = "0b10111101110101110001001010100001";
        ram[73] = "0b10111100001010100010101000001011";
        ram[74] = "0b00111101101110011110000001100001";
        ram[75] = "0b00111110000010110101000100110111";
        ram[76] = "0b00111101101111100100010110000000";
        ram[77] = "0b10111100111001000110011010110010";
        ram[78] = "0b10111101111100001010001101010001";
        ram[79] = "0b10111101010000100101001110010111";
        ram[80] = "0b00111101011001010010010110001001";
        ram[81] = "0b00111101101110010010100001011011";
        ram[82] = "0b00111101010011011011011110101110";
        ram[83] = "0b10111100010011011111101011001010";
        ram[84] = "0b10111101100001100000000000101010";
        ram[85] = "0b10111101011001001001001010111100";
        ram[86] = "0b00111100010001000100011111000011";
        ram[87] = "0b00111101100010110000101011110110";
        ram[88] = "0b00111101010100100000110000000111";
        ram[89] = "0b10111011101110000110101100010110";
        ram[90] = "0b10111101001011010110101010011100";
        ram[91] = "0b10111101011010110101001111010110";
        ram[92] = "0b10111100100010010010011010000101";
        ram[93] = "0b00111100000101110101111100101101";
        ram[94] = "0b00111101001101001100101100011001";
        ram[95] = "0b00111100110110001111100100101011";
        ram[96] = "0b00111100000000000001111101110101";
        ram[97] = "0b10111101001100001010111101100000";
        ram[98] = "0b10111100101010011001101101101111";
        ram[99] = "0b00111100010110101001000000000100";
        ram[100] = "0b00111101000011000011110000011001";
        ram[101] = "0b00111101001111110011011110111001";
        ram[102] = "0b00111100111000000100111000011110";
        ram[103] = "0b10111100110101110011101001111001";


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


SC_MODULE(L3_up_L2_WEIGHTS_1) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_up_L2_WEIGHTS_1_ram* meminst;


SC_CTOR(L3_up_L2_WEIGHTS_1) {
meminst = new L3_up_L2_WEIGHTS_1_ram("L3_up_L2_WEIGHTS_1_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_up_L2_WEIGHTS_1() {
    delete meminst;
}


};//endmodule
#endif