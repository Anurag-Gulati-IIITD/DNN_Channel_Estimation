// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIcCy_H__
#define __L3_wlo_218_L2_WEIcCy_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIcCy_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIcCy_ram) {
        ram[0] = "0b001010110";
        ram[1] = "0b000001110";
        ram[2] = "0b111000000";
        ram[3] = "0b000001011";
        ram[4] = "0b001101111";
        ram[5] = "0b000011011";
        ram[6] = "0b000010101";
        ram[7] = "0b110111100";
        ram[8] = "0b111011000";
        ram[9] = "0b111110001";
        ram[10] = "0b010000000";
        ram[11] = "0b010000101";
        ram[12] = "0b001110101";
        ram[13] = "0b000100001";
        ram[14] = "0b111101001";
        ram[15] = "0b110101000";
        ram[16] = "0b111010010";
        ram[17] = "0b000100001";
        ram[18] = "0b000101100";
        ram[19] = "0b111101011";
        ram[20] = "0b000110011";
        ram[21] = "0b111100010";
        ram[22] = "0b000010000";
        ram[23] = "0b111110100";
        ram[24] = "0b110111011";
        ram[25] = "0b111011101";
        ram[26] = "0b111100100";
        ram[27] = "0b110110110";
        ram[28] = "0b111100100";
        ram[29] = "0b000011001";
        ram[30] = "0b000010111";
        ram[31] = "0b001011111";
        ram[32] = "0b001110100";
        ram[33] = "0b111101010";
        ram[34] = "0b001000000";
        ram[35] = "0b000110110";
        ram[36] = "0b111100101";
        ram[37] = "0b000001101";
        ram[38] = "0b110010000";
        ram[39] = "0b110111010";
        ram[40] = "0b111110000";
        ram[41] = "0b000001000";
        ram[42] = "0b001101100";
        ram[43] = "0b001010011";
        ram[44] = "0b111100111";
        ram[45] = "0b110001001";
        ram[46] = "0b110010110";
        ram[47] = "0b000101111";
        ram[48] = "0b000111110";
        ram[49] = "0b000011111";
        ram[50] = "0b110011011";
        ram[51] = "0b101101010";
        ram[52] = "0b110111010";
        ram[53] = "0b111011011";
        ram[54] = "0b111101001";
        ram[55] = "0b000001000";
        ram[56] = "0b000100101";
        ram[57] = "0b111010001";
        ram[58] = "0b110110100";
        ram[59] = "0b110110111";
        ram[60] = "0b001000101";
        ram[61] = "0b001100000";
        ram[62] = "0b001011101";
        ram[63] = "0b000101000";
        ram[64] = "0b110011110";
        ram[65] = "0b110001110";
        ram[66] = "0b110110011";
        ram[67] = "0b111110001";
        ram[68] = "0b111100111";
        ram[69] = "0b001111101";
        ram[70] = "0b000111011";
        ram[71] = "0b000000110";
        ram[72] = "0b000001010";
        ram[73] = "0b000010111";
        ram[74] = "0b110101001";
        ram[75] = "0b111100110";
        ram[76] = "0b000000000";
        ram[77] = "0b111111111";
        ram[78] = "0b000001010";
        ram[79] = "0b000010010";
        ram[80] = "0b000011011";
        ram[81] = "0b000010011";
        ram[82] = "0b001001111";
        ram[83] = "0b111001111";
        ram[84] = "0b001000100";
        ram[85] = "0b111101110";
        ram[86] = "0b111101100";
        ram[87] = "0b000100101";
        ram[88] = "0b110110000";
        ram[89] = "0b110101111";
        ram[90] = "0b111111001";
        ram[91] = "0b000000111";
        ram[92] = "0b001011111";
        ram[93] = "0b001001010";
        ram[94] = "0b111110111";
        ram[95] = "0b110100100";
        ram[96] = "0b110111001";
        ram[97] = "0b111101110";
        ram[98] = "0b000000101";
        ram[99] = "0b001000011";
        ram[100] = "0b111101101";
        ram[101] = "0b110100010";
        ram[102] = "0b111101001";
        ram[103] = "0b000001010";


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


SC_MODULE(L3_wlo_218_L2_WEIcCy) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIcCy_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIcCy) {
meminst = new L3_wlo_218_L2_WEIcCy_ram("L3_wlo_218_L2_WEIcCy_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIcCy() {
    delete meminst;
}


};//endmodule
#endif
