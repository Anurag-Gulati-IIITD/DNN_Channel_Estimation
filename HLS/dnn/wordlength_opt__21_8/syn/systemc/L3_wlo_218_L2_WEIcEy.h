// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIcEy_H__
#define __L3_wlo_218_L2_WEIcEy_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIcEy_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIcEy_ram) {
        ram[0] = "0b111101011010";
        ram[1] = "0b101010001000";
        ram[2] = "0b100111111011";
        ram[3] = "0b111000001111";
        ram[4] = "0b001001111111";
        ram[5] = "0b010010011000";
        ram[6] = "0b001001011100";
        ram[7] = "0b111100100011";
        ram[8] = "0b110101110011";
        ram[9] = "0b110110111111";
        ram[10] = "0b000000111101";
        ram[11] = "0b001010000011";
        ram[12] = "0b001000001001";
        ram[13] = "0b000010100100";
        ram[14] = "0b110101101000";
        ram[15] = "0b110001110110";
        ram[16] = "0b111000010011";
        ram[17] = "0b000100101010";
        ram[18] = "0b001110101001";
        ram[19] = "0b001101110101";
        ram[20] = "0b000111000110";
        ram[21] = "0b111001010011";
        ram[22] = "0b110000000001";
        ram[23] = "0b110010011011";
        ram[24] = "0b111011001101";
        ram[25] = "0b001001001111";
        ram[26] = "0b001101011001";
        ram[27] = "0b000001001010";
        ram[28] = "0b110110101010";
        ram[29] = "0b110100101011";
        ram[30] = "0b110110001011";
        ram[31] = "0b111111011011";
        ram[32] = "0b000110000000";
        ram[33] = "0b000110100111";
        ram[34] = "0b000100011111";
        ram[35] = "0b000010011001";
        ram[36] = "0b000010011100";
        ram[37] = "0b000000001011";
        ram[38] = "0b111100101111";
        ram[39] = "0b110111110011";
        ram[40] = "0b110111100001";
        ram[41] = "0b111100011001";
        ram[42] = "0b000101001101";
        ram[43] = "0b001010001101";
        ram[44] = "0b001011001011";
        ram[45] = "0b000011010100";
        ram[46] = "0b111101010101";
        ram[47] = "0b111000110101";
        ram[48] = "0b111000010110";
        ram[49] = "0b111010101011";
        ram[50] = "0b111101011010";
        ram[51] = "0b111111110100";
        ram[52] = "0b100111110011";
        ram[53] = "0b110011110100";
        ram[54] = "0b000110100010";
        ram[55] = "0b010011001001";
        ram[56] = "0b010001010101";
        ram[57] = "0b000010100011";
        ram[58] = "0b110110010100";
        ram[59] = "0b110010101100";
        ram[60] = "0b111011010110";
        ram[61] = "0b000111100010";
        ram[62] = "0b001011110111";
        ram[63] = "0b000100010010";
        ram[64] = "0b111010000000";
        ram[65] = "0b110011101101";
        ram[66] = "0b110111000000";
        ram[67] = "0b000011101011";
        ram[68] = "0b001100101100";
        ram[69] = "0b001101111001";
        ram[70] = "0b000101110000";
        ram[71] = "0b111010000100";
        ram[72] = "0b110010000111";
        ram[73] = "0b110000110110";
        ram[74] = "0b111010000100";
        ram[75] = "0b000111111001";
        ram[76] = "0b010001111011";
        ram[77] = "0b001111101001";
        ram[78] = "0b110110000001";
        ram[79] = "0b101111011100";
        ram[80] = "0b110101100110";
        ram[81] = "0b111111111111";
        ram[82] = "0b000111101000";
        ram[83] = "0b001010010110";
        ram[84] = "0b000110101111";
        ram[85] = "0b000000101100";
        ram[86] = "0b111110111001";
        ram[87] = "0b111100000110";
        ram[88] = "0b111100001010";
        ram[89] = "0b111001000101";
        ram[90] = "0b111011000100";
        ram[91] = "0b111110010000";
        ram[92] = "0b000011011010";
        ram[93] = "0b001010011011";
        ram[94] = "0b001010110010";
        ram[95] = "0b000001111110";
        ram[96] = "0b111010010100";
        ram[97] = "0b110101101000";
        ram[98] = "0b110110011111";
        ram[99] = "0b111100010011";
        ram[100] = "0b000000101011";
        ram[101] = "0b000011110111";
        ram[102] = "0b000110101000";
        ram[103] = "0b001011010000";


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


SC_MODULE(L3_wlo_218_L2_WEIcEy) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIcEy_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIcEy) {
meminst = new L3_wlo_218_L2_WEIcEy_ram("L3_wlo_218_L2_WEIcEy_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIcEy() {
    delete meminst;
}


};//endmodule
#endif
