// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_166_L2_WEIcJz_H__
#define __L3_wlo_166_L2_WEIcJz_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_166_L2_WEIcJz_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_166_L2_WEIcJz_ram) {
        ram[0] = "0b000100111";
        ram[1] = "0b111000101";
        ram[2] = "0b110010101";
        ram[3] = "0b110011011";
        ram[4] = "0b111100100";
        ram[5] = "0b001000001";
        ram[6] = "0b001111100";
        ram[7] = "0b001100101";
        ram[8] = "0b000001011";
        ram[9] = "0b110101100";
        ram[10] = "0b101111001";
        ram[11] = "0b110011000";
        ram[12] = "0b111111111";
        ram[13] = "0b001001101";
        ram[14] = "0b001110011";
        ram[15] = "0b001000110";
        ram[16] = "0b111110110";
        ram[17] = "0b111000000";
        ram[18] = "0b111000001";
        ram[19] = "0b111101110";
        ram[20] = "0b111110111";
        ram[21] = "0b111111000";
        ram[22] = "0b111111111";
        ram[23] = "0b000010001";
        ram[24] = "0b000111100";
        ram[25] = "0b000111001";
        ram[26] = "0b110101000";
        ram[27] = "0b110010010";
        ram[28] = "0b111001111";
        ram[29] = "0b000111110";
        ram[30] = "0b010011110";
        ram[31] = "0b001101111";
        ram[32] = "0b111101100";
        ram[33] = "0b101110000";
        ram[34] = "0b101010011";
        ram[35] = "0b110110110";
        ram[36] = "0b001000011";
        ram[37] = "0b010010110";
        ram[38] = "0b010000001";
        ram[39] = "0b000100110";
        ram[40] = "0b111001010";
        ram[41] = "0b110100100";
        ram[42] = "0b110101010";
        ram[43] = "0b111010001";
        ram[44] = "0b111101010";
        ram[45] = "0b000100010";
        ram[46] = "0b001001000";
        ram[47] = "0b001100111";
        ram[48] = "0b001001100";
        ram[49] = "0b111110010";
        ram[50] = "0b110000100";
        ram[51] = "0b101101110";
        ram[52] = "0b110001100";
        ram[53] = "0b110010001";
        ram[54] = "0b111100101";
        ram[55] = "0b001000101";
        ram[56] = "0b001110011";
        ram[57] = "0b001100001";
        ram[58] = "0b000001101";
        ram[59] = "0b110110011";
        ram[60] = "0b101111111";
        ram[61] = "0b110010011";
        ram[62] = "0b111110010";
        ram[63] = "0b001010100";
        ram[64] = "0b010000001";
        ram[65] = "0b001011000";
        ram[66] = "0b111111100";
        ram[67] = "0b110101001";
        ram[68] = "0b110101001";
        ram[69] = "0b111010100";
        ram[70] = "0b000001100";
        ram[71] = "0b000100001";
        ram[72] = "0b000010001";
        ram[73] = "0b000010000";
        ram[74] = "0b000011110";
        ram[75] = "0b000100111";
        ram[76] = "0b111111100";
        ram[77] = "0b111000110";
        ram[78] = "0b110111101";
        ram[79] = "0b000100101";
        ram[80] = "0b001111001";
        ram[81] = "0b001111000";
        ram[82] = "0b000011000";
        ram[83] = "0b110001111";
        ram[84] = "0b101001100";
        ram[85] = "0b110011111";
        ram[86] = "0b000101001";
        ram[87] = "0b010100001";
        ram[88] = "0b010011100";
        ram[89] = "0b000111000";
        ram[90] = "0b110111000";
        ram[91] = "0b101111100";
        ram[92] = "0b110011101";
        ram[93] = "0b111011101";
        ram[94] = "0b000010110";
        ram[95] = "0b001000001";
        ram[96] = "0b001001100";
        ram[97] = "0b001001101";
        ram[98] = "0b000111101";
        ram[99] = "0b111110001";
        ram[100] = "0b110100011";
        ram[101] = "0b101111001";
        ram[102] = "0b110100110";
        ram[103] = "0b000010111";


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


SC_MODULE(L3_wlo_166_L2_WEIcJz) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_166_L2_WEIcJz_ram* meminst;


SC_CTOR(L3_wlo_166_L2_WEIcJz) {
meminst = new L3_wlo_166_L2_WEIcJz_ram("L3_wlo_166_L2_WEIcJz_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_166_L2_WEIcJz() {
    delete meminst;
}


};//endmodule
#endif
