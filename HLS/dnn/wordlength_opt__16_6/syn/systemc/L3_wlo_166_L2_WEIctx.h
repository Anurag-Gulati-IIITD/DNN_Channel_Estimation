// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_166_L2_WEIctx_H__
#define __L3_wlo_166_L2_WEIctx_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_166_L2_WEIctx_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_166_L2_WEIctx_ram) {
        ram[0] = "0b000010100";
        ram[1] = "0b010101100";
        ram[2] = "0b010111110";
        ram[3] = "0b000111101";
        ram[4] = "0b110110001";
        ram[5] = "0b101101111";
        ram[6] = "0b110110101";
        ram[7] = "0b000011011";
        ram[8] = "0b001010000";
        ram[9] = "0b001000111";
        ram[10] = "0b111111000";
        ram[11] = "0b110110000";
        ram[12] = "0b110111111";
        ram[13] = "0b111101011";
        ram[14] = "0b001010001";
        ram[15] = "0b001101111";
        ram[16] = "0b000111100";
        ram[17] = "0b111011011";
        ram[18] = "0b110001100";
        ram[19] = "0b110010010";
        ram[20] = "0b111001000";
        ram[21] = "0b000110100";
        ram[22] = "0b001111101";
        ram[23] = "0b001101011";
        ram[24] = "0b000100101";
        ram[25] = "0b110110110";
        ram[26] = "0b110010110";
        ram[27] = "0b111110110";
        ram[28] = "0b001001001";
        ram[29] = "0b001011001";
        ram[30] = "0b001001101";
        ram[31] = "0b000000100";
        ram[32] = "0b111010000";
        ram[33] = "0b111001011";
        ram[34] = "0b111011100";
        ram[35] = "0b111101100";
        ram[36] = "0b111101100";
        ram[37] = "0b111111110";
        ram[38] = "0b000011010";
        ram[39] = "0b001000001";
        ram[40] = "0b001000010";
        ram[41] = "0b000011100";
        ram[42] = "0b111010110";
        ram[43] = "0b110101110";
        ram[44] = "0b110100111";
        ram[45] = "0b111100101";
        ram[46] = "0b000010101";
        ram[47] = "0b000111000";
        ram[48] = "0b000111100";
        ram[49] = "0b000101010";
        ram[50] = "0b000010100";
        ram[51] = "0b000000001";
        ram[52] = "0b010111111";
        ram[53] = "0b001100000";
        ram[54] = "0b111001100";
        ram[55] = "0b101101000";
        ram[56] = "0b101110110";
        ram[57] = "0b111101011";
        ram[58] = "0b001001100";
        ram[59] = "0b001101000";
        ram[60] = "0b000100100";
        ram[61] = "0b111000100";
        ram[62] = "0b110100010";
        ram[63] = "0b111011110";
        ram[64] = "0b000101111";
        ram[65] = "0b001100001";
        ram[66] = "0b001000111";
        ram[67] = "0b111100011";
        ram[68] = "0b110011011";
        ram[69] = "0b110010010";
        ram[70] = "0b111010010";
        ram[71] = "0b000101110";
        ram[72] = "0b001101101";
        ram[73] = "0b001110111";
        ram[74] = "0b000101111";
        ram[75] = "0b111000001";
        ram[76] = "0b101110010";
        ram[77] = "0b110000100";
        ram[78] = "0b001001111";
        ram[79] = "0b010000011";
        ram[80] = "0b001010010";
        ram[81] = "0b000000000";
        ram[82] = "0b111000011";
        ram[83] = "0b110101101";
        ram[84] = "0b111001010";
        ram[85] = "0b111111010";
        ram[86] = "0b000001000";
        ram[87] = "0b000011111";
        ram[88] = "0b000011110";
        ram[89] = "0b000110111";
        ram[90] = "0b000100111";
        ram[91] = "0b000001101";
        ram[92] = "0b111100100";
        ram[93] = "0b110101101";
        ram[94] = "0b110101010";
        ram[95] = "0b111110000";
        ram[96] = "0b000101100";
        ram[97] = "0b001010010";
        ram[98] = "0b001001011";
        ram[99] = "0b000011101";
        ram[100] = "0b111111010";
        ram[101] = "0b111100001";
        ram[102] = "0b111001011";
        ram[103] = "0b110100110";


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


SC_MODULE(L3_wlo_166_L2_WEIctx) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_166_L2_WEIctx_ram* meminst;


SC_CTOR(L3_wlo_166_L2_WEIctx) {
meminst = new L3_wlo_166_L2_WEIctx_ram("L3_wlo_166_L2_WEIctx_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_166_L2_WEIctx() {
    delete meminst;
}


};//endmodule
#endif
