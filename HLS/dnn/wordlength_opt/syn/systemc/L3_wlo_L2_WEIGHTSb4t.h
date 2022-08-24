// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTSb4t_H__
#define __L3_wlo_L2_WEIGHTSb4t_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTSb4t_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTSb4t_ram) {
        ram[0] = "0b1011000011010010";
        ram[1] = "0b1010110101110010";
        ram[2] = "0b1010011110000110";
        ram[3] = "0b0001111011101100";
        ram[4] = "0b0010010011111111";
        ram[5] = "0b0010100001000100";
        ram[6] = "0b0010101101100100";
        ram[7] = "0b0010111001011100";
        ram[8] = "0b0010110101001011";
        ram[9] = "0b0010010010000110";
        ram[10] = "0b1010101101000110";
        ram[11] = "0b1010110111001111";
        ram[12] = "0b1010110111001100";
        ram[13] = "0b1010101010011011";
        ram[14] = "0b1010010000001101";
        ram[15] = "0b0010011011101001";
        ram[16] = "0b0010101101111010";
        ram[17] = "0b0010110011000101";
        ram[18] = "0b0010110101001111";
        ram[19] = "0b0010101010101101";
        ram[20] = "0b0010000000001101";
        ram[21] = "0b1010100101111011";
        ram[22] = "0b1010110011101110";
        ram[23] = "0b1010110111010010";
        ram[24] = "0b1010110100010010";
        ram[25] = "0b1010100101010101";
        ram[26] = "0b0010101110100010";
        ram[27] = "0b0010110101101010";
        ram[28] = "0b0010111000000011";
        ram[29] = "0b0010101101010111";
        ram[30] = "0b0001111010100011";
        ram[31] = "0b1010100100110000";
        ram[32] = "0b1010110001001111";
        ram[33] = "0b1010110001110010";
        ram[34] = "0b1010100110010110";
        ram[35] = "0b1010100001001101";
        ram[36] = "0b0001100100010000";
        ram[37] = "0b0010100110110000";
        ram[38] = "0b0010110010101001";
        ram[39] = "0b0010110111110110";
        ram[40] = "0b0010110010001101";
        ram[41] = "0b0001111011110000";
        ram[42] = "0b1010101011000100";
        ram[43] = "0b1010110110010000";
        ram[44] = "0b1010101110111111";
        ram[45] = "0b1010100111110001";
        ram[46] = "0b1010011000000001";
        ram[47] = "0b1010010000111110";
        ram[48] = "0b1001011010011101";
        ram[49] = "0b0010100111000001";
        ram[50] = "0b0011000000100010";
        ram[51] = "0b0011000011110001";
        ram[52] = "0b0001111111111110";
        ram[53] = "0b0010110000111001";
        ram[54] = "0b0010110100101010";
        ram[55] = "0b0010101110101110";
        ram[56] = "0b0010101000001001";
        ram[57] = "0b0010101010010111";
        ram[58] = "0b0010100100110001";
        ram[59] = "0b1010001001011100";
        ram[60] = "0b1010110001100001";
        ram[61] = "0b1010111000100010";
        ram[62] = "0b1010110110010111";
        ram[63] = "0b1010011100011011";
        ram[64] = "0b0010010101110010";
        ram[65] = "0b0010110010010111";
        ram[66] = "0b0010110010001001";
        ram[67] = "0b0010110010101100";
        ram[68] = "0b0010100111000110";
        ram[69] = "0b0010100001010100";
        ram[70] = "0b1010010010100110";
        ram[71] = "0b1010110010001001";
        ram[72] = "0b1010110111011010";
        ram[73] = "0b1010110110011001";
        ram[74] = "0b1010101100110011";
        ram[75] = "0b1001001100001110";
        ram[76] = "0b0010101010010110";
        ram[77] = "0b0010110110111100";
        ram[78] = "0b0010110000101101";
        ram[79] = "0b0010001001001101";
        ram[80] = "0b1010100010011111";
        ram[81] = "0b1010110011110110";
        ram[82] = "0b1010110111001010";
        ram[83] = "0b1010110100001111";
        ram[84] = "0b1010011101101011";
        ram[85] = "0b0010000001010101";
        ram[86] = "0b0010101010100111";
        ram[87] = "0b0010110000100111";
        ram[88] = "0b0010110010111111";
        ram[89] = "0b0010110000000100";
        ram[90] = "0b0010011011100011";
        ram[91] = "0b1010001101110001";
        ram[92] = "0b1010110100001000";
        ram[93] = "0b1010111100011001";
        ram[94] = "0b1010110100100110";
        ram[95] = "0b1010010101101000";
        ram[96] = "0b0010011110111000";
        ram[97] = "0b0010100101110010";
        ram[98] = "0b0010011010101010";
        ram[99] = "0b0010100100001000";
        ram[100] = "0b0010110000110111";
        ram[101] = "0b0010111001001011";
        ram[102] = "0b0010101000111010";
        ram[103] = "0b1010100110010110";


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


SC_MODULE(L3_wlo_L2_WEIGHTSb4t) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTSb4t_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTSb4t) {
meminst = new L3_wlo_L2_WEIGHTSb4t_ram("L3_wlo_L2_WEIGHTSb4t_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTSb4t() {
    delete meminst;
}


};//endmodule
#endif
