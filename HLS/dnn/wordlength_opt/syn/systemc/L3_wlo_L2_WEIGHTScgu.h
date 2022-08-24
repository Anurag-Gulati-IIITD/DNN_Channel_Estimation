// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTScgu_H__
#define __L3_wlo_L2_WEIGHTScgu_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTScgu_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTScgu_ram) {
        ram[0] = "0b1010010100101101";
        ram[1] = "0b1011000101111000";
        ram[2] = "0b1011001000000101";
        ram[3] = "0b1010101111000010";
        ram[4] = "0b0010110011111111";
        ram[5] = "0b0011000010011000";
        ram[6] = "0b0010110010111001";
        ram[7] = "0b1010011011100001";
        ram[8] = "0b1010110100011001";
        ram[9] = "0b1010110010000010";
        ram[10] = "0b0001111110110001";
        ram[11] = "0b0010110100000111";
        ram[12] = "0b0010110000010100";
        ram[13] = "0b0010010100100000";
        ram[14] = "0b1010110100101110";
        ram[15] = "0b1010111100010011";
        ram[16] = "0b1010101110110011";
        ram[17] = "0b0010100010101010";
        ram[18] = "0b0010111101010100";
        ram[19] = "0b0010111011101011";
        ram[20] = "0b0010101100011010";
        ram[21] = "0b1010101010110011";
        ram[22] = "0b1010111111111101";
        ram[23] = "0b1010111011001001";
        ram[24] = "0b1010100011001001";
        ram[25] = "0b0010110010011110";
        ram[26] = "0b0010111010110100";
        ram[27] = "0b0010000010100110";
        ram[28] = "0b1010110010101010";
        ram[29] = "0b1010110110101000";
        ram[30] = "0b1010110011101010";
        ram[31] = "0b1001110010010010";
        ram[32] = "0b0010101000000001";
        ram[33] = "0b0010101010100000";
        ram[34] = "0b0010100001111100";
        ram[35] = "0b0010010011001011";
        ram[36] = "0b0010010011100010";
        ram[37] = "0b0001010111010001";
        ram[38] = "0b1010011010000111";
        ram[39] = "0b1010110000011010";
        ram[40] = "0b1010110000111100";
        ram[41] = "0b1010011100110001";
        ram[42] = "0b0010100100111000";
        ram[43] = "0b0010110100011011";
        ram[44] = "0b0010110110010110";
        ram[45] = "0b0010011010100101";
        ram[46] = "0b1010010101010000";
        ram[47] = "0b1010101100101010";
        ram[48] = "0b1010101110100110";
        ram[49] = "0b1010100101010100";
        ram[50] = "0b1010010100101010";
        ram[51] = "0b1001010110101001";
        ram[52] = "0b1011001000001101";
        ram[53] = "0b1010111000010111";
        ram[54] = "0b0010101010001010";
        ram[55] = "0b0011000011001010";
        ram[56] = "0b0011000001010110";
        ram[57] = "0b0010010100100000";
        ram[58] = "0b1010110011010111";
        ram[59] = "0b1010111010100110";
        ram[60] = "0b1010100010100110";
        ram[61] = "0b0010101110001011";
        ram[62] = "0b0010110111101110";
        ram[63] = "0b0010100001001001";
        ram[64] = "0b1010100111111100";
        ram[65] = "0b1010111000100100";
        ram[66] = "0b1010110001111110";
        ram[67] = "0b0010011101011011";
        ram[68] = "0b0010111001011001";
        ram[69] = "0b0010111011110011";
        ram[70] = "0b0010100111000011";
        ram[71] = "0b1010100111101110";
        ram[72] = "0b1010111011110001";
        ram[73] = "0b1010111110010011";
        ram[74] = "0b1010100111101110";
        ram[75] = "0b0010101111100110";
        ram[76] = "0b0011000001111011";
        ram[77] = "0b0010111111010010";
        ram[78] = "0b1010110011111100";
        ram[79] = "0b1011000000100100";
        ram[80] = "0b1010110100110100";
        ram[81] = "0b1000011100000011";
        ram[82] = "0b0010101110100011";
        ram[83] = "0b0010110100101100";
        ram[84] = "0b0010101010111100";
        ram[85] = "0b0001110110000111";
        ram[86] = "0b1010000001100111";
        ram[87] = "0b1010011111001100";
        ram[88] = "0b1010011110101001";
        ram[89] = "0b1010101011101011";
        ram[90] = "0b1010100011101101";
        ram[91] = "0b1010001011110110";
        ram[92] = "0b0010011011010010";
        ram[93] = "0b0010110100110111";
        ram[94] = "0b0010110101100100";
        ram[95] = "0b0010001111101001";
        ram[96] = "0b1010100110101111";
        ram[97] = "0b1010110100101111";
        ram[98] = "0b1010110011000001";
        ram[99] = "0b1010011101100111";
        ram[100] = "0b0001110101100011";
        ram[101] = "0b0010011110111111";
        ram[102] = "0b0010101010100010";
        ram[103] = "0b0010110110100000";


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


SC_MODULE(L3_wlo_L2_WEIGHTScgu) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTScgu_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTScgu) {
meminst = new L3_wlo_L2_WEIGHTScgu_ram("L3_wlo_L2_WEIGHTScgu_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTScgu() {
    delete meminst;
}


};//endmodule
#endif
