// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_up_L2_WEIGHTS_42_H__
#define __L3_up_L2_WEIGHTS_42_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_up_L2_WEIGHTS_42_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_up_L2_WEIGHTS_42_ram) {
        ram[0] = "0b10111100110110111010110100111010";
        ram[1] = "0b00111101001100010100010001000110";
        ram[2] = "0b00111101011010110110011111000011";
        ram[3] = "0b00111101000101011100010000100010";
        ram[4] = "0b00111100010111011111110010100000";
        ram[5] = "0b10111011110011000100011010010101";
        ram[6] = "0b10111100000011001100100110100111";
        ram[7] = "0b10111100010100011111011000000001";
        ram[8] = "0b10111101001011010010001001000010";
        ram[9] = "0b10111101011001011001110100010011";
        ram[10] = "0b10111100110001001000111100010001";
        ram[11] = "0b00111101001011000111000000000000";
        ram[12] = "0b00111101110011001100111001011111";
        ram[13] = "0b00111101111001011010011100001001";
        ram[14] = "0b00111101001100100110010110101110";
        ram[15] = "0b10111101010100011100010111000101";
        ram[16] = "0b10111110000001001010111011001001";
        ram[17] = "0b10111101111110100110110001011101";
        ram[18] = "0b10111101000111010110001001111100";
        ram[19] = "0b00111101010010101011110101011110";
        ram[20] = "0b00111110000000110010010011001000";
        ram[21] = "0b00111110000000001101000000100100";
        ram[22] = "0b00111101011011100011110101100000";
        ram[23] = "0b10111100101100110101001010101000";
        ram[24] = "0b10111101110000000001111001101001";
        ram[25] = "0b10111101111101111001000011111011";
        ram[26] = "0b10111100000010110001000101000001";
        ram[27] = "0b00111101100111110000111101011010";
        ram[28] = "0b00111110000001111100011000110010";
        ram[29] = "0b00111101111100111111000110000100";
        ram[30] = "0b00111100111100110011011001011001";
        ram[31] = "0b10111101100001000110111000001001";
        ram[32] = "0b10111110000010101111001110100001";
        ram[33] = "0b10111101111111000111111111111110";
        ram[34] = "0b10111101000100010011011100101010";
        ram[35] = "0b00111101100111000000101000000111";
        ram[36] = "0b00111110000100011110110110011110";
        ram[37] = "0b00111110000001101000011001100010";
        ram[38] = "0b00111101001110111101110111111101";
        ram[39] = "0b10111101100011001100001101011101";
        ram[40] = "0b10111110000101001011110110111010";
        ram[41] = "0b10111110000011100011010000110011";
        ram[42] = "0b10111101001110011011001000111110";
        ram[43] = "0b00111101100010101111101100111011";
        ram[44] = "0b00111110001000010100000100100000";
        ram[45] = "0b00111110000011011111111011111100";
        ram[46] = "0b00111101000111010001010011100100";
        ram[47] = "0b10111101101100110000101111100001";
        ram[48] = "0b10111110001000101100111111011001";
        ram[49] = "0b10111101111001100100111101010101";
        ram[50] = "0b00111100001010001111011111011011";
        ram[51] = "0b00111101111001011110111001010111";
        ram[52] = "0b00111101100011000100101011000111";
        ram[53] = "0b00111101011101011000011111010111";
        ram[54] = "0b00111100011011100101011010001010";
        ram[55] = "0b10111101000011000001110110110000";
        ram[56] = "0b10111101000000111011101101000001";
        ram[57] = "0b10111100110001101011110011101000";
        ram[58] = "0b10111100101001100000001011001001";
        ram[59] = "0b10111100101111101010111101101000";
        ram[60] = "0b10111100001010100011111100000011";
        ram[61] = "0b00111100110001101000011001100010";
        ram[62] = "0b00111101100011111111111110111101";
        ram[63] = "0b00111101101111100010100100110000";
        ram[64] = "0b00111101000100101111011111110101";
        ram[65] = "0b10111101010000001111110010110101";
        ram[66] = "0b10111101111110010010110110011001";
        ram[67] = "0b10111101111100100110010100101000";
        ram[68] = "0b10111101010010010100000111001000";
        ram[69] = "0b00111101100010100011000101100010";
        ram[70] = "0b00111110000000110101101111010101";
        ram[71] = "0b00111101111111001101101000101011";
        ram[72] = "0b00111101010001000000010010100111";
        ram[73] = "0b10111101001101101001000000010101";
        ram[74] = "0b10111101110111100001100011110000";
        ram[75] = "0b10111110000001001010000110101101";
        ram[76] = "0b10111101100011011111011100011111";
        ram[77] = "0b00111100010010000100101101011110";
        ram[78] = "0b00111110000010011101100111010011";
        ram[79] = "0b00111101110011011100100001110101";
        ram[80] = "0b00111100100001000000001110011011";
        ram[81] = "0b10111101101000000001110001010000";
        ram[82] = "0b10111110000011100101111101110100";
        ram[83] = "0b10111101111101010011000011001111";
        ram[84] = "0b10111100101011001000000111010100";
        ram[85] = "0b00111101100011110001111111011110";
        ram[86] = "0b00111110000100101011010000001111";
        ram[87] = "0b00111110000000101111100100000001";
        ram[88] = "0b00111101001000111101111101101110";
        ram[89] = "0b10111101100111000001111100000000";
        ram[90] = "0b10111110000110000001010010010100";
        ram[91] = "0b10111110000011111001000110100011";
        ram[92] = "0b10111101010010100101011110101000";
        ram[93] = "0b00111101100000010100101011010011";
        ram[94] = "0b00111110000101100100100101001101";
        ram[95] = "0b00111110000100011110011001000111";
        ram[96] = "0b00111101001111010011010111101011";
        ram[97] = "0b10111101101000010101101100010100";
        ram[98] = "0b10111110001011010001101010101000";
        ram[99] = "0b10111110000011000011000001001101";
        ram[100] = "0b10111100101111010000001110010111";
        ram[101] = "0b00111101110111100101011101010100";
        ram[102] = "0b00111110000110001011101011000111";
        ram[103] = "0b00111101100101010100100001100111";


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


SC_MODULE(L3_up_L2_WEIGHTS_42) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_up_L2_WEIGHTS_42_ram* meminst;


SC_CTOR(L3_up_L2_WEIGHTS_42) {
meminst = new L3_up_L2_WEIGHTS_42_ram("L3_up_L2_WEIGHTS_42_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_up_L2_WEIGHTS_42() {
    delete meminst;
}


};//endmodule
#endif