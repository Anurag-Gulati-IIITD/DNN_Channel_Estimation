// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIb3s_H__
#define __L3_wlo_218_L2_WEIb3s_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIb3s_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIb3s_ram) {
        ram[0] = "0b110101011001";
        ram[1] = "0b000100100111";
        ram[2] = "0b001111101001";
        ram[3] = "0b001101110011";
        ram[4] = "0b000101000111";
        ram[5] = "0b111001101101";
        ram[6] = "0b110010100010";
        ram[7] = "0b110100010010";
        ram[8] = "0b111101110010";
        ram[9] = "0b000110101100";
        ram[10] = "0b001010111101";
        ram[11] = "0b000110010110";
        ram[12] = "0b111110111001";
        ram[13] = "0b110110010111";
        ram[14] = "0b110100110000";
        ram[15] = "0b111011000000";
        ram[16] = "0b000011011101";
        ram[17] = "0b001101000010";
        ram[18] = "0b001101000001";
        ram[19] = "0b000010111000";
        ram[20] = "0b110111011111";
        ram[21] = "0b101101110110";
        ram[22] = "0b110001100011";
        ram[23] = "0b111110100000";
        ram[24] = "0b001101111000";
        ram[25] = "0b010011000110";
        ram[26] = "0b111010011000";
        ram[27] = "0b110010110110";
        ram[28] = "0b110011111110";
        ram[29] = "0b111111011000";
        ram[30] = "0b001010010001";
        ram[31] = "0b001001000011";
        ram[32] = "0b000010010011";
        ram[33] = "0b111001110001";
        ram[34] = "0b110111011111";
        ram[35] = "0b111110010111";
        ram[36] = "0b000011110100";
        ram[37] = "0b000110111001";
        ram[38] = "0b000101101111";
        ram[39] = "0b111111010000";
        ram[40] = "0b111010101100";
        ram[41] = "0b111011100001";
        ram[42] = "0b111101001001";
        ram[43] = "0b000010100101";
        ram[44] = "0b000011101111";
        ram[45] = "0b000011000110";
        ram[46] = "0b111101101001";
        ram[47] = "0b111001111110";
        ram[48] = "0b111101001101";
        ram[49] = "0b000010001101";
        ram[50] = "0b000110111111";
        ram[51] = "0b000110111111";
        ram[52] = "0b001111011101";
        ram[53] = "0b010001000011";
        ram[54] = "0b000111000100";
        ram[55] = "0b111011000110";
        ram[56] = "0b110001111111";
        ram[57] = "0b110010101101";
        ram[58] = "0b111011010010";
        ram[59] = "0b000101111100";
        ram[60] = "0b001100101011";
        ram[61] = "0b000111101110";
        ram[62] = "0b000000100010";
        ram[63] = "0b111001010100";
        ram[64] = "0b110101110001";
        ram[65] = "0b111000110110";
        ram[66] = "0b000010000001";
        ram[67] = "0b001010100101";
        ram[68] = "0b001011101110";
        ram[69] = "0b000110000011";
        ram[70] = "0b111001100111";
        ram[71] = "0b110001100110";
        ram[72] = "0b110010100011";
        ram[73] = "0b111110101010";
        ram[74] = "0b001011100111";
        ram[75] = "0b010001011010";
        ram[76] = "0b001011111001";
        ram[77] = "0b111100011011";
        ram[78] = "0b110000111101";
        ram[79] = "0b111001111011";
        ram[80] = "0b000111001010";
        ram[81] = "0b001011100100";
        ram[82] = "0b000110011011";
        ram[83] = "0b111110011001";
        ram[84] = "0b110111100111";
        ram[85] = "0b111000110110";
        ram[86] = "0b000001100010";
        ram[87] = "0b001000101100";
        ram[88] = "0b000110100100";
        ram[89] = "0b111111010001";
        ram[90] = "0b111010100101";
        ram[91] = "0b111000101001";
        ram[92] = "0b111101110110";
        ram[93] = "0b000001001011";
        ram[94] = "0b000101101001";
        ram[95] = "0b000011011000";
        ram[96] = "0b000001000000";
        ram[97] = "0b111010011110";
        ram[98] = "0b111101010110";
        ram[99] = "0b000001101101";
        ram[100] = "0b000100011000";
        ram[101] = "0b000101111110";
        ram[102] = "0b000011100000";
        ram[103] = "0b111100101000";


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


SC_MODULE(L3_wlo_218_L2_WEIb3s) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIb3s_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIb3s) {
meminst = new L3_wlo_218_L2_WEIb3s_ram("L3_wlo_218_L2_WEIb3s_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIb3s() {
    delete meminst;
}


};//endmodule
#endif
