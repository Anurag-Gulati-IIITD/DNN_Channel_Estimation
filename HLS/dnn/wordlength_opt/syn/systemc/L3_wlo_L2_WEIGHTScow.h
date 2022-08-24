// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTScow_H__
#define __L3_wlo_L2_WEIGHTScow_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTScow_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTScow_ram) {
        ram[0] = "0b1010000010010011";
        ram[1] = "0b1010010010001011";
        ram[2] = "0b1010001010101010";
        ram[3] = "0b1001010001001101";
        ram[4] = "0b0010000111001011";
        ram[5] = "0b0010000011101011";
        ram[6] = "0b0001010010100001";
        ram[7] = "0b1001110010101100";
        ram[8] = "0b1001111010000001";
        ram[9] = "0b1001010111011000";
        ram[10] = "0b0001111100011001";
        ram[11] = "0b0010000001100111";
        ram[12] = "0b0001110000001110";
        ram[13] = "0b0000101011100010";
        ram[14] = "0b1001111000100011";
        ram[15] = "0b0001110001110000";
        ram[16] = "0b0010010000111000";
        ram[17] = "0b0001001000010010";
        ram[18] = "0b0001110011100100";
        ram[19] = "0b1010000101110100";
        ram[20] = "0b1010000011111101";
        ram[21] = "0b0001101100100110";
        ram[22] = "0b0010010001100101";
        ram[23] = "0b0001111110110011";
        ram[24] = "0b0001000111101000";
        ram[25] = "0b1010000000101111";
        ram[26] = "0b0001000101110101";
        ram[27] = "0b0001110101000011";
        ram[28] = "0b0010000000010011";
        ram[29] = "0b0001010100010010";
        ram[30] = "0b1001111110011011";
        ram[31] = "0b1001100111000011";
        ram[32] = "0b0001000111010111";
        ram[33] = "0b0001011111101000";
        ram[34] = "0b0001100100111111";
        ram[35] = "0b1000110111000000";
        ram[36] = "0b0001001010011000";
        ram[37] = "0b0001100111111110";
        ram[38] = "0b0001110000001101";
        ram[39] = "0b1001101000101110";
        ram[40] = "0b1001101101110010";
        ram[41] = "0b1010000001111100";
        ram[42] = "0b1001010101011000";
        ram[43] = "0b0001100010101011";
        ram[44] = "0b0001111011010001";
        ram[45] = "0b0001101100010100";
        ram[46] = "0b0000110011111111";
        ram[47] = "0b0001000110000001";
        ram[48] = "0b1001111001000111";
        ram[49] = "0b1001110001111010";
        ram[50] = "0b1001000000111010";
        ram[51] = "0b0001110001011111";
        ram[52] = "0b1010010001100111";
        ram[53] = "0b0000110010111000";
        ram[54] = "0b0010000011000101";
        ram[55] = "0b0010001111010001";
        ram[56] = "0b0010000100001100";
        ram[57] = "0b0001011000000000";
        ram[58] = "0b1010000100110111";
        ram[59] = "0b1001110110101010";
        ram[60] = "0b0001101111110011";
        ram[61] = "0b0010000110000011";
        ram[62] = "0b0001111101101001";
        ram[63] = "0b0001100100110100";
        ram[64] = "0b1010000011110001";
        ram[65] = "0b1000101001101100";
        ram[66] = "0b0010000110000001";
        ram[67] = "0b0001110111001011";
        ram[68] = "0b0001000110001100";
        ram[69] = "0b1001110100111101";
        ram[70] = "0b1010001110100110";
        ram[71] = "0b1001110101011000";
        ram[72] = "0b0010000010001010";
        ram[73] = "0b0010000010010000";
        ram[74] = "0b0001101110011001";
        ram[75] = "0b1001111001100111";
        ram[76] = "0b1010001101101001";
        ram[77] = "0b1001011000100110";
        ram[78] = "0b0010000011001101";
        ram[79] = "0b0001110100100100";
        ram[80] = "0b1001110101010110";
        ram[81] = "0b1010000011110000";
        ram[82] = "0b1001100101000011";
        ram[83] = "0b1001011111111011";
        ram[84] = "0b0010000100000101";
        ram[85] = "0b0001011110010101";
        ram[86] = "0b0001110000000101";
        ram[87] = "0b1001010101000011";
        ram[88] = "0b0001100100000010";
        ram[89] = "0b1001011000100000";
        ram[90] = "0b1001100000010110";
        ram[91] = "0b1001110010001100";
        ram[92] = "0b1001111001100100";
        ram[93] = "0b0001011101000100";
        ram[94] = "0b0001110010100100";
        ram[95] = "0b0010000001011011";
        ram[96] = "0b0001101001101011";
        ram[97] = "0b1001010001010101";
        ram[98] = "0b1010000100011110";
        ram[99] = "0b1001110111011000";
        ram[100] = "0b1001101000111000";
        ram[101] = "0b0001111001110111";
        ram[102] = "0b0010000000001001";
        ram[103] = "0b1001001111010101";


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


SC_MODULE(L3_wlo_L2_WEIGHTScow) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTScow_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTScow) {
meminst = new L3_wlo_L2_WEIGHTScow_ram("L3_wlo_L2_WEIGHTScow_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTScow() {
    delete meminst;
}


};//endmodule
#endif
