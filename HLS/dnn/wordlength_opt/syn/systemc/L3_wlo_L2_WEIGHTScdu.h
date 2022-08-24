// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTScdu_H__
#define __L3_wlo_L2_WEIGHTScdu_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTScdu_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 16;
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


   SC_CTOR(L3_wlo_L2_WEIGHTScdu_ram) {
        ram[0] = "0b0010100111000001";
        ram[1] = "0b0010111000000010";
        ram[2] = "0b0010110001011111";
        ram[3] = "0b0010100110111011";
        ram[4] = "0b0010100010001010";
        ram[5] = "0b0010101001111101";
        ram[6] = "0b0010010111100110";
        ram[7] = "0b1010011001100000";
        ram[8] = "0b1010110111110100";
        ram[9] = "0b1010111101110001";
        ram[10] = "0b1010110010100011";
        ram[11] = "0b0010000101111000";
        ram[12] = "0b0010110010000110";
        ram[13] = "0b0010110001111000";
        ram[14] = "0b0010101000001001";
        ram[15] = "0b0010011111110000";
        ram[16] = "0b0010100010101100";
        ram[17] = "0b0010001011110000";
        ram[18] = "0b1010010011111101";
        ram[19] = "0b1010110000011101";
        ram[20] = "0b1010111000110001";
        ram[21] = "0b1010110011001100";
        ram[22] = "0b1010100010101000";
        ram[23] = "0b0010010000000001";
        ram[24] = "0b0010100101111011";
        ram[25] = "0b0010101101100010";
        ram[26] = "0b0010110110010101";
        ram[27] = "0b0010100100001001";
        ram[28] = "0b1010100001000111";
        ram[29] = "0b1010111110001101";
        ram[30] = "0b1011000001110011";
        ram[31] = "0b1010110110101001";
        ram[32] = "0b0010000110111111";
        ram[33] = "0b0010110100000010";
        ram[34] = "0b0010110110101000";
        ram[35] = "0b0010100010100111";
        ram[36] = "0b0010010101001011";
        ram[37] = "0b0010100001101111";
        ram[38] = "0b0010100111001100";
        ram[39] = "0b0010010111101010";
        ram[40] = "0b1010101000110000";
        ram[41] = "0b1011000000001101";
        ram[42] = "0b1011000001010001";
        ram[43] = "0b1010101111100100";
        ram[44] = "0b0010101110000010";
        ram[45] = "0b0010111100001111";
        ram[46] = "0b0010111001110001";
        ram[47] = "0b0010100110110010";
        ram[48] = "0b0010001110110111";
        ram[49] = "0b0010001001010010";
        ram[50] = "0b0010001101010011";
        ram[51] = "0b1010100110001101";
        ram[52] = "0b0011000001110000";
        ram[53] = "0b0010101000100010";
        ram[54] = "0b1001101110101011";
        ram[55] = "0b1010010110001011";
        ram[56] = "0b1010000110011101";
        ram[57] = "0b1010011010111101";
        ram[58] = "0b1010110001111000";
        ram[59] = "0b1010111001101001";
        ram[60] = "0b1010101111011001";
        ram[61] = "0b0010011111010010";
        ram[62] = "0b0010110111001100";
        ram[63] = "0b0010111101010001";
        ram[64] = "0b0010101110110111";
        ram[65] = "0b0010000101110101";
        ram[66] = "0b1010011000101011";
        ram[67] = "0b1010011011111001";
        ram[68] = "0b1010100010010011";
        ram[69] = "0b1010101010110110";
        ram[70] = "0b1010110001111110";
        ram[71] = "0b1010110000110110";
        ram[72] = "0b1001110101101111";
        ram[73] = "0b0010100001011100";
        ram[74] = "0b0010110010011010";
        ram[75] = "0b0010110011111000";
        ram[76] = "0b0010110000111011";
        ram[77] = "0b0010100011110111";
        ram[78] = "0b1010101011111010";
        ram[79] = "0b1010111101110011";
        ram[80] = "0b1011000000100101";
        ram[81] = "0b1010110010011010";
        ram[82] = "0b0010010101101010";
        ram[83] = "0b0010111010101110";
        ram[84] = "0b0011000000000110";
        ram[85] = "0b0010110010110110";
        ram[86] = "0b0010001000110000";
        ram[87] = "0b1010011110000101";
        ram[88] = "0b1010001100101001";
        ram[89] = "0b0001011010010111";
        ram[90] = "0b1010101000011110";
        ram[91] = "0b1010110101000001";
        ram[92] = "0b1010111011111101";
        ram[93] = "0b1010101101111010";
        ram[94] = "0b0010101011011010";
        ram[95] = "0b0011000001101110";
        ram[96] = "0b0011000000111101";
        ram[97] = "0b0010101101111100";
        ram[98] = "0b1010011011101101";
        ram[99] = "0b1010110000111101";
        ram[100] = "0b1010101000100111";
        ram[101] = "0b1010011010110001";
        ram[102] = "0b1010110100011111";
        ram[103] = "0b1010111010000101";


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


SC_MODULE(L3_wlo_L2_WEIGHTScdu) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTScdu_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTScdu) {
meminst = new L3_wlo_L2_WEIGHTScdu_ram("L3_wlo_L2_WEIGHTScdu_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTScdu() {
    delete meminst;
}


};//endmodule
#endif
