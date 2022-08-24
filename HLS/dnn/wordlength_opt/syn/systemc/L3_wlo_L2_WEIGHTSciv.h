// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTSciv_H__
#define __L3_wlo_L2_WEIGHTSciv_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTSciv_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTSciv_ram) {
        ram[0] = "0b1001111010010011";
        ram[1] = "0b1001111101100100";
        ram[2] = "0b0001101101101101";
        ram[3] = "0b0010000010000000";
        ram[4] = "0b0001110011010010";
        ram[5] = "0b1001010011100000";
        ram[6] = "0b1001111001101011";
        ram[7] = "0b1001110100111011";
        ram[8] = "0b1001100010010000";
        ram[9] = "0b0001101111001011";
        ram[10] = "0b0001100000001011";
        ram[11] = "0b0000100110001010";
        ram[12] = "0b0000110010110100";
        ram[13] = "0b1001010000011110";
        ram[14] = "0b1001010001001000";
        ram[15] = "0b0001101001000000";
        ram[16] = "0b0001110000011011";
        ram[17] = "0b1000011001111101";
        ram[18] = "0b1001011011010001";
        ram[19] = "0b1001101100111001";
        ram[20] = "0b1001111010101110";
        ram[21] = "0b1001100101011010";
        ram[22] = "0b0001010110010000";
        ram[23] = "0b0001110001011110";
        ram[24] = "0b0001010100110010";
        ram[25] = "0b0001010101000111";
        ram[26] = "0b1001110100111001";
        ram[27] = "0b1001110000100100";
        ram[28] = "0b1001100000001011";
        ram[29] = "0b0001011110111100";
        ram[30] = "0b0001101100011110";
        ram[31] = "0b0001011111000101";
        ram[32] = "0b0000010001100100";
        ram[33] = "0b1001011001011101";
        ram[34] = "0b1001010011001100";
        ram[35] = "0b0000101001100100";
        ram[36] = "0b0001100110000100";
        ram[37] = "0b0001101010100000";
        ram[38] = "0b0001000100001110";
        ram[39] = "0b1001010011010101";
        ram[40] = "0b1001100001010000";
        ram[41] = "0b1001100000010110";
        ram[42] = "0b1001100100000010";
        ram[43] = "0b1001001111100100";
        ram[44] = "0b0001010101110111";
        ram[45] = "0b0001101110001111";
        ram[46] = "0b0001110111011010";
        ram[47] = "0b0000110011010101";
        ram[48] = "0b1001101110000110";
        ram[49] = "0b1001101100101010";
        ram[50] = "0b1001110011110101";
        ram[51] = "0b0000111010010110";
        ram[52] = "0b0001011111000010";
        ram[53] = "0b0001101101011111";
        ram[54] = "0b0001111111000101";
        ram[55] = "0b0001011010011000";
        ram[56] = "0b1001110111000111";
        ram[57] = "0b1001111000011111";
        ram[58] = "0b1001101000111010";
        ram[59] = "0b0001100101101100";
        ram[60] = "0b0001110010000101";
        ram[61] = "0b0001101001010001";
        ram[62] = "0b0000110010011111";
        ram[63] = "0b1001101001101000";
        ram[64] = "0b1000001000111010";
        ram[65] = "0b0001011001001010";
        ram[66] = "0b0001110010100000";
        ram[67] = "0b1000111110000101";
        ram[68] = "0b1001010011100101";
        ram[69] = "0b1001110100100100";
        ram[70] = "0b1001110110011000";
        ram[71] = "0b1001011011001011";
        ram[72] = "0b0001010001000111";
        ram[73] = "0b0001001000000001";
        ram[74] = "0b0001011101111101";
        ram[75] = "0b0001100111100111";
        ram[76] = "0b1001101110100111";
        ram[77] = "0b1001110011011110";
        ram[78] = "0b1001110000111110";
        ram[79] = "0b0001110001000000";
        ram[80] = "0b0001110000011001";
        ram[81] = "0b0001100111100011";
        ram[82] = "0b1000100100110110";
        ram[83] = "0b1001100011110000";
        ram[84] = "0b1001100010101101";
        ram[85] = "0b1000111010101011";
        ram[86] = "0b0001100001000001";
        ram[87] = "0b0000100000100001";
        ram[88] = "0b0001000001111001";
        ram[89] = "0b0001100001011100";
        ram[90] = "0b1001101110010110";
        ram[91] = "0b1001011001101110";
        ram[92] = "0b1001011110111001";
        ram[93] = "0b0001001000001110";
        ram[94] = "0b0000110110111100";
        ram[95] = "0b0001100100000111";
        ram[96] = "0b0001110000110110";
        ram[97] = "0b0001100111101011";
        ram[98] = "0b0000111011010101";
        ram[99] = "0b1001110101110001";
        ram[100] = "0b1001110011101111";
        ram[101] = "0b0001011100101100";
        ram[102] = "0b0000101100110101";
        ram[103] = "0b0001101100110011";


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


SC_MODULE(L3_wlo_L2_WEIGHTSciv) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTSciv_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTSciv) {
meminst = new L3_wlo_L2_WEIGHTSciv_ram("L3_wlo_L2_WEIGHTSciv_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTSciv() {
    delete meminst;
}


};//endmodule
#endif
