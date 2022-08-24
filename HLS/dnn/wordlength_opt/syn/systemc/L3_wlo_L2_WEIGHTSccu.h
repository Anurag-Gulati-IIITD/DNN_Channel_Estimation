// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTSccu_H__
#define __L3_wlo_L2_WEIGHTSccu_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTSccu_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTSccu_ram) {
        ram[0] = "0b1010100010010101";
        ram[1] = "0b1010101000010101";
        ram[2] = "0b0010000010011100";
        ram[3] = "0b1010001111011010";
        ram[4] = "0b1010100010011011";
        ram[5] = "0b1010011110111100";
        ram[6] = "0b0010000000111101";
        ram[7] = "0b0010100111000111";
        ram[8] = "0b0010110000111110";
        ram[9] = "0b0010010111011000";
        ram[10] = "0b1010101011110000";
        ram[11] = "0b1010111010110100";
        ram[12] = "0b1010110000001001";
        ram[13] = "0b1010010111111101";
        ram[14] = "0b0010101000001011";
        ram[15] = "0b0010110000011000";
        ram[16] = "0b0010010110101101";
        ram[17] = "0b1010011001111010";
        ram[18] = "0b1001110011010010";
        ram[19] = "0b0010100100100110";
        ram[20] = "0b0010010010001110";
        ram[21] = "0b1010011110001110";
        ram[22] = "0b1010110010100110";
        ram[23] = "0b1011000000011011";
        ram[24] = "0b1010101110010000";
        ram[25] = "0b0010101010001011";
        ram[26] = "0b0010111100011010";
        ram[27] = "0b0010101110001100";
        ram[28] = "0b1010101010111111";
        ram[29] = "0b1011000001001010";
        ram[30] = "0b1010110100111001";
        ram[31] = "0b1010110100001001";
        ram[32] = "0b0001100000000010";
        ram[33] = "0b0010101011001011";
        ram[34] = "0b0010110110110111";
        ram[35] = "0b0010111000000101";
        ram[36] = "0b0010101100010010";
        ram[37] = "0b1010010111011000";
        ram[38] = "0b1010110111001001";
        ram[39] = "0b1010111110100101";
        ram[40] = "0b1010110100010000";
        ram[41] = "0b0001100001001000";
        ram[42] = "0b0010110100111101";
        ram[43] = "0b0011000001000110";
        ram[44] = "0b0010110000011101";
        ram[45] = "0b0001011000001100";
        ram[46] = "0b1010111010011111";
        ram[47] = "0b1010111001110110";
        ram[48] = "0b1010101001111000";
        ram[49] = "0b0001110111111000";
        ram[50] = "0b0010100010011011";
        ram[51] = "0b0010110000110111";
        ram[52] = "0b1010001000001010";
        ram[53] = "0b1010010101001100";
        ram[54] = "0b0010000000101101";
        ram[55] = "0b0010011011110010";
        ram[56] = "0b0010000011101111";
        ram[57] = "0b0010100001111010";
        ram[58] = "0b0010100000100010";
        ram[59] = "0b0010010110001110";
        ram[60] = "0b1010011101000111";
        ram[61] = "0b1010110100100010";
        ram[62] = "0b1010110010011010";
        ram[63] = "0b1010001001101011";
        ram[64] = "0b0010100111110111";
        ram[65] = "0b0010110101100101";
        ram[66] = "0b0010101000011111";
        ram[67] = "0b1010010111001101";
        ram[68] = "0b1010011001111100";
        ram[69] = "0b1010001000101001";
        ram[70] = "0b0010000101110101";
        ram[71] = "0b0001110100011110";
        ram[72] = "0b1010101100111010";
        ram[73] = "0b1010110011111110";
        ram[74] = "0b1010101111101001";
        ram[75] = "0b0010100101000101";
        ram[76] = "0b0010110101010010";
        ram[77] = "0b0010111001010101";
        ram[78] = "0b1010110100010011";
        ram[79] = "0b1011000000011011";
        ram[80] = "0b1010111011100000";
        ram[81] = "0b1010110000010011";
        ram[82] = "0b0010100111001011";
        ram[83] = "0b0010110110000111";
        ram[84] = "0b0010110000100100";
        ram[85] = "0b0010110100011001";
        ram[86] = "0b0010011010100111";
        ram[87] = "0b1010011000010000";
        ram[88] = "0b1010110100111101";
        ram[89] = "0b1010111001111100";
        ram[90] = "0b1010110101100011";
        ram[91] = "0b0001110011100110";
        ram[92] = "0b0010111010010000";
        ram[93] = "0b0011000001100011";
        ram[94] = "0b0010110111011011";
        ram[95] = "0b0010010101101000";
        ram[96] = "0b1010110010101011";
        ram[97] = "0b1010111101001001";
        ram[98] = "0b1010100011111000";
        ram[99] = "0b0010001001100101";
        ram[100] = "0b0010110010011110";
        ram[101] = "0b0010110011100000";
        ram[102] = "0b0010100101111111";
        ram[103] = "0b0010001100001011";


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


SC_MODULE(L3_wlo_L2_WEIGHTSccu) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTSccu_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTSccu) {
meminst = new L3_wlo_L2_WEIGHTSccu_ram("L3_wlo_L2_WEIGHTSccu_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTSccu() {
    delete meminst;
}


};//endmodule
#endif
