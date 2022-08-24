// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTSchv_H__
#define __L3_wlo_L2_WEIGHTSchv_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTSchv_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTSchv_ram) {
        ram[0] = "0b1011000101010101";
        ram[1] = "0b1011000000110100";
        ram[2] = "0b1010010000111100";
        ram[3] = "0b0010110100101010";
        ram[4] = "0b0010111100101100";
        ram[5] = "0b0011000000010111";
        ram[6] = "0b0010101011000100";
        ram[7] = "0b1010011100101100";
        ram[8] = "0b1010110111111100";
        ram[9] = "0b1011000000100011";
        ram[10] = "0b1010110100111001";
        ram[11] = "0b1010011001101011";
        ram[12] = "0b0010101010100110";
        ram[13] = "0b0010110010110010";
        ram[14] = "0b0010110101100000";
        ram[15] = "0b0010101111001011";
        ram[16] = "0b0001110100111000";
        ram[17] = "0b1010110100011000";
        ram[18] = "0b1010111000010100";
        ram[19] = "0b1010110111010111";
        ram[20] = "0b1010011111101010";
        ram[21] = "0b0010100000101101";
        ram[22] = "0b0010101100000010";
        ram[23] = "0b0010111010110000";
        ram[24] = "0b0010110011001011";
        ram[25] = "0b0001101110110011";
        ram[26] = "0b1010111010011100";
        ram[27] = "0b1010111001010110";
        ram[28] = "0b1010101101011001";
        ram[29] = "0b0010011111101100";
        ram[30] = "0b0010110111000101";
        ram[31] = "0b0010111011100111";
        ram[32] = "0b0010110111000110";
        ram[33] = "0b0010001001101100";
        ram[34] = "0b1010110101010110";
        ram[35] = "0b1010111111011100";
        ram[36] = "0b1010111110100101";
        ram[37] = "0b1010110010110100";
        ram[38] = "0b0010100001101001";
        ram[39] = "0b0010110010111011";
        ram[40] = "0b0010111010110000";
        ram[41] = "0b0010111000000100";
        ram[42] = "0b0010100111111001";
        ram[43] = "0b1001111111011001";
        ram[44] = "0b1010101010000101";
        ram[45] = "0b1010110101100011";
        ram[46] = "0b1010111010010010";
        ram[47] = "0b1010110101111111";
        ram[48] = "0b1010001101100011";
        ram[49] = "0b0010111011111101";
        ram[50] = "0b0011000011111111";
        ram[51] = "0b0011000010011110";
        ram[52] = "0b1001001110011000";
        ram[53] = "0b0010111000001000";
        ram[54] = "0b0011000100111011";
        ram[55] = "0b0010111100110011";
        ram[56] = "0b0010110001010101";
        ram[57] = "0b1010011010111000";
        ram[58] = "0b1010111000101100";
        ram[59] = "0b1010111110111100";
        ram[60] = "0b1010110100100110";
        ram[61] = "0b1010001001111110";
        ram[62] = "0b0010101001010101";
        ram[63] = "0b0010111100100100";
        ram[64] = "0b0010110010111001";
        ram[65] = "0b0010010111011011";
        ram[66] = "0b1010010011111101";
        ram[67] = "0b1010110011111111";
        ram[68] = "0b1010110101011000";
        ram[69] = "0b1010110101101011";
        ram[70] = "0b1010101000011110";
        ram[71] = "0b0010100001100011";
        ram[72] = "0b0010110101001000";
        ram[73] = "0b0010101101011100";
        ram[74] = "0b0010101011011000";
        ram[75] = "0b1010010010000101";
        ram[76] = "0b1010101010010100";
        ram[77] = "0b1010111011001011";
        ram[78] = "0b1010010001100111";
        ram[79] = "0b0010100101110101";
        ram[80] = "0b0010111001000010";
        ram[81] = "0b0010111101100011";
        ram[82] = "0b0010101111100100";
        ram[83] = "0b0010010100001001";
        ram[84] = "0b1010110001010100";
        ram[85] = "0b1011000000110101";
        ram[86] = "0b1010111111000100";
        ram[87] = "0b1010101001101101";
        ram[88] = "0b0010101011100000";
        ram[89] = "0b0010111111011101";
        ram[90] = "0b0010111010111001";
        ram[91] = "0b0010110011000001";
        ram[92] = "0b0010010010100011";
        ram[93] = "0b1010011111000111";
        ram[94] = "0b1010110101000001";
        ram[95] = "0b1010111001110100";
        ram[96] = "0b1010111000000010";
        ram[97] = "0b1010100011011001";
        ram[98] = "0b0010101011001011";
        ram[99] = "0b0010110111010010";
        ram[100] = "0b0011000010011100";
        ram[101] = "0b0011000000111000";
        ram[102] = "0b0010001011100010";
        ram[103] = "0b1011000000010100";


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


SC_MODULE(L3_wlo_L2_WEIGHTSchv) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTSchv_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTSchv) {
meminst = new L3_wlo_L2_WEIGHTSchv_ram("L3_wlo_L2_WEIGHTSchv_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTSchv() {
    delete meminst;
}


};//endmodule
#endif
