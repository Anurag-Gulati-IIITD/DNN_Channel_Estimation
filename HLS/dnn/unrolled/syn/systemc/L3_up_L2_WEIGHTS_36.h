// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_up_L2_WEIGHTS_36_H__
#define __L3_up_L2_WEIGHTS_36_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_up_L2_WEIGHTS_36_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_up_L2_WEIGHTS_36_ram) {
        ram[0] = "0b00111100001011010010000100110110";
        ram[1] = "0b00111010111010000100001001110100";
        ram[2] = "0b10111011111111000100011111100101";
        ram[3] = "0b00111010101110000110101100010110";
        ram[4] = "0b00111100010111111001101111011100";
        ram[5] = "0b00111011010110011110100000111110";
        ram[6] = "0b00111011001011000100101101001101";
        ram[7] = "0b10111100000001101000111111010010";
        ram[8] = "0b10111011100111100101010111000001";
        ram[9] = "0b10111010111011000101001010100100";
        ram[10] = "0b00111100100000000111001101011000";
        ram[11] = "0b00111100100001011000001101100010";
        ram[12] = "0b00111100011010100110001110110111";
        ram[13] = "0b00111011100001000111101100100100";
        ram[14] = "0b10111011001100010100011001011111";
        ram[15] = "0b10111100001011101000100111101100";
        ram[16] = "0b10111011101101101011111101000100";
        ram[17] = "0b00111011100001100110101000010010";
        ram[18] = "0b00111011101100010101011100100110";
        ram[19] = "0b10111011001000110000110110110111";
        ram[20] = "0b00111011110011010010000010110000";
        ram[21] = "0b10111011011010011110010111100010";
        ram[22] = "0b00111011000000110101010110001010";
        ram[23] = "0b10111010101111001011111001100010";
        ram[24] = "0b10111100000010000001000110110010";
        ram[25] = "0b10111011100010001001001110111000";
        ram[26] = "0b10111011010111011111100001101110";
        ram[27] = "0b10111100000100101101110110111110";
        ram[28] = "0b10111011010110111100111011001000";
        ram[29] = "0b00111011010011010011000101110111";
        ram[30] = "0b00111011001110110000101000101101";
        ram[31] = "0b00111100001111110010111101010101";
        ram[32] = "0b00111100011010000111110100101100";
        ram[33] = "0b10111011001011101111101100101011";
        ram[34] = "0b00111100000000011110010001110001";
        ram[35] = "0b00111011110110011100111100010100";
        ram[36] = "0b10111011010101011100011101000111";
        ram[37] = "0b00111010110101000101011000101110";
        ram[38] = "0b10111100010111111000101100010101";
        ram[39] = "0b10111100000010111111110000100010";
        ram[40] = "0b10111010111111000101000001001000";
        ram[41] = "0b00111010100010111001011101111000";
        ram[42] = "0b00111100010110010111001011001101";
        ram[43] = "0b00111100001001110100001110100110";
        ram[44] = "0b10111011010000001100111010010010";
        ram[45] = "0b10111100011011000101101100001000";
        ram[46] = "0b10111100010100110111001110110000";
        ram[47] = "0b00111011101111111101101101001101";
        ram[48] = "0b00111011111110111001011110111011";
        ram[49] = "0b00111011011111001101011010000000";
        ram[50] = "0b10111100010010000011111011001001";
        ram[51] = "0b10111100100101011111100010010000";
        ram[52] = "0b10111100000010100000110100110101";
        ram[53] = "0b10111011100100101110011000100001";
        ram[54] = "0b10111011001100010000001101000011";
        ram[55] = "0b00111010100011010010101000100000";
        ram[56] = "0b00111011100101111101100011001111";
        ram[57] = "0b10111011101110001111000101001110";
        ram[58] = "0b10111100000101100001001111010011";
        ram[59] = "0b10111100000100011110001000010101";
        ram[60] = "0b00111100000010100101010010000010";
        ram[61] = "0b00111100010000011101011011010000";
        ram[62] = "0b00111100001110101100101101000011";
        ram[63] = "0b00111011101000010101100110000001";
        ram[64] = "0b10111100010000101001001110001110";
        ram[65] = "0b10111100011000100001000100000010";
        ram[66] = "0b10111100000110001000000010010101";
        ram[67] = "0b10111010111000011011010010111011";
        ram[68] = "0b10111011010001100010111001001101";
        ram[69] = "0b00111100011110110000100100100000";
        ram[70] = "0b00111011111011111110010100000000";
        ram[71] = "0b00111010010000000110100111101000";
        ram[72] = "0b00111010101010101100100101101101";
        ram[73] = "0b00111011001111100001111010110100";
        ram[74] = "0b10111100001011001101111000011010";
        ram[75] = "0b10111011010011101000000100000010";
        ram[76] = "0b00111000110001110011101010111101";
        ram[77] = "0b10111000111001001001011011101110";
        ram[78] = "0b00111010101010101010011111011111";
        ram[79] = "0b00111011000100001110011001101101";
        ram[80] = "0b00111011010111001010100011100011";
        ram[81] = "0b00111011000111110101000101101001";
        ram[82] = "0b00111100000111111000110000100010";
        ram[83] = "0b10111011110000111011000011000100";
        ram[84] = "0b00111100000010001011000100010100";
        ram[85] = "0b10111011000010101100111000100101";
        ram[86] = "0b10111011000110001100001110110001";
        ram[87] = "0b00111011100101000111100011001000";
        ram[88] = "0b10111100000111101101001110010101";
        ram[89] = "0b10111100001000001100001010000011";
        ram[90] = "0b10111010010110011101011101110111";
        ram[91] = "0b00111010011011010011110110000110";
        ram[92] = "0b00111100001111111111000001000101";
        ram[93] = "0b00111100000101000000101110111011";
        ram[94] = "0b10111010100010101100111000100101";
        ram[95] = "0b10111100001101110011100011100111";
        ram[96] = "0b10111100000011010100101110101101";
        ram[97] = "0b10111011000011101101111001010101";
        ram[98] = "0b00111010001011011000101000010001";
        ram[99] = "0b00111100000001110000110110100110";
        ram[100] = "0b10111011000100010110110010100100";
        ram[101] = "0b10111100001110110101000101111010";
        ram[102] = "0b10111011001101000011100101011000";
        ram[103] = "0b00111010101001100011001100000101";


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


SC_MODULE(L3_up_L2_WEIGHTS_36) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_up_L2_WEIGHTS_36_ram* meminst;


SC_CTOR(L3_up_L2_WEIGHTS_36) {
meminst = new L3_up_L2_WEIGHTS_36_ram("L3_up_L2_WEIGHTS_36_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_up_L2_WEIGHTS_36() {
    delete meminst;
}


};//endmodule
#endif