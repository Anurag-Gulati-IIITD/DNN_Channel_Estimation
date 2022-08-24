// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTSb2s_H__
#define __L3_wlo_L2_WEIGHTSb2s_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTSb2s_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTSb2s_ram) {
        ram[0] = "0b1010001001010011";
        ram[1] = "0b1001010001110110";
        ram[2] = "0b0001111101010010";
        ram[3] = "0b0010001010111100";
        ram[4] = "0b0010001001000001";
        ram[5] = "0b0001001010100001";
        ram[6] = "0b1001110110010100";
        ram[7] = "0b1001100000011100";
        ram[8] = "0b1001110101110100";
        ram[9] = "0b0001001111111111";
        ram[10] = "0b0001110011101000";
        ram[11] = "0b1000111011100110";
        ram[12] = "0b1001100101101001";
        ram[13] = "0b0001110001000000";
        ram[14] = "0b0001100011111110";
        ram[15] = "0b0001110000011111";
        ram[16] = "0b0001101000001001";
        ram[17] = "0b1001100000011101";
        ram[18] = "0b1001101110111000";
        ram[19] = "0b0001100110100010";
        ram[20] = "0b0001001010000111";
        ram[21] = "0b1001110010010100";
        ram[22] = "0b1001111011011101";
        ram[23] = "0b1001111110100011";
        ram[24] = "0b1001101001011000";
        ram[25] = "0b0010000010110100";
        ram[26] = "0b0001100001110010";
        ram[27] = "0b1001110000110011";
        ram[28] = "0b1010001010011001";
        ram[29] = "0b1010000010110010";
        ram[30] = "0b0001111100110000";
        ram[31] = "0b0010001000100101";
        ram[32] = "0b0001110100000000";
        ram[33] = "0b1001110001110101";
        ram[34] = "0b1010000100010010";
        ram[35] = "0b1001111111011001";
        ram[36] = "0b0000110011110011";
        ram[37] = "0b0010000100111110";
        ram[38] = "0b0001111100010110";
        ram[39] = "0b0001110000110011";
        ram[40] = "0b1001011101000011";
        ram[41] = "0b1001110010010000";
        ram[42] = "0b1001110010101101";
        ram[43] = "0b1001110001001011";
        ram[44] = "0b1010000000110100";
        ram[45] = "0b1001110001110110";
        ram[46] = "0b1000101100101101";
        ram[47] = "0b0001110010110010";
        ram[48] = "0b0010000101100110";
        ram[49] = "0b0010000011101110";
        ram[50] = "0b0001100101011100";
        ram[51] = "0b1010000000110100";
        ram[52] = "0b0001111101010011";
        ram[53] = "0b0010000111001110";
        ram[54] = "0b0010001100001100";
        ram[55] = "0b0001010111010110";
        ram[56] = "0b1010000001011000";
        ram[57] = "0b1010000100100100";
        ram[58] = "0b1010000011100011";
        ram[59] = "0b1000101110101011";
        ram[60] = "0b0001110011100110";
        ram[61] = "0b0001000110100101";
        ram[62] = "0b1001011011111101";
        ram[63] = "0b1001000010100101";
        ram[64] = "0b1001010010101011";
        ram[65] = "0b0001101011110111";
        ram[66] = "0b0001111011010011";
        ram[67] = "0b1001100000101001";
        ram[68] = "0b1001111000111100";
        ram[69] = "0b0000110001111101";
        ram[70] = "0b1000111101101100";
        ram[71] = "0b0001010110111101";
        ram[72] = "0b1001100110000001";
        ram[73] = "0b1001101000100100";
        ram[74] = "0b1001101001000110";
        ram[75] = "0b0001111011001001";
        ram[76] = "0b0001110110100111";
        ram[77] = "0b0001110000110101";
        ram[78] = "0b1010000111101011";
        ram[79] = "0b1001111001000100";
        ram[80] = "0b1001010111110111";
        ram[81] = "0b0001111111001000";
        ram[82] = "0b0001111111110111";
        ram[83] = "0b0000100111110111";
        ram[84] = "0b1010000101110100";
        ram[85] = "0b1010000000011110";
        ram[86] = "0b1001101100000000";
        ram[87] = "0b0010000110000001";
        ram[88] = "0b0010000001110101";
        ram[89] = "0b0001110001100111";
        ram[90] = "0b1001100111010010";
        ram[91] = "0b1010000101000001";
        ram[92] = "0b1001111101000100";
        ram[93] = "0b1001100001010001";
        ram[94] = "0b0000011011100010";
        ram[95] = "0b0000111011101110";
        ram[96] = "0b0001100001000100";
        ram[97] = "0b0001110010010111";
        ram[98] = "0b0001111100111000";
        ram[99] = "0b0010000010001011";
        ram[100] = "0b0001011000010000";
        ram[101] = "0b1001111100110100";
        ram[102] = "0b1010001011011000";
        ram[103] = "0b1010000110111011";


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


SC_MODULE(L3_wlo_L2_WEIGHTSb2s) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTSb2s_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTSb2s) {
meminst = new L3_wlo_L2_WEIGHTSb2s_ram("L3_wlo_L2_WEIGHTSb2s_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTSb2s() {
    delete meminst;
}


};//endmodule
#endif
