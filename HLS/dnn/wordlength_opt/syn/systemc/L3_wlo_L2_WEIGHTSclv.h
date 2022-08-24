// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTSclv_H__
#define __L3_wlo_L2_WEIGHTSclv_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTSclv_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTSclv_ram) {
        ram[0] = "0b0010100011110101";
        ram[1] = "0b1010101101010110";
        ram[2] = "0b1010111010101110";
        ram[3] = "0b1010111001000110";
        ram[4] = "0b1010011011100001";
        ram[5] = "0b0010110000011010";
        ram[6] = "0b0010111111000001";
        ram[7] = "0b0010111001010011";
        ram[8] = "0b0010000110100011";
        ram[9] = "0b1010110100110110";
        ram[10] = "0b1011000000110010";
        ram[11] = "0b1010111001111000";
        ram[12] = "0b1001001101000010";
        ram[13] = "0b0010110011010010";
        ram[14] = "0b0010111100110001";
        ram[15] = "0b0010110001100110";
        ram[16] = "0b1010000011011001";
        ram[17] = "0b1010101111111000";
        ram[18] = "0b1010101111011101";
        ram[19] = "0b1010010001101101";
        ram[20] = "0b1010000000001011";
        ram[21] = "0b1001111111000001";
        ram[22] = "0b1001000111000000";
        ram[23] = "0b0010010001000011";
        ram[24] = "0b0010101110000100";
        ram[25] = "0b0010101100100111";
        ram[26] = "0b1010110101110001";
        ram[27] = "0b1010111011010010";
        ram[28] = "0b1010101000010101";
        ram[29] = "0b0010101111001010";
        ram[30] = "0b0011000011110001";
        ram[31] = "0b0010111011111110";
        ram[32] = "0b1010010011000001";
        ram[33] = "0b1011000001111110";
        ram[34] = "0b1011000101100011";
        ram[35] = "0b1010110010011111";
        ram[36] = "0b0010110000111010";
        ram[37] = "0b0011000010110101";
        ram[38] = "0b0011000000001110";
        ram[39] = "0b0010100011011101";
        ram[40] = "0b1010101010110101";
        ram[41] = "0b1010110110111001";
        ram[42] = "0b1010110101010111";
        ram[43] = "0b1010100111000100";
        ram[44] = "0b1010010101100110";
        ram[45] = "0b0010100001010111";
        ram[46] = "0b0010110010000110";
        ram[47] = "0b0010111001111101";
        ram[48] = "0b0010110011001110";
        ram[49] = "0b1010001010011001";
        ram[50] = "0b1010111110110111";
        ram[51] = "0b1011000010001101";
        ram[52] = "0b1010111100111001";
        ram[53] = "0b1010111011100100";
        ram[54] = "0b1010011010111110";
        ram[55] = "0b0010110001100000";
        ram[56] = "0b0010111100110111";
        ram[57] = "0b0010111000010001";
        ram[58] = "0b0010001011011101";
        ram[59] = "0b1010110011001101";
        ram[60] = "0b1011000000000110";
        ram[61] = "0b1010111011000001";
        ram[62] = "0b1010001011100101";
        ram[63] = "0b0010110101001100";
        ram[64] = "0b0011000000001011";
        ram[65] = "0b0010110110001000";
        ram[66] = "0b1001101010111101";
        ram[67] = "0b1010110101101000";
        ram[68] = "0b1010110101100111";
        ram[69] = "0b1010100101100011";
        ram[70] = "0b0010001000101100";
        ram[71] = "0b0010100000111110";
        ram[72] = "0b0010010001110001";
        ram[73] = "0b0010010000110100";
        ram[74] = "0b0010011110001101";
        ram[75] = "0b0010100011100100";
        ram[76] = "0b1001101000010010";
        ram[77] = "0b1010101100100110";
        ram[78] = "0b1010110000101010";
        ram[79] = "0b0010100010110010";
        ram[80] = "0b0010111110011100";
        ram[81] = "0b0010111110000011";
        ram[82] = "0b0010011000000101";
        ram[83] = "0b1010111100000000";
        ram[84] = "0b1011000110011011";
        ram[85] = "0b1010111000001101";
        ram[86] = "0b0010100100110000";
        ram[87] = "0b0011000100001010";
        ram[88] = "0b0011000011100100";
        ram[89] = "0b0010101100011111";
        ram[90] = "0b1010110001111010";
        ram[91] = "0b1011000000011010";
        ram[92] = "0b1010111000101011";
        ram[93] = "0b1010100001001101";
        ram[94] = "0b0010010110100110";
        ram[95] = "0b0010110000011011";
        ram[96] = "0b0010110011001001";
        ram[97] = "0b0010110011011011";
        ram[98] = "0b0010101110110101";
        ram[99] = "0b1010001101110101";
        ram[100] = "0b1010110111000010";
        ram[101] = "0b1011000000110011";
        ram[102] = "0b1010110110011001";
        ram[103] = "0b0010010111101001";


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


SC_MODULE(L3_wlo_L2_WEIGHTSclv) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTSclv_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTSclv) {
meminst = new L3_wlo_L2_WEIGHTSclv_ram("L3_wlo_L2_WEIGHTSclv_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTSclv() {
    delete meminst;
}


};//endmodule
#endif
