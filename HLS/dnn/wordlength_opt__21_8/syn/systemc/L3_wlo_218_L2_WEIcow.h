// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIcow_H__
#define __L3_wlo_218_L2_WEIcow_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIcow_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 11;
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


   SC_CTOR(L3_wlo_218_L2_WEIcow_ram) {
        ram[0] = "0b00000011011";
        ram[1] = "0b11100000010";
        ram[2] = "0b11110110111";
        ram[3] = "0b00100011110";
        ram[4] = "0b00000010101";
        ram[5] = "0b11101101001";
        ram[6] = "0b10011111110";
        ram[7] = "0b11000111001";
        ram[8] = "0b00100001000";
        ram[9] = "0b01000100111";
        ram[10] = "0b00110010100";
        ram[11] = "0b11110011100";
        ram[12] = "0b10100011100";
        ram[13] = "0b10111101011";
        ram[14] = "0b11100101110";
        ram[15] = "0b00111110111";
        ram[16] = "0b01001011001";
        ram[17] = "0b11111111101";
        ram[18] = "0b10111001111";
        ram[19] = "0b10101101110";
        ram[20] = "0b11111011011";
        ram[21] = "0b00111001110";
        ram[22] = "0b01001101101";
        ram[23] = "0b00101010101";
        ram[24] = "0b11001110110";
        ram[25] = "0b10101011100";
        ram[26] = "0b00000011010";
        ram[27] = "0b00110001101";
        ram[28] = "0b00111101000";
        ram[29] = "0b00101010100";
        ram[30] = "0b11111100011";
        ram[31] = "0b11011000101";
        ram[32] = "0b11100110010";
        ram[33] = "0b11100011110";
        ram[34] = "0b11010000110";
        ram[35] = "0b11100010010";
        ram[36] = "0b00100011001";
        ram[37] = "0b00111110110";
        ram[38] = "0b01010111000";
        ram[39] = "0b00011100110";
        ram[40] = "0b11011100111";
        ram[41] = "0b10101111010";
        ram[42] = "0b10101111111";
        ram[43] = "0b11101011110";
        ram[44] = "0b00111000111";
        ram[45] = "0b01001111110";
        ram[46] = "0b00110110010";
        ram[47] = "0b00001100000";
        ram[48] = "0b11101011100";
        ram[49] = "0b11110000100";
        ram[50] = "0b11011110011";
        ram[51] = "0b11100011000";
        ram[52] = "0b00010010101";
        ram[53] = "0b00010100101";
        ram[54] = "0b00001111010";
        ram[55] = "0b11110000110";
        ram[56] = "0b11100000000";
        ram[57] = "0b11010001111";
        ram[58] = "0b00010010001";
        ram[59] = "0b00110100001";
        ram[60] = "0b01000011110";
        ram[61] = "0b00011100010";
        ram[62] = "0b11100001000";
        ram[63] = "0b10101001100";
        ram[64] = "0b11010101101";
        ram[65] = "0b00100101010";
        ram[66] = "0b01000010011";
        ram[67] = "0b00111000011";
        ram[68] = "0b11110010000";
        ram[69] = "0b10110101100";
        ram[70] = "0b11000011010";
        ram[71] = "0b00100010000";
        ram[72] = "0b01011100011";
        ram[73] = "0b00101101101";
        ram[74] = "0b11100100011";
        ram[75] = "0b10101100100";
        ram[76] = "0b10110101001";
        ram[77] = "0b11111100001";
        ram[78] = "0b00110101101";
        ram[79] = "0b00010001101";
        ram[80] = "0b11111111100";
        ram[81] = "0b11100000101";
        ram[82] = "0b11010111100";
        ram[83] = "0b11101111100";
        ram[84] = "0b11011101111";
        ram[85] = "0b11110111100";
        ram[86] = "0b00011011000";
        ram[87] = "0b00100101010";
        ram[88] = "0b01000100001";
        ram[89] = "0b00001001110";
        ram[90] = "0b11100001111";
        ram[91] = "0b10110000010";
        ram[92] = "0b10100101100";
        ram[93] = "0b11101101010";
        ram[94] = "0b00111100110";
        ram[95] = "0b01000111000";
        ram[96] = "0b00111001101";
        ram[97] = "0b00000111010";
        ram[98] = "0b11110010001";
        ram[99] = "0b11001111111";
        ram[100] = "0b11011010011";
        ram[101] = "0b11110001101";
        ram[102] = "0b11110010000";
        ram[103] = "0b00110101001";


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


SC_MODULE(L3_wlo_218_L2_WEIcow) {


static const unsigned DataWidth = 11;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIcow_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIcow) {
meminst = new L3_wlo_218_L2_WEIcow_ram("L3_wlo_218_L2_WEIcow_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIcow() {
    delete meminst;
}


};//endmodule
#endif
