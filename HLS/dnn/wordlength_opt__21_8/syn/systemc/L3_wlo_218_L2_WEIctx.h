// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIctx_H__
#define __L3_wlo_218_L2_WEIctx_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIctx_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIctx_ram) {
        ram[0] = "0b000010100001";
        ram[1] = "0b010101100111";
        ram[2] = "0b010111110001";
        ram[3] = "0b000111101011";
        ram[4] = "0b110110001001";
        ram[5] = "0b101101111000";
        ram[6] = "0b110110101101";
        ram[7] = "0b000011011010";
        ram[8] = "0b001010000010";
        ram[9] = "0b001000111000";
        ram[10] = "0b111111000010";
        ram[11] = "0b110110000100";
        ram[12] = "0b110111111100";
        ram[13] = "0b111101011101";
        ram[14] = "0b001010001111";
        ram[15] = "0b001101111101";
        ram[16] = "0b000111100110";
        ram[17] = "0b111011011011";
        ram[18] = "0b110001100000";
        ram[19] = "0b110010010110";
        ram[20] = "0b111001000000";
        ram[21] = "0b000110100111";
        ram[22] = "0b001111101111";
        ram[23] = "0b001101011001";
        ram[24] = "0b000100101101";
        ram[25] = "0b110110110111";
        ram[26] = "0b110010110010";
        ram[27] = "0b111110110111";
        ram[28] = "0b001001001111";
        ram[29] = "0b001011001101";
        ram[30] = "0b001001101100";
        ram[31] = "0b000000100100";
        ram[32] = "0b111010000001";
        ram[33] = "0b111001011010";
        ram[34] = "0b111011100001";
        ram[35] = "0b111101100110";
        ram[36] = "0b111101100110";
        ram[37] = "0b111111110111";
        ram[38] = "0b000011010001";
        ram[39] = "0b001000001001";
        ram[40] = "0b001000010111";
        ram[41] = "0b000011100011";
        ram[42] = "0b111010110100";
        ram[43] = "0b110101110111";
        ram[44] = "0b110100111011";
        ram[45] = "0b111100101101";
        ram[46] = "0b000010101001";
        ram[47] = "0b000111000100";
        ram[48] = "0b000111100011";
        ram[49] = "0b000101010001";
        ram[50] = "0b000010100101";
        ram[51] = "0b000000001101";
        ram[52] = "0b010111111010";
        ram[53] = "0b001100000110";
        ram[54] = "0b111001100100";
        ram[55] = "0b101101000101";
        ram[56] = "0b101110110111";
        ram[57] = "0b111101011100";
        ram[58] = "0b001001100011";
        ram[59] = "0b001101000111";
        ram[60] = "0b000100100100";
        ram[61] = "0b111000100001";
        ram[62] = "0b110100010001";
        ram[63] = "0b111011110000";
        ram[64] = "0b000101111100";
        ram[65] = "0b001100001000";
        ram[66] = "0b001000111000";
        ram[67] = "0b111100011000";
        ram[68] = "0b110011011101";
        ram[69] = "0b110010010001";
        ram[70] = "0b111010010100";
        ram[71] = "0b000101110110";
        ram[72] = "0b001101101101";
        ram[73] = "0b001110111101";
        ram[74] = "0b000101111000";
        ram[75] = "0b111000001101";
        ram[76] = "0b101110010100";
        ram[77] = "0b110000100101";
        ram[78] = "0b001001111001";
        ram[79] = "0b010000011001";
        ram[80] = "0b001010010000";
        ram[81] = "0b000000000001";
        ram[82] = "0b111000011010";
        ram[83] = "0b110101101111";
        ram[84] = "0b111001010101";
        ram[85] = "0b111111010011";
        ram[86] = "0b000001000101";
        ram[87] = "0b000011111001";
        ram[88] = "0b000011110100";
        ram[89] = "0b000110111000";
        ram[90] = "0b000100111000";
        ram[91] = "0b000001101100";
        ram[92] = "0b111100100101";
        ram[93] = "0b110101101001";
        ram[94] = "0b110101010011";
        ram[95] = "0b111110000000";
        ram[96] = "0b000101100110";
        ram[97] = "0b001010010001";
        ram[98] = "0b001001011001";
        ram[99] = "0b000011101010";
        ram[100] = "0b111111010110";
        ram[101] = "0b111100001011";
        ram[102] = "0b111001011100";
        ram[103] = "0b110100110110";


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


SC_MODULE(L3_wlo_218_L2_WEIctx) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIctx_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIctx) {
meminst = new L3_wlo_218_L2_WEIctx_ram("L3_wlo_218_L2_WEIctx_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIctx() {
    delete meminst;
}


};//endmodule
#endif
