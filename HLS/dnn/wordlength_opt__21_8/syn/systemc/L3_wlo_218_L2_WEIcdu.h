// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIcdu_H__
#define __L3_wlo_218_L2_WEIcdu_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIcdu_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 13;
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


   SC_CTOR(L3_wlo_218_L2_WEIcdu_ram) {
        ram[0] = "0b1100001000011";
        ram[1] = "0b1110001001001";
        ram[2] = "0b0001001010010";
        ram[3] = "0b0010111001101";
        ram[4] = "0b0001011101100";
        ram[5] = "0b1111000101011";
        ram[6] = "0b1101111110001";
        ram[7] = "0b1111001110101";
        ram[8] = "0b0000111010100";
        ram[9] = "0b0001101001001";
        ram[10] = "0b0000100111100";
        ram[11] = "0b1111010100001";
        ram[12] = "0b1110111000010";
        ram[13] = "0b1111110100001";
        ram[14] = "0b0000110111100";
        ram[15] = "0b0000110111001";
        ram[16] = "0b0000001100000";
        ram[17] = "0b1111000101110";
        ram[18] = "0b1111001011000";
        ram[19] = "0b0000000100011";
        ram[20] = "0b0000011110110";
        ram[21] = "0b0000100001001";
        ram[22] = "0b1111101110001";
        ram[23] = "0b1111011111111";
        ram[24] = "0b1111110111011";
        ram[25] = "0b0000101011000";
        ram[26] = "0b0000010000010";
        ram[27] = "0b1110110101011";
        ram[28] = "0b1110100010010";
        ram[29] = "0b1111000111110";
        ram[30] = "0b0000001011010";
        ram[31] = "0b0001001000010";
        ram[32] = "0b0000111000011";
        ram[33] = "0b0000011000111";
        ram[34] = "0b0000001111001";
        ram[35] = "0b1111110110110";
        ram[36] = "0b1111111001000";
        ram[37] = "0b1111100011111";
        ram[38] = "0b1110111100011";
        ram[39] = "0b1111010011100";
        ram[40] = "0b0000001010000";
        ram[41] = "0b0000110000111";
        ram[42] = "0b0000110011111";
        ram[43] = "0b1111110011111";
        ram[44] = "0b1111101001011";
        ram[45] = "0b1111111100101";
        ram[46] = "0b0001010000100";
        ram[47] = "0b0001001110010";
        ram[48] = "0b1111011101011";
        ram[49] = "0b1101000101110";
        ram[50] = "0b1100111001110";
        ram[51] = "0b1111011000100";
        ram[52] = "0b1111110111100";
        ram[53] = "0b0010101011000";
        ram[54] = "0b0010110110010";
        ram[55] = "0b0000010001010";
        ram[56] = "0b1101111110101";
        ram[57] = "0b1110000101010";
        ram[58] = "0b0000000010111";
        ram[59] = "0b0001101001100";
        ram[60] = "0b0001011000100";
        ram[61] = "0b0000000101100";
        ram[62] = "0b1110100110010";
        ram[63] = "0b1110111000101";
        ram[64] = "0b0000001011111";
        ram[65] = "0b0001001010000";
        ram[66] = "0b0000101110111";
        ram[67] = "0b1111100101101";
        ram[68] = "0b1110111011001";
        ram[69] = "0b1111011011101";
        ram[70] = "0b0000011010011";
        ram[71] = "0b0000100110011";
        ram[72] = "0b0000001111111";
        ram[73] = "0b1111010101100";
        ram[74] = "0b1111011011010";
        ram[75] = "0b0000010010011";
        ram[76] = "0b0000111010110";
        ram[77] = "0b0000101001001";
        ram[78] = "0b1110101010000";
        ram[79] = "0b1110111110100";
        ram[80] = "0b0000000011110";
        ram[81] = "0b0001010011111";
        ram[82] = "0b0001010001010";
        ram[83] = "0b0000011011001";
        ram[84] = "0b1111110011000";
        ram[85] = "0b1111100011010";
        ram[86] = "0b1111100110110";
        ram[87] = "0b1111100101110";
        ram[88] = "0b1111100000001";
        ram[89] = "0b1111101110000";
        ram[90] = "0b1111111000101";
        ram[91] = "0b0000110110101";
        ram[92] = "0b0000111001010";
        ram[93] = "0b0000011011111";
        ram[94] = "0b1111100010000";
        ram[95] = "0b1111011101100";
        ram[96] = "0b0000000010110";
        ram[97] = "0b0000111000010";
        ram[98] = "0b0000000000100";
        ram[99] = "0b1110011100101";
        ram[100] = "0b1101100110000";
        ram[101] = "0b1110111011011";
        ram[102] = "0b0001101010011";
        ram[103] = "0b0100000111101";


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


SC_MODULE(L3_wlo_218_L2_WEIcdu) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIcdu_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIcdu) {
meminst = new L3_wlo_218_L2_WEIcdu_ram("L3_wlo_218_L2_WEIcdu_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIcdu() {
    delete meminst;
}


};//endmodule
#endif
