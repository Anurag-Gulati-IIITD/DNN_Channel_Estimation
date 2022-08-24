// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTScpw_H__
#define __L3_wlo_L2_WEIGHTScpw_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTScpw_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTScpw_ram) {
        ram[0] = "0b0001011010001110";
        ram[1] = "0b0010001100011001";
        ram[2] = "0b0010000000100000";
        ram[3] = "0b0001101110000100";
        ram[4] = "0b1010000000100001";
        ram[5] = "0b1010000111110011";
        ram[6] = "0b1010001101000110";
        ram[7] = "0b1010000100001011";
        ram[8] = "0b0001100000010101";
        ram[9] = "0b0010000011111101";
        ram[10] = "0b0010000110100011";
        ram[11] = "0b0010000000110010";
        ram[12] = "0b0001000011001001";
        ram[13] = "0b1001110101101100";
        ram[14] = "0b1001111101011111";
        ram[15] = "0b1001100000011011";
        ram[16] = "0b1001010100100010";
        ram[17] = "0b1001101011011011";
        ram[18] = "0b1001111001011101";
        ram[19] = "0b0001101001110110";
        ram[20] = "0b1001100000001010";
        ram[21] = "0b1000110111001101";
        ram[22] = "0b0001010111101011";
        ram[23] = "0b1001011100111011";
        ram[24] = "0b0001001110100101";
        ram[25] = "0b0001010011001111";
        ram[26] = "0b1001101101000110";
        ram[27] = "0b1001110011011010";
        ram[28] = "0b1001010011110111";
        ram[29] = "0b0001010110100110";
        ram[30] = "0b0001110110111011";
        ram[31] = "0b0010001011110011";
        ram[32] = "0b0001101000101011";
        ram[33] = "0b0001011111001011";
        ram[34] = "0b1001110100100001";
        ram[35] = "0b1001111001011101";
        ram[36] = "0b1001111111111110";
        ram[37] = "0b1001111001001100";
        ram[38] = "0b1001010001110101";
        ram[39] = "0b0001010101101110";
        ram[40] = "0b0010000101100000";
        ram[41] = "0b0010001110001011";
        ram[42] = "0b0001111100011010";
        ram[43] = "0b1001100010000010";
        ram[44] = "0b1010001101001000";
        ram[45] = "0b1010001001000111";
        ram[46] = "0b1001011111101111";
        ram[47] = "0b0001110111000100";
        ram[48] = "0b0010000110001010";
        ram[49] = "0b0010000101110010";
        ram[50] = "0b1001101101111001";
        ram[51] = "0b1001101101000001";
        ram[52] = "0b0001111111001110";
        ram[53] = "0b0001110001011110";
        ram[54] = "0b1001100001001100";
        ram[55] = "0b1010001101000101";
        ram[56] = "0b1010001000101001";
        ram[57] = "0b1010000010011110";
        ram[58] = "0b0001111101000100";
        ram[59] = "0b0010000111001101";
        ram[60] = "0b0010000100110110";
        ram[61] = "0b0001110111100110";
        ram[62] = "0b1001100111101010";
        ram[63] = "0b1010000111110111";
        ram[64] = "0b1001111000100001";
        ram[65] = "0b1001111011110101";
        ram[66] = "0b1001001110010000";
        ram[67] = "0b0000101001000010";
        ram[68] = "0b0001000100100101";
        ram[69] = "0b0001100100101010";
        ram[70] = "0b1001100111111000";
        ram[71] = "0b0001101011011011";
        ram[72] = "0b0001110100100101";
        ram[73] = "0b1001101010011010";
        ram[74] = "0b0001101001001100";
        ram[75] = "0b0001010110111011";
        ram[76] = "0b1001101100100100";
        ram[77] = "0b1000110110000001";
        ram[78] = "0b0000000011011010";
        ram[79] = "0b0001101110100101";
        ram[80] = "0b0001110011100010";
        ram[81] = "0b0010001001001111";
        ram[82] = "0b0001010000101001";
        ram[83] = "0b1000110001110101";
        ram[84] = "0b1001110001101010";
        ram[85] = "0b1010000101011111";
        ram[86] = "0b1010000101010100";
        ram[87] = "0b0000101011000000";
        ram[88] = "0b1001100011011001";
        ram[89] = "0b0001101011111110";
        ram[90] = "0b0010000001101001";
        ram[91] = "0b0001111101101111";
        ram[92] = "0b0001111010010101";
        ram[93] = "0b1000011101000110";
        ram[94] = "0b1010000101100101";
        ram[95] = "0b1010001111100001";
        ram[96] = "0b1001111100100010";
        ram[97] = "0b0001101110000100";
        ram[98] = "0b0010001101100010";
        ram[99] = "0b0010001000110010";
        ram[100] = "0b1001011000011100";
        ram[101] = "0b1001110101100001";
        ram[102] = "0b1010000110100110";
        ram[103] = "0b1001111111110110";


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


SC_MODULE(L3_wlo_L2_WEIGHTScpw) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTScpw_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTScpw) {
meminst = new L3_wlo_L2_WEIGHTScpw_ram("L3_wlo_L2_WEIGHTScpw_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTScpw() {
    delete meminst;
}


};//endmodule
#endif
