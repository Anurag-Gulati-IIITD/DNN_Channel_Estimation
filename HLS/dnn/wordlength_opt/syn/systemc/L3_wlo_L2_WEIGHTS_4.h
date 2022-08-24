// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTS_4_H__
#define __L3_wlo_L2_WEIGHTS_4_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTS_4_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTS_4_ram) {
        ram[0] = "0b0010101011111101";
        ram[1] = "0b0011000010111000";
        ram[2] = "0b0011000001111111";
        ram[3] = "0b0010110011010110";
        ram[4] = "0b1010100011000011";
        ram[5] = "0b1010110101111001";
        ram[6] = "0b1010111000101000";
        ram[7] = "0b1010011001100000";
        ram[8] = "0b0001110100010000";
        ram[9] = "0b1001111100100011";
        ram[10] = "0b1001111001110111";
        ram[11] = "0b0010100000000110";
        ram[12] = "0b0010101101110100";
        ram[13] = "0b0010111001000110";
        ram[14] = "0b0010011000111000";
        ram[15] = "0b1010100111010010";
        ram[16] = "0b1010111011110101";
        ram[17] = "0b1010111000101110";
        ram[18] = "0b0010000000100100";
        ram[19] = "0b0010110011110010";
        ram[20] = "0b0010111011001010";
        ram[21] = "0b0010100010101010";
        ram[22] = "0b1010100111100000";
        ram[23] = "0b1010100111110101";
        ram[24] = "0b1010010100100010";
        ram[25] = "0b0010010110000001";
        ram[26] = "0b1010001100101101";
        ram[27] = "0b1010100101101001";
        ram[28] = "0b1000000001110101";
        ram[29] = "0b0010110000110100";
        ram[30] = "0b0010101111101110";
        ram[31] = "0b0010010011010001";
        ram[32] = "0b1010101110111011";
        ram[33] = "0b1010110111011111";
        ram[34] = "0b1010101000110001";
        ram[35] = "0b0010100110010000";
        ram[36] = "0b0010111011110010";
        ram[37] = "0b0010101111001110";
        ram[38] = "0b1010010010001100";
        ram[39] = "0b1010110011100001";
        ram[40] = "0b1010100010000110";
        ram[41] = "0b0010100111000110";
        ram[42] = "0b0010110110101001";
        ram[43] = "0b0010001100000010";
        ram[44] = "0b1010110001111001";
        ram[45] = "0b1011000001110011";
        ram[46] = "0b1010110001100001";
        ram[47] = "0b0010110101000001";
        ram[48] = "0b0011000110100001";
        ram[49] = "0b0011000111111011";
        ram[50] = "0b0010100110011100";
        ram[51] = "0b1011000000000000";
        ram[52] = "0b0011001000010101";
        ram[53] = "0b0010110111100110";
        ram[54] = "0b1010100010000111";
        ram[55] = "0b1011000010001111";
        ram[56] = "0b1010111100110000";
        ram[57] = "0b1010101001011110";
        ram[58] = "0b0010100010111111";
        ram[59] = "0b0010101000100101";
        ram[60] = "0b0010011111010101";
        ram[61] = "0b0010011001110011";
        ram[62] = "0b0010100110101001";
        ram[63] = "0b0010101011011101";
        ram[64] = "0b0010010110011100";
        ram[65] = "0b1010011110111110";
        ram[66] = "0b1010111011110011";
        ram[67] = "0b1010110111011001";
        ram[68] = "0b1010010001101011";
        ram[69] = "0b0010110101100101";
        ram[70] = "0b0010111001101010";
        ram[71] = "0b0010110000100101";
        ram[72] = "0b1010011110001000";
        ram[73] = "0b1010111000110101";
        ram[74] = "0b1010110000001100";
        ram[75] = "0b1010000010000110";
        ram[76] = "0b0010100110010001";
        ram[77] = "0b0010100100011000";
        ram[78] = "0b1010011100010000";
        ram[79] = "0b0001010000001101";
        ram[80] = "0b0010100111101000";
        ram[81] = "0b0010100011000101";
        ram[82] = "0b1010100000001101";
        ram[83] = "0b1010110100011001";
        ram[84] = "0b1010101111110100";
        ram[85] = "0b0010000110101011";
        ram[86] = "0b0010111000100101";
        ram[87] = "0b0010110100110100";
        ram[88] = "0b0010010011001101";
        ram[89] = "0b1010110110010111";
        ram[90] = "0b1010110110111011";
        ram[91] = "0b1010010101011011";
        ram[92] = "0b0010101000010100";
        ram[93] = "0b0010101110110011";
        ram[94] = "0b1010001111010010";
        ram[95] = "0b1010111001011100";
        ram[96] = "0b1010110111010000";
        ram[97] = "0b0010011111101011";
        ram[98] = "0b0011000001000101";
        ram[99] = "0b0011000011010010";
        ram[100] = "0b0010101000011101";
        ram[101] = "0b1010111001010001";
        ram[102] = "0b1011001011100001";
        ram[103] = "0b1011000110010111";


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


SC_MODULE(L3_wlo_L2_WEIGHTS_4) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTS_4_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTS_4) {
meminst = new L3_wlo_L2_WEIGHTS_4_ram("L3_wlo_L2_WEIGHTS_4_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTS_4() {
    delete meminst;
}


};//endmodule
#endif
