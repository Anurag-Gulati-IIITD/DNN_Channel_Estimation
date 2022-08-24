// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTSckv_H__
#define __L3_wlo_L2_WEIGHTSckv_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTSckv_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTSckv_ram) {
        ram[0] = "0b1010011011011101";
        ram[1] = "0b0010100110001010";
        ram[2] = "0b0010101101011011";
        ram[3] = "0b0010100010101110";
        ram[4] = "0b0010001011110000";
        ram[5] = "0b1001111001100010";
        ram[6] = "0b1010000001100110";
        ram[7] = "0b1010001010010000";
        ram[8] = "0b1010100101101001";
        ram[9] = "0b1010101100101101";
        ram[10] = "0b1010011000100100";
        ram[11] = "0b0010100101100100";
        ram[12] = "0b0010111001100110";
        ram[13] = "0b0010111100101101";
        ram[14] = "0b0010100110010011";
        ram[15] = "0b1010101010001110";
        ram[16] = "0b1011000000100101";
        ram[17] = "0b1010111111010011";
        ram[18] = "0b1010100011101011";
        ram[19] = "0b0010101001010110";
        ram[20] = "0b0011000000011001";
        ram[21] = "0b0011000000000111";
        ram[22] = "0b0010101101110010";
        ram[23] = "0b1010010110011011";
        ram[24] = "0b1010111000000001";
        ram[25] = "0b1010111110111101";
        ram[26] = "0b1010000001011001";
        ram[27] = "0b0010110011111000";
        ram[28] = "0b0011000000111110";
        ram[29] = "0b0010111110100000";
        ram[30] = "0b0010011110011010";
        ram[31] = "0b1010110000100011";
        ram[32] = "0b1011000001011000";
        ram[33] = "0b1010111111100100";
        ram[34] = "0b1010100010001010";
        ram[35] = "0b0010110011100000";
        ram[36] = "0b0011000010001111";
        ram[37] = "0b0011000000110100";
        ram[38] = "0b0010100111011111";
        ram[39] = "0b1010110001100110";
        ram[40] = "0b1011000010100110";
        ram[41] = "0b1011000001110010";
        ram[42] = "0b1010100111001110";
        ram[43] = "0b0010110001011000";
        ram[44] = "0b0011000100001010";
        ram[45] = "0b0011000001110000";
        ram[46] = "0b0010100011101001";
        ram[47] = "0b1010110110011000";
        ram[48] = "0b1011000100010110";
        ram[49] = "0b1010111100110010";
        ram[50] = "0b0010000101001000";
        ram[51] = "0b0010111100101111";
        ram[52] = "0b0010110001100010";
        ram[53] = "0b0010101110101100";
        ram[54] = "0b0010001101110011";
        ram[55] = "0b1010100001100001";
        ram[56] = "0b1010100000011110";
        ram[57] = "0b1010011000110110";
        ram[58] = "0b1010010100110000";
        ram[59] = "0b1010010111110101";
        ram[60] = "0b1010000101010010";
        ram[61] = "0b0010011000110100";
        ram[62] = "0b0010110010000000";
        ram[63] = "0b0010110111110001";
        ram[64] = "0b0010100010011000";
        ram[65] = "0b1010101000001000";
        ram[66] = "0b1010111111001001";
        ram[67] = "0b1010111110010011";
        ram[68] = "0b1010101001001010";
        ram[69] = "0b0010110001010010";
        ram[70] = "0b0011000000011011";
        ram[71] = "0b0010111111100111";
        ram[72] = "0b0010101000100000";
        ram[73] = "0b1010100110110101";
        ram[74] = "0b1010111011110001";
        ram[75] = "0b1011000000100101";
        ram[76] = "0b1010110001110000";
        ram[77] = "0b0010001001000010";
        ram[78] = "0b0011000001001111";
        ram[79] = "0b0010111001101110";
        ram[80] = "0b0010010000100000";
        ram[81] = "0b1010110100000001";
        ram[82] = "0b1011000001110011";
        ram[83] = "0b1010111110101010";
        ram[84] = "0b1010010101100100";
        ram[85] = "0b0010110001111001";
        ram[86] = "0b0011000010010110";
        ram[87] = "0b0011000000011000";
        ram[88] = "0b0010100100011111";
        ram[89] = "0b1010110011100001";
        ram[90] = "0b1011000011000001";
        ram[91] = "0b1011000001111101";
        ram[92] = "0b1010101001010011";
        ram[93] = "0b0010110000001010";
        ram[94] = "0b0011000010110010";
        ram[95] = "0b0011000010001111";
        ram[96] = "0b0010100111101010";
        ram[97] = "0b1010110100001011";
        ram[98] = "0b1011000101101001";
        ram[99] = "0b1011000001100010";
        ram[100] = "0b1010010111101000";
        ram[101] = "0b0010111011110011";
        ram[102] = "0b0011000011000110";
        ram[103] = "0b0010110010101010";


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


SC_MODULE(L3_wlo_L2_WEIGHTSckv) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTSckv_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTSckv) {
meminst = new L3_wlo_L2_WEIGHTSckv_ram("L3_wlo_L2_WEIGHTSckv_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTSckv() {
    delete meminst;
}


};//endmodule
#endif
