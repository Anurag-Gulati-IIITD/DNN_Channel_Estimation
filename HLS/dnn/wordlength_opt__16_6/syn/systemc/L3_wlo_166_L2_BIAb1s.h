// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_166_L2_BIAb1s_H__
#define __L3_wlo_166_L2_BIAb1s_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_166_L2_BIAb1s_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 9;
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


   SC_CTOR(L3_wlo_166_L2_BIAb1s_ram) {
        ram[0] = "0b010100000";
        ram[1] = "0b001001001";
        ram[2] = "0b111011011";
        ram[3] = "0b101111110";
        ram[4] = "0b110101100";
        ram[5] = "0b111111110";
        ram[6] = "0b001010011";
        ram[7] = "0b000100001";
        ram[8] = "0b111111011";
        ram[9] = "0b111100010";
        ram[10] = "0b000000001";
        ram[11] = "0b000100101";
        ram[12] = "0b000100000";
        ram[13] = "0b111110011";
        ram[14] = "0b110110100";
        ram[15] = "0b110100110";
        ram[16] = "0b111010100";
        ram[17] = "0b000111100";
        ram[18] = "0b001011011";
        ram[19] = "0b001000001";
        ram[20] = "0b000010100";
        ram[21] = "0b111101000";
        ram[22] = "0b000000100";
        ram[23] = "0b000001100";
        ram[24] = "0b000000111";
        ram[25] = "0b111011101";
        ram[26] = "0b111001010";
        ram[27] = "0b000100110";
        ram[28] = "0b001011110";
        ram[29] = "0b001101100";
        ram[30] = "0b000101010";
        ram[31] = "0b111011010";
        ram[32] = "0b110111000";
        ram[33] = "0b110111111";
        ram[34] = "0b111001101";
        ram[35] = "0b000000100";
        ram[36] = "0b000000101";
        ram[37] = "0b000000010";
        ram[38] = "0b000011101";
        ram[39] = "0b000011100";
        ram[40] = "0b000010100";
        ram[41] = "0b000001001";
        ram[42] = "0b000000100";
        ram[43] = "0b000011010";
        ram[44] = "0b111101111";
        ram[45] = "0b111101101";
        ram[46] = "0b110110100";
        ram[47] = "0b110111110";
        ram[48] = "0b111110100";
        ram[49] = "0b001100111";
        ram[50] = "0b010000111";
        ram[51] = "0b001011010";
        ram[52] = "0b000000110";
        ram[53] = "0b110101000";
        ram[54] = "0b101111011";
        ram[55] = "0b111011100";
        ram[56] = "0b001000101";
        ram[57] = "0b001011000";
        ram[58] = "0b000011110";
        ram[59] = "0b111101011";
        ram[60] = "0b111011000";
        ram[61] = "0b111110010";
        ram[62] = "0b000101001";
        ram[63] = "0b111111111";
        ram[64] = "0b111011010";
        ram[65] = "0b110110001";
        ram[66] = "0b111011100";
        ram[67] = "0b000100100";
        ram[68] = "0b001100111";
        ram[69] = "0b001000011";
        ram[70] = "0b000010001";
        ram[71] = "0b111101100";
        ram[72] = "0b111010000";
        ram[73] = "0b000000110";
        ram[74] = "0b000001111";
        ram[75] = "0b111111000";
        ram[76] = "0b111001001";
        ram[77] = "0b111010000";
        ram[78] = "0b001001111";
        ram[79] = "0b001110110";
        ram[80] = "0b001000110";
        ram[81] = "0b111011000";
        ram[82] = "0b110101101";
        ram[83] = "0b110101000";
        ram[84] = "0b111001101";
        ram[85] = "0b000001101";
        ram[86] = "0b000011101";
        ram[87] = "0b000011001";
        ram[88] = "0b000010001";
        ram[89] = "0b000000111";
        ram[90] = "0b000110000";
        ram[91] = "0b000000010";
        ram[92] = "0b111111101";
        ram[93] = "0b000000011";
        ram[94] = "0b111110101";
        ram[95] = "0b111100111";
        ram[96] = "0b111010110";
        ram[97] = "0b111010010";
        ram[98] = "0b000000011";
        ram[99] = "0b001001000";
        ram[100] = "0b001111011";
        ram[101] = "0b000111111";
        ram[102] = "0b111111110";
        ram[103] = "0b101111111";


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


SC_MODULE(L3_wlo_166_L2_BIAb1s) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_166_L2_BIAb1s_ram* meminst;


SC_CTOR(L3_wlo_166_L2_BIAb1s) {
meminst = new L3_wlo_166_L2_BIAb1s_ram("L3_wlo_166_L2_BIAb1s_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_166_L2_BIAb1s() {
    delete meminst;
}


};//endmodule
#endif
