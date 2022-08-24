// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_up_L2_WEIGHTS_41_H__
#define __L3_up_L2_WEIGHTS_41_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_up_L2_WEIGHTS_41_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_up_L2_WEIGHTS_41_ram) {
        ram[0] = "0b10111101001011111000000001010110";
        ram[1] = "0b10111101110110001100111100111010";
        ram[2] = "0b10111101111010000000011000101001";
        ram[3] = "0b10111101001001100100011011110001";
        ram[4] = "0b00111100111011010001010110101101";
        ram[5] = "0b00111101110110011101001111001100";
        ram[6] = "0b00111101101101100011011101111010";
        ram[7] = "0b00111101000110000001000101101111";
        ram[8] = "0b10111100111011010110001101000101";
        ram[9] = "0b10111100110100000101000001111010";
        ram[10] = "0b10111100000010100100011111101101";
        ram[11] = "0b10111100011000100111100111011101";
        ram[12] = "0b10111101001110110111100001000110";
        ram[13] = "0b10111101000101000001101001101001";
        ram[14] = "0b10111100010001010001110110101100";
        ram[15] = "0b00111101000111110101010110011011";
        ram[16] = "0b00111101101100010000011011101110";
        ram[17] = "0b00111101100110101010001001011110";
        ram[18] = "0b00111100001010010011111100101001";
        ram[19] = "0b10111101011100000110100100011111";
        ram[20] = "0b10111101101111100101001110101000";
        ram[21] = "0b10111101000110111001011000101001";
        ram[22] = "0b00111100111101111010011100000001";
        ram[23] = "0b00111101001011110001010101100010";
        ram[24] = "0b00111100000101011101000010110111";
        ram[25] = "0b00111100001000110011011110101000";
        ram[26] = "0b00111100000010110000110100001111";
        ram[27] = "0b00111101000011110110110111111100";
        ram[28] = "0b10111011101111001001010001110000";
        ram[29] = "0b10111101010100000111011000111010";
        ram[30] = "0b10111101100010011101001100000010";
        ram[31] = "0b10111100101101111000110011001010";
        ram[32] = "0b00111100011010100111000001001100";
        ram[33] = "0b00111101100001010001101100001101";
        ram[34] = "0b00111101010010001110001101101001";
        ram[35] = "0b10111100100001101101101101010001";
        ram[36] = "0b10111101100110101101100111110001";
        ram[37] = "0b10111101010000010010110011110001";
        ram[38] = "0b00111100100010101000111100111011";
        ram[39] = "0b00111101100100011101001011100001";
        ram[40] = "0b00111101000010111101010001001010";
        ram[41] = "0b10111101001001001111000000001111";
        ram[42] = "0b10111101100001010100000101010011";
        ram[43] = "0b10111101001111001111010011101000";
        ram[44] = "0b00111101010011010100110111000110";
        ram[45] = "0b00111101110001000101100110010110";
        ram[46] = "0b00111101100011011011001011110110";
        ram[47] = "0b10111101011001101011011100100100";
        ram[48] = "0b10111110000001001011110000100111";
        ram[49] = "0b10111110000000111110010010101100";
        ram[50] = "0b10111010010110001000011111101100";
        ram[51] = "0b00111101110111111011110111110001";
        ram[52] = "0b10111101110110101101000110001101";
        ram[53] = "0b10111101101011101000100101100101";
        ram[54] = "0b00111100101010111110100010111100";
        ram[55] = "0b00111110000010110011010001100001";
        ram[56] = "0b00111101110000001001100010010001";
        ram[57] = "0b00111101000100010011110101110101";
        ram[58] = "0b10111101000001111110011111000000";
        ram[59] = "0b10111101011100010011100010111101";
        ram[60] = "0b10111101010101101001110000100100";
        ram[61] = "0b10111100111010110111011001110001";
        ram[62] = "0b10111100010111100110010101111100";
        ram[63] = "0b10111101010011011010111101001011";
        ram[64] = "0b10111011101111100100100010100110";
        ram[65] = "0b00111100101011000001001010101110";
        ram[66] = "0b00111101101010011110100110001110";
        ram[67] = "0b00111101101010010101011011000001";
        ram[68] = "0b00111100101110001101011000001010";
        ram[69] = "0b10111101011110111111111001111110";
        ram[70] = "0b10111101111010001110010001110101";
        ram[71] = "0b10111101100101010001101111010110";
        ram[72] = "0b10111011101010011100110111000100";
        ram[73] = "0b00111101100001110011001011011111";
        ram[74] = "0b00111101011010000101000000010110";
        ram[75] = "0b00111100111000011000011010011000";
        ram[76] = "0b10111100111011100001101111010010";
        ram[77] = "0b10111100110010010010001101100000";
        ram[78] = "0b00111100001000101110011111110111";
        ram[79] = "0b00111011011110000010111101010001";
        ram[80] = "0b10111101001000111011011010001001";
        ram[81] = "0b10111101001011010000110101001010";
        ram[82] = "0b10111011111111011001111111010011";
        ram[83] = "0b00111101100101110001110010010111";
        ram[84] = "0b00111101011110010000110110011101";
        ram[85] = "0b00111100110001100111100111001100";
        ram[86] = "0b10111101101000100010100110100110";
        ram[87] = "0b10111101010010111111010011001011";
        ram[88] = "0b10111100100111000110101100000101";
        ram[89] = "0b00111101010100001011010100100100";
        ram[90] = "0b00111101100011000010101111011000";
        ram[91] = "0b10111001000111010100100101010010";
        ram[92] = "0b10111101010000110010101010001101";
        ram[93] = "0b10111100110001011100001101011001";
        ram[94] = "0b00111100101100100111000000101010";
        ram[95] = "0b00111101101010101101111001100101";
        ram[96] = "0b00111101101001111010100111100011";
        ram[97] = "0b10111100100001010111000010000010";
        ram[98] = "0b10111101111011100011011000001001";
        ram[99] = "0b10111101111101110011010010110101";
        ram[100] = "0b10111101010111000001011000010110";
        ram[101] = "0b00111101011100101011010001010011";
        ram[102] = "0b00111110001101000101011011110111";
        ram[103] = "0b00111110000011111000100111000110";


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


SC_MODULE(L3_up_L2_WEIGHTS_41) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_up_L2_WEIGHTS_41_ram* meminst;


SC_CTOR(L3_up_L2_WEIGHTS_41) {
meminst = new L3_up_L2_WEIGHTS_41_ram("L3_up_L2_WEIGHTS_41_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_up_L2_WEIGHTS_41() {
    delete meminst;
}


};//endmodule
#endif
