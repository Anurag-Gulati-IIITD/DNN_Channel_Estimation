// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIb6t_H__
#define __L3_wlo_218_L2_WEIb6t_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIb6t_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIb6t_ram) {
        ram[0] = "0b000110111111";
        ram[1] = "0b010010111000";
        ram[2] = "0b010001111111";
        ram[3] = "0b001001101011";
        ram[4] = "0b111011001111";
        ram[5] = "0b110101000011";
        ram[6] = "0b110011101011";
        ram[7] = "0b111100110100";
        ram[8] = "0b000000101000";
        ram[9] = "0b111111000110";
        ram[10] = "0b111111001100";
        ram[11] = "0b000100000001";
        ram[12] = "0b000111011101";
        ram[13] = "0b001100100010";
        ram[14] = "0b000011000110";
        ram[15] = "0b111010001011";
        ram[16] = "0b110010000101";
        ram[17] = "0b110011101000";
        ram[18] = "0b000001000010";
        ram[19] = "0b001001111000";
        ram[20] = "0b001101100100";
        ram[21] = "0b000100101010";
        ram[22] = "0b111010001000";
        ram[23] = "0b111010000010";
        ram[24] = "0b111101011011";
        ram[25] = "0b000010110000";
        ram[26] = "0b111110001101";
        ram[27] = "0b111010100101";
        ram[28] = "0b111111111111";
        ram[29] = "0b001000011001";
        ram[30] = "0b000111111011";
        ram[31] = "0b000010011010";
        ram[32] = "0b111000010001";
        ram[33] = "0b110100010000";
        ram[34] = "0b111001110011";
        ram[35] = "0b000101100011";
        ram[36] = "0b001101111000";
        ram[37] = "0b000111110011";
        ram[38] = "0b111101101110";
        ram[39] = "0b110110001111";
        ram[40] = "0b111011011110";
        ram[41] = "0b000101110001";
        ram[42] = "0b001011010100";
        ram[43] = "0b000001110000";
        ram[44] = "0b110111000011";
        ram[45] = "0b101110001100";
        ram[46] = "0b110111001111";
        ram[47] = "0b001010100000";
        ram[48] = "0b010110100000";
        ram[49] = "0b010111111010";
        ram[50] = "0b000101100111";
        ram[51] = "0b110000000000";
        ram[52] = "0b011000010100";
        ram[53] = "0b001011110011";
        ram[54] = "0b111011011110";
        ram[55] = "0b101101110000";
        ram[56] = "0b110001101000";
        ram[57] = "0b111001101000";
        ram[58] = "0b000100101111";
        ram[59] = "0b000110001001";
        ram[60] = "0b000011111010";
        ram[61] = "0b000011001110";
        ram[62] = "0b000101101010";
        ram[63] = "0b000110110111";
        ram[64] = "0b000010110011";
        ram[65] = "0b111100001000";
        ram[66] = "0b110010000110";
        ram[67] = "0b110100010011";
        ram[68] = "0b111101110010";
        ram[69] = "0b001010110010";
        ram[70] = "0b001100110100";
        ram[71] = "0b001000010010";
        ram[72] = "0b111100001111";
        ram[73] = "0b110011100101";
        ram[74] = "0b110111111001";
        ram[75] = "0b111110110111";
        ram[76] = "0b000101100100";
        ram[77] = "0b000101000110";
        ram[78] = "0b111100011110";
        ram[79] = "0b000000001000";
        ram[80] = "0b000101111010";
        ram[81] = "0b000100110001";
        ram[82] = "0b111011111100";
        ram[83] = "0b110101110011";
        ram[84] = "0b111000000011";
        ram[85] = "0b000001011010";
        ram[86] = "0b001100010010";
        ram[87] = "0b001010011001";
        ram[88] = "0b000010011001";
        ram[89] = "0b110100110100";
        ram[90] = "0b110100100010";
        ram[91] = "0b111101010100";
        ram[92] = "0b000110000100";
        ram[93] = "0b000111101100";
        ram[94] = "0b111110000010";
        ram[95] = "0b110011010010";
        ram[96] = "0b110100010111";
        ram[97] = "0b000011111101";
        ram[98] = "0b010001000101";
        ram[99] = "0b010011010010";
        ram[100] = "0b000110000111";
        ram[101] = "0b110011010111";
        ram[102] = "0b100100011111";
        ram[103] = "0b101001101001";


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


SC_MODULE(L3_wlo_218_L2_WEIb6t) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIb6t_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIb6t) {
meminst = new L3_wlo_218_L2_WEIb6t_ram("L3_wlo_218_L2_WEIb6t_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIb6t() {
    delete meminst;
}


};//endmodule
#endif
