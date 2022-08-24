// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTS_0_H__
#define __L3_wlo_L2_WEIGHTS_0_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTS_0_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTS_0_ram) {
        ram[0] = "0b0001100101010011";
        ram[1] = "0b0001111110000010";
        ram[2] = "0b0001101011001011";
        ram[3] = "0b0001010100011100";
        ram[4] = "0b1001111011101000";
        ram[5] = "0b1001101111101011";
        ram[6] = "0b1010001001010100";
        ram[7] = "0b1001100001001011";
        ram[8] = "0b1001100101101111";
        ram[9] = "0b1000111100110001";
        ram[10] = "0b0001111000010101";
        ram[11] = "0b0010000101110010";
        ram[12] = "0b0001100000101001";
        ram[13] = "0b1001011000101011";
        ram[14] = "0b1010000001001001";
        ram[15] = "0b0001011000101010";
        ram[16] = "0b0001100001001100";
        ram[17] = "0b0001010100101100";
        ram[18] = "0b0001001100100111";
        ram[19] = "0b1010000101000000";
        ram[20] = "0b1001001000001100";
        ram[21] = "0b1001011010101111";
        ram[22] = "0b0001001000100001";
        ram[23] = "0b0010000101000100";
        ram[24] = "0b0001010010111110";
        ram[25] = "0b1001101000000010";
        ram[26] = "0b1010010011100001";
        ram[27] = "0b1001101011001110";
        ram[28] = "0b0001110010000101";
        ram[29] = "0b0010001010001111";
        ram[30] = "0b0010001001011000";
        ram[31] = "0b1000101100101101";
        ram[32] = "0b0001101110111101";
        ram[33] = "0b1000110110011010";
        ram[34] = "0b1001110010000100";
        ram[35] = "0b0001101010010111";
        ram[36] = "0b1001010011111010";
        ram[37] = "0b1001011101101011";
        ram[38] = "0b0001110111110011";
        ram[39] = "0b0001101111010110";
        ram[40] = "0b0001101011111100";
        ram[41] = "0b1001100000100111";
        ram[42] = "0b1010000000000110";
        ram[43] = "0b0001001010010110";
        ram[44] = "0b0010001011101001";
        ram[45] = "0b0010001000100100";
        ram[46] = "0b1001111011101001";
        ram[47] = "0b1010010011110101";
        ram[48] = "0b1010010100100001";
        ram[49] = "0b1001010011011101";
        ram[50] = "0b0010010110011111";
        ram[51] = "0b0010011000100100";
        ram[52] = "0b0010010011001101";
        ram[53] = "0b0001111010111010";
        ram[54] = "0b0001010001011111";
        ram[55] = "0b1010000011101001";
        ram[56] = "0b1001110110110101";
        ram[57] = "0b1001110011001111";
        ram[58] = "0b0001100001010110";
        ram[59] = "0b0001011011100010";
        ram[60] = "0b0010000000101111";
        ram[61] = "0b0001111101100001";
        ram[62] = "0b0010000110100010";
        ram[63] = "0b0001011011000001";
        ram[64] = "0b1001111000110000";
        ram[65] = "0b1001110100111000";
        ram[66] = "0b1001101111111111";
        ram[67] = "0b0001111011110101";
        ram[68] = "0b0001101010111110";
        ram[69] = "0b0001110011001010";
        ram[70] = "0b1001110110111000";
        ram[71] = "0b0000100001100100";
        ram[72] = "0b0001011100000111";
        ram[73] = "0b0010000110000111";
        ram[74] = "0b0001011001000010";
        ram[75] = "0b1001110111011100";
        ram[76] = "0b1010000110010100";
        ram[77] = "0b1010000010011001";
        ram[78] = "0b0001110011000000";
        ram[79] = "0b0001111100001011";
        ram[80] = "0b0001110110111110";
        ram[81] = "0b1001011010101000";
        ram[82] = "0b1001110011100111";
        ram[83] = "0b1001110111110100";
        ram[84] = "0b1001101001100000";
        ram[85] = "0b1001101010011000";
        ram[86] = "0b1000110100001100";
        ram[87] = "0b0000101011011001";
        ram[88] = "0b0001110100011010";
        ram[89] = "0b1010000001111000";
        ram[90] = "0b1001110000000101";
        ram[91] = "0b1000111111001000";
        ram[92] = "0b1001111101101010";
        ram[93] = "0b1010000000111100";
        ram[94] = "0b0001100101101110";
        ram[95] = "0b0001110110001001";
        ram[96] = "0b0001010010111100";
        ram[97] = "0b1010001000111011";
        ram[98] = "0b1010001011000111";
        ram[99] = "0b1001111111000010";
        ram[100] = "0b0010001100101100";
        ram[101] = "0b0010011110000111";
        ram[102] = "0b0010001100011010";
        ram[103] = "0b1010000000010011";


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


SC_MODULE(L3_wlo_L2_WEIGHTS_0) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTS_0_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTS_0) {
meminst = new L3_wlo_L2_WEIGHTS_0_ram("L3_wlo_L2_WEIGHTS_0_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTS_0() {
    delete meminst;
}


};//endmodule
#endif
