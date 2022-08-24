// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTSb3s_H__
#define __L3_wlo_L2_WEIGHTSb3s_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTSb3s_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTSb3s_ram) {
        ram[0] = "0b1010011111110001";
        ram[1] = "0b0010011101001000";
        ram[2] = "0b0001101110011100";
        ram[3] = "0b0010100110110111";
        ram[4] = "0b1001010001010110";
        ram[5] = "0b1001110101110100";
        ram[6] = "0b1010000111000000";
        ram[7] = "0b1001110010010010";
        ram[8] = "0b0001110000010100";
        ram[9] = "0b1010000101101100";
        ram[10] = "0b0001011100000100";
        ram[11] = "0b0010010011000001";
        ram[12] = "0b1010010101001111";
        ram[13] = "0b0010100100100000";
        ram[14] = "0b0000100000010000";
        ram[15] = "0b1010011011100110";
        ram[16] = "0b1001110100011000";
        ram[17] = "0b0001111111011000";
        ram[18] = "0b0010001001100000";
        ram[19] = "0b1001100001101110";
        ram[20] = "0b0010010010010111";
        ram[21] = "0b1010010110111101";
        ram[22] = "0b0001111010011010";
        ram[23] = "0b1001101000001111";
        ram[24] = "0b1010001101101001";
        ram[25] = "0b1010000110010001";
        ram[26] = "0b0010011011110100";
        ram[27] = "0b0010011010111010";
        ram[28] = "0b1010000110111011";
        ram[29] = "0b1010011001001110";
        ram[30] = "0b1001110110111010";
        ram[31] = "0b0001111010111001";
        ram[32] = "0b1010010001001010";
        ram[33] = "0b1010011101111111";
        ram[34] = "0b0010001011000010";
        ram[35] = "0b0010001011011000";
        ram[36] = "0b0010011100000010";
        ram[37] = "0b0010010110000110";
        ram[38] = "0b1010010001111010";
        ram[39] = "0b0001100110100111";
        ram[40] = "0b1010010111111110";
        ram[41] = "0b0010000100010110";
        ram[42] = "0b0010010000110001";
        ram[43] = "0b0001011100111100";
        ram[44] = "0b1010010001110011";
        ram[45] = "0b0001110111100100";
        ram[46] = "0b0010100010100100";
        ram[47] = "0b1010010100100110";
        ram[48] = "0b1001110010011001";
        ram[49] = "0b0010010100010000";
        ram[50] = "0b0001101111101011";
        ram[51] = "0b1010010110100110";
        ram[52] = "0b0010100011101111";
        ram[53] = "0b1010001010111000";
        ram[54] = "0b1010010000111010";
        ram[55] = "0b0010010100000010";
        ram[56] = "0b1001111001011000";
        ram[57] = "0b0010000011011001";
        ram[58] = "0b1010000001111001";
        ram[59] = "0b1001100001110110";
        ram[60] = "0b1001110010001011";
        ram[61] = "0b1010010101100001";
        ram[62] = "0b0001101100100101";
        ram[63] = "0b1010000110100111";
        ram[64] = "0b0001101110111011";
        ram[65] = "0b1010001111111110";
        ram[66] = "0b1010010101001101";
        ram[67] = "0b0010010100111111";
        ram[68] = "0b1010000101011000";
        ram[69] = "0b0010100011101110";
        ram[70] = "0b1010011011101111";
        ram[71] = "0b0001111011111110";
        ram[72] = "0b0010010001101100";
        ram[73] = "0b1001101010111110";
        ram[74] = "0b0001110001100101";
        ram[75] = "0b1010001000011100";
        ram[76] = "0b1010001000101001";
        ram[77] = "0b1010100100010110";
        ram[78] = "0b1010011000011110";
        ram[79] = "0b0010001011010101";
        ram[80] = "0b0001110011111010";
        ram[81] = "0b0010000010011110";
        ram[82] = "0b0010001000000011";
        ram[83] = "0b0010010010111001";
        ram[84] = "0b0010100010100111";
        ram[85] = "0b0010000001010000";
        ram[86] = "0b0001110001110000";
        ram[87] = "0b0001111100011111";
        ram[88] = "0b1001111011010110";
        ram[89] = "0b0010100000011001";
        ram[90] = "0b0010001000000001";
        ram[91] = "0b1010100001011111";
        ram[92] = "0b1010100010111000";
        ram[93] = "0b0010100101100110";
        ram[94] = "0b0010010100000011";
        ram[95] = "0b0001101111100110";
        ram[96] = "0b1010011101000101";
        ram[97] = "0b0001111100000011";
        ram[98] = "0b0010001101001010";
        ram[99] = "0b1010010111110111";
        ram[100] = "0b1010001001110111";
        ram[101] = "0b1010010001011110";
        ram[102] = "0b0001111000110110";
        ram[103] = "0b0010010111101110";


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


SC_MODULE(L3_wlo_L2_WEIGHTSb3s) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTSb3s_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTSb3s) {
meminst = new L3_wlo_L2_WEIGHTSb3s_ram("L3_wlo_L2_WEIGHTSb3s_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTSb3s() {
    delete meminst;
}


};//endmodule
#endif
