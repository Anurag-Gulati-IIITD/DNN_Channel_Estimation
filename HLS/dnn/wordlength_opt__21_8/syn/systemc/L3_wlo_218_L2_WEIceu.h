// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIceu_H__
#define __L3_wlo_218_L2_WEIceu_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIceu_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIceu_ram) {
        ram[0] = "0b110111111010";
        ram[1] = "0b111011001000";
        ram[2] = "0b111100000101";
        ram[3] = "0b000010111110";
        ram[4] = "0b001100010010";
        ram[5] = "0b001010010100";
        ram[6] = "0b000111101011";
        ram[7] = "0b000001001010";
        ram[8] = "0b110110000010";
        ram[9] = "0b110100011010";
        ram[10] = "0b110100010011";
        ram[11] = "0b111110110100";
        ram[12] = "0b000110110000";
        ram[13] = "0b010000001110";
        ram[14] = "0b001110101110";
        ram[15] = "0b001000001101";
        ram[16] = "0b111100001000";
        ram[17] = "0b110101010000";
        ram[18] = "0b110001001100";
        ram[19] = "0b111000110101";
        ram[20] = "0b111111011001";
        ram[21] = "0b000111011010";
        ram[22] = "0b001110111000";
        ram[23] = "0b000111111111";
        ram[24] = "0b000100100000";
        ram[25] = "0b000000000001";
        ram[26] = "0b111001000001";
        ram[27] = "0b110110011111";
        ram[28] = "0b111001001010";
        ram[29] = "0b111010010111";
        ram[30] = "0b000100100110";
        ram[31] = "0b001101010000";
        ram[32] = "0b001110100010";
        ram[33] = "0b001011010100";
        ram[34] = "0b000001110001";
        ram[35] = "0b110110001111";
        ram[36] = "0b110100001010";
        ram[37] = "0b111000101010";
        ram[38] = "0b111011111010";
        ram[39] = "0b000110000100";
        ram[40] = "0b001000101100";
        ram[41] = "0b000111110011";
        ram[42] = "0b000101111100";
        ram[43] = "0b000001101110";
        ram[44] = "0b111011110010";
        ram[45] = "0b110110011000";
        ram[46] = "0b110100000000";
        ram[47] = "0b111100000101";
        ram[48] = "0b000010100010";
        ram[49] = "0b001000111100";
        ram[50] = "0b001101000101";
        ram[51] = "0b001010011010";
        ram[52] = "0b000000011100";
        ram[53] = "0b000110010100";
        ram[54] = "0b001000100100";
        ram[55] = "0b001001111000";
        ram[56] = "0b000001111101";
        ram[57] = "0b111001100011";
        ram[58] = "0b110011110100";
        ram[59] = "0b110011000111";
        ram[60] = "0b110111011000";
        ram[61] = "0b000001010101";
        ram[62] = "0b001100110001";
        ram[63] = "0b001101001001";
        ram[64] = "0b001110100100";
        ram[65] = "0b001001000000";
        ram[66] = "0b111000100000";
        ram[67] = "0b110001100100";
        ram[68] = "0b110000001000";
        ram[69] = "0b111011010111";
        ram[70] = "0b000110110000";
        ram[71] = "0b001101000010";
        ram[72] = "0b001100100100";
        ram[73] = "0b001101001010";
        ram[74] = "0b000010110111";
        ram[75] = "0b111011111110";
        ram[76] = "0b110010110101";
        ram[77] = "0b111001000010";
        ram[78] = "0b111000100101";
        ram[79] = "0b111111111001";
        ram[80] = "0b000100110100";
        ram[81] = "0b001001110010";
        ram[82] = "0b001110110000";
        ram[83] = "0b000011001011";
        ram[84] = "0b111010011110";
        ram[85] = "0b110110010000";
        ram[86] = "0b110011000101";
        ram[87] = "0b110111000010";
        ram[88] = "0b111110111101";
        ram[89] = "0b000100010111";
        ram[90] = "0b001011001010";
        ram[91] = "0b000111101010";
        ram[92] = "0b000001111000";
        ram[93] = "0b111011010100";
        ram[94] = "0b111001101001";
        ram[95] = "0b111010101101";
        ram[96] = "0b111010011100";
        ram[97] = "0b111101111001";
        ram[98] = "0b111110011101";
        ram[99] = "0b000111100010";
        ram[100] = "0b001010100100";
        ram[101] = "0b000110101001";
        ram[102] = "0b111111010011";
        ram[103] = "0b111001000011";


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


SC_MODULE(L3_wlo_218_L2_WEIceu) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIceu_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIceu) {
meminst = new L3_wlo_218_L2_WEIceu_ram("L3_wlo_218_L2_WEIceu_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIceu() {
    delete meminst;
}


};//endmodule
#endif
