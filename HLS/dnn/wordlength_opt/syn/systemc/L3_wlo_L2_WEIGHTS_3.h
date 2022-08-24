// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTS_3_H__
#define __L3_wlo_L2_WEIGHTS_3_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTS_3_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTS_3_ram) {
        ram[0] = "0b0010000001011001";
        ram[1] = "0b1010000111010001";
        ram[2] = "0b1010000100010100";
        ram[3] = "0b1010001100001100";
        ram[4] = "0b1010010011010110";
        ram[5] = "0b0010000011100111";
        ram[6] = "0b0010001010111110";
        ram[7] = "0b0010001010001010";
        ram[8] = "0b0010010001101110";
        ram[9] = "0b1000110100011101";
        ram[10] = "0b1010010010100100";
        ram[11] = "0b1010001001101111";
        ram[12] = "0b1010000100010111";
        ram[13] = "0b1001101001111111";
        ram[14] = "0b0001110000010101";
        ram[15] = "0b0001100100101110";
        ram[16] = "0b0010000101000100";
        ram[17] = "0b0010000110001111";
        ram[18] = "0b0010000110111110";
        ram[19] = "0b1001110101101111";
        ram[20] = "0b1010001111111101";
        ram[21] = "0b1010001110111001";
        ram[22] = "0b0001000101111011";
        ram[23] = "0b1001110011101000";
        ram[24] = "0b0010001101111010";
        ram[25] = "0b0010001001101111";
        ram[26] = "0b0001110100010110";
        ram[27] = "0b1010000010000110";
        ram[28] = "0b1010000101011011";
        ram[29] = "0b1001111001110111";
        ram[30] = "0b1001101011010110";
        ram[31] = "0b1001010000100101";
        ram[32] = "0b0010000000101001";
        ram[33] = "0b0001111111100110";
        ram[34] = "0b0001111010110100";
        ram[35] = "0b0010010010111100";
        ram[36] = "0b1010001011000111";
        ram[37] = "0b1010000111001111";
        ram[38] = "0b1010001111111111";
        ram[39] = "0b1010010011010000";
        ram[40] = "0b0001101011100011";
        ram[41] = "0b0010001011111011";
        ram[42] = "0b0010001111101110";
        ram[43] = "0b0010001011001101";
        ram[44] = "0b0001111001110010";
        ram[45] = "0b1010000001000000";
        ram[46] = "0b1010001010110011";
        ram[47] = "0b1010000111010100";
        ram[48] = "0b1001111111111001";
        ram[49] = "0b1001010110101000";
        ram[50] = "0b0010000000100100";
        ram[51] = "0b0010000110110011";
        ram[52] = "0b1010000011100100";
        ram[53] = "0b1010001011001010";
        ram[54] = "0b1010010111010111";
        ram[55] = "0b0010001011110000";
        ram[56] = "0b0010000010111101";
        ram[57] = "0b0010001010000000";
        ram[58] = "0b0010010001101010";
        ram[59] = "0b1010001100010001";
        ram[60] = "0b1010001001010110";
        ram[61] = "0b1010000110111010";
        ram[62] = "0b1010000100001110";
        ram[63] = "0b0001011000101010";
        ram[64] = "0b0010000100000001";
        ram[65] = "0b0010000010100110";
        ram[66] = "0b0010000101110000";
        ram[67] = "0b0010000000011010";
        ram[68] = "0b0001110100111000";
        ram[69] = "0b1001000100011000";
        ram[70] = "0b1010000010000000";
        ram[71] = "0b1010001000001010";
        ram[72] = "0b1001010110010111";
        ram[73] = "0b0010000001110101";
        ram[74] = "0b0010000100101001";
        ram[75] = "0b0010001101101101";
        ram[76] = "0b0010000100100010";
        ram[77] = "0b0001100001110101";
        ram[78] = "0b1010001101000100";
        ram[79] = "0b1001110111110100";
        ram[80] = "0b1001110010111100";
        ram[81] = "0b1001000010111010";
        ram[82] = "0b0010000000111011";
        ram[83] = "0b0010000000010011";
        ram[84] = "0b0001110001010011";
        ram[85] = "0b0010001000100011";
        ram[86] = "0b1001110001110110";
        ram[87] = "0b1001111000101010";
        ram[88] = "0b1010001000010110";
        ram[89] = "0b1010010110110110";
        ram[90] = "0b0010000010110001";
        ram[91] = "0b0010010010000100";
        ram[92] = "0b0010010011101110";
        ram[93] = "0b0010001100001110";
        ram[94] = "0b0001101110111001";
        ram[95] = "0b1010000101110001";
        ram[96] = "0b1010001001110101";
        ram[97] = "0b1010001011110010";
        ram[98] = "0b1001111111100110";
        ram[99] = "0b0010000001110100";
        ram[100] = "0b0010000111000111";
        ram[101] = "0b0001111010001011";
        ram[102] = "0b0010010000001011";
        ram[103] = "0b0010010000010111";


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


SC_MODULE(L3_wlo_L2_WEIGHTS_3) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTS_3_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTS_3) {
meminst = new L3_wlo_L2_WEIGHTS_3_ram("L3_wlo_L2_WEIGHTS_3_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTS_3() {
    delete meminst;
}


};//endmodule
#endif
