// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTScfu_H__
#define __L3_wlo_L2_WEIGHTScfu_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTScfu_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTScfu_ram) {
        ram[0] = "0b0010011001110010";
        ram[1] = "0b0010101111000111";
        ram[2] = "0b0010110111010100";
        ram[3] = "0b0010110101101110";
        ram[4] = "0b0010100001100000";
        ram[5] = "0b1010100111000111";
        ram[6] = "0b1010111100110010";
        ram[7] = "0b1011000001011111";
        ram[8] = "0b1010111001001110";
        ram[9] = "0b0010011101110101";
        ram[10] = "0b0011000001001011";
        ram[11] = "0b0011000101100101";
        ram[12] = "0b0010111101000101";
        ram[13] = "0b1010011100100011";
        ram[14] = "0b1010111100110000";
        ram[15] = "0b1011000010011011";
        ram[16] = "0b1010111100001100";
        ram[17] = "0b1010101000010101";
        ram[18] = "0b0010100101100001";
        ram[19] = "0b0011000001111001";
        ram[20] = "0b0011000000101101";
        ram[21] = "0b0010110110100011";
        ram[22] = "0b1001100110001011";
        ram[23] = "0b1010111010010001";
        ram[24] = "0b1011000000110010";
        ram[25] = "0b1010111011001011";
        ram[26] = "0b0010101001110010";
        ram[27] = "0b0010110011101010";
        ram[28] = "0b0010101010001101";
        ram[29] = "0b1001100011100001";
        ram[30] = "0b0010010000010001";
        ram[31] = "0b0010010100001101";
        ram[32] = "0b0010010010110011";
        ram[33] = "0b1010010001010000";
        ram[34] = "0b1010110111011001";
        ram[35] = "0b1010111111000000";
        ram[36] = "0b1010101110100110";
        ram[37] = "0b0010101001100011";
        ram[38] = "0b0011000001101111";
        ram[39] = "0b0011000010100110";
        ram[40] = "0b0010101010110011";
        ram[41] = "0b1010110001100000";
        ram[42] = "0b1011000001010110";
        ram[43] = "0b1010111011001010";
        ram[44] = "0b1010100010101000";
        ram[45] = "0b0010101111000010";
        ram[46] = "0b0010110100011101";
        ram[47] = "0b0010110100100010";
        ram[48] = "0b0010100001011100";
        ram[49] = "0b1001000010000001";
        ram[50] = "0b1010101011010101";
        ram[51] = "0b1010101100101100";
        ram[52] = "0b0010110000110001";
        ram[53] = "0b0010100011111010";
        ram[54] = "0b0010010010110101";
        ram[55] = "0b1010100110111101";
        ram[56] = "0b1010111001001110";
        ram[57] = "0b1010111110001001";
        ram[58] = "0b1010110010110011";
        ram[59] = "0b0010100001001111";
        ram[60] = "0b0011000000001101";
        ram[61] = "0b0011000100010111";
        ram[62] = "0b0010111000100101";
        ram[63] = "0b1010011110011101";
        ram[64] = "0b1011000001001000";
        ram[65] = "0b1011000011110110";
        ram[66] = "0b1010111011111011";
        ram[67] = "0b1010011001010101";
        ram[68] = "0b0010110111000100";
        ram[69] = "0b0011000001110011";
        ram[70] = "0b0011000001001100";
        ram[71] = "0b0010110001101100";
        ram[72] = "0b1010100100010000";
        ram[73] = "0b1010111110101010";
        ram[74] = "0b1011000001011110";
        ram[75] = "0b1010111000101011";
        ram[76] = "0b1010100000010110";
        ram[77] = "0b0010110001111011";
        ram[78] = "0b0010110010000011";
        ram[79] = "0b0010011101100001";
        ram[80] = "0b1010011011001001";
        ram[81] = "0b1010011101101111";
        ram[82] = "0b1001010101111000";
        ram[83] = "0b1010010100110111";
        ram[84] = "0b1010110001010001";
        ram[85] = "0b1010110001101010";
        ram[86] = "0b1010101110111010";
        ram[87] = "0b0010100000100010";
        ram[88] = "0b0011000000001011";
        ram[89] = "0b0011000011101000";
        ram[90] = "0b0010101011110011";
        ram[91] = "0b1010110001101010";
        ram[92] = "0b1011000010100111";
        ram[93] = "0b1011000000101010";
        ram[94] = "0b1010100110111000";
        ram[95] = "0b0010110101110111";
        ram[96] = "0b0010111101101010";
        ram[97] = "0b0010111011100001";
        ram[98] = "0b0010100101010101";
        ram[99] = "0b1010101000000001";
        ram[100] = "0b1010101110101001";
        ram[101] = "0b1010110000011010";
        ram[102] = "0b1010110001000110";
        ram[103] = "0b1010100110011101";


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


SC_MODULE(L3_wlo_L2_WEIGHTScfu) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTScfu_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTScfu) {
meminst = new L3_wlo_L2_WEIGHTScfu_ram("L3_wlo_L2_WEIGHTScfu_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTScfu() {
    delete meminst;
}


};//endmodule
#endif
