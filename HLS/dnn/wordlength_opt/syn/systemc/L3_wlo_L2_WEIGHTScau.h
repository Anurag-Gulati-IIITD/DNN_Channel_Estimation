// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTScau_H__
#define __L3_wlo_L2_WEIGHTScau_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTScau_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTScau_ram) {
        ram[0] = "0b1010011011001000";
        ram[1] = "0b1010110101011101";
        ram[2] = "0b1010110000101000";
        ram[3] = "0b1010101110010000";
        ram[4] = "0b0010010010110000";
        ram[5] = "0b1001110111110000";
        ram[6] = "0b0010011111001110";
        ram[7] = "0b1010000011010010";
        ram[8] = "0b0010011100001100";
        ram[9] = "0b0010100100111100";
        ram[10] = "0b0010010100010010";
        ram[11] = "0b1010011100011100";
        ram[12] = "0b1010011100100100";
        ram[13] = "0b1010111000110010";
        ram[14] = "0b1010010101000111";
        ram[15] = "0b0010010010000100";
        ram[16] = "0b0010101010001001";
        ram[17] = "0b0010101000000110";
        ram[18] = "0b1010011000101101";
        ram[19] = "0b1010100100010011";
        ram[20] = "0b1010100100010110";
        ram[21] = "0b1001110111110011";
        ram[22] = "0b0010011110110011";
        ram[23] = "0b0010001110110110";
        ram[24] = "0b0010010001010001";
        ram[25] = "0b1010100110010001";
        ram[26] = "0b0010000011111000";
        ram[27] = "0b0010010011010111";
        ram[28] = "0b0001111110000100";
        ram[29] = "0b1010100000110011";
        ram[30] = "0b1010000000000101";
        ram[31] = "0b0000000010010111";
        ram[32] = "0b0010110001101100";
        ram[33] = "0b0010101011001111";
        ram[34] = "0b0010000101000101";
        ram[35] = "0b1010100101111001";
        ram[36] = "0b1010110000101001";
        ram[37] = "0b1010011111100011";
        ram[38] = "0b0001110101110011";
        ram[39] = "0b0010011000110110";
        ram[40] = "0b0010000100100001";
        ram[41] = "0b1010010000101001";
        ram[42] = "0b1010101001000001";
        ram[43] = "0b0010100001111111";
        ram[44] = "0b0010100100010100";
        ram[45] = "0b0010110101100000";
        ram[46] = "0b0010001111000110";
        ram[47] = "0b1010101001100100";
        ram[48] = "0b1010111000101010";
        ram[49] = "0b1010111100111110";
        ram[50] = "0b1010101111101001";
        ram[51] = "0b0010101000100010";
        ram[52] = "0b1011000010010110";
        ram[53] = "0b1010011110110000";
        ram[54] = "0b0010011001101011";
        ram[55] = "0b0010100100111000";
        ram[56] = "0b0010101000010001";
        ram[57] = "0b0010011100111101";
        ram[58] = "0b1010001011010000";
        ram[59] = "0b0001100100010100";
        ram[60] = "0b0010010100001001";
        ram[61] = "0b1001010000000011";
        ram[62] = "0b1010100111111110";
        ram[63] = "0b1010010001001101";
        ram[64] = "0b1010011001100001";
        ram[65] = "0b0010010001101110";
        ram[66] = "0b0010101100010101";
        ram[67] = "0b0010011111111011";
        ram[68] = "0b1001100010011101";
        ram[69] = "0b1010100111101101";
        ram[70] = "0b1001111001111010";
        ram[71] = "0b1001110011010010";
        ram[72] = "0b0010101000110111";
        ram[73] = "0b0010101110011001";
        ram[74] = "0b0010010110001001";
        ram[75] = "0b1010010101100011";
        ram[76] = "0b1010011100110000";
        ram[77] = "0b1010011100010011";
        ram[78] = "0b0010011100111001";
        ram[79] = "0b1001110101101001";
        ram[80] = "0b1010010010010100";
        ram[81] = "0b1001100110110011";
        ram[82] = "0b0010101011101110";
        ram[83] = "0b0010011010000101";
        ram[84] = "0b0010010000001000";
        ram[85] = "0b1010100111000101";
        ram[86] = "0b1010100101111010";
        ram[87] = "0b1010101100111101";
        ram[88] = "0b1001101110010011";
        ram[89] = "0b0010110000011111";
        ram[90] = "0b0010100111110100";
        ram[91] = "0b0010011110111010";
        ram[92] = "0b1010000110100100";
        ram[93] = "0b1010101101011000";
        ram[94] = "0b1001110010001100";
        ram[95] = "0b0010100101100101";
        ram[96] = "0b0010100000100001";
        ram[97] = "0b1010011001000101";
        ram[98] = "0b1010101010011001";
        ram[99] = "0b1010110010001000";
        ram[100] = "0b1001110000101011";
        ram[101] = "0b0010110001111001";
        ram[102] = "0b0010111000110100";
        ram[103] = "0b0010110101000100";


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


SC_MODULE(L3_wlo_L2_WEIGHTScau) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTScau_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTScau) {
meminst = new L3_wlo_L2_WEIGHTScau_ram("L3_wlo_L2_WEIGHTScau_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTScau() {
    delete meminst;
}


};//endmodule
#endif
