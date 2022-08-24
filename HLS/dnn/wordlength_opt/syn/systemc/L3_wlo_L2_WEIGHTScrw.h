// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTScrw_H__
#define __L3_wlo_L2_WEIGHTScrw_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTScrw_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTScrw_ram) {
        ram[0] = "0b0010101001001111";
        ram[1] = "0b0010011111101001";
        ram[2] = "0b1010001000100111";
        ram[3] = "0b0001111111100010";
        ram[4] = "0b0010100010011001";
        ram[5] = "0b0010011000010110";
        ram[6] = "0b1010011001001010";
        ram[7] = "0b1010110000001110";
        ram[8] = "0b1010110000010000";
        ram[9] = "0b1010010011101101";
        ram[10] = "0b0010110001011111";
        ram[11] = "0b0010111110111110";
        ram[12] = "0b0010110010100111";
        ram[13] = "0b0010011100001101";
        ram[14] = "0b1010110000000110";
        ram[15] = "0b1010110010000010";
        ram[16] = "0b1010011001100101";
        ram[17] = "0b0010010110001100";
        ram[18] = "0b0010010011011101";
        ram[19] = "0b1010101100011110";
        ram[20] = "0b1010100000010111";
        ram[21] = "0b0010011011110101";
        ram[22] = "0b0010111001001100";
        ram[23] = "0b0011000011001010";
        ram[24] = "0b0010110001101010";
        ram[25] = "0b1010101010010001";
        ram[26] = "0b1011000001101100";
        ram[27] = "0b1010110011000101";
        ram[28] = "0b0010100111101011";
        ram[29] = "0b0011000001011011";
        ram[30] = "0b0010111000110010";
        ram[31] = "0b0010110110111111";
        ram[32] = "0b0010010110010101";
        ram[33] = "0b1010100111001011";
        ram[34] = "0b1010110011110111";
        ram[35] = "0b1010111001011100";
        ram[36] = "0b1010110001111001";
        ram[37] = "0b0010000001010111";
        ram[38] = "0b0010110110010000";
        ram[39] = "0b0010111111011100";
        ram[40] = "0b0010110111000101";
        ram[41] = "0b1010000111111110";
        ram[42] = "0b1010110110101010";
        ram[43] = "0b1011000001110011";
        ram[44] = "0b1010101111110110";
        ram[45] = "0b0001101010011110";
        ram[46] = "0b0010111011111100";
        ram[47] = "0b0010111101110100";
        ram[48] = "0b0010101100110101";
        ram[49] = "0b1010010001011010";
        ram[50] = "0b1010101101000000";
        ram[51] = "0b1010111000100110";
        ram[52] = "0b0001110101101110";
        ram[53] = "0b1001111111001101";
        ram[54] = "0b1010001110011110";
        ram[55] = "0b1010010001000010";
        ram[56] = "0b1001111000100011";
        ram[57] = "0b1010100000101111";
        ram[58] = "0b1010100100101110";
        ram[59] = "0b1010010100000111";
        ram[60] = "0b0010100110011001";
        ram[61] = "0b0010111011000100";
        ram[62] = "0b0010110110111000";
        ram[63] = "0b0010010101001011";
        ram[64] = "0b1010110010100100";
        ram[65] = "0b1010111001100001";
        ram[66] = "0b1010101110010011";
        ram[67] = "0b0010011010010000";
        ram[68] = "0b0010011111110011";
        ram[69] = "0b0010010010001001";
        ram[70] = "0b1010010110100110";
        ram[71] = "0b1010000011011110";
        ram[72] = "0b0010101110001110";
        ram[73] = "0b0010110111101000";
        ram[74] = "0b0010101110100001";
        ram[75] = "0b1010100111111100";
        ram[76] = "0b1010111010110001";
        ram[77] = "0b1011000000001011";
        ram[78] = "0b0010110010000100";
        ram[79] = "0b0011000000010101";
        ram[80] = "0b0011000000011011";
        ram[81] = "0b0010110001101000";
        ram[82] = "0b1010011110010101";
        ram[83] = "0b1010110101000001";
        ram[84] = "0b1010110001000000";
        ram[85] = "0b1010110110111010";
        ram[86] = "0b1010011111110111";
        ram[87] = "0b0010000111101100";
        ram[88] = "0b0010110011110001";
        ram[89] = "0b0010111001110011";
        ram[90] = "0b0010110110101001";
        ram[91] = "0b0001100001100111";
        ram[92] = "0b1010111010101101";
        ram[93] = "0b1011000001010110";
        ram[94] = "0b1010110110011111";
        ram[95] = "0b1001101011011001";
        ram[96] = "0b0010110111110000";
        ram[97] = "0b0010111110010001";
        ram[98] = "0b0010100010000010";
        ram[99] = "0b1010010101011100";
        ram[100] = "0b1010110111111011";
        ram[101] = "0b1010110111101011";
        ram[102] = "0b1010101000101011";
        ram[103] = "0b0010000001110111";


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


SC_MODULE(L3_wlo_L2_WEIGHTScrw) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTScrw_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTScrw) {
meminst = new L3_wlo_L2_WEIGHTScrw_ram("L3_wlo_L2_WEIGHTScrw_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTScrw() {
    delete meminst;
}


};//endmodule
#endif
