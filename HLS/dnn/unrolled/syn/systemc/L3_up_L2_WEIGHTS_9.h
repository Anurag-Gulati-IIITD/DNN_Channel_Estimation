// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_up_L2_WEIGHTS_9_H__
#define __L3_up_L2_WEIGHTS_9_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_up_L2_WEIGHTS_9_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_up_L2_WEIGHTS_9_ram) {
        ram[0] = "0b00111100110111001011011110010001";
        ram[1] = "0b10111101001100100100011101000101";
        ram[2] = "0b10111101011011001101010110110111";
        ram[3] = "0b10111101000101100110011110110110";
        ram[4] = "0b10111100010111011101101100010010";
        ram[5] = "0b00111011110011100010110100011111";
        ram[6] = "0b00111100000011001110001011010010";
        ram[7] = "0b00111100010100001111000111110101";
        ram[8] = "0b00111101001011010110010001010010";
        ram[9] = "0b00111101011001101001100111001000";
        ram[10] = "0b00111100110001011111100111011111";
        ram[11] = "0b10111101001011001011001000010000";
        ram[12] = "0b10111101110011011000100110001011";
        ram[13] = "0b10111101111001100111101011011001";
        ram[14] = "0b10111101001100110100110001011110";
        ram[15] = "0b00111101010100100100101011110001";
        ram[16] = "0b00111110000001010001110011100011";
        ram[17] = "0b00111101111110110100111001010101";
        ram[18] = "0b00111101000111011100100000110010";
        ram[19] = "0b10111101010010111000001110001100";
        ram[20] = "0b10111110000000111001011100010100";
        ram[21] = "0b10111110000000010011000110101001";
        ram[22] = "0b10111101011011101101100010010000";
        ram[23] = "0b00111100101101000111000111111000";
        ram[24] = "0b00111101110000001101110000110011";
        ram[25] = "0b00111101111110000110110010101001";
        ram[26] = "0b00111100000010111010110001110001";
        ram[27] = "0b10111101100111111010111000110110";
        ram[28] = "0b10111110000010000100010001001010";
        ram[29] = "0b10111101111101001101110111111000";
        ram[30] = "0b10111100111101000110100010001000";
        ram[31] = "0b00111101100001001111011001011010";
        ram[32] = "0b00111110000010111000001000111101";
        ram[33] = "0b00111101111111011000001001110111";
        ram[34] = "0b00111101000100011010010000111000";
        ram[35] = "0b10111101100111001010110000001000";
        ram[36] = "0b10111110000100100111110101000110";
        ram[37] = "0b10111110000001110000101110001101";
        ram[38] = "0b10111101001111001010101110000010";
        ram[39] = "0b00111101100011010011011000101111";
        ram[40] = "0b00111110000101010100010101000001";
        ram[41] = "0b00111110000011101100011010111101";
        ram[42] = "0b00111101001110101010001001011110";
        ram[43] = "0b10111101100010110111100110010110";
        ram[44] = "0b10111110001000011101010011111010";
        ram[45] = "0b10111110000011101000100101100101";
        ram[46] = "0b10111101000111011000101101100001";
        ram[47] = "0b00111101101100111100101111000101";
        ram[48] = "0b00111110001000110110111100111011";
        ram[49] = "0b00111101111001110001111001101101";
        ram[50] = "0b10111100001010110101100000001000";
        ram[51] = "0b10111101111001101111110001011001";
        ram[52] = "0b10111101100011010010010101101000";
        ram[53] = "0b10111101011101101001101110011101";
        ram[54] = "0b10111100011011101011011100000010";
        ram[55] = "0b00111101000011001100100110100111";
        ram[56] = "0b00111101000001000110011100111000";
        ram[57] = "0b00111100110001110000010000110110";
        ram[58] = "0b00111100101001100010110010111010";
        ram[59] = "0b00111100101111110111110011101110";
        ram[60] = "0b00111100001011000011001000100011";
        ram[61] = "0b10111100110001100101011000100110";
        ram[62] = "0b10111101100100000110001101011010";
        ram[63] = "0b10111101101111101110110101000110";
        ram[64] = "0b10111101000100111011111000100011";
        ram[65] = "0b00111101010000010110110011101000";
        ram[66] = "0b00111101111110100000000111101111";
        ram[67] = "0b00111101111100110100110001011110";
        ram[68] = "0b00111101010010100001010110011000";
        ram[69] = "0b10111101100010101011111001101010";
        ram[70] = "0b10111110000000111100110011010001";
        ram[71] = "0b10111101111111011010100000110111";
        ram[72] = "0b10111101010001000101100110010110";
        ram[73] = "0b00111101001101110110110001001000";
        ram[74] = "0b00111101110111101111000111111110";
        ram[75] = "0b00111110000001010001011001010101";
        ram[76] = "0b00111101100011100110111010101000";
        ram[77] = "0b10111100010010010101001110011100";
        ram[78] = "0b10111110000010100101011011011110";
        ram[79] = "0b10111101110011100111111101101111";
        ram[80] = "0b10111100100001000101110111001000";
        ram[81] = "0b00111101101000001101010111101001";
        ram[82] = "0b00111110000011101111000010101110";
        ram[83] = "0b00111101111101100010000011101111";
        ram[84] = "0b00111100101011010010001101001111";
        ram[85] = "0b10111101100011111011010111010000";
        ram[86] = "0b10111110000100110100010110001101";
        ram[87] = "0b10111110000000111000100011101100";
        ram[88] = "0b10111101001001001000010100011011";
        ram[89] = "0b00111101100111001010101011111100";
        ram[90] = "0b00111110000110001010110101101001";
        ram[91] = "0b00111110000100000010011010001001";
        ram[92] = "0b00111101010010110100000001110000";
        ram[93] = "0b10111101100000011010110001011000";
        ram[94] = "0b10111110000101101101001111111010";
        ram[95] = "0b10111110000100101000010010011101";
        ram[96] = "0b10111101001111100011110100011101";
        ram[97] = "0b00111101101000011111001100011111";
        ram[98] = "0b00111110001011011011111101001000";
        ram[99] = "0b00111110000011001011100011100001";
        ram[100] = "0b00111100101111010100011010110010";
        ram[101] = "0b10111101110111110101010100010101";
        ram[102] = "0b10111110000110010101110100001011";
        ram[103] = "0b10111101100101011100101011110011";


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


SC_MODULE(L3_up_L2_WEIGHTS_9) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_up_L2_WEIGHTS_9_ram* meminst;


SC_CTOR(L3_up_L2_WEIGHTS_9) {
meminst = new L3_up_L2_WEIGHTS_9_ram("L3_up_L2_WEIGHTS_9_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_up_L2_WEIGHTS_9() {
    delete meminst;
}


};//endmodule
#endif