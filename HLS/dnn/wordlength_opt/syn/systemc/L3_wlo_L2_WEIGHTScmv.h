// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTScmv_H__
#define __L3_wlo_L2_WEIGHTScmv_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTScmv_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTScmv_ram) {
        ram[0] = "0b0001111001001110";
        ram[1] = "0b1001011110010101";
        ram[2] = "0b0001101000001111";
        ram[3] = "0b0001111010011011";
        ram[4] = "0b0001001000000001";
        ram[5] = "0b1001110011110111";
        ram[6] = "0b0001100010001110";
        ram[7] = "0b1001110110011011";
        ram[8] = "0b1001100001010001";
        ram[9] = "0b0001010010000110";
        ram[10] = "0b0001101100011110";
        ram[11] = "0b0001101111011111";
        ram[12] = "0b0001111100110100";
        ram[13] = "0b0001111011001011";
        ram[14] = "0b1001101011000110";
        ram[15] = "0b1010001010000101";
        ram[16] = "0b1001101000111001";
        ram[17] = "0b1001001011111101";
        ram[18] = "0b0001100111001110";
        ram[19] = "0b0001110100101111";
        ram[20] = "0b1001111010110000";
        ram[21] = "0b1001100100000101";
        ram[22] = "0b0001111010011001";
        ram[23] = "0b0001110001100011";
        ram[24] = "0b1001000010110000";
        ram[25] = "0b0001100111101110";
        ram[26] = "0b1010000100010101";
        ram[27] = "0b0010000011001011";
        ram[28] = "0b1000111100100101";
        ram[29] = "0b0001111010001010";
        ram[30] = "0b0001110010110001";
        ram[31] = "0b1010000001110000";
        ram[32] = "0b1010000010000111";
        ram[33] = "0b1001110110110100";
        ram[34] = "0b0000111110010010";
        ram[35] = "0b0001010111110100";
        ram[36] = "0b0010000100110001";
        ram[37] = "0b0001100000001001";
        ram[38] = "0b1001011000110101";
        ram[39] = "0b1001010110010100";
        ram[40] = "0b0001101010010011";
        ram[41] = "0b1001001000010010";
        ram[42] = "0b1001100100110100";
        ram[43] = "0b1001110111101001";
        ram[44] = "0b1000101000111010";
        ram[45] = "0b0001001100111100";
        ram[46] = "0b0001110001011011";
        ram[47] = "0b0001111100110101";
        ram[48] = "0b0001111010101101";
        ram[49] = "0b1001110110011011";
        ram[50] = "0b1001100100101010";
        ram[51] = "0b1010000100100111";
        ram[52] = "0b0001110000011011";
        ram[53] = "0b0001000010110110";
        ram[54] = "0b1001110010110101";
        ram[55] = "0b1001010001000100";
        ram[56] = "0b1001100011000110";
        ram[57] = "0b1001101011010011";
        ram[58] = "0b1001010011110110";
        ram[59] = "0b0001110000011110";
        ram[60] = "0b0001011110100111";
        ram[61] = "0b0001011110101101";
        ram[62] = "0b0001110100100011";
        ram[63] = "0b0001110000011010";
        ram[64] = "0b1001100011011110";
        ram[65] = "0b1010000111011101";
        ram[66] = "0b1001100101010111";
        ram[67] = "0b1001001001010001";
        ram[68] = "0b0001101000111110";
        ram[69] = "0b0001111100001101";
        ram[70] = "0b1001110110011010";
        ram[71] = "0b1001100111110000";
        ram[72] = "0b0001110000010010";
        ram[73] = "0b1001011000010011";
        ram[74] = "0b0001100001001000";
        ram[75] = "0b0001101111111000";
        ram[76] = "0b1001101100010000";
        ram[77] = "0b1010000000111100";
        ram[78] = "0b1001100100100011";
        ram[79] = "0b0001110101110100";
        ram[80] = "0b0010000110100110";
        ram[81] = "0b1010000010001101";
        ram[82] = "0b1001111000011001";
        ram[83] = "0b1001110010001100";
        ram[84] = "0b1001010100100011";
        ram[85] = "0b0001101001001001";
        ram[86] = "0b0010001000011000";
        ram[87] = "0b0001100110110001";
        ram[88] = "0b1001100101010111";
        ram[89] = "0b0001010001101011";
        ram[90] = "0b1001100001000101";
        ram[91] = "0b1000110000001000";
        ram[92] = "0b1000001011100010";
        ram[93] = "0b0001001001111001";
        ram[94] = "0b0000101011000000";
        ram[95] = "0b0000110011100110";
        ram[96] = "0b0001100111110000";
        ram[97] = "0b0001110001111011";
        ram[98] = "0b1000000000000000";
        ram[99] = "0b1001101100111110";
        ram[100] = "0b1001100010101111";
        ram[101] = "0b1010000011110001";
        ram[102] = "0b1001110000010111";
        ram[103] = "0b0010000000101101";


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


SC_MODULE(L3_wlo_L2_WEIGHTScmv) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTScmv_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTScmv) {
meminst = new L3_wlo_L2_WEIGHTScmv_ram("L3_wlo_L2_WEIGHTScmv_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTScmv() {
    delete meminst;
}


};//endmodule
#endif
