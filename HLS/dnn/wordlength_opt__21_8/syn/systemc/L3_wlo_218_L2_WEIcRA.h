// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIcRA_H__
#define __L3_wlo_218_L2_WEIcRA_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIcRA_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIcRA_ram) {
        ram[0] = "0b001011101000";
        ram[1] = "0b001001101100";
        ram[2] = "0b000101011001";
        ram[3] = "0b111000101101";
        ram[4] = "0b101110000011";
        ram[5] = "0b110001000011";
        ram[6] = "0b110101110010";
        ram[7] = "0b111111001101";
        ram[8] = "0b001010111000";
        ram[9] = "0b001111101010";
        ram[10] = "0b001110010100";
        ram[11] = "0b000000010100";
        ram[12] = "0b110110101100";
        ram[13] = "0b110000110000";
        ram[14] = "0b101110110000";
        ram[15] = "0b110101101101";
        ram[16] = "0b000001101111";
        ram[17] = "0b001010010111";
        ram[18] = "0b010000011100";
        ram[19] = "0b001001111110";
        ram[20] = "0b000010010110";
        ram[21] = "0b111011110110";
        ram[22] = "0b110000110000";
        ram[23] = "0b110110001111";
        ram[24] = "0b111010110001";
        ram[25] = "0b000001111111";
        ram[26] = "0b001010110111";
        ram[27] = "0b001100111111";
        ram[28] = "0b001000111111";
        ram[29] = "0b000010100110";
        ram[30] = "0b111000110100";
        ram[31] = "0b101110101110";
        ram[32] = "0b101110000111";
        ram[33] = "0b110001111011";
        ram[34] = "0b000000011110";
        ram[35] = "0b001101011010";
        ram[36] = "0b010000000111";
        ram[37] = "0b001011000111";
        ram[38] = "0b000010010101";
        ram[39] = "0b110100001110";
        ram[40] = "0b110001111100";
        ram[41] = "0b110100111010";
        ram[42] = "0b111011011111";
        ram[43] = "0b000000001001";
        ram[44] = "0b000111001010";
        ram[45] = "0b001011000100";
        ram[46] = "0b001101100101";
        ram[47] = "0b000111000101";
        ram[48] = "0b111111001101";
        ram[49] = "0b110011110111";
        ram[50] = "0b101101001001";
        ram[51] = "0b110001010100";
        ram[52] = "0b111110100001";
        ram[53] = "0b110111000101";
        ram[54] = "0b110011000111";
        ram[55] = "0b110000110101";
        ram[56] = "0b111101010001";
        ram[57] = "0b001001101101";
        ram[58] = "0b001110010010";
        ram[59] = "0b010010000001";
        ram[60] = "0b001100010101";
        ram[61] = "0b111110011000";
        ram[62] = "0b110001100100";
        ram[63] = "0b110001011110";
        ram[64] = "0b110000101001";
        ram[65] = "0b110110011101";
        ram[66] = "0b000111001101";
        ram[67] = "0b001110011110";
        ram[68] = "0b010010010100";
        ram[69] = "0b000100100101";
        ram[70] = "0b111010100101";
        ram[71] = "0b110010101010";
        ram[72] = "0b110001110011";
        ram[73] = "0b110000100111";
        ram[74] = "0b111011110100";
        ram[75] = "0b000100011001";
        ram[76] = "0b001111101001";
        ram[77] = "0b001000011000";
        ram[78] = "0b001000110101";
        ram[79] = "0b111111000111";
        ram[80] = "0b111000101101";
        ram[81] = "0b110100110010";
        ram[82] = "0b101111111011";
        ram[83] = "0b111100011110";
        ram[84] = "0b000110100000";
        ram[85] = "0b001110011001";
        ram[86] = "0b010001001100";
        ram[87] = "0b001001111101";
        ram[88] = "0b111111000000";
        ram[89] = "0b110111101110";
        ram[90] = "0b110000000110";
        ram[91] = "0b110100110111";
        ram[92] = "0b111111100011";
        ram[93] = "0b001000001100";
        ram[94] = "0b001100011100";
        ram[95] = "0b001000011001";
        ram[96] = "0b000100001110";
        ram[97] = "0b000001110100";
        ram[98] = "0b111111101101";
        ram[99] = "0b110111001101";
        ram[100] = "0b101111000100";
        ram[101] = "0b110100111001";
        ram[102] = "0b111110011101";
        ram[103] = "0b001001001100";


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


SC_MODULE(L3_wlo_218_L2_WEIcRA) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIcRA_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIcRA) {
meminst = new L3_wlo_218_L2_WEIcRA_ram("L3_wlo_218_L2_WEIcRA_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIcRA() {
    delete meminst;
}


};//endmodule
#endif
