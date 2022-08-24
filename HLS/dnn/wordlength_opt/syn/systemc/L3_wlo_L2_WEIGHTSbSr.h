// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTSbSr_H__
#define __L3_wlo_L2_WEIGHTSbSr_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTSbSr_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTSbSr_ram) {
        ram[0] = "0b1011000011001011";
        ram[1] = "0b1010111011111010";
        ram[2] = "0b0001101011101011";
        ram[3] = "0b0010110110111110";
        ram[4] = "0b0011000001010001";
        ram[5] = "0b0010111000100001";
        ram[6] = "0b1001111111101101";
        ram[7] = "0b1010110110100000";
        ram[8] = "0b1010111110111010";
        ram[9] = "0b1010110110100011";
        ram[10] = "0b1010001000011100";
        ram[11] = "0b0010100110000101";
        ram[12] = "0b0010110010000001";
        ram[13] = "0b0010100101101101";
        ram[14] = "0b0010001001001001";
        ram[15] = "0b0001111111101011";
        ram[16] = "0b1010011100110110";
        ram[17] = "0b1010100000111011";
        ram[18] = "0b1010011100011011";
        ram[19] = "0b1010011000011101";
        ram[20] = "0b0010000000011011";
        ram[21] = "0b0010001011010101";
        ram[22] = "0b0010011101100101";
        ram[23] = "0b0010011000000101";
        ram[24] = "0b0001110101000001";
        ram[25] = "0b1010100101000100";
        ram[26] = "0b1010100001111111";
        ram[27] = "0b0010101101111100";
        ram[28] = "0b0010111010011001";
        ram[29] = "0b0010110100000100";
        ram[30] = "0b0001110110000000";
        ram[31] = "0b1010111100000101";
        ram[32] = "0b1010111100110000";
        ram[33] = "0b1010100000001011";
        ram[34] = "0b0010101010110000";
        ram[35] = "0b0010111011111101";
        ram[36] = "0b0010101000110110";
        ram[37] = "0b1010100110101010";
        ram[38] = "0b1010101001111101";
        ram[39] = "0b1010000100100010";
        ram[40] = "0b0010110000010101";
        ram[41] = "0b0010110101101110";
        ram[42] = "0b1010000001111111";
        ram[43] = "0b1010110111111000";
        ram[44] = "0b1010111111010101";
        ram[45] = "0b1010010111010000";
        ram[46] = "0b0010110011001110";
        ram[47] = "0b0011000001101011";
        ram[48] = "0b0010110110110011";
        ram[49] = "0b1010000111011000";
        ram[50] = "0b1010111110100011";
        ram[51] = "0b1010111001010100";
        ram[52] = "0b1001111010101001";
        ram[53] = "0b0010111001111010";
        ram[54] = "0b0011000011101010";
        ram[55] = "0b0010111010010100";
        ram[56] = "0b0010000000101110";
        ram[57] = "0b1010111001111100";
        ram[58] = "0b1011000001111001";
        ram[59] = "0b1010111001001000";
        ram[60] = "0b0001000010011011";
        ram[61] = "0b0010101100100111";
        ram[62] = "0b0010111001100000";
        ram[63] = "0b0010110100110011";
        ram[64] = "0b0010001101000011";
        ram[65] = "0b1010011110000011";
        ram[66] = "0b1010101101101010";
        ram[67] = "0b1010101000000011";
        ram[68] = "0b1010010011111101";
        ram[69] = "0b0010001001011010";
        ram[70] = "0b0010000001011011";
        ram[71] = "0b0010100000111111";
        ram[72] = "0b0010011000011101";
        ram[73] = "0b0010011100000010";
        ram[74] = "0b0010000010100000";
        ram[75] = "0b1010100110101001";
        ram[76] = "0b1010110001001000";
        ram[77] = "0b1010100110110101";
        ram[78] = "0b0010110011011101";
        ram[79] = "0b0010110010000110";
        ram[80] = "0b0001111111100011";
        ram[81] = "0b1010110110110111";
        ram[82] = "0b1010111101101011";
        ram[83] = "0b1010101001011100";
        ram[84] = "0b0010100011001110";
        ram[85] = "0b0010111001111111";
        ram[86] = "0b0010110101100101";
        ram[87] = "0b0001110010111110";
        ram[88] = "0b1010110000110110";
        ram[89] = "0b1010110100001100";
        ram[90] = "0b1000100010100111";
        ram[91] = "0b0010101000101110";
        ram[92] = "0b0010100110110011";
        ram[93] = "0b1010101010000011";
        ram[94] = "0b1010111000010101";
        ram[95] = "0b1010101101111101";
        ram[96] = "0b0010101010001011";
        ram[97] = "0b0010111111001110";
        ram[98] = "0b0011000000101100";
        ram[99] = "0b0010000110011001";
        ram[100] = "0b1010111011100001";
        ram[101] = "0b1011000000000101";
        ram[102] = "0b1010101111000100";
        ram[103] = "0b0010100100001100";


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


SC_MODULE(L3_wlo_L2_WEIGHTSbSr) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTSbSr_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTSbSr) {
meminst = new L3_wlo_L2_WEIGHTSbSr_ram("L3_wlo_L2_WEIGHTSbSr_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTSbSr() {
    delete meminst;
}


};//endmodule
#endif
