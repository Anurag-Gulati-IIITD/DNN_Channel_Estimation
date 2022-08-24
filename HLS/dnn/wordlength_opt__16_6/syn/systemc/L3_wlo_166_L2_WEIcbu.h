// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_166_L2_WEIcbu_H__
#define __L3_wlo_166_L2_WEIcbu_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_166_L2_WEIcbu_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_166_L2_WEIcbu_ram) {
        ram[0] = "0b000011011";
        ram[1] = "0b111010011";
        ram[2] = "0b111000100";
        ram[3] = "0b111011010";
        ram[4] = "0b111110010";
        ram[5] = "0b000000110";
        ram[6] = "0b000001000";
        ram[7] = "0b000001101";
        ram[8] = "0b000101011";
        ram[9] = "0b000111001";
        ram[10] = "0b000011000";
        ram[11] = "0b111010100";
        ram[12] = "0b110011001";
        ram[13] = "0b110001100";
        ram[14] = "0b111010011";
        ram[15] = "0b000110100";
        ram[16] = "0b010000101";
        ram[17] = "0b001111101";
        ram[18] = "0b000100111";
        ram[19] = "0b111001101";
        ram[20] = "0b101111100";
        ram[21] = "0b101111110";
        ram[22] = "0b111000100";
        ram[23] = "0b000010110";
        ram[24] = "0b001100000";
        ram[25] = "0b001111100";
        ram[26] = "0b000001000";
        ram[27] = "0b110110000";
        ram[28] = "0b101110111";
        ram[29] = "0b110000101";
        ram[30] = "0b111100001";
        ram[31] = "0b001000010";
        ram[32] = "0b010001011";
        ram[33] = "0b001111110";
        ram[34] = "0b000100100";
        ram[35] = "0b110110001";
        ram[36] = "0b101101101";
        ram[37] = "0b101111000";
        ram[38] = "0b111010000";
        ram[39] = "0b001000110";
        ram[40] = "0b010010101";
        ram[41] = "0b010001110";
        ram[42] = "0b000101110";
        ram[43] = "0b110111010";
        ram[44] = "0b101011110";
        ram[45] = "0b101110001";
        ram[46] = "0b111011000";
        ram[47] = "0b001011001";
        ram[48] = "0b010100011";
        ram[49] = "0b001110011";
        ram[50] = "0b111110101";
        ram[51] = "0b110001100";
        ram[52] = "0b110111001";
        ram[53] = "0b111000010";
        ram[54] = "0b111110001";
        ram[55] = "0b000100011";
        ram[56] = "0b000100001";
        ram[57] = "0b000011000";
        ram[58] = "0b000010100";
        ram[59] = "0b000010111";
        ram[60] = "0b000001010";
        ram[61] = "0b111100111";
        ram[62] = "0b110110111";
        ram[63] = "0b110100000";
        ram[64] = "0b111011011";
        ram[65] = "0b000110000";
        ram[66] = "0b001111101";
        ram[67] = "0b001111001";
        ram[68] = "0b000110010";
        ram[69] = "0b110111010";
        ram[70] = "0b101111100";
        ram[71] = "0b110000001";
        ram[72] = "0b111001110";
        ram[73] = "0b000101101";
        ram[74] = "0b001101111";
        ram[75] = "0b010000101";
        ram[76] = "0b001000111";
        ram[77] = "0b111110011";
        ram[78] = "0b101110101";
        ram[79] = "0b110011000";
        ram[80] = "0b111101111";
        ram[81] = "0b001010000";
        ram[82] = "0b010001110";
        ram[83] = "0b001111011";
        ram[84] = "0b000010101";
        ram[85] = "0b110111000";
        ram[86] = "0b101101100";
        ram[87] = "0b101111100";
        ram[88] = "0b111010110";
        ram[89] = "0b001001110";
        ram[90] = "0b010011000";
        ram[91] = "0b010010000";
        ram[92] = "0b000110010";
        ram[93] = "0b110111111";
        ram[94] = "0b101101001";
        ram[95] = "0b101101101";
        ram[96] = "0b111010000";
        ram[97] = "0b001010000";
        ram[98] = "0b010101101";
        ram[99] = "0b010001100";
        ram[100] = "0b000010111";
        ram[101] = "0b110010000";
        ram[102] = "0b101100110";
        ram[103] = "0b110110101";


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


SC_MODULE(L3_wlo_166_L2_WEIcbu) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_166_L2_WEIcbu_ram* meminst;


SC_CTOR(L3_wlo_166_L2_WEIcbu) {
meminst = new L3_wlo_166_L2_WEIcbu_ram("L3_wlo_166_L2_WEIcbu_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_166_L2_WEIcbu() {
    delete meminst;
}


};//endmodule
#endif
