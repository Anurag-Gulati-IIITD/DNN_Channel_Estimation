// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTS_1_H__
#define __L3_wlo_L2_WEIGHTS_1_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTS_1_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTS_1_ram) {
        ram[0] = "0b1010110101001101";
        ram[1] = "0b0010100010011110";
        ram[2] = "0b0010111111010100";
        ram[3] = "0b0010111011100111";
        ram[4] = "0b0010100100011110";
        ram[5] = "0b1010101001001001";
        ram[6] = "0b1010111010111010";
        ram[7] = "0b1010110111011010";
        ram[8] = "0b1010010001101101";
        ram[9] = "0b0010101010110000";
        ram[10] = "0b0010110101111010";
        ram[11] = "0b0010101001011000";
        ram[12] = "0b1010000001100110";
        ram[13] = "0b1010110011010010";
        ram[14] = "0b1010110110100000";
        ram[15] = "0b1010100011111111";
        ram[16] = "0b0010011011101111";
        ram[17] = "0b0010111010000101";
        ram[18] = "0b0010111010000011";
        ram[19] = "0b0010010111000000";
        ram[20] = "0b1010110001000001";
        ram[21] = "0b1011000010001001";
        ram[22] = "0b1010111100111000";
        ram[23] = "0b1010000111111100";
        ram[24] = "0b0010111011110001";
        ram[25] = "0b0011000011000110";
        ram[26] = "0b1010100110011100";
        ram[27] = "0b1010111010010100";
        ram[28] = "0b1010111000000100";
        ram[29] = "0b1001110011100110";
        ram[30] = "0b0010110100100011";
        ram[31] = "0b0010110010000111";
        ram[32] = "0b0010010010011001";
        ram[33] = "0b1010101000111011";
        ram[34] = "0b1010110001000001";
        ram[35] = "0b1010001010000010";
        ram[36] = "0b0010011110100110";
        ram[37] = "0b0010101011100101";
        ram[38] = "0b0010100110111101";
        ram[39] = "0b1001110111110100";
        ram[40] = "0b1010100101001110";
        ram[41] = "0b1010100001111001";
        ram[42] = "0b1010010110110100";
        ram[43] = "0b0010010100101010";
        ram[44] = "0b0010011101111111";
        ram[45] = "0b0010011000110100";
        ram[46] = "0b1010010010110001";
        ram[47] = "0b1010101000000110";
        ram[48] = "0b1010010110010110";
        ram[49] = "0b0010010001101100";
        ram[50] = "0b0010101011111111";
        ram[51] = "0b0010101011111110";
        ram[52] = "0b0010111110111010";
        ram[53] = "0b0011000001000100";
        ram[54] = "0b0010101100010001";
        ram[55] = "0b1010100011100110";
        ram[56] = "0b1010111100000010";
        ram[57] = "0b1010111010100100";
        ram[58] = "0b1010100010110110";
        ram[59] = "0b0010100111110001";
        ram[60] = "0b0010111001010111";
        ram[61] = "0b0010101110111011";
        ram[62] = "0b0001110001010001";
        ram[63] = "0b1010101010101101";
        ram[64] = "0b1010110100011101";
        ram[65] = "0b1010101100100111";
        ram[66] = "0b0010010000001011";
        ram[67] = "0b0010110101001100";
        ram[68] = "0b0010110111011101";
        ram[69] = "0b0010101000001101";
        ram[70] = "0b1010101001100100";
        ram[71] = "0b1010111100110010";
        ram[72] = "0b1010111010111001";
        ram[73] = "0b1010000101010001";
        ram[74] = "0b0010110111001111";
        ram[75] = "0b0011000001011011";
        ram[76] = "0b0010110111110010";
        ram[77] = "0b1010011100100011";
        ram[78] = "0b1010111110000101";
        ram[79] = "0b1010101000010011";
        ram[80] = "0b0010101100101001";
        ram[81] = "0b0010110111001001";
        ram[82] = "0b0010101001101110";
        ram[83] = "0b1010001001110000";
        ram[84] = "0b1010110000110000";
        ram[85] = "0b1010101100100101";
        ram[86] = "0b0010001000100010";
        ram[87] = "0b0010110001011000";
        ram[88] = "0b0010101010010000";
        ram[89] = "0b1001110111000011";
        ram[90] = "0b1010100101101011";
        ram[91] = "0b1010101101011011";
        ram[92] = "0b1010010001001001";
        ram[93] = "0b0010000010111011";
        ram[94] = "0b0010100110100110";
        ram[95] = "0b0010011011001000";
        ram[96] = "0b0010000000000001";
        ram[97] = "0b1010100110000101";
        ram[98] = "0b1010010101001101";
        ram[99] = "0b0010001011010101";
        ram[100] = "0b0010100001100010";
        ram[101] = "0b0010100111111010";
        ram[102] = "0b0010011100000010";
        ram[103] = "0b1010011010111010";


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


SC_MODULE(L3_wlo_L2_WEIGHTS_1) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTS_1_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTS_1) {
meminst = new L3_wlo_L2_WEIGHTS_1_ram("L3_wlo_L2_WEIGHTS_1_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTS_1() {
    delete meminst;
}


};//endmodule
#endif
