// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIcIz_H__
#define __L3_wlo_218_L2_WEIcIz_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIcIz_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIcIz_ram) {
        ram[0] = "0b111100100100";
        ram[1] = "0b000101100010";
        ram[2] = "0b000111010110";
        ram[3] = "0b000100101011";
        ram[4] = "0b000001101110";
        ram[5] = "0b111111001100";
        ram[6] = "0b111110111001";
        ram[7] = "0b111110010111";
        ram[8] = "0b111010100101";
        ram[9] = "0b111000110100";
        ram[10] = "0b111100111011";
        ram[11] = "0b000101011000";
        ram[12] = "0b001100110011";
        ram[13] = "0b001110010110";
        ram[14] = "0b000101100100";
        ram[15] = "0b111001011100";
        ram[16] = "0b101111011010";
        ram[17] = "0b110000010110";
        ram[18] = "0b111011000101";
        ram[19] = "0b000110010101";
        ram[20] = "0b010000011001";
        ram[21] = "0b010000000110";
        ram[22] = "0b000111011100";
        ram[23] = "0b111101001100";
        ram[24] = "0b110011111111";
        ram[25] = "0b110000100001";
        ram[26] = "0b111110111010";
        ram[27] = "0b001001111100";
        ram[28] = "0b010000111110";
        ram[29] = "0b001111001111";
        ram[30] = "0b000011110011";
        ram[31] = "0b110111101110";
        ram[32] = "0b101110101000";
        ram[33] = "0b110000001110";
        ram[34] = "0b111011011101";
        ram[35] = "0b001001110000";
        ram[36] = "0b010010001111";
        ram[37] = "0b010000110100";
        ram[38] = "0b000101110111";
        ram[39] = "0b110111001100";
        ram[40] = "0b101101011010";
        ram[41] = "0b101110001110";
        ram[42] = "0b111010001100";
        ram[43] = "0b001000101011";
        ram[44] = "0b010100001010";
        ram[45] = "0b010001101111";
        ram[46] = "0b000100111010";
        ram[47] = "0b110100110011";
        ram[48] = "0b101011101001";
        ram[49] = "0b110001100110";
        ram[50] = "0b000001010100";
        ram[51] = "0b001110010111";
        ram[52] = "0b001000110001";
        ram[53] = "0b000111101011";
        ram[54] = "0b000001110111";
        ram[55] = "0b111011100111";
        ram[56] = "0b111011111000";
        ram[57] = "0b111100111001";
        ram[58] = "0b111101011001";
        ram[59] = "0b111101000001";
        ram[60] = "0b111110101010";
        ram[61] = "0b000011000110";
        ram[62] = "0b001000111111";
        ram[63] = "0b001011111000";
        ram[64] = "0b000100100101";
        ram[65] = "0b111001111110";
        ram[66] = "0b110000011011";
        ram[67] = "0b110000110110";
        ram[68] = "0b111001101101";
        ram[69] = "0b001000101000";
        ram[70] = "0b010000011010";
        ram[71] = "0b001111110011";
        ram[72] = "0b000110001000";
        ram[73] = "0b111010010010";
        ram[74] = "0b110010000111";
        ram[75] = "0b101111011010";
        ram[76] = "0b110111001000";
        ram[77] = "0b000001100100";
        ram[78] = "0b010001001110";
        ram[79] = "0b001100110111";
        ram[80] = "0b000010000100";
        ram[81] = "0b110101111111";
        ram[82] = "0b101110001101";
        ram[83] = "0b110000101011";
        ram[84] = "0b111101010011";
        ram[85] = "0b001000111100";
        ram[86] = "0b010010010101";
        ram[87] = "0b010000010111";
        ram[88] = "0b000101000111";
        ram[89] = "0b110110001111";
        ram[90] = "0b101100111111";
        ram[91] = "0b101110000011";
        ram[92] = "0b111001101011";
        ram[93] = "0b001000000101";
        ram[94] = "0b010010110010";
        ram[95] = "0b010010001111";
        ram[96] = "0b000101111010";
        ram[97] = "0b110101111010";
        ram[98] = "0b101010010111";
        ram[99] = "0b101110011110";
        ram[100] = "0b111101000010";
        ram[101] = "0b001101111001";
        ram[102] = "0b010011000101";
        ram[103] = "0b001001010101";


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


SC_MODULE(L3_wlo_218_L2_WEIcIz) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIcIz_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIcIz) {
meminst = new L3_wlo_218_L2_WEIcIz_ram("L3_wlo_218_L2_WEIcIz_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIcIz() {
    delete meminst;
}


};//endmodule
#endif
