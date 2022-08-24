// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_up_L2_WEIGHTS_13_H__
#define __L3_up_L2_WEIGHTS_13_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_up_L2_WEIGHTS_13_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_up_L2_WEIGHTS_13_ram) {
        ram[0] = "0b00111101000000001101100000000010";
        ram[1] = "0b10111100111011000000010100001100";
        ram[2] = "0b10111101010111111010001000100111";
        ram[3] = "0b10111100100101001111101011001110";
        ram[4] = "0b00111100100111110100110100111000";
        ram[5] = "0b00111100011100000100010101111000";
        ram[6] = "0b10111101001101010110101110000111";
        ram[7] = "0b10111101000110001011100000101000";
        ram[8] = "0b10111100001110011000110001111110";
        ram[9] = "0b00111101001110101011111110111010";
        ram[10] = "0b00111101100000010011010011001110";
        ram[11] = "0b00111100010111110100110000101011";
        ram[12] = "0b10111101000011000110010011111110";
        ram[13] = "0b10111101010010111011110000101100";
        ram[14] = "0b00111100000010011100111001001010";
        ram[15] = "0b00111101100011110101101100011101";
        ram[16] = "0b00111101001011110011001111001010";
        ram[17] = "0b10111101001000010000100111010000";
        ram[18] = "0b10111101101111110010110100111100";
        ram[19] = "0b10111101101000001000011010111110";
        ram[20] = "0b00111100101101100100100111010100";
        ram[21] = "0b00111101101111110111110011101110";
        ram[22] = "0b00111101100010111101001111000011";
        ram[23] = "0b10111100001011110100101011011100";
        ram[24] = "0b10111101100111011100100000110010";
        ram[25] = "0b10111101100011000001111111001001";
        ram[26] = "0b00111101010111100111010100110110";
        ram[27] = "0b00111101010010010100010011101101";
        ram[28] = "0b10111100010110011100101011100010";
        ram[29] = "0b10111101011011110101111111010100";
        ram[30] = "0b10111100110101011010111000011101";
        ram[31] = "0b00111100101000110111010001111001";
        ram[32] = "0b00111101010010010010000000111010";
        ram[33] = "0b00111101000001101000100110000111";
        ram[34] = "0b10111010101010010001010100111000";
        ram[35] = "0b10111100100101001111110011100111";
        ram[36] = "0b10111011100100011101100110110010";
        ram[37] = "0b00111100110111010000111110100110";
        ram[38] = "0b00111100101001010001111000110010";
        ram[39] = "0b10111100101110100101101000000100";
        ram[40] = "0b10111101010100100010000011111111";
        ram[41] = "0b10111100101001110010100001100011";
        ram[42] = "0b00111100110001100100101110101001";
        ram[43] = "0b00111101010000110000110000100100";
        ram[44] = "0b00111101000011011001000111101111";
        ram[45] = "0b10111101000111010011000100110011";
        ram[46] = "0b10111101011110101110111011101001";
        ram[47] = "0b10111100100110000010111011001011";
        ram[48] = "0b00111101100110010011001111100011";
        ram[49] = "0b00111101101100011011100010101010";
        ram[50] = "0b00111011111011111110110101100011";
        ram[51] = "0b10111101111110010100111000011010";
        ram[52] = "0b10111101110001000111111001001010";
        ram[53] = "0b10111101101101000101011100111010";
        ram[54] = "0b00111010100100010011101001010000";
        ram[55] = "0b00111101000111101110010001011100";
        ram[56] = "0b00111100001111111100111010111000";
        ram[57] = "0b10111100111001110100100011100100";
        ram[58] = "0b10111100111010100011101111011110";
        ram[59] = "0b00111100010100100011100100011101";
        ram[60] = "0b00111101100001111001100010010110";
        ram[61] = "0b00111101000101111111100101010001";
        ram[62] = "0b10111100110101010000001000100101";
        ram[63] = "0b10111101001010101010110100011101";
        ram[64] = "0b10111101000101010101001011100011";
        ram[65] = "0b00111100101111101100111011011101";
        ram[66] = "0b00111101001100010010101000001111";
        ram[67] = "0b00111100000011001010110001001011";
        ram[68] = "0b10111101100010001101001110101110";
        ram[69] = "0b10111101010110111011001001111001";
        ram[70] = "0b10111100010010110000110000000010";
        ram[71] = "0b00111101100010001001001000100101";
        ram[72] = "0b00111101110000000001110011010110";
        ram[73] = "0b00111100110101100000010000011001";
        ram[74] = "0b10111101100000010110111100000000";
        ram[75] = "0b10111101110111010001010101101010";
        ram[76] = "0b10111101001001111101101010100101";
        ram[77] = "0b00111101000100011100011111011110";
        ram[78] = "0b00111101000101101101011011011100";
        ram[79] = "0b10111101010011010010001011001001";
        ram[80] = "0b10111101100101100010000011101111";
        ram[81] = "0b10111100101010000101110010101011";
        ram[82] = "0b00111100111111100101110010010010";
        ram[83] = "0b00111101100000111101111011101000";
        ram[84] = "0b00111100111101010110110010010100";
        ram[85] = "0b10111101000011100101101101000010";
        ram[86] = "0b10111101000000111010110110011111";
        ram[87] = "0b00111100011100111101001110100010";
        ram[88] = "0b00111100110111101111000111111110";
        ram[89] = "0b00111011000100111001011001001010";
        ram[90] = "0b10111101010111100001000010001100";
        ram[91] = "0b10111101010001001100101111100010";
        ram[92] = "0b00111011100000011100001011100011";
        ram[93] = "0b00111101000000110101001101110010";
        ram[94] = "0b00111101010111111111001011100101";
        ram[95] = "0b00111011101010000011101100011101";
        ram[96] = "0b10111101001010001100100110111000";
        ram[97] = "0b10111101011001001001001111001001";
        ram[98] = "0b00111100001110111010110111000001";
        ram[99] = "0b00111101100100010010101010010101";
        ram[100] = "0b00111101000011010011111000001100";
        ram[101] = "0b10111101000011101100001100010001";
        ram[102] = "0b10111101111110110011001110011000";
        ram[103] = "0b10111101101100110111101100000111";


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


SC_MODULE(L3_up_L2_WEIGHTS_13) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_up_L2_WEIGHTS_13_ram* meminst;


SC_CTOR(L3_up_L2_WEIGHTS_13) {
meminst = new L3_up_L2_WEIGHTS_13_ram("L3_up_L2_WEIGHTS_13_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_up_L2_WEIGHTS_13() {
    delete meminst;
}


};//endmodule
#endif
