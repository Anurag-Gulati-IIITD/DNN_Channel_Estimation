// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_166_L2_WEIcDy_H__
#define __L3_wlo_166_L2_WEIcDy_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_166_L2_WEIcDy_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_166_L2_WEIcDy_ram) {
        ram[0] = "0b000011001";
        ram[1] = "0b000111110";
        ram[2] = "0b001011101";
        ram[3] = "0b001010110";
        ram[4] = "0b000100011";
        ram[5] = "0b111010001";
        ram[6] = "0b110001100";
        ram[7] = "0b101110100";
        ram[8] = "0b110011011";
        ram[9] = "0b000011101";
        ram[10] = "0b010001001";
        ram[11] = "0b010101100";
        ram[12] = "0b001110100";
        ram[13] = "0b111100011";
        ram[14] = "0b110001101";
        ram[15] = "0b101101100";
        ram[16] = "0b110001111";
        ram[17] = "0b111001111";
        ram[18] = "0b000101011";
        ram[19] = "0b010001111";
        ram[20] = "0b010000101";
        ram[21] = "0b001011010";
        ram[22] = "0b111111101";
        ram[23] = "0b110010110";
        ram[24] = "0b101111001";
        ram[25] = "0b110010011";
        ram[26] = "0b000110011";
        ram[27] = "0b001001110";
        ram[28] = "0b000110100";
        ram[29] = "0b111111101";
        ram[30] = "0b000010000";
        ram[31] = "0b000010100";
        ram[32] = "0b000010010";
        ram[33] = "0b111101110";
        ram[34] = "0b110100010";
        ram[35] = "0b110000011";
        ram[36] = "0b111000010";
        ram[37] = "0b000110011";
        ram[38] = "0b010001101";
        ram[39] = "0b010010100";
        ram[40] = "0b000110101";
        ram[41] = "0b110111010";
        ram[42] = "0b101110101";
        ram[43] = "0b110010011";
        ram[44] = "0b111011010";
        ram[45] = "0b000111110";
        ram[46] = "0b001010001";
        ram[47] = "0b001010010";
        ram[48] = "0b000100010";
        ram[49] = "0b111111111";
        ram[50] = "0b111001001";
        ram[51] = "0b111000110";
        ram[52] = "0b001000011";
        ram[53] = "0b000100111";
        ram[54] = "0b000010010";
        ram[55] = "0b111010010";
        ram[56] = "0b110011011";
        ram[57] = "0b110000111";
        ram[58] = "0b110110100";
        ram[59] = "0b000100010";
        ram[60] = "0b010000001";
        ram[61] = "0b010100010";
        ram[62] = "0b001100010";
        ram[63] = "0b111100001";
        ram[64] = "0b101110110";
        ram[65] = "0b101100001";
        ram[66] = "0b110010000";
        ram[67] = "0b111100110";
        ram[68] = "0b001011100";
        ram[69] = "0b010001110";
        ram[70] = "0b010001001";
        ram[71] = "0b001000110";
        ram[72] = "0b111010111";
        ram[73] = "0b110000101";
        ram[74] = "0b101110100";
        ram[75] = "0b110011101";
        ram[76] = "0b111011111";
        ram[77] = "0b001000111";
        ram[78] = "0b001001000";
        ram[79] = "0b000011101";
        ram[80] = "0b111100100";
        ram[81] = "0b111100010";
        ram[82] = "0b111111110";
        ram[83] = "0b111101011";
        ram[84] = "0b110111010";
        ram[85] = "0b110111001";
        ram[86] = "0b111000010";
        ram[87] = "0b000100001";
        ram[88] = "0b010000001";
        ram[89] = "0b010011100";
        ram[90] = "0b000110111";
        ram[91] = "0b110111001";
        ram[92] = "0b101101011";
        ram[93] = "0b101111010";
        ram[94] = "0b111010010";
        ram[95] = "0b001010111";
        ram[96] = "0b001110110";
        ram[97] = "0b001101110";
        ram[98] = "0b000101010";
        ram[99] = "0b111001111";
        ram[100] = "0b111000010";
        ram[101] = "0b110111110";
        ram[102] = "0b110111011";
        ram[103] = "0b111010011";


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


SC_MODULE(L3_wlo_166_L2_WEIcDy) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_166_L2_WEIcDy_ram* meminst;


SC_CTOR(L3_wlo_166_L2_WEIcDy) {
meminst = new L3_wlo_166_L2_WEIcDy_ram("L3_wlo_166_L2_WEIcDy_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_166_L2_WEIcDy() {
    delete meminst;
}


};//endmodule
#endif
