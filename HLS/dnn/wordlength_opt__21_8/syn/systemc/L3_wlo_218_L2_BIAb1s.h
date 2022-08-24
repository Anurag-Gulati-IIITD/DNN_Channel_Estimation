// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_BIAb1s_H__
#define __L3_wlo_218_L2_BIAb1s_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_BIAb1s_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 12;
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


   SC_CTOR(L3_wlo_218_L2_BIAb1s_ram) {
        ram[0] = "0b010100000111";
        ram[1] = "0b001001001111";
        ram[2] = "0b111011011101";
        ram[3] = "0b101111110101";
        ram[4] = "0b110101100001";
        ram[5] = "0b111111110000";
        ram[6] = "0b001010011101";
        ram[7] = "0b000100001111";
        ram[8] = "0b111111011111";
        ram[9] = "0b111100010100";
        ram[10] = "0b000000001001";
        ram[11] = "0b000100101001";
        ram[12] = "0b000100000000";
        ram[13] = "0b111110011010";
        ram[14] = "0b110110100010";
        ram[15] = "0b110100110001";
        ram[16] = "0b111010100101";
        ram[17] = "0b000111100000";
        ram[18] = "0b001011011100";
        ram[19] = "0b001000001001";
        ram[20] = "0b000010100000";
        ram[21] = "0b111101000111";
        ram[22] = "0b000000100110";
        ram[23] = "0b000001100101";
        ram[24] = "0b000000111011";
        ram[25] = "0b111011101101";
        ram[26] = "0b111001010110";
        ram[27] = "0b000100110000";
        ram[28] = "0b001011110101";
        ram[29] = "0b001101100110";
        ram[30] = "0b000101010010";
        ram[31] = "0b111011010111";
        ram[32] = "0b110111000110";
        ram[33] = "0b110111111001";
        ram[34] = "0b111001101011";
        ram[35] = "0b000000100001";
        ram[36] = "0b000000101101";
        ram[37] = "0b000000010111";
        ram[38] = "0b000011101010";
        ram[39] = "0b000011100111";
        ram[40] = "0b000010100000";
        ram[41] = "0b000001001001";
        ram[42] = "0b000000100111";
        ram[43] = "0b000011010101";
        ram[44] = "0b111101111010";
        ram[45] = "0b111101101100";
        ram[46] = "0b110110100000";
        ram[47] = "0b110111110011";
        ram[48] = "0b111110100101";
        ram[49] = "0b001100111100";
        ram[50] = "0b010000111011";
        ram[51] = "0b001011010011";
        ram[52] = "0b000000110001";
        ram[53] = "0b110101000101";
        ram[54] = "0b101111011101";
        ram[55] = "0b111011100000";
        ram[56] = "0b001000101001";
        ram[57] = "0b001011000001";
        ram[58] = "0b000011110111";
        ram[59] = "0b111101011001";
        ram[60] = "0b111011000001";
        ram[61] = "0b111110010100";
        ram[62] = "0b000101001001";
        ram[63] = "0b111111111011";
        ram[64] = "0b111011010101";
        ram[65] = "0b110110001110";
        ram[66] = "0b111011100110";
        ram[67] = "0b000100100000";
        ram[68] = "0b001100111111";
        ram[69] = "0b001000011100";
        ram[70] = "0b000010001110";
        ram[71] = "0b111101100010";
        ram[72] = "0b111010000010";
        ram[73] = "0b000000110101";
        ram[74] = "0b000001111101";
        ram[75] = "0b111111000001";
        ram[76] = "0b111001001001";
        ram[77] = "0b111010000000";
        ram[78] = "0b001001111100";
        ram[79] = "0b001110110010";
        ram[80] = "0b001000110011";
        ram[81] = "0b111011000101";
        ram[82] = "0b110101101001";
        ram[83] = "0b110101000010";
        ram[84] = "0b111001101110";
        ram[85] = "0b000001101000";
        ram[86] = "0b000011101010";
        ram[87] = "0b000011001000";
        ram[88] = "0b000010001110";
        ram[89] = "0b000000111011";
        ram[90] = "0b000110000000";
        ram[91] = "0b000000010000";
        ram[92] = "0b111111101000";
        ram[93] = "0b000000011010";
        ram[94] = "0b111110101011";
        ram[95] = "0b111100111100";
        ram[96] = "0b111010110000";
        ram[97] = "0b111010010011";
        ram[98] = "0b000000011000";
        ram[99] = "0b001001000100";
        ram[100] = "0b001111011111";
        ram[101] = "0b000111111101";
        ram[102] = "0b111111110111";
        ram[103] = "0b101111111100";


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


SC_MODULE(L3_wlo_218_L2_BIAb1s) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_BIAb1s_ram* meminst;


SC_CTOR(L3_wlo_218_L2_BIAb1s) {
meminst = new L3_wlo_218_L2_BIAb1s_ram("L3_wlo_218_L2_BIAb1s_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_BIAb1s() {
    delete meminst;
}


};//endmodule
#endif
