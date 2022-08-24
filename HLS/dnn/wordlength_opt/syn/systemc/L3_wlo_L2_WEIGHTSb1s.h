// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTSb1s_H__
#define __L3_wlo_L2_WEIGHTSb1s_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTSb1s_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTSb1s_ram) {
        ram[0] = "0b0010110101010000";
        ram[1] = "0b1010100010001110";
        ram[2] = "0b1010111111001110";
        ram[3] = "0b1010111011100111";
        ram[4] = "0b1010100100100011";
        ram[5] = "0b0010101001000011";
        ram[6] = "0b0010111010111000";
        ram[7] = "0b0010110111011000";
        ram[8] = "0b0010010001101001";
        ram[9] = "0b1010101010110001";
        ram[10] = "0b1010110101111000";
        ram[11] = "0b1010101001010000";
        ram[12] = "0b0010000010000101";
        ram[13] = "0b0010110011001110";
        ram[14] = "0b0010110110011001";
        ram[15] = "0b0010100011110100";
        ram[16] = "0b1010011011110001";
        ram[17] = "0b1010111001111110";
        ram[18] = "0b1010111001111011";
        ram[19] = "0b1010010110111011";
        ram[20] = "0b0010110000111010";
        ram[21] = "0b0011000010000010";
        ram[22] = "0b0010111100101110";
        ram[23] = "0b0010001000001101";
        ram[24] = "0b1010111011100010";
        ram[25] = "0b1011000011000000";
        ram[26] = "0b0010100110001101";
        ram[27] = "0b0010111010001000";
        ram[28] = "0b0010110111111100";
        ram[29] = "0b0001110100000011";
        ram[30] = "0b1010110100011010";
        ram[31] = "0b1010110010000001";
        ram[32] = "0b1010010010010001";
        ram[33] = "0b0010101000110101";
        ram[34] = "0b0010110000111011";
        ram[35] = "0b0010001010000001";
        ram[36] = "0b1010011110011101";
        ram[37] = "0b1010101011011110";
        ram[38] = "0b1010100110110111";
        ram[39] = "0b0001110111100101";
        ram[40] = "0b0010100101000110";
        ram[41] = "0b0010100001110100";
        ram[42] = "0b0010010110101010";
        ram[43] = "0b1010010100011110";
        ram[44] = "0b1010011101101111";
        ram[45] = "0b1010011000011111";
        ram[46] = "0b0010010010101111";
        ram[47] = "0b0010100111111011";
        ram[48] = "0b0010010110000110";
        ram[49] = "0b1010010001101011";
        ram[50] = "0b1010101011111000";
        ram[51] = "0b1010101011110111";
        ram[52] = "0b1010111110110011";
        ram[53] = "0b1011000001000010";
        ram[54] = "0b1010101100011000";
        ram[55] = "0b0010100011011011";
        ram[56] = "0b0010111011111110";
        ram[57] = "0b0010111010100011";
        ram[58] = "0b0010100010110111";
        ram[59] = "0b1010100111110010";
        ram[60] = "0b1010111001010100";
        ram[61] = "0b1010101110110110";
        ram[62] = "0b1001110000101111";
        ram[63] = "0b0010101010110000";
        ram[64] = "0b0010110100011010";
        ram[65] = "0b0010101100011010";
        ram[66] = "0b1010010000011000";
        ram[67] = "0b1010110101000111";
        ram[68] = "0b1010110111010110";
        ram[69] = "0b1010101000000010";
        ram[70] = "0b0010101001011110";
        ram[71] = "0b0010111100101010";
        ram[72] = "0b0010111010110001";
        ram[73] = "0b0010000101011111";
        ram[74] = "0b1010110111000011";
        ram[75] = "0b1011000001010100";
        ram[76] = "0b1010110111101100";
        ram[77] = "0b0010011100001010";
        ram[78] = "0b0010111101111011";
        ram[79] = "0b0010101000001110";
        ram[80] = "0b1010101100011011";
        ram[81] = "0b1010110111000000";
        ram[82] = "0b1010101001100100";
        ram[83] = "0b0010001001100000";
        ram[84] = "0b0010110000101011";
        ram[85] = "0b0010101100011010";
        ram[86] = "0b1010001000011001";
        ram[87] = "0b1010110001010100";
        ram[88] = "0b1010101010001010";
        ram[89] = "0b0001110110101101";
        ram[90] = "0b0010100101100101";
        ram[91] = "0b0010101101010011";
        ram[92] = "0b0010010001000111";
        ram[93] = "0b1010000010111000";
        ram[94] = "0b1010100110011111";
        ram[95] = "0b1010011010111110";
        ram[96] = "0b1001111111101110";
        ram[97] = "0b0010100101111100";
        ram[98] = "0b0010010101000010";
        ram[99] = "0b1010001011011010";
        ram[100] = "0b1010100001011011";
        ram[101] = "0b1010100111101111";
        ram[102] = "0b1010011011111011";
        ram[103] = "0b0010011010101011";


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


SC_MODULE(L3_wlo_L2_WEIGHTSb1s) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTSb1s_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTSb1s) {
meminst = new L3_wlo_L2_WEIGHTSb1s_ram("L3_wlo_L2_WEIGHTSb1s_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTSb1s() {
    delete meminst;
}


};//endmodule
#endif
