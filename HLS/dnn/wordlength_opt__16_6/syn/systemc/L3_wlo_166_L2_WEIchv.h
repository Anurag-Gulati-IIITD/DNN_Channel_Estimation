// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_166_L2_WEIchv_H__
#define __L3_wlo_166_L2_WEIchv_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_166_L2_WEIchv_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_166_L2_WEIchv_ram) {
        ram[0] = "0b111010110";
        ram[1] = "0b000111100";
        ram[2] = "0b001101111";
        ram[3] = "0b001101000";
        ram[4] = "0b000011100";
        ram[5] = "0b110111011";
        ram[6] = "0b101111111";
        ram[7] = "0b110010110";
        ram[8] = "0b111110100";
        ram[9] = "0b001010110";
        ram[10] = "0b010001011";
        ram[11] = "0b001101011";
        ram[12] = "0b000000000";
        ram[13] = "0b110101111";
        ram[14] = "0b110001000";
        ram[15] = "0b110110111";
        ram[16] = "0b000001010";
        ram[17] = "0b001000010";
        ram[18] = "0b001000001";
        ram[19] = "0b000010010";
        ram[20] = "0b000001000";
        ram[21] = "0b000001000";
        ram[22] = "0b000000000";
        ram[23] = "0b111101110";
        ram[24] = "0b111000001";
        ram[25] = "0b111000100";
        ram[26] = "0b001011010";
        ram[27] = "0b001110001";
        ram[28] = "0b000110010";
        ram[29] = "0b110111111";
        ram[30] = "0b101011011";
        ram[31] = "0b110001011";
        ram[32] = "0b000010011";
        ram[33] = "0b010010101";
        ram[34] = "0b010110010";
        ram[35] = "0b001001100";
        ram[36] = "0b110111001";
        ram[37] = "0b101100011";
        ram[38] = "0b101111001";
        ram[39] = "0b111010111";
        ram[40] = "0b000110111";
        ram[41] = "0b001011111";
        ram[42] = "0b001011000";
        ram[43] = "0b000101111";
        ram[44] = "0b000010110";
        ram[45] = "0b111011011";
        ram[46] = "0b110110100";
        ram[47] = "0b110010100";
        ram[48] = "0b110110000";
        ram[49] = "0b000001101";
        ram[50] = "0b010000000";
        ram[51] = "0b010010111";
        ram[52] = "0b001110111";
        ram[53] = "0b001110010";
        ram[54] = "0b000011100";
        ram[55] = "0b110110111";
        ram[56] = "0b110001000";
        ram[57] = "0b110011010";
        ram[58] = "0b111110001";
        ram[59] = "0b001001111";
        ram[60] = "0b010000101";
        ram[61] = "0b001110000";
        ram[62] = "0b000001110";
        ram[63] = "0b110100111";
        ram[64] = "0b101111001";
        ram[65] = "0b110100100";
        ram[66] = "0b000000011";
        ram[67] = "0b001011001";
        ram[68] = "0b001011001";
        ram[69] = "0b000101100";
        ram[70] = "0b111110011";
        ram[71] = "0b111011100";
        ram[72] = "0b111101101";
        ram[73] = "0b111101110";
        ram[74] = "0b111100000";
        ram[75] = "0b111010111";
        ram[76] = "0b000000011";
        ram[77] = "0b000111011";
        ram[78] = "0b001000101";
        ram[79] = "0b111011000";
        ram[80] = "0b110000001";
        ram[81] = "0b110000011";
        ram[82] = "0b111100111";
        ram[83] = "0b001110100";
        ram[84] = "0b010111010";
        ram[85] = "0b001100100";
        ram[86] = "0b111010100";
        ram[87] = "0b101011000";
        ram[88] = "0b101011101";
        ram[89] = "0b111000101";
        ram[90] = "0b001001010";
        ram[91] = "0b010001000";
        ram[92] = "0b001100110";
        ram[93] = "0b000100011";
        ram[94] = "0b111101000";
        ram[95] = "0b110111011";
        ram[96] = "0b110110000";
        ram[97] = "0b110101111";
        ram[98] = "0b111000000";
        ram[99] = "0b000001111";
        ram[100] = "0b001011111";
        ram[101] = "0b010001011";
        ram[102] = "0b001011100";
        ram[103] = "0b111100111";


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


SC_MODULE(L3_wlo_166_L2_WEIchv) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_166_L2_WEIchv_ram* meminst;


SC_CTOR(L3_wlo_166_L2_WEIchv) {
meminst = new L3_wlo_166_L2_WEIchv_ram("L3_wlo_166_L2_WEIchv_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_166_L2_WEIchv() {
    delete meminst;
}


};//endmodule
#endif
