// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTS_7_H__
#define __L3_wlo_L2_WEIGHTS_7_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTS_7_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTS_7_ram) {
        ram[0] = "0b1001101100001111";
        ram[1] = "0b0010100000010010";
        ram[2] = "0b0010000010011010";
        ram[3] = "0b1010100010010010";
        ram[4] = "0b1001100101101111";
        ram[5] = "0b0010010011100001";
        ram[6] = "0b0010111000101001";
        ram[7] = "0b0010101101001000";
        ram[8] = "0b1010100001000001";
        ram[9] = "0b1010110001101100";
        ram[10] = "0b1010101001111010";
        ram[11] = "0b0010001001101011";
        ram[12] = "0b0010110111101100";
        ram[13] = "0b0010110001000111";
        ram[14] = "0b0010011010111111";
        ram[15] = "0b1010110000000111";
        ram[16] = "0b1010110011010001";
        ram[17] = "0b0000100101101000";
        ram[18] = "0b0010110001111011";
        ram[19] = "0b0010110101000010";
        ram[20] = "0b0001110010101010";
        ram[21] = "0b1010101101100011";
        ram[22] = "0b1010110011111001";
        ram[23] = "0b1010100101110111";
        ram[24] = "0b0010101001010000";
        ram[25] = "0b0010110101101100";
        ram[26] = "0b1001101011011000";
        ram[27] = "0b1010101001100000";
        ram[28] = "0b1010101111011001";
        ram[29] = "0b1010100101111001";
        ram[30] = "0b0001101100101011";
        ram[31] = "0b0010100100001111";
        ram[32] = "0b0010011010011111";
        ram[33] = "0b0010011101000100";
        ram[34] = "0b0010101000001100";
        ram[35] = "0b0010011110011000";
        ram[36] = "0b1010100010000100";
        ram[37] = "0b1010110000000111";
        ram[38] = "0b1010110110010100";
        ram[39] = "0b1010011101011101";
        ram[40] = "0b0010100010000000";
        ram[41] = "0b0010110100101101";
        ram[42] = "0b0010110100100010";
        ram[43] = "0b0010010100100111";
        ram[44] = "0b1010101101001100";
        ram[45] = "0b1010110100011110";
        ram[46] = "0b1010101011110100";
        ram[47] = "0b1010001000101111";
        ram[48] = "0b0010010100111111";
        ram[49] = "0b0010001111110000";
        ram[50] = "0b0010100001001110";
        ram[51] = "0b0010011101101001";
        ram[52] = "0b1010010011000011";
        ram[53] = "0b1010010101001100";
        ram[54] = "0b1010001111011000";
        ram[55] = "0b0010001111010000";
        ram[56] = "0b0010100000010111";
        ram[57] = "0b0010100111100010";
        ram[58] = "0b1010010010110100";
        ram[59] = "0b1010101010110010";
        ram[60] = "0b1010110001011010";
        ram[61] = "0b1010011101000000";
        ram[62] = "0b0010011111110110";
        ram[63] = "0b0010110110001010";
        ram[64] = "0b0010100101101110";
        ram[65] = "0b1010100011000111";
        ram[66] = "0b1010110001000010";
        ram[67] = "0b1010101100111100";
        ram[68] = "0b0010001100010000";
        ram[69] = "0b0010110011000011";
        ram[70] = "0b0010101111000011";
        ram[71] = "0b1010100001011101";
        ram[72] = "0b1010110111101010";
        ram[73] = "0b1010100111011000";
        ram[74] = "0b0010011100011000";
        ram[75] = "0b0010110101011000";
        ram[76] = "0b0010110011001011";
        ram[77] = "0b0001101111110011";
        ram[78] = "0b1010101011101000";
        ram[79] = "0b1010010010010100";
        ram[80] = "0b0000111010011010";
        ram[81] = "0b0010100000001001";
        ram[82] = "0b0010100100110011";
        ram[83] = "0b0010010001000010";
        ram[84] = "0b0010100001011110";
        ram[85] = "0b0010000001000101";
        ram[86] = "0b1010011100000000";
        ram[87] = "0b1010100011001000";
        ram[88] = "0b1010110001011110";
        ram[89] = "0b1010000100000100";
        ram[90] = "0b0010011110111010";
        ram[91] = "0b0010110100011011";
        ram[92] = "0b0010110111001100";
        ram[93] = "0b0010010011001001";
        ram[94] = "0b1010101111001001";
        ram[95] = "0b1010110010001101";
        ram[96] = "0b1010101101100100";
        ram[97] = "0b1001111110000001";
        ram[98] = "0b0010001100000011";
        ram[99] = "0b0010101000100111";
        ram[100] = "0b0010100011001101";
        ram[101] = "0b0010001101001001";
        ram[102] = "0b0010001100101100";
        ram[103] = "0b1010101011001101";


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


SC_MODULE(L3_wlo_L2_WEIGHTS_7) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTS_7_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTS_7) {
meminst = new L3_wlo_L2_WEIGHTS_7_ram("L3_wlo_L2_WEIGHTS_7_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTS_7() {
    delete meminst;
}


};//endmodule
#endif
