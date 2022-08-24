// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTScjv_H__
#define __L3_wlo_L2_WEIGHTScjv_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTScjv_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTScjv_ram) {
        ram[0] = "0b1010100101111100";
        ram[1] = "0b1010111011000110";
        ram[2] = "0b1010111101000000";
        ram[3] = "0b1010100100110010";
        ram[4] = "0b0010011101101001";
        ram[5] = "0b0010111011001111";
        ram[6] = "0b0010110110110010";
        ram[7] = "0b0010100011000001";
        ram[8] = "0b1010011101101011";
        ram[9] = "0b1010011010000011";
        ram[10] = "0b1010000001010010";
        ram[11] = "0b1010001100010100";
        ram[12] = "0b1010100111011100";
        ram[13] = "0b1010100010100001";
        ram[14] = "0b1010001000101001";
        ram[15] = "0b0010100011111011";
        ram[16] = "0b0010110110001000";
        ram[17] = "0b0010110011010101";
        ram[18] = "0b0010000101001010";
        ram[19] = "0b1010101110000011";
        ram[20] = "0b1010110111110011";
        ram[21] = "0b1010100011011101";
        ram[22] = "0b0010011110111101";
        ram[23] = "0b0010100101111001";
        ram[24] = "0b0010000010101111";
        ram[25] = "0b0010000100011010";
        ram[26] = "0b0010000001011000";
        ram[27] = "0b0010100001111011";
        ram[28] = "0b1001110111100101";
        ram[29] = "0b1010101010000100";
        ram[30] = "0b1010110001001111";
        ram[31] = "0b1010010110111100";
        ram[32] = "0b0010001101010100";
        ram[33] = "0b0010110000101001";
        ram[34] = "0b0010101001000111";
        ram[35] = "0b1010010000110111";
        ram[36] = "0b1010110011010111";
        ram[37] = "0b1010101000001001";
        ram[38] = "0b0010010001010100";
        ram[39] = "0b0010110010001111";
        ram[40] = "0b0010100001011111";
        ram[41] = "0b1010100100101000";
        ram[42] = "0b1010110000101010";
        ram[43] = "0b1010100111101000";
        ram[44] = "0b0010101001101010";
        ram[45] = "0b0010111000100011";
        ram[46] = "0b0010110001101110";
        ram[47] = "0b1010101100110110";
        ram[48] = "0b1011000000100110";
        ram[49] = "0b1011000000011111";
        ram[50] = "0b1001001011000100";
        ram[51] = "0b0010111011111110";
        ram[52] = "0b1010111011010111";
        ram[53] = "0b1010110101110100";
        ram[54] = "0b0010010101011111";
        ram[55] = "0b0011000001011010";
        ram[56] = "0b0010111000000101";
        ram[57] = "0b0010100010001010";
        ram[58] = "0b1010100000111111";
        ram[59] = "0b1010101110001010";
        ram[60] = "0b1010101010110101";
        ram[61] = "0b1010011101011100";
        ram[62] = "0b1010001011110011";
        ram[63] = "0b1010101001101101";
        ram[64] = "0b1001110111110010";
        ram[65] = "0b0010010101100001";
        ram[66] = "0b0010110101001111";
        ram[67] = "0b0010110101001011";
        ram[68] = "0b0010010111000111";
        ram[69] = "0b1010101111100000";
        ram[70] = "0b1010111101000111";
        ram[71] = "0b1010110010101001";
        ram[72] = "0b1001110101001110";
        ram[73] = "0b0010110000111010";
        ram[74] = "0b0010101101000011";
        ram[75] = "0b0010011100001100";
        ram[76] = "0b1010011101110001";
        ram[77] = "0b1010011001001001";
        ram[78] = "0b0010000100010111";
        ram[79] = "0b0001101111000001";
        ram[80] = "0b1010100100011110";
        ram[81] = "0b1010100101101000";
        ram[82] = "0b1001111111101101";
        ram[83] = "0b0010110010111001";
        ram[84] = "0b0010101111001000";
        ram[85] = "0b0010011000110100";
        ram[86] = "0b1010110100010001";
        ram[87] = "0b1010101001100000";
        ram[88] = "0b1010010011100011";
        ram[89] = "0b0010101010000110";
        ram[90] = "0b0010110001100001";
        ram[91] = "0b1000100011101010";
        ram[92] = "0b1010101000011001";
        ram[93] = "0b1010011000101110";
        ram[94] = "0b0010010110010100";
        ram[95] = "0b0010110101010111";
        ram[96] = "0b0010110100111101";
        ram[97] = "0b1010010000101100";
        ram[98] = "0b1010111101110010";
        ram[99] = "0b1010111110111010";
        ram[100] = "0b1010101011100001";
        ram[101] = "0b0010101110010110";
        ram[102] = "0b0011000110100011";
        ram[103] = "0b0011000001111100";


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


SC_MODULE(L3_wlo_L2_WEIGHTScjv) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTScjv_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTScjv) {
meminst = new L3_wlo_L2_WEIGHTScjv_ram("L3_wlo_L2_WEIGHTScjv_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTScjv() {
    delete meminst;
}


};//endmodule
#endif
