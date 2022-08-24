// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTSctx_H__
#define __L3_wlo_L2_WEIGHTSctx_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTSctx_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTSctx_ram) {
        ram[0] = "0b0010110111010001";
        ram[1] = "0b0010110011011001";
        ram[2] = "0b0010100101100110";
        ram[3] = "0b1010101101001011";
        ram[4] = "0b1011000001111100";
        ram[5] = "0b1010111101111001";
        ram[6] = "0b1010110100011011";
        ram[7] = "0b1001111001000110";
        ram[8] = "0b0010110101110001";
        ram[9] = "0b0010111111010110";
        ram[10] = "0b0010111100101010";
        ram[11] = "0b0001100100000111";
        ram[12] = "0b1010110010101000";
        ram[13] = "0b1010111110011111";
        ram[14] = "0b1011000001001111";
        ram[15] = "0b1010110100100101";
        ram[16] = "0b0010001011110101";
        ram[17] = "0b0010110100101111";
        ram[18] = "0b0011000000011100";
        ram[19] = "0b0010110011111100";
        ram[20] = "0b0010010010110110";
        ram[21] = "0b1010100000100111";
        ram[22] = "0b1010111110011110";
        ram[23] = "0b1010110011100010";
        ram[24] = "0b1010100100111011";
        ram[25] = "0b0010001111111110";
        ram[26] = "0b0010110101101110";
        ram[27] = "0b0010111001111110";
        ram[28] = "0b0010110001111111";
        ram[29] = "0b0010010100110111";
        ram[30] = "0b1010101100101111";
        ram[31] = "0b1011000001010001";
        ram[32] = "0b1011000001111001";
        ram[33] = "0b1010111100001001";
        ram[34] = "0b0001101110111001";
        ram[35] = "0b0010111010110101";
        ram[36] = "0b0011000000000111";
        ram[37] = "0b0010110110010000";
        ram[38] = "0b0010010010101011";
        ram[39] = "0b1010110111100100";
        ram[40] = "0b1010111100000111";
        ram[41] = "0b1010110110001010";
        ram[42] = "0b1010100010000011";
        ram[43] = "0b0001010010011010";
        ram[44] = "0b0010101100101011";
        ram[45] = "0b0010110110001010";
        ram[46] = "0b0010111011001011";
        ram[47] = "0b0010101100010110";
        ram[48] = "0b1001111001011001";
        ram[49] = "0b1010111000010001";
        ram[50] = "0b1011000010110111";
        ram[51] = "0b1010111101010111";
        ram[52] = "0b1010000111100010";
        ram[53] = "0b1010110001110101";
        ram[54] = "0b1010111001110010";
        ram[55] = "0b1010111110010101";
        ram[56] = "0b1010010101110010";
        ram[57] = "0b0010110011011010";
        ram[58] = "0b0010111100100110";
        ram[59] = "0b0011000010000010";
        ram[60] = "0b0010111000101011";
        ram[61] = "0b1010001001110001";
        ram[62] = "0b1010111100110111";
        ram[63] = "0b1010111101000100";
        ram[64] = "0b1010111110101101";
        ram[65] = "0b1010110011000101";
        ram[66] = "0b0010101100110111";
        ram[67] = "0b0010111100111100";
        ram[68] = "0b0011000010010100";
        ram[69] = "0b0010100010010110";
        ram[70] = "0b1010100101101001";
        ram[71] = "0b1010111010101011";
        ram[72] = "0b1010111100011001";
        ram[73] = "0b1010111110110001";
        ram[74] = "0b1010100000110000";
        ram[75] = "0b0010100001100111";
        ram[76] = "0b0010111111010010";
        ram[77] = "0b0010110000110010";
        ram[78] = "0b0010110001101011";
        ram[79] = "0b1001111100010111";
        ram[80] = "0b1010101101001011";
        ram[81] = "0b1010110110011011";
        ram[82] = "0b1011000000000100";
        ram[83] = "0b1010011100001100";
        ram[84] = "0b0010101010000010";
        ram[85] = "0b0010111100110011";
        ram[86] = "0b0011000001001100";
        ram[87] = "0b0010110011111011";
        ram[88] = "0b1001111111111110";
        ram[89] = "0b1010110000100100";
        ram[90] = "0b1010111111110010";
        ram[91] = "0b1010110110010000";
        ram[92] = "0b1001101100100001";
        ram[93] = "0b0010110000011000";
        ram[94] = "0b0010111000111000";
        ram[95] = "0b0010110000110011";
        ram[96] = "0b0010100000111001";
        ram[97] = "0b0010001101001110";
        ram[98] = "0b1001100010001110";
        ram[99] = "0b1010110001100101";
        ram[100] = "0b1011000000111100";
        ram[101] = "0b1010110110001100";
        ram[102] = "0b1010001000100110";
        ram[103] = "0b0010110010011010";


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


SC_MODULE(L3_wlo_L2_WEIGHTSctx) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTSctx_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTSctx) {
meminst = new L3_wlo_L2_WEIGHTSctx_ram("L3_wlo_L2_WEIGHTSctx_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTSctx() {
    delete meminst;
}


};//endmodule
#endif
