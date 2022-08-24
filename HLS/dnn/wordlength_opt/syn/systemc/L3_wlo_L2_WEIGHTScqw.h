// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTScqw_H__
#define __L3_wlo_L2_WEIGHTScqw_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTScqw_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTScqw_ram) {
        ram[0] = "0b1010110011000010";
        ram[1] = "0b1010010100010011";
        ram[2] = "0b0010101101110110";
        ram[3] = "0b0010111010010000";
        ram[4] = "0b0010110111000000";
        ram[5] = "0b0010100000100000";
        ram[6] = "0b1010010101010101";
        ram[7] = "0b1010110111001000";
        ram[8] = "0b1010101110101001";
        ram[9] = "0b1010100100110101";
        ram[10] = "0b1010010010101111";
        ram[11] = "0b0010000011110100";
        ram[12] = "0b0010101110100011";
        ram[13] = "0b0010110111110100";
        ram[14] = "0b0010110001110101";
        ram[15] = "0b1010100100110001";
        ram[16] = "0b1010110111110010";
        ram[17] = "0b1010110111001111";
        ram[18] = "0b1010110010000111";
        ram[19] = "0b0001100010011011";
        ram[20] = "0b0010110001110000";
        ram[21] = "0b0010111000110110";
        ram[22] = "0b0010110010000000";
        ram[23] = "0b1010001010111010";
        ram[24] = "0b1010110100010100";
        ram[25] = "0b1010110000001100";
        ram[26] = "0b0010000010111011";
        ram[27] = "0b0010011101100000";
        ram[28] = "0b0010010111010111";
        ram[29] = "0b0010100001000101";
        ram[30] = "0b0010010011110100";
        ram[31] = "0b0010001010010101";
        ram[32] = "0b1010010110001000";
        ram[33] = "0b1010110001101000";
        ram[34] = "0b1010101100101010";
        ram[35] = "0b1010100100001000";
        ram[36] = "0b1001011101110001";
        ram[37] = "0b0010101100110011";
        ram[38] = "0b0010101010010001";
        ram[39] = "0b0010100101000111";
        ram[40] = "0b0001111000010011";
        ram[41] = "0b1010011000100001";
        ram[42] = "0b1010100011111010";
        ram[43] = "0b1010100101000111";
        ram[44] = "0b1010110000010110";
        ram[45] = "0b1010110001101010";
        ram[46] = "0b1010000010010100";
        ram[47] = "0b0010011010010111";
        ram[48] = "0b0010111110000000";
        ram[49] = "0b0010110101011011";
        ram[50] = "0b0010101111010100";
        ram[51] = "0b1010101100100101";
        ram[52] = "0b0010110000101101";
        ram[53] = "0b0010111010101101";
        ram[54] = "0b0010101011111011";
        ram[55] = "0b0010100101011100";
        ram[56] = "0b1010110000110110";
        ram[57] = "0b1010110101101000";
        ram[58] = "0b1010110100011110";
        ram[59] = "0b1010100000111101";
        ram[60] = "0b0010000110100000";
        ram[61] = "0b0010101001100100";
        ram[62] = "0b0010101101100111";
        ram[63] = "0b0010101001111011";
        ram[64] = "0b0010101100010001";
        ram[65] = "0b1010011100011110";
        ram[66] = "0b1010101011110110";
        ram[67] = "0b1010110101001000";
        ram[68] = "0b1010110010111000";
        ram[69] = "0b1010011000100011";
        ram[70] = "0b0010110110010000";
        ram[71] = "0b0010111001100000";
        ram[72] = "0b0010111000011001";
        ram[73] = "0b0010010100000110";
        ram[74] = "0b1010110110000100";
        ram[75] = "0b1010110000111101";
        ram[76] = "0b1010010101011101";
        ram[77] = "0b0001110010010010";
        ram[78] = "0b0010101011001110";
        ram[79] = "0b0010011110100110";
        ram[80] = "0b0010011001110011";
        ram[81] = "0b0001110011110100";
        ram[82] = "0b1010100000000000";
        ram[83] = "0b1010100110100111";
        ram[84] = "0b1010101000100001";
        ram[85] = "0b1010011011100101";
        ram[86] = "0b0010011000000010";
        ram[87] = "0b0010110001001111";
        ram[88] = "0b0010101011101000";
        ram[89] = "0b0010101011000011";
        ram[90] = "0b0010011001001101";
        ram[91] = "0b1010001000000010";
        ram[92] = "0b1010100101000100";
        ram[93] = "0b1010100001010111";
        ram[94] = "0b1010011010011111";
        ram[95] = "0b1010100110001010";
        ram[96] = "0b0010000001101010";
        ram[97] = "0b0010010011100011";
        ram[98] = "0b0010110100011110";
        ram[99] = "0b0010111111010100";
        ram[100] = "0b0010100111000101";
        ram[101] = "0b1010110001010100";
        ram[102] = "0b1010110101100001";
        ram[103] = "0b1010110000010011";


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


SC_MODULE(L3_wlo_L2_WEIGHTScqw) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTScqw_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTScqw) {
meminst = new L3_wlo_L2_WEIGHTScqw_ram("L3_wlo_L2_WEIGHTScqw_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTScqw() {
    delete meminst;
}


};//endmodule
#endif
