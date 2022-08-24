// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIcDy_H__
#define __L3_wlo_218_L2_WEIcDy_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIcDy_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIcDy_ram) {
        ram[0] = "0b000011001110";
        ram[1] = "0b000111110001";
        ram[2] = "0b001011101001";
        ram[3] = "0b001010110111";
        ram[4] = "0b000100011000";
        ram[5] = "0b111010001110";
        ram[6] = "0b110001100111";
        ram[7] = "0b101110100001";
        ram[8] = "0b110011011001";
        ram[9] = "0b000011101110";
        ram[10] = "0b010001001010";
        ram[11] = "0b010101100100";
        ram[12] = "0b001110100010";
        ram[13] = "0b111100011011";
        ram[14] = "0b110001101000";
        ram[15] = "0b101101100101";
        ram[16] = "0b110001111010";
        ram[17] = "0b111001111010";
        ram[18] = "0b000101011000";
        ram[19] = "0b010001111001";
        ram[20] = "0b010000101101";
        ram[21] = "0b001011010001";
        ram[22] = "0b111111101001";
        ram[23] = "0b110010110111";
        ram[24] = "0b101111001110";
        ram[25] = "0b110010011010";
        ram[26] = "0b000110011100";
        ram[27] = "0b001001110101";
        ram[28] = "0b000110100011";
        ram[29] = "0b111111101100";
        ram[30] = "0b000010000010";
        ram[31] = "0b000010100001";
        ram[32] = "0b000010010110";
        ram[33] = "0b111101110101";
        ram[34] = "0b110100010011";
        ram[35] = "0b110000011111";
        ram[36] = "0b111000010110";
        ram[37] = "0b000110011000";
        ram[38] = "0b010001101111";
        ram[39] = "0b010010100110";
        ram[40] = "0b000110101100";
        ram[41] = "0b110111010000";
        ram[42] = "0b101110101001";
        ram[43] = "0b110010011011";
        ram[44] = "0b111011010101";
        ram[45] = "0b000111110000";
        ram[46] = "0b001010001110";
        ram[47] = "0b001010010000";
        ram[48] = "0b000100010110";
        ram[49] = "0b111111111011";
        ram[50] = "0b111001001010";
        ram[51] = "0b111000110100";
        ram[52] = "0b001000011000";
        ram[53] = "0b000100111110";
        ram[54] = "0b000010010110";
        ram[55] = "0b111010010000";
        ram[56] = "0b110011011000";
        ram[57] = "0b110000111011";
        ram[58] = "0b110110100110";
        ram[59] = "0b000100010011";
        ram[60] = "0b010000001101";
        ram[61] = "0b010100010110";
        ram[62] = "0b001100010010";
        ram[63] = "0b111100001100";
        ram[64] = "0b101110110111";
        ram[65] = "0b101100001010";
        ram[66] = "0b110010000010";
        ram[67] = "0b111100110101";
        ram[68] = "0b001011100001";
        ram[69] = "0b010001110011";
        ram[70] = "0b010001001100";
        ram[71] = "0b001000110101";
        ram[72] = "0b111010111100";
        ram[73] = "0b110000101010";
        ram[74] = "0b101110100001";
        ram[75] = "0b110011101010";
        ram[76] = "0b111011111010";
        ram[77] = "0b001000111101";
        ram[78] = "0b001001000001";
        ram[79] = "0b000011101100";
        ram[80] = "0b111100100110";
        ram[81] = "0b111100010010";
        ram[82] = "0b111111110101";
        ram[83] = "0b111101011001";
        ram[84] = "0b110111010111";
        ram[85] = "0b110111001010";
        ram[86] = "0b111000010001";
        ram[87] = "0b000100001000";
        ram[88] = "0b010000001010";
        ram[89] = "0b010011100111";
        ram[90] = "0b000110111100";
        ram[91] = "0b110111001011";
        ram[92] = "0b101101011001";
        ram[93] = "0b101111010101";
        ram[94] = "0b111010010001";
        ram[95] = "0b001010111011";
        ram[96] = "0b001110110100";
        ram[97] = "0b001101110000";
        ram[98] = "0b000101010101";
        ram[99] = "0b111001111111";
        ram[100] = "0b111000010101";
        ram[101] = "0b110111110011";
        ram[102] = "0b110111011101";
        ram[103] = "0b111010011000";


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


SC_MODULE(L3_wlo_218_L2_WEIcDy) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIcDy_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIcDy) {
meminst = new L3_wlo_218_L2_WEIcDy_ram("L3_wlo_218_L2_WEIcDy_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIcDy() {
    delete meminst;
}


};//endmodule
#endif
