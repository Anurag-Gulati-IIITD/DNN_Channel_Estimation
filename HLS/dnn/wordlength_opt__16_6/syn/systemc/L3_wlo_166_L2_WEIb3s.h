// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_166_L2_WEIb3s_H__
#define __L3_wlo_166_L2_WEIb3s_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_166_L2_WEIb3s_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_166_L2_WEIb3s_ram) {
        ram[0] = "0b110101011";
        ram[1] = "0b000100100";
        ram[2] = "0b001111101";
        ram[3] = "0b001101110";
        ram[4] = "0b000101000";
        ram[5] = "0b111001101";
        ram[6] = "0b110010100";
        ram[7] = "0b110100010";
        ram[8] = "0b111101110";
        ram[9] = "0b000110101";
        ram[10] = "0b001010111";
        ram[11] = "0b000110010";
        ram[12] = "0b111110111";
        ram[13] = "0b110110010";
        ram[14] = "0b110100110";
        ram[15] = "0b111011000";
        ram[16] = "0b000011011";
        ram[17] = "0b001101000";
        ram[18] = "0b001101000";
        ram[19] = "0b000010111";
        ram[20] = "0b110111011";
        ram[21] = "0b101101110";
        ram[22] = "0b110001100";
        ram[23] = "0b111110100";
        ram[24] = "0b001101111";
        ram[25] = "0b010011000";
        ram[26] = "0b111010011";
        ram[27] = "0b110010110";
        ram[28] = "0b110011111";
        ram[29] = "0b111111011";
        ram[30] = "0b001010010";
        ram[31] = "0b001001000";
        ram[32] = "0b000010010";
        ram[33] = "0b111001110";
        ram[34] = "0b110111011";
        ram[35] = "0b111110010";
        ram[36] = "0b000011110";
        ram[37] = "0b000110111";
        ram[38] = "0b000101101";
        ram[39] = "0b111111010";
        ram[40] = "0b111010101";
        ram[41] = "0b111011100";
        ram[42] = "0b111101001";
        ram[43] = "0b000010100";
        ram[44] = "0b000011101";
        ram[45] = "0b000011000";
        ram[46] = "0b111101101";
        ram[47] = "0b111001111";
        ram[48] = "0b111101001";
        ram[49] = "0b000010001";
        ram[50] = "0b000110111";
        ram[51] = "0b000110111";
        ram[52] = "0b001111011";
        ram[53] = "0b010001000";
        ram[54] = "0b000111000";
        ram[55] = "0b111011000";
        ram[56] = "0b110001111";
        ram[57] = "0b110010101";
        ram[58] = "0b111011010";
        ram[59] = "0b000101111";
        ram[60] = "0b001100101";
        ram[61] = "0b000111101";
        ram[62] = "0b000000100";
        ram[63] = "0b111001010";
        ram[64] = "0b110101110";
        ram[65] = "0b111000110";
        ram[66] = "0b000010000";
        ram[67] = "0b001010100";
        ram[68] = "0b001011101";
        ram[69] = "0b000110000";
        ram[70] = "0b111001100";
        ram[71] = "0b110001100";
        ram[72] = "0b110010100";
        ram[73] = "0b111110101";
        ram[74] = "0b001011100";
        ram[75] = "0b010001011";
        ram[76] = "0b001011111";
        ram[77] = "0b111100011";
        ram[78] = "0b110000111";
        ram[79] = "0b111001111";
        ram[80] = "0b000111001";
        ram[81] = "0b001011100";
        ram[82] = "0b000110011";
        ram[83] = "0b111110011";
        ram[84] = "0b110111100";
        ram[85] = "0b111000110";
        ram[86] = "0b000001100";
        ram[87] = "0b001000101";
        ram[88] = "0b000110100";
        ram[89] = "0b111111010";
        ram[90] = "0b111010100";
        ram[91] = "0b111000101";
        ram[92] = "0b111101110";
        ram[93] = "0b000001001";
        ram[94] = "0b000101101";
        ram[95] = "0b000011011";
        ram[96] = "0b000001000";
        ram[97] = "0b111010011";
        ram[98] = "0b111101010";
        ram[99] = "0b000001101";
        ram[100] = "0b000100011";
        ram[101] = "0b000101111";
        ram[102] = "0b000011100";
        ram[103] = "0b111100101";


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


SC_MODULE(L3_wlo_166_L2_WEIb3s) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_166_L2_WEIb3s_ram* meminst;


SC_CTOR(L3_wlo_166_L2_WEIb3s) {
meminst = new L3_wlo_166_L2_WEIb3s_ram("L3_wlo_166_L2_WEIb3s_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_166_L2_WEIb3s() {
    delete meminst;
}


};//endmodule
#endif
