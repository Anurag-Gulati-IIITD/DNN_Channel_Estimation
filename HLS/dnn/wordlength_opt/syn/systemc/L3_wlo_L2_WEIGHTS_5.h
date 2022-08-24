// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTS_5_H__
#define __L3_wlo_L2_WEIGHTS_5_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTS_5_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTS_5_ram) {
        ram[0] = "0b1010101111001010";
        ram[1] = "0b1010100101111011";
        ram[2] = "0b0010010000010111";
        ram[3] = "0b0010101100111100";
        ram[4] = "0b0010110000011110";
        ram[5] = "0b0001011111100011";
        ram[6] = "0b1010010110110101";
        ram[7] = "0b1010100001001001";
        ram[8] = "0b0001110100000100";
        ram[9] = "0b0010100011010111";
        ram[10] = "0b0010011101001001";
        ram[11] = "0b1010010001101101";
        ram[12] = "0b1010101100110100";
        ram[13] = "0b1010100001010001";
        ram[14] = "0b0010010010100111";
        ram[15] = "0b0010101101100100";
        ram[16] = "0b0010101001001011";
        ram[17] = "0b0010010010000101";
        ram[18] = "0b1010010000011001";
        ram[19] = "0b1010011011011000";
        ram[20] = "0b0001000110100011";
        ram[21] = "0b0010010001101010";
        ram[22] = "0b0010000011100001";
        ram[23] = "0b1010010011111110";
        ram[24] = "0b1010011011010101";
        ram[25] = "0b1001110000111010";
        ram[26] = "0b0010101011011101";
        ram[27] = "0b0010100001100110";
        ram[28] = "0b1001111001001001";
        ram[29] = "0b1010011100100011";
        ram[30] = "0b1010100001001011";
        ram[31] = "0b1000111110010110";
        ram[32] = "0b0001110011100001";
        ram[33] = "0b1010000001010111";
        ram[34] = "0b1010010100011000";
        ram[35] = "0b1000110010010010";
        ram[36] = "0b0010011001101111";
        ram[37] = "0b0010100110100110";
        ram[38] = "0b0010011110100110";
        ram[39] = "0b1010000011010011";
        ram[40] = "0b1010100101011001";
        ram[41] = "0b1010100101011111";
        ram[42] = "0b1000110011100110";
        ram[43] = "0b0010011000001010";
        ram[44] = "0b0010000110101001";
        ram[45] = "0b1001110010011010";
        ram[46] = "0b1010001011000010";
        ram[47] = "0b0010001001100100";
        ram[48] = "0b0010010101101100";
        ram[49] = "0b0010011111010001";
        ram[50] = "0b0001011010111000";
        ram[51] = "0b1010011010111001";
        ram[52] = "0b1010000100111101";
        ram[53] = "0b0010101111110010";
        ram[54] = "0b0010110010011000";
        ram[55] = "0b0010011001111101";
        ram[56] = "0b1010011011001100";
        ram[57] = "0b1010101011111110";
        ram[58] = "0b1010100000101110";
        ram[59] = "0b0010010111100000";
        ram[60] = "0b0010100001110011";
        ram[61] = "0b0001110111001111";
        ram[62] = "0b1010100001010100";
        ram[63] = "0b1010100111000000";
        ram[64] = "0b1001110110110110";
        ram[65] = "0b0010101000101011";
        ram[66] = "0b0010110000110101";
        ram[67] = "0b0010011010111111";
        ram[68] = "0b1010011010101011";
        ram[69] = "0b1010101011101110";
        ram[70] = "0b1010011111101100";
        ram[71] = "0b0010000101001101";
        ram[72] = "0b0010001111010010";
        ram[73] = "0b0010001001101101";
        ram[74] = "0b1010000100001001";
        ram[75] = "0b1010001101001010";
        ram[76] = "0b0010001110111010";
        ram[77] = "0b0010100111111001";
        ram[78] = "0b0001110111010110";
        ram[79] = "0b1010011100000101";
        ram[80] = "0b1010100101101011";
        ram[81] = "0b1010011001101101";
        ram[82] = "0b0010001001010100";
        ram[83] = "0b0010000010010100";
        ram[84] = "0b0010000011010111";
        ram[85] = "0b1001010110010100";
        ram[86] = "0b0010000011011000";
        ram[87] = "0b0010011000111110";
        ram[88] = "0b0010011000011100";
        ram[89] = "0b1001110010110110";
        ram[90] = "0b1010011011111110";
        ram[91] = "0b1010101001000111";
        ram[92] = "0b1010010100100110";
        ram[93] = "0b0010010111010011";
        ram[94] = "0b0010011101000110";
        ram[95] = "0b0010010011011000";
        ram[96] = "0b1010000110000011";
        ram[97] = "0b1001110110011000";
        ram[98] = "0b1001101001010100";
        ram[99] = "0b0010010010111100";
        ram[100] = "0b0010001001100000";
        ram[101] = "0b1010011010010001";
        ram[102] = "0b1010011111000000";
        ram[103] = "0b1010100100000110";


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


SC_MODULE(L3_wlo_L2_WEIGHTS_5) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTS_5_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTS_5) {
meminst = new L3_wlo_L2_WEIGHTS_5_ram("L3_wlo_L2_WEIGHTS_5_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTS_5() {
    delete meminst;
}


};//endmodule
#endif
