// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_up_L2_WEIGHTS_35_H__
#define __L3_up_L2_WEIGHTS_35_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_up_L2_WEIGHTS_35_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_up_L2_WEIGHTS_35_ram) {
        ram[0] = "0b00111101001110000010001111001000";
        ram[1] = "0b00111101110000000011111001100100";
        ram[2] = "0b00111101100010111101001111000011";
        ram[3] = "0b00111101001101110101011001000011";
        ram[4] = "0b00111101000100010100010011001100";
        ram[5] = "0b00111101010011111001001110111100";
        ram[6] = "0b00111100101111001011101000110000";
        ram[7] = "0b10111100110011000000000101100000";
        ram[8] = "0b10111101101111100111011101001111";
        ram[9] = "0b10111101111011100010000110010110";
        ram[10] = "0b10111101100101000101001100001001";
        ram[11] = "0b00111100001011101111011011111001";
        ram[12] = "0b00111101100100001011010010011110";
        ram[13] = "0b00111101100011101111010011100000";
        ram[14] = "0b00111101010000010001010111011111";
        ram[15] = "0b00111100111111011111001110110110";
        ram[16] = "0b00111101000101011000100101101010";
        ram[17] = "0b00111100010111011111110010100000";
        ram[18] = "0b10111100100111111010011101100101";
        ram[19] = "0b10111101100000111010010000101111";
        ram[20] = "0b10111101110001100010010101100011";
        ram[21] = "0b10111101100110010111101000100101";
        ram[22] = "0b10111101000101001111000001010010";
        ram[23] = "0b00111100100000000010111000100011";
        ram[24] = "0b00111101001011110101010001001100";
        ram[25] = "0b00111101011011000011000100010110";
        ram[26] = "0b00111101101100101001100010001001";
        ram[27] = "0b00111101001000010010100101000101";
        ram[28] = "0b10111101000010001110100010100111";
        ram[29] = "0b10111101111100011001001111110111";
        ram[30] = "0b10111110000011100110011110010100";
        ram[31] = "0b10111101101101010001111110000010";
        ram[32] = "0b00111100001101111110110101000010";
        ram[33] = "0b00111101101000000100011001000001";
        ram[34] = "0b00111101101101010000010000111110";
        ram[35] = "0b00111101000101001110010011001001";
        ram[36] = "0b00111100101010010101010000100010";
        ram[37] = "0b00111101000011011110000110100000";
        ram[38] = "0b00111101001110011000010100100111";
        ram[39] = "0b00111100101111010100110011111101";
        ram[40] = "0b10111101010001011111110100000101";
        ram[41] = "0b10111110000000011010110000010101";
        ram[42] = "0b10111110000010100001111010000010";
        ram[43] = "0b10111101011111001000011111011011";
        ram[44] = "0b00111101011100000100110111011011";
        ram[45] = "0b00111101111000011110011110010110";
        ram[46] = "0b00111101110011100001010100000001";
        ram[47] = "0b00111101001101100100111100010010";
        ram[48] = "0b00111100011101101110100000101001";
        ram[49] = "0b00111100010010100011000111101000";
        ram[50] = "0b00111100011010100101111110000101";
        ram[51] = "0b10111101001100011001111110000000";
        ram[52] = "0b00111110000011100000100111111111";
        ram[53] = "0b00111101010001000100101111110101";
        ram[54] = "0b10111011011101010110111010101101";
        ram[55] = "0b10111100101100010110011111101100";
        ram[56] = "0b10111100001100111010011010001011";
        ram[57] = "0b10111100110101111010010101101110";
        ram[58] = "0b10111101100011110000111000001011";
        ram[59] = "0b10111101110011010010110111001011";
        ram[60] = "0b10111101011110110010010001100100";
        ram[61] = "0b00111100111110100011010101010000";
        ram[62] = "0b00111101101110010111101100110001";
        ram[63] = "0b00111101111010100010110110110110";
        ram[64] = "0b00111101011101101101011001010110";
        ram[65] = "0b00111100001011101001101010110011";
        ram[66] = "0b10111100110001010101110010010110";
        ram[67] = "0b10111100110111110001000101110011";
        ram[68] = "0b10111101000100100110011000110100";
        ram[69] = "0b10111101010101101011001100110101";
        ram[70] = "0b10111101100011111011111101000000";
        ram[71] = "0b10111101100001101011101101010110";
        ram[72] = "0b10111011101011011101010110010001";
        ram[73] = "0b00111101000010110111101000011100";
        ram[74] = "0b00111101100100110100111001110111";
        ram[75] = "0b00111101100111101111010100100011";
        ram[76] = "0b00111101100001110110000110001001";
        ram[77] = "0b00111101000111101110000000101010";
        ram[78] = "0b10111101010111110100110000101011";
        ram[79] = "0b10111101111011100101001011011111";
        ram[80] = "0b10111110000001001001101001010110";
        ram[81] = "0b10111101100100110011011001011001";
        ram[82] = "0b00111100101011010100100100001110";
        ram[83] = "0b00111101110101011100010010101000";
        ram[84] = "0b00111110000000001011011100111101";
        ram[85] = "0b00111101100101101100101111011010";
        ram[86] = "0b00111100010001011111001110010101";
        ram[87] = "0b10111100111100001001101101110100";
        ram[88] = "0b10111100011001010010010110001001";
        ram[89] = "0b00111010110100101110010100010101";
        ram[90] = "0b10111101010000111100010110111101";
        ram[91] = "0b10111101101010000010010000001011";
        ram[92] = "0b10111101110111111010100011111000";
        ram[93] = "0b10111101011011110100100111001111";
        ram[94] = "0b00111101010110110011011111001010";
        ram[95] = "0b00111110000011011100011001011100";
        ram[96] = "0b00111110000001111001010111110110";
        ram[97] = "0b00111101011011110111111101001010";
        ram[98] = "0b10111100110111011001010111011101";
        ram[99] = "0b10111101100001111010100001010000";
        ram[100] = "0b10111101010001001110000011011011";
        ram[101] = "0b10111100110101100001001011000111";
        ram[102] = "0b10111101101000111110110100001111";
        ram[103] = "0b10111101110100001010110011000001";


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


SC_MODULE(L3_up_L2_WEIGHTS_35) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_up_L2_WEIGHTS_35_ram* meminst;


SC_CTOR(L3_up_L2_WEIGHTS_35) {
meminst = new L3_up_L2_WEIGHTS_35_ram("L3_up_L2_WEIGHTS_35_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_up_L2_WEIGHTS_35() {
    delete meminst;
}


};//endmodule
#endif
