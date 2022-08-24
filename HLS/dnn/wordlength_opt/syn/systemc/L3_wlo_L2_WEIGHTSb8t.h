// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTSb8t_H__
#define __L3_wlo_L2_WEIGHTSb8t_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTSb8t_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTSb8t_ram) {
        ram[0] = "0b0011000011001001";
        ram[1] = "0b0010111011110010";
        ram[2] = "0b1001101010011110";
        ram[3] = "0b1010110110111010";
        ram[4] = "0b1011000001001111";
        ram[5] = "0b1010111000100001";
        ram[6] = "0b0001111110010001";
        ram[7] = "0b0010110110011001";
        ram[8] = "0b0010111110111001";
        ram[9] = "0b0010110110100001";
        ram[10] = "0b0010001000011111";
        ram[11] = "0b1010100110000010";
        ram[12] = "0b1010110001111111";
        ram[13] = "0b1010100101100101";
        ram[14] = "0b1010001001000010";
        ram[15] = "0b1001111111000110";
        ram[16] = "0b0010011100101111";
        ram[17] = "0b0010100000110001";
        ram[18] = "0b0010011100011110";
        ram[19] = "0b0010011000001100";
        ram[20] = "0b1010000000101011";
        ram[21] = "0b1010001011001111";
        ram[22] = "0b1010011101001100";
        ram[23] = "0b1010010111111100";
        ram[24] = "0b1001110101000101";
        ram[25] = "0b0010100101000100";
        ram[26] = "0b0010100001110111";
        ram[27] = "0b1010101101111100";
        ram[28] = "0b1010111010011010";
        ram[29] = "0b1010110100000101";
        ram[30] = "0b1001110101110000";
        ram[31] = "0b0010111100000010";
        ram[32] = "0b0010111100110001";
        ram[33] = "0b0010100000001110";
        ram[34] = "0b1010101010100010";
        ram[35] = "0b1010111011110111";
        ram[36] = "0b1010101000110011";
        ram[37] = "0b0010100110100010";
        ram[38] = "0b0010101001110001";
        ram[39] = "0b0010000100000101";
        ram[40] = "0b1010110000010100";
        ram[41] = "0b1010110101101101";
        ram[42] = "0b0010000010001111";
        ram[43] = "0b0010110111110111";
        ram[44] = "0b0010111111010010";
        ram[45] = "0b0010010111000110";
        ram[46] = "0b1010110011001101";
        ram[47] = "0b1011000001100111";
        ram[48] = "0b1010110110101100";
        ram[49] = "0b0010000111010111";
        ram[50] = "0b0010111110011011";
        ram[51] = "0b0010111001000111";
        ram[52] = "0b0001111010111100";
        ram[53] = "0b1010111001111011";
        ram[54] = "0b1011000011101000";
        ram[55] = "0b1010111010001110";
        ram[56] = "0b1010000000110111";
        ram[57] = "0b0010111001111000";
        ram[58] = "0b0011000001110110";
        ram[59] = "0b0010111001000111";
        ram[60] = "0b1000111001100000";
        ram[61] = "0b1010101100011011";
        ram[62] = "0b1010111001011010";
        ram[63] = "0b1010110100101111";
        ram[64] = "0b1010001101010101";
        ram[65] = "0b0010011110000010";
        ram[66] = "0b0010101101100011";
        ram[67] = "0b0010100111111110";
        ram[68] = "0b0010010011110100";
        ram[69] = "0b1010001001100000";
        ram[70] = "0b1010000001101110";
        ram[71] = "0b1010100000111100";
        ram[72] = "0b1010011000011001";
        ram[73] = "0b1010011011111011";
        ram[74] = "0b1010000010111000";
        ram[75] = "0b0010100110100101";
        ram[76] = "0b0010110001000011";
        ram[77] = "0b0010100110101101";
        ram[78] = "0b1010110011100000";
        ram[79] = "0b1010110010001000";
        ram[80] = "0b1001111111000010";
        ram[81] = "0b0010110110110011";
        ram[82] = "0b0010111101101100";
        ram[83] = "0b0010101001011110";
        ram[84] = "0b1010100011001001";
        ram[85] = "0b1010111001111010";
        ram[86] = "0b1010110101100010";
        ram[87] = "0b1001110011100001";
        ram[88] = "0b0010110000110000";
        ram[89] = "0b0010110100000110";
        ram[90] = "0b1000001011100010";
        ram[91] = "0b1010101000101001";
        ram[92] = "0b1010100110101010";
        ram[93] = "0b0010101010001101";
        ram[94] = "0b0010111000010101";
        ram[95] = "0b0010101110000000";
        ram[96] = "0b1010101010000101";
        ram[97] = "0b1010111111001100";
        ram[98] = "0b1011000000101010";
        ram[99] = "0b1010000110010000";
        ram[100] = "0b0010111011011010";
        ram[101] = "0b0011000000000000";
        ram[102] = "0b0010101110110101";
        ram[103] = "0b1010100100000010";


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


SC_MODULE(L3_wlo_L2_WEIGHTSb8t) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTSb8t_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTSb8t) {
meminst = new L3_wlo_L2_WEIGHTSb8t_ram("L3_wlo_L2_WEIGHTSb8t_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTSb8t() {
    delete meminst;
}


};//endmodule
#endif
