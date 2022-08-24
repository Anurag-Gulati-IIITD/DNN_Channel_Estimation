// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTS_9_H__
#define __L3_wlo_L2_WEIGHTS_9_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTS_9_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTS_9_ram) {
        ram[0] = "0b0010011011100110";
        ram[1] = "0b1010100110010010";
        ram[2] = "0b1010101101100111";
        ram[3] = "0b1010100010110011";
        ram[4] = "0b1010001011101111";
        ram[5] = "0b0001111001110001";
        ram[6] = "0b0010000001100111";
        ram[7] = "0b0010001010001000";
        ram[8] = "0b0010100101101011";
        ram[9] = "0b0010101100110101";
        ram[10] = "0b0010011000110000";
        ram[11] = "0b1010100101100110";
        ram[12] = "0b1010111001101100";
        ram[13] = "0b1010111100110100";
        ram[14] = "0b1010100110011010";
        ram[15] = "0b0010101010010010";
        ram[16] = "0b0011000000101001";
        ram[17] = "0b0010111111011010";
        ram[18] = "0b0010100011101110";
        ram[19] = "0b1010101001011100";
        ram[20] = "0b1011000000011101";
        ram[21] = "0b1011000000001010";
        ram[22] = "0b1010101101110111";
        ram[23] = "0b0010010110100100";
        ram[24] = "0b0010111000000111";
        ram[25] = "0b0010111111000011";
        ram[26] = "0b0010000001011101";
        ram[27] = "0b1010110011111101";
        ram[28] = "0b1011000001000010";
        ram[29] = "0b1010111110100111";
        ram[30] = "0b1010011110100011";
        ram[31] = "0b0010110000101000";
        ram[32] = "0b0011000001011100";
        ram[33] = "0b0010111111101100";
        ram[34] = "0b0010100010001101";
        ram[35] = "0b1010110011100101";
        ram[36] = "0b1011000010010100";
        ram[37] = "0b1011000000111000";
        ram[38] = "0b1010100111100101";
        ram[39] = "0b0010110001101010";
        ram[40] = "0b0011000010101010";
        ram[41] = "0b0011000001110110";
        ram[42] = "0b0010100111010101";
        ram[43] = "0b1010110001011100";
        ram[44] = "0b1011000100001111";
        ram[45] = "0b1011000001110100";
        ram[46] = "0b1010100011101100";
        ram[47] = "0b0010110110011110";
        ram[48] = "0b0011000100011011";
        ram[49] = "0b0010111100111001";
        ram[50] = "0b1010000101011011";
        ram[51] = "0b1010111100111000";
        ram[52] = "0b1010110001101001";
        ram[53] = "0b1010101110110101";
        ram[54] = "0b1010001101110110";
        ram[55] = "0b0010100001100110";
        ram[56] = "0b0010100000100011";
        ram[57] = "0b0010011000111000";
        ram[58] = "0b0010010100110001";
        ram[59] = "0b0010010111111100";
        ram[60] = "0b0010000101100010";
        ram[61] = "0b1010011000110011";
        ram[62] = "0b1010110010000011";
        ram[63] = "0b1010110111110111";
        ram[64] = "0b1010100010011110";
        ram[65] = "0b0010101000001011";
        ram[66] = "0b0010111111010000";
        ram[67] = "0b0010111110011010";
        ram[68] = "0b0010101001010001";
        ram[69] = "0b1010110001010110";
        ram[70] = "0b1011000000011110";
        ram[71] = "0b1010111111101101";
        ram[72] = "0b1010101000100011";
        ram[73] = "0b0010100110111011";
        ram[74] = "0b0010111011111000";
        ram[75] = "0b0011000000101001";
        ram[76] = "0b0010110001110011";
        ram[77] = "0b1010001001001011";
        ram[78] = "0b1011000001010011";
        ram[79] = "0b1010111001110100";
        ram[80] = "0b1010010000100011";
        ram[81] = "0b0010110100000111";
        ram[82] = "0b0011000001111000";
        ram[83] = "0b0010111110110001";
        ram[84] = "0b0010010101101001";
        ram[85] = "0b1010110001111110";
        ram[86] = "0b1011000010011010";
        ram[87] = "0b1011000000011100";
        ram[88] = "0b1010100100100100";
        ram[89] = "0b0010110011100101";
        ram[90] = "0b0011000011000101";
        ram[91] = "0b0011000010000001";
        ram[92] = "0b0010101001011010";
        ram[93] = "0b1010110000001101";
        ram[94] = "0b1011000010110111";
        ram[95] = "0b1011000010010100";
        ram[96] = "0b1010100111110010";
        ram[97] = "0b0010110100010000";
        ram[98] = "0b0011000101101110";
        ram[99] = "0b0011000001100110";
        ram[100] = "0b0010010111101010";
        ram[101] = "0b1010111011111011";
        ram[102] = "0b1011000011001011";
        ram[103] = "0b1010110010101110";


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


SC_MODULE(L3_wlo_L2_WEIGHTS_9) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTS_9_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTS_9) {
meminst = new L3_wlo_L2_WEIGHTS_9_ram("L3_wlo_L2_WEIGHTS_9_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTS_9() {
    delete meminst;
}


};//endmodule
#endif
