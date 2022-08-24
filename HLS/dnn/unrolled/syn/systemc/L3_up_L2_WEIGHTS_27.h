// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_up_L2_WEIGHTS_27_H__
#define __L3_up_L2_WEIGHTS_27_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_up_L2_WEIGHTS_27_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_up_L2_WEIGHTS_27_ram) {
        ram[0] = "0b00111100101000010011111000111110";
        ram[1] = "0b00111110001011001111111110101000";
        ram[2] = "0b00111110001111100010010101000010";
        ram[3] = "0b00111101011101011111111101100001";
        ram[4] = "0b10111101100111011000100101001000";
        ram[5] = "0b10111110000100001110001101000111";
        ram[6] = "0b10111101100101001010001111000110";
        ram[7] = "0b00111100110110101001011001001111";
        ram[8] = "0b00111101101000001010000101111011";
        ram[9] = "0b00111101100011100011000101010001";
        ram[10] = "0b10111011111101011010100101100101";
        ram[11] = "0b10111101100111101101000011110110";
        ram[12] = "0b10111101100000001100011000101110";
        ram[13] = "0b10111100101000101011000101110000";
        ram[14] = "0b00111101101000111110110110010110";
        ram[15] = "0b00111101110111110111100111001000";
        ram[16] = "0b00111101011100110111011001001111";
        ram[17] = "0b10111101000100100110111010011000";
        ram[18] = "0b10111101111001111101010011100001";
        ram[19] = "0b10111101110110100100111110000111";
        ram[20] = "0b10111101010111111111110001010100";
        ram[21] = "0b00111101010100111111000001111000";
        ram[22] = "0b00111101111110111110110100110001";
        ram[23] = "0b00111101110101100101001010111101";
        ram[24] = "0b00111101000101101111111111000001";
        ram[25] = "0b10111101100100100011001111011111";
        ram[26] = "0b10111101110100110110101111010011";
        ram[27] = "0b10111100000100000110100010011000";
        ram[28] = "0b00111101100100111111010000100011";
        ram[29] = "0b00111101101100110101011101100000";
        ram[30] = "0b00111101100110110010010011101010";
        ram[31] = "0b00111011100100001110011001101101";
        ram[32] = "0b10111101001111110111101111100001";
        ram[33] = "0b10111101010100101001010101100100";
        ram[34] = "0b10111101000011110100100000111101";
        ram[35] = "0b10111100100110010001100110101100";
        ram[36] = "0b10111100100110011101011001101011";
        ram[37] = "0b10111010100010111111110000100010";
        ram[38] = "0b00111100110100010000010011010101";
        ram[39] = "0b00111101100000100101100111100010";
        ram[40] = "0b00111101100001011111011000110100";
        ram[41] = "0b00111100111000111111111111101111";
        ram[42] = "0b10111101001001011011101001101111";
        ram[43] = "0b10111101101000100001100101100101";
        ram[44] = "0b10111101101100010000010101011100";
        ram[45] = "0b10111100110100101000001010000100";
        ram[46] = "0b00111100101010011011011010110011";
        ram[47] = "0b00111101011000100111001010000110";
        ram[48] = "0b00111101011100011110001110101000";
        ram[49] = "0b00111101001010001101000100001111";
        ram[50] = "0b00111100101001010010001001100100";
        ram[51] = "0b00111010110111110011011100110011";
        ram[52] = "0b00111110001111110100011011101101";
        ram[53] = "0b00111101110000011000010100000110";
        ram[54] = "0b10111101010011011100110110110011";
        ram[55] = "0b10111110000101110101100110101011";
        ram[56] = "0b10111110000010010000000011000101";
        ram[57] = "0b10111100101000110000111111010000";
        ram[58] = "0b00111101100110001101001001011111";
        ram[59] = "0b00111101110100011101000101001110";
        ram[60] = "0b00111101000100100001110111011010";
        ram[61] = "0b10111101011011110000111100010111";
        ram[62] = "0b10111101101110111000111011010010";
        ram[63] = "0b10111101000001111110111100010111";
        ram[64] = "0b00111101001111100100001101100111";
        ram[65] = "0b00111101110000100001111010100011";
        ram[66] = "0b00111101100011100011001101101010";
        ram[67] = "0b10111100111001110111011100001000";
        ram[68] = "0b10111101110010001001101110010101";
        ram[69] = "0b10111101110110111011101011011100";
        ram[70] = "0b10111101001101011010110110010111";
        ram[71] = "0b00111101001110110010101110111011";
        ram[72] = "0b00111101110110110111010000010101";
        ram[73] = "0b00111101111011110100100011000011";
        ram[74] = "0b00111101001111000010011001010111";
        ram[75] = "0b10111101011110010111011110000101";
        ram[76] = "0b10111110000011010111000101101101";
        ram[77] = "0b10111101111101101011101110011001";
        ram[78] = "0b00111101100111100100011010001101";
        ram[79] = "0b00111110000000110010001010101111";
        ram[80] = "0b00111101101001000011101100101110";
        ram[81] = "0b00111001000011111010011110101000";
        ram[82] = "0b10111101011100101111101110100000";
        ram[83] = "0b10111101101001000001011001111011";
        ram[84] = "0b10111101010101010101100000100001";
        ram[85] = "0b10111011101100000111010010100111";
        ram[86] = "0b00111100000010110100011111000111";
        ram[87] = "0b00111100111110010000101110000101";
        ram[88] = "0b00111100111101000111000011101011";
        ram[89] = "0b00111101010111000001110001100001";
        ram[90] = "0b00111101000111000101011100011001";
        ram[91] = "0b00111100010110010011100000010101";
        ram[92] = "0b10111100110110100011110000100001";
        ram[93] = "0b10111101101001011010111111110011";
        ram[94] = "0b10111101101010110000110110010101";
        ram[95] = "0b10111100011111101000001001010001";
        ram[96] = "0b00111101001100110111100101110100";
        ram[97] = "0b00111101101001000100001010000101";
        ram[98] = "0b00111101100101100111011011101010";
        ram[99] = "0b00111100111010101011000101001111";
        ram[100] = "0b10111011101001100011001100000101";
        ram[101] = "0b10111100111101000110100010001000";
        ram[102] = "0b10111101010100011000100011110100";
        ram[103] = "0b10111101101100100111101010100111";


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


SC_MODULE(L3_up_L2_WEIGHTS_27) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_up_L2_WEIGHTS_27_ram* meminst;


SC_CTOR(L3_up_L2_WEIGHTS_27) {
meminst = new L3_up_L2_WEIGHTS_27_ram("L3_up_L2_WEIGHTS_27_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_up_L2_WEIGHTS_27() {
    delete meminst;
}


};//endmodule
#endif