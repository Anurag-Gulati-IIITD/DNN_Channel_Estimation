// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTS_6_H__
#define __L3_wlo_L2_WEIGHTS_6_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTS_6_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTS_6_ram) {
        ram[0] = "0b1010100010111001";
        ram[1] = "0b0010100001001111";
        ram[2] = "0b0010000001001000";
        ram[3] = "0b0010010000100001";
        ram[4] = "0b1001110100111000";
        ram[5] = "0b0010000111001100";
        ram[6] = "0b0010100100101001";
        ram[7] = "0b0010101001101001";
        ram[8] = "0b0001100011110001";
        ram[9] = "0b1001110110000111";
        ram[10] = "0b1010100101000101";
        ram[11] = "0b1010101011010011";
        ram[12] = "0b1010100000011011";
        ram[13] = "0b1010001010111100";
        ram[14] = "0b0010100110100010";
        ram[15] = "0b0010011000110000";
        ram[16] = "0b0010000011101001";
        ram[17] = "0b0001110100111110";
        ram[18] = "0b1010100001111100";
        ram[19] = "0b0010100101111000";
        ram[20] = "0b0010100010111011";
        ram[21] = "0b0001100000011111";
        ram[22] = "0b1010110010011001";
        ram[23] = "0b1010110001101110";
        ram[24] = "0b1010100000100110";
        ram[25] = "0b0001111100101100";
        ram[26] = "0b0010110100101110";
        ram[27] = "0b0010100111011100";
        ram[28] = "0b0010000001101011";
        ram[29] = "0b1010010111110001";
        ram[30] = "0b1010101000100001";
        ram[31] = "0b1010100011001111";
        ram[32] = "0b1010101101010000";
        ram[33] = "0b1010000111111011";
        ram[34] = "0b1010010000101001";
        ram[35] = "0b0010011001111100";
        ram[36] = "0b0010100101111010";
        ram[37] = "0b0010100000000111";
        ram[38] = "0b1001101101101011";
        ram[39] = "0b1010011000100010";
        ram[40] = "0b1010100011000000";
        ram[41] = "0b0010010111111111";
        ram[42] = "0b0010011011110010";
        ram[43] = "0b0010100000000000";
        ram[44] = "0b0001101101101101";
        ram[45] = "0b1010000111000001";
        ram[46] = "0b1010011100001111";
        ram[47] = "0b1010101010000111";
        ram[48] = "0b1010010101001100";
        ram[49] = "0b0010011100101000";
        ram[50] = "0b0010101100000111";
        ram[51] = "0b0010110100111011";
        ram[52] = "0b0010001100110101";
        ram[53] = "0b0010110000101000";
        ram[54] = "0b0010010001010100";
        ram[55] = "0b1010010110001010";
        ram[56] = "0b1001111110011101";
        ram[57] = "0b1001000100100111";
        ram[58] = "0b0010011001000000";
        ram[59] = "0b1001011101101100";
        ram[60] = "0b1010100100110111";
        ram[61] = "0b1010110010100100";
        ram[62] = "0b1010101010100101";
        ram[63] = "0b1010010110000110";
        ram[64] = "0b0010110001100100";
        ram[65] = "0b0010101000101110";
        ram[66] = "0b0010100001010100";
        ram[67] = "0b1010000100111110";
        ram[68] = "0b1010010001100011";
        ram[69] = "0b1010001111000000";
        ram[70] = "0b0010011101110101";
        ram[71] = "0b0010001000001100";
        ram[72] = "0b1010001100010011";
        ram[73] = "0b1010100111001110";
        ram[74] = "0b1001101110000011";
        ram[75] = "0b0010010011000000";
        ram[76] = "0b0010110000000101";
        ram[77] = "0b0010110100011000";
        ram[78] = "0b0010000101110100";
        ram[79] = "0b1010001111111110";
        ram[80] = "0b1010110000101000";
        ram[81] = "0b1010010101111100";
        ram[82] = "0b1010100000010011";
        ram[83] = "0b0001010101101010";
        ram[84] = "0b0010001010001110";
        ram[85] = "0b0010100001101101";
        ram[86] = "0b0010010000001100";
        ram[87] = "0b0010011010101110";
        ram[88] = "0b0000101011000000";
        ram[89] = "0b1010001001000110";
        ram[90] = "0b1010010110000010";
        ram[91] = "0b1010010000100000";
        ram[92] = "0b0010010010010101";
        ram[93] = "0b0010001101111111";
        ram[94] = "0b0001101101011100";
        ram[95] = "0b1010100100011110";
        ram[96] = "0b1010101101100000";
        ram[97] = "0b1010011010101000";
        ram[98] = "0b0001101100111100";
        ram[99] = "0b0010010110101101";
        ram[100] = "0b0010101111010011";
        ram[101] = "0b0010101001011000";
        ram[102] = "0b0010010010110100";
        ram[103] = "0b1010101010110011";


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


SC_MODULE(L3_wlo_L2_WEIGHTS_6) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTS_6_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTS_6) {
meminst = new L3_wlo_L2_WEIGHTS_6_ram("L3_wlo_L2_WEIGHTS_6_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTS_6() {
    delete meminst;
}


};//endmodule
#endif
