// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_up_L2_WEIGHTS_22_H__
#define __L3_up_L2_WEIGHTS_22_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_up_L2_WEIGHTS_22_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_up_L2_WEIGHTS_22_ram) {
        ram[0] = "0b00111011010110111000101110101100";
        ram[1] = "0b10111100111111011010101001010000";
        ram[2] = "0b10111100000100000111010100101110";
        ram[3] = "0b00111101000011110000110001111000";
        ram[4] = "0b00111011001011110010110110000000";
        ram[5] = "0b10111100100101101100000111100011";
        ram[6] = "0b10111101110000000101010101110101";
        ram[7] = "0b10111101011000110101000011010011";
        ram[8] = "0b00111101000001000000000110000010";
        ram[9] = "0b00111101100010011101000011101010";
        ram[10] = "0b00111101010010100001010010001100";
        ram[11] = "0b10111100010001110101001111100111";
        ram[12] = "0b10111101101110001100011101011100";
        ram[13] = "0b10111101100001010000101001000110";
        ram[14] = "0b10111100110100011010001000011111";
        ram[15] = "0b00111101011110111011011000100100";
        ram[16] = "0b00111101100101100101011011101111";
        ram[17] = "0b10111001100011010000100010010010";
        ram[18] = "0b10111101100011000010110011100100";
        ram[19] = "0b10111101101001000110000111111010";
        ram[20] = "0b10111011100100110001100001110110";
        ram[21] = "0b00111101011001110000010010111100";
        ram[22] = "0b00111101100110110111011100111010";
        ram[23] = "0b00111101001010101111111111110011";
        ram[24] = "0b10111101010001001110111001111100";
        ram[25] = "0b10111101101010001111100001100010";
        ram[26] = "0b00111011010101101011001000101001";
        ram[27] = "0b00111101010001101000010001001001";
        ram[28] = "0b00111101011101000001011111001010";
        ram[29] = "0b00111101001010100010010011001100";
        ram[30] = "0b10111011011001100010100110010101";
        ram[31] = "0b10111101000111010011011101111110";
        ram[32] = "0b10111100110011011101001011110010";
        ram[33] = "0b10111100111000011100011110011011";
        ram[34] = "0b10111101001111001010110110011011";
        ram[35] = "0b10111100111011011000110100110111";
        ram[36] = "0b00111101000011001010100000011010";
        ram[37] = "0b00111101011110110100100000001010";
        ram[38] = "0b00111101101011100000111100111101";
        ram[39] = "0b00111100111001100100110100111100";
        ram[40] = "0b10111101000011000101011001010000";
        ram[41] = "0b10111101101000010111110000011100";
        ram[42] = "0b10111101101000000010101001111000";
        ram[43] = "0b10111100101000011101010100111101";
        ram[44] = "0b00111101011000111100101110000001";
        ram[45] = "0b00111101100111111001100000110001";
        ram[46] = "0b00111101010110010111000010110101";
        ram[47] = "0b00111100010000011000111110000010";
        ram[48] = "0b10111100101000110101110101101000";
        ram[49] = "0b10111100011101111100001001000100";
        ram[50] = "0b10111101000001100001111010010011";
        ram[51] = "0b10111100111001111001100010010110";
        ram[52] = "0b00111100100101011001100000011000";
        ram[53] = "0b00111100101001010001001110110110";
        ram[54] = "0b00111100011101001101101111100000";
        ram[55] = "0b10111100011100100010001110011110";
        ram[56] = "0b10111100111111111000110010101000";
        ram[57] = "0b10111101001110000011010110011100";
        ram[58] = "0b00111100100100011110010000101110";
        ram[59] = "0b00111101010100001001001110010110";
        ram[60] = "0b00111101100001111011101100110000";
        ram[61] = "0b00111100111000101001000011101111";
        ram[62] = "0b10111100111101110110100000010110";
        ram[63] = "0b10111101101011001111000110000000";
        ram[64] = "0b10111101001010010001110010001111";
        ram[65] = "0b00111101000101010011001101101110";
        ram[66] = "0b00111101100001001110010100001100";
        ram[67] = "0b00111101011000011001110010011101";
        ram[68] = "0b10111100010111101011010100101101";
        ram[69] = "0b10111101100101001101101111100000";
        ram[70] = "0b10111101011100101010101011100011";
        ram[71] = "0b00111101000010000111111111001100";
        ram[72] = "0b00111101101110001101100010101001";
        ram[73] = "0b00111101001101101110111110000000";
        ram[74] = "0b10111100110111001111111011011111";
        ram[75] = "0b10111101101001101100111000110110";
        ram[76] = "0b10111101100101011010000001111011";
        ram[77] = "0b10111011011101111101101101101110";
        ram[78] = "0b00111101010101101111000000000111";
        ram[79] = "0b00111100100011011101011000010111";
        ram[80] = "0b10111001111010111110110111111010";
        ram[81] = "0b10111100111110101010111011110011";
        ram[82] = "0b10111101001000011101011101010110";
        ram[83] = "0b10111100100000110001101011010010";
        ram[84] = "0b10111101000010000001011111111100";
        ram[85] = "0b10111100000001100000000100110110";
        ram[86] = "0b00111100110110001111110101011101";
        ram[87] = "0b00111101000101010000010101001011";
        ram[88] = "0b00111101100010000100111100001001";
        ram[89] = "0b00111100000111000101101000111110";
        ram[90] = "0b10111100111100001011001010000101";
        ram[91] = "0b10111101100111110101011100101110";
        ram[92] = "0b10111101101101001110111010111111";
        ram[93] = "0b10111100100101010001101001000011";
        ram[94] = "0b00111101011100110100011000010011";
        ram[95] = "0b00111101100011100000001010100111";
        ram[96] = "0b00111101011001101011111001111011";
        ram[97] = "0b00111011111010101000110110101000";
        ram[98] = "0b10111100010111000010001010101011";
        ram[99] = "0b10111101010000000001111101110101";
        ram[100] = "0b10111101000101100110011110110110";
        ram[101] = "0b10111100011001010111010100111010";
        ram[102] = "0b10111100010111110100001111001000";
        ram[103] = "0b00111101010101001100000100100010";


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


SC_MODULE(L3_up_L2_WEIGHTS_22) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_up_L2_WEIGHTS_22_ram* meminst;


SC_CTOR(L3_up_L2_WEIGHTS_22) {
meminst = new L3_up_L2_WEIGHTS_22_ram("L3_up_L2_WEIGHTS_22_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_up_L2_WEIGHTS_22() {
    delete meminst;
}


};//endmodule
#endif