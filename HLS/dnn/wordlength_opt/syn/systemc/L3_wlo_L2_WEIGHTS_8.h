// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTS_8_H__
#define __L3_wlo_L2_WEIGHTS_8_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTS_8_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTS_8_ram) {
        ram[0] = "0b0010100010001110";
        ram[1] = "0b0010111000000111";
        ram[2] = "0b0010110000101111";
        ram[3] = "0b1010100000101100";
        ram[4] = "0b1010111000110100";
        ram[5] = "0b1010110101000100";
        ram[6] = "0b1010000010001010";
        ram[7] = "0b0010110011110111";
        ram[8] = "0b0010111001001100";
        ram[9] = "0b0010010100111010";
        ram[10] = "0b1010101101111000";
        ram[11] = "0b1010110110111000";
        ram[12] = "0b1010100110000111";
        ram[13] = "0b0010100110111110";
        ram[14] = "0b0010110000101010";
        ram[15] = "0b0010100100000000";
        ram[16] = "0b1010100100011110";
        ram[17] = "0b1010101011011111";
        ram[18] = "0b1010001010010101";
        ram[19] = "0b0010011001101011";
        ram[20] = "0b0010110011011000";
        ram[21] = "0b0010010010011001";
        ram[22] = "0b1010101011011100";
        ram[23] = "0b1010110011111101";
        ram[24] = "0b1010100010100100";
        ram[25] = "0b0010101001010101";
        ram[26] = "0b0010110001101100";
        ram[27] = "0b0001100000011001";
        ram[28] = "0b1010110011101011";
        ram[29] = "0b1010110011110110";
        ram[30] = "0b1010100001000110";
        ram[31] = "0b0010100100010100";
        ram[32] = "0b0010111000000001";
        ram[33] = "0b0010110010100101";
        ram[34] = "0b1001010000111111";
        ram[35] = "0b1010101101001000";
        ram[36] = "0b1010110111011001";
        ram[37] = "0b1010101010010000";
        ram[38] = "0b0010100111110011";
        ram[39] = "0b0010110111110000";
        ram[40] = "0b0010110100101001";
        ram[41] = "0b0010000011001010";
        ram[42] = "0b1010110100010100";
        ram[43] = "0b1010111000100001";
        ram[44] = "0b1010100001111110";
        ram[45] = "0b0010101010000000";
        ram[46] = "0b0010110101111111";
        ram[47] = "0b0010101000000100";
        ram[48] = "0b1010010011011110";
        ram[49] = "0b1010101011000110";
        ram[50] = "0b1010100011100111";
        ram[51] = "0b0001111011010011";
        ram[52] = "0b0010110111100000";
        ram[53] = "0b0010011001111011";
        ram[54] = "0b1010110011010100";
        ram[55] = "0b1010111010000111";
        ram[56] = "0b1010100000011111";
        ram[57] = "0b0010101100110010";
        ram[58] = "0b0010111010100001";
        ram[59] = "0b0010101100010010";
        ram[60] = "0b1010011011110011";
        ram[61] = "0b1010111001101000";
        ram[62] = "0b1010110000011110";
        ram[63] = "0b0010010101101110";
        ram[64] = "0b0010110010111110";
        ram[65] = "0b0010101110011101";
        ram[66] = "0b1010000000111010";
        ram[67] = "0b1010101001110101";
        ram[68] = "0b1010101010010110";
        ram[69] = "0b0010001110011110";
        ram[70] = "0b0010101001011001";
        ram[71] = "0b0010101010100111";
        ram[72] = "0b1010000100010111";
        ram[73] = "0b1010101101010100";
        ram[74] = "0b1010101100011010";
        ram[75] = "0b1001101100010001";
        ram[76] = "0b0010110011110001";
        ram[77] = "0b0010110100001100";
        ram[78] = "0b1010101011111100";
        ram[79] = "0b1010111010101011";
        ram[80] = "0b1010101101011010";
        ram[81] = "0b0010010001011010";
        ram[82] = "0b0010110100001111";
        ram[83] = "0b0010111000001110";
        ram[84] = "0b0010100000110101";
        ram[85] = "0b1010110000011101";
        ram[86] = "0b1010110110110001";
        ram[87] = "0b1010101101100100";
        ram[88] = "0b0010001101101110";
        ram[89] = "0b0010101110110001";
        ram[90] = "0b0010110110111111";
        ram[91] = "0b0010010100011101";
        ram[92] = "0b1010101011101110";
        ram[93] = "0b1010111001110111";
        ram[94] = "0b1010101011111111";
        ram[95] = "0b0010001011010101";
        ram[96] = "0b0010110110100110";
        ram[97] = "0b0010110000000010";
        ram[98] = "0b0010000001010011";
        ram[99] = "0b1010101000001011";
        ram[100] = "0b1010110010010110";
        ram[101] = "0b1010010011100001";
        ram[102] = "0b0010100110011100";
        ram[103] = "0b0010101011111000";


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


SC_MODULE(L3_wlo_L2_WEIGHTS_8) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTS_8_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTS_8) {
meminst = new L3_wlo_L2_WEIGHTS_8_ram("L3_wlo_L2_WEIGHTS_8_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTS_8() {
    delete meminst;
}


};//endmodule
#endif
