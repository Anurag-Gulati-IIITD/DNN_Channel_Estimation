// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTS_2_H__
#define __L3_wlo_L2_WEIGHTS_2_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTS_2_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTS_2_ram) {
        ram[0] = "0b1000100101111001";
        ram[1] = "0b0001010101001110";
        ram[2] = "0b0001100101111000";
        ram[3] = "0b0001010100101110";
        ram[4] = "0b0001000010100101";
        ram[5] = "0b0000111111011001";
        ram[6] = "0b1001101001101000";
        ram[7] = "0b1001110100000100";
        ram[8] = "0b1001110100001000";
        ram[9] = "0b1001010011100001";
        ram[10] = "0b0001110000100011";
        ram[11] = "0b0001111100011111";
        ram[12] = "0b0001111001110101";
        ram[13] = "0b1001010100101101";
        ram[14] = "0b1001110111000111";
        ram[15] = "0b1001110111011101";
        ram[16] = "0b1001101000011011";
        ram[17] = "0b0001101111100110";
        ram[18] = "0b0001110111011000";
        ram[19] = "0b0001011011010111";
        ram[20] = "0b1001011100011000";
        ram[21] = "0b1001110001100101";
        ram[22] = "0b1001010111001001";
        ram[23] = "0b0001011001101011";
        ram[24] = "0b0001010100000000";
        ram[25] = "0b1000011110111100";
        ram[26] = "0b1001101110011110";
        ram[27] = "0b1000111010010010";
        ram[28] = "0b0001101000101011";
        ram[29] = "0b0001100001111101";
        ram[30] = "0b0001100010111100";
        ram[31] = "0b1001010100101000";
        ram[32] = "0b1001100110001001";
        ram[33] = "0b1001011001010001";
        ram[34] = "0b1000110001111101";
        ram[35] = "0b0000011000111010";
        ram[36] = "0b0001001010100001";
        ram[37] = "0b0001010111101000";
        ram[38] = "0b0001011001011101";
        ram[39] = "0b0001110000111100";
        ram[40] = "0b0001100001000111";
        ram[41] = "0b1001100001000011";
        ram[42] = "0b1001110101001100";
        ram[43] = "0b1001111000100010";
        ram[44] = "0b1001100111110110";
        ram[45] = "0b0001100010100100";
        ram[46] = "0b0001110100111101";
        ram[47] = "0b0001101100001101";
        ram[48] = "0b0001011000000010";
        ram[49] = "0b1001101001010010";
        ram[50] = "0b1001100111110110";
        ram[51] = "0b1001010100001101";
        ram[52] = "0b0001101100101110";
        ram[53] = "0b0001001011101110";
        ram[54] = "0b1001010001000011";
        ram[55] = "0b0001001000001010";
        ram[56] = "0b1001100110010101";
        ram[57] = "0b1001101001000101";
        ram[58] = "0b1001101110100100";
        ram[59] = "0b1001011110011111";
        ram[60] = "0b0001101110110110";
        ram[61] = "0b0001111101111010";
        ram[62] = "0b0001111010100101";
        ram[63] = "0b0001011000110100";
        ram[64] = "0b1001110100011111";
        ram[65] = "0b1001111011100011";
        ram[66] = "0b1001110100111101";
        ram[67] = "0b0001100110110101";
        ram[68] = "0b0001110100101011";
        ram[69] = "0b0001110011111000";
        ram[70] = "0b0001010100101110";
        ram[71] = "0b1001110011101001";
        ram[72] = "0b1001110010010001";
        ram[73] = "0b0000101011100010";
        ram[74] = "0b0001000110111100";
        ram[75] = "0b0001100000110101";
        ram[76] = "0b1001011110000100";
        ram[77] = "0b1001110000110110";
        ram[78] = "0b0001010010100111";
        ram[79] = "0b0001100111100100";
        ram[80] = "0b0001100010011010";
        ram[81] = "0b1001010000011100";
        ram[82] = "0b1001101001000011";
        ram[83] = "0b1001100011101101";
        ram[84] = "0b1001011000000010";
        ram[85] = "0b0001010011011010";
        ram[86] = "0b0001100110001100";
        ram[87] = "0b0001100001101001";
        ram[88] = "0b0001010111001001";
        ram[89] = "0b0001100000110000";
        ram[90] = "0b1000111011101010";
        ram[91] = "0b1001010110000100";
        ram[92] = "0b1001100111100011";
        ram[93] = "0b1001110111111000";
        ram[94] = "0b1001100101101111";
        ram[95] = "0b0001101000100100";
        ram[96] = "0b0001111011001011";
        ram[97] = "0b0001110010100111";
        ram[98] = "0b0001011110100001";
        ram[99] = "0b1001100000111111";
        ram[100] = "0b1001110110001100";
        ram[101] = "0b1001100100101000";
        ram[102] = "0b0001000010011001";
        ram[103] = "0b0001100110000100";


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


SC_MODULE(L3_wlo_L2_WEIGHTS_2) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTS_2_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTS_2) {
meminst = new L3_wlo_L2_WEIGHTS_2_ram("L3_wlo_L2_WEIGHTS_2_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTS_2() {
    delete meminst;
}


};//endmodule
#endif
