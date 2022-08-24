// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTSb0s_H__
#define __L3_wlo_L2_WEIGHTSb0s_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTSb0s_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTSb0s_ram) {
        ram[0] = "0b0001101011011100";
        ram[1] = "0b1010011111101101";
        ram[2] = "0b1010000010000100";
        ram[3] = "0b0010100001111000";
        ram[4] = "0b0001100101111001";
        ram[5] = "0b1010010010110110";
        ram[6] = "0b1010111000000011";
        ram[7] = "0b1010101100011011";
        ram[8] = "0b0010100000100000";
        ram[9] = "0b0010110001001111";
        ram[10] = "0b0010101001010001";
        ram[11] = "0b1010001000111011";
        ram[12] = "0b1010110111000110";
        ram[13] = "0b1010110000101000";
        ram[14] = "0b1010011010001101";
        ram[15] = "0b0010101111011110";
        ram[16] = "0b0010110010110011";
        ram[17] = "0b1000110001101000";
        ram[18] = "0b1010110001100001";
        ram[19] = "0b1010110100100011";
        ram[20] = "0b1001110010011001";
        ram[21] = "0b0010101100111000";
        ram[22] = "0b0010110011011100";
        ram[23] = "0b0010100101011000";
        ram[24] = "0b1010101000100111";
        ram[25] = "0b1010110101001000";
        ram[26] = "0b0001101010110110";
        ram[27] = "0b0010101000110100";
        ram[28] = "0b0010101110100001";
        ram[29] = "0b0010100101010001";
        ram[30] = "0b1001101100110001";
        ram[31] = "0b1010100011101010";
        ram[32] = "0b1010011001101111";
        ram[33] = "0b1010011100001110";
        ram[34] = "0b1010100111100101";
        ram[35] = "0b1010011101101100";
        ram[36] = "0b0010100001100101";
        ram[37] = "0b0010101111011010";
        ram[38] = "0b0010110101110000";
        ram[39] = "0b0010011100110010";
        ram[40] = "0b1010100001100011";
        ram[41] = "0b1010110100001100";
        ram[42] = "0b1010110100000001";
        ram[43] = "0b1010010100001111";
        ram[44] = "0b0010101100011110";
        ram[45] = "0b0010110011111101";
        ram[46] = "0b0010101011001100";
        ram[47] = "0b0010001000001100";
        ram[48] = "0b1010010100011011";
        ram[49] = "0b1010001110111110";
        ram[50] = "0b1010100000110001";
        ram[51] = "0b1010011100111101";
        ram[52] = "0b0010010010101101";
        ram[53] = "0b0010010100101001";
        ram[54] = "0b0010001110100111";
        ram[55] = "0b1010001110010001";
        ram[56] = "0b1010011111111100";
        ram[57] = "0b1010100111000010";
        ram[58] = "0b0010010010001111";
        ram[59] = "0b0010101010000101";
        ram[60] = "0b0010110000111110";
        ram[61] = "0b0010011100010101";
        ram[62] = "0b1010011110111011";
        ram[63] = "0b1010110101101000";
        ram[64] = "0b1010100101001001";
        ram[65] = "0b0010100010101010";
        ram[66] = "0b0010110000100111";
        ram[67] = "0b0010101100001101";
        ram[68] = "0b1010001011110110";
        ram[69] = "0b1010110010100111";
        ram[70] = "0b1010101110010101";
        ram[71] = "0b0010100001000100";
        ram[72] = "0b0010110111000111";
        ram[73] = "0b0010100110110111";
        ram[74] = "0b1010011011101000";
        ram[75] = "0b1010110100110110";
        ram[76] = "0b1010110010101101";
        ram[77] = "0b1001101110111111";
        ram[78] = "0b0010101010111000";
        ram[79] = "0b0010010001101111";
        ram[80] = "0b1000111101011111";
        ram[81] = "0b1010011111010101";
        ram[82] = "0b1010100100001111";
        ram[83] = "0b1010010000011001";
        ram[84] = "0b1010100001000001";
        ram[85] = "0b1010000000110000";
        ram[86] = "0b0010011011001000";
        ram[87] = "0b0010100010101000";
        ram[88] = "0b0010110001000010";
        ram[89] = "0b0010000011100011";
        ram[90] = "0b1010011110000110";
        ram[91] = "0b1010110011111011";
        ram[92] = "0b1010110110100111";
        ram[93] = "0b1010010010101001";
        ram[94] = "0b0010101110011010";
        ram[95] = "0b0010110001110000";
        ram[96] = "0b0010101100110110";
        ram[97] = "0b0001111101010100";
        ram[98] = "0b1010001011100001";
        ram[99] = "0b1010101000000001";
        ram[100] = "0b1010100010110011";
        ram[101] = "0b1010001100101100";
        ram[102] = "0b1010001011111010";
        ram[103] = "0b0010101010100110";


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


SC_MODULE(L3_wlo_L2_WEIGHTSb0s) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTSb0s_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTSb0s) {
meminst = new L3_wlo_L2_WEIGHTSb0s_ram("L3_wlo_L2_WEIGHTSb0s_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTSb0s() {
    delete meminst;
}


};//endmodule
#endif
