// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIcbu_H__
#define __L3_wlo_218_L2_WEIcbu_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIcbu_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIcbu_ram) {
        ram[0] = "0b000011011100";
        ram[1] = "0b111010011011";
        ram[2] = "0b111000100110";
        ram[3] = "0b111011010011";
        ram[4] = "0b111110010001";
        ram[5] = "0b000000110011";
        ram[6] = "0b000001000110";
        ram[7] = "0b000001101000";
        ram[8] = "0b000101011010";
        ram[9] = "0b000111001101";
        ram[10] = "0b000011000101";
        ram[11] = "0b111010100110";
        ram[12] = "0b110011001001";
        ram[13] = "0b110001100110";
        ram[14] = "0b111010011001";
        ram[15] = "0b000110100100";
        ram[16] = "0b010000101000";
        ram[17] = "0b001111101101";
        ram[18] = "0b000100111011";
        ram[19] = "0b111001101000";
        ram[20] = "0b101111100011";
        ram[21] = "0b101111110110";
        ram[22] = "0b111000100010";
        ram[23] = "0b000010110100";
        ram[24] = "0b001100000011";
        ram[25] = "0b001111100001";
        ram[26] = "0b000001000101";
        ram[27] = "0b110110000001";
        ram[28] = "0b101110111101";
        ram[29] = "0b110000101100";
        ram[30] = "0b111100001011";
        ram[31] = "0b001000010011";
        ram[32] = "0b010001011100";
        ram[33] = "0b001111110110";
        ram[34] = "0b000100100011";
        ram[35] = "0b110110001101";
        ram[36] = "0b101101101100";
        ram[37] = "0b101111000111";
        ram[38] = "0b111010000110";
        ram[39] = "0b001000110100";
        ram[40] = "0b010010101010";
        ram[41] = "0b010001110110";
        ram[42] = "0b000101110101";
        ram[43] = "0b110111010010";
        ram[44] = "0b101011110001";
        ram[45] = "0b101110001011";
        ram[46] = "0b111011000100";
        ram[47] = "0b001011001111";
        ram[48] = "0b010100011011";
        ram[49] = "0b001110011100";
        ram[50] = "0b111110101010";
        ram[51] = "0b110001100100";
        ram[52] = "0b110111001011";
        ram[53] = "0b111000010010";
        ram[54] = "0b111110001000";
        ram[55] = "0b000100011001";
        ram[56] = "0b000100001000";
        ram[57] = "0b000011000111";
        ram[58] = "0b000010100110";
        ram[59] = "0b000010111111";
        ram[60] = "0b000001010110";
        ram[61] = "0b111100111001";
        ram[62] = "0b110110111110";
        ram[63] = "0b110100000100";
        ram[64] = "0b111011011000";
        ram[65] = "0b000110000010";
        ram[66] = "0b001111101000";
        ram[67] = "0b001111001101";
        ram[68] = "0b000110010100";
        ram[69] = "0b110111010101";
        ram[70] = "0b101111100001";
        ram[71] = "0b110000001001";
        ram[72] = "0b111001110111";
        ram[73] = "0b000101101110";
        ram[74] = "0b001101111011";
        ram[75] = "0b010000101000";
        ram[76] = "0b001000111001";
        ram[77] = "0b111110011011";
        ram[78] = "0b101110101101";
        ram[79] = "0b110011000110";
        ram[80] = "0b111101111011";
        ram[81] = "0b001010000011";
        ram[82] = "0b010001110111";
        ram[83] = "0b001111011000";
        ram[84] = "0b000010101101";
        ram[85] = "0b110111000001";
        ram[86] = "0b101101100101";
        ram[87] = "0b101111100011";
        ram[88] = "0b111010110110";
        ram[89] = "0b001001110010";
        ram[90] = "0b010011000101";
        ram[91] = "0b010010000001";
        ram[92] = "0b000110010110";
        ram[93] = "0b110111111001";
        ram[94] = "0b101101001001";
        ram[95] = "0b101101101011";
        ram[96] = "0b111010000011";
        ram[97] = "0b001010000111";
        ram[98] = "0b010101101101";
        ram[99] = "0b010001100101";
        ram[100] = "0b000010111101";
        ram[101] = "0b110010000010";
        ram[102] = "0b101100110101";
        ram[103] = "0b110110101000";


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


SC_MODULE(L3_wlo_218_L2_WEIcbu) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIcbu_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIcbu) {
meminst = new L3_wlo_218_L2_WEIcbu_ram("L3_wlo_218_L2_WEIcbu_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIcbu() {
    delete meminst;
}


};//endmodule
#endif
