// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_166_L2_WEIcxx_H__
#define __L3_wlo_166_L2_WEIcxx_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_166_L2_WEIcxx_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_166_L2_WEIcxx_ram) {
        ram[0] = "0b010101100";
        ram[1] = "0b001110101";
        ram[2] = "0b111111101";
        ram[3] = "0b111000101";
        ram[4] = "0b111000000";
        ram[5] = "0b110011010";
        ram[6] = "0b111100101";
        ram[7] = "0b000100101";
        ram[8] = "0b001011110";
        ram[9] = "0b001101001";
        ram[10] = "0b000110110";
        ram[11] = "0b000101000";
        ram[12] = "0b111100100";
        ram[13] = "0b110111001";
        ram[14] = "0b111001100";
        ram[15] = "0b111010110";
        ram[16] = "0b000000101";
        ram[17] = "0b001010110";
        ram[18] = "0b001001011";
        ram[19] = "0b001001101";
        ram[20] = "0b000010110";
        ram[21] = "0b111000011";
        ram[22] = "0b111011110";
        ram[23] = "0b110010110";
        ram[24] = "0b110101011";
        ram[25] = "0b111100101";
        ram[26] = "0b001010011";
        ram[27] = "0b001001011";
        ram[28] = "0b000100111";
        ram[29] = "0b111100110";
        ram[30] = "0b110101010";
        ram[31] = "0b110110111";
        ram[32] = "0b111001100";
        ram[33] = "0b000101000";
        ram[34] = "0b001011111";
        ram[35] = "0b001101001";
        ram[36] = "0b001011001";
        ram[37] = "0b000101010";
        ram[38] = "0b111011000";
        ram[39] = "0b111100101";
        ram[40] = "0b110111110";
        ram[41] = "0b110110100";
        ram[42] = "0b110111111";
        ram[43] = "0b111111011";
        ram[44] = "0b000011100";
        ram[45] = "0b001001100";
        ram[46] = "0b001011110";
        ram[47] = "0b001001011";
        ram[48] = "0b000000111";
        ram[49] = "0b110100001";
        ram[50] = "0b110000110";
        ram[51] = "0b110000000";
        ram[52] = "0b000001101";
        ram[53] = "0b110101001";
        ram[54] = "0b101100001";
        ram[55] = "0b110110101";
        ram[56] = "0b110101111";
        ram[57] = "0b111110001";
        ram[58] = "0b001001111";
        ram[59] = "0b001001111";
        ram[60] = "0b000110001";
        ram[61] = "0b000010111";
        ram[62] = "0b111101101";
        ram[63] = "0b110010110";
        ram[64] = "0b111000111";
        ram[65] = "0b111111101";
        ram[66] = "0b000001010";
        ram[67] = "0b001000110";
        ram[68] = "0b000110000";
        ram[69] = "0b001101001";
        ram[70] = "0b001000101";
        ram[71] = "0b111110101";
        ram[72] = "0b110111111";
        ram[73] = "0b111101001";
        ram[74] = "0b111001011";
        ram[75] = "0b000001001";
        ram[76] = "0b000001010";
        ram[77] = "0b001110001";
        ram[78] = "0b111110101";
        ram[79] = "0b111001111";
        ram[80] = "0b110011111";
        ram[81] = "0b110001000";
        ram[82] = "0b111011110";
        ram[83] = "0b111110000";
        ram[84] = "0b001000100";
        ram[85] = "0b001101011";
        ram[86] = "0b001011001";
        ram[87] = "0b000100011";
        ram[88] = "0b111001000";
        ram[89] = "0b110001010";
        ram[90] = "0b110111101";
        ram[91] = "0b111010001";
        ram[92] = "0b111011100";
        ram[93] = "0b111111000";
        ram[94] = "0b000100000";
        ram[95] = "0b001011100";
        ram[96] = "0b010000001";
        ram[97] = "0b000110001";
        ram[98] = "0b111000101";
        ram[99] = "0b110100010";
        ram[100] = "0b110010111";
        ram[101] = "0b110001001";
        ram[102] = "0b000000011";
        ram[103] = "0b010000110";


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


SC_MODULE(L3_wlo_166_L2_WEIcxx) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_166_L2_WEIcxx_ram* meminst;


SC_CTOR(L3_wlo_166_L2_WEIcxx) {
meminst = new L3_wlo_166_L2_WEIcxx_ram("L3_wlo_166_L2_WEIcxx_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_166_L2_WEIcxx() {
    delete meminst;
}


};//endmodule
#endif
