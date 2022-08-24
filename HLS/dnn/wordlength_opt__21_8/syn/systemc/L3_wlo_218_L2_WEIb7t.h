// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIb7t_H__
#define __L3_wlo_218_L2_WEIb7t_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIb7t_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIb7t_ram) {
        ram[0] = "0b11000001101";
        ram[1] = "0b11010100001";
        ram[2] = "0b00010000010";
        ram[3] = "0b00111001110";
        ram[4] = "0b01000001111";
        ram[5] = "0b00000001111";
        ram[6] = "0b11101001001";
        ram[7] = "0b11011101101";
        ram[8] = "0b00000101000";
        ram[9] = "0b00100110101";
        ram[10] = "0b00011101001";
        ram[11] = "0b11101110010";
        ram[12] = "0b11000110010";
        ram[13] = "0b11011101011";
        ram[14] = "0b00010010100";
        ram[15] = "0b00111011000";
        ram[16] = "0b00110010010";
        ram[17] = "0b00010010000";
        ram[18] = "0b11101111100";
        ram[19] = "0b11100100100";
        ram[20] = "0b00000000101";
        ram[21] = "0b00010001101";
        ram[22] = "0b00001001110";
        ram[23] = "0b11101100000";
        ram[24] = "0b11100100101";
        ram[25] = "0b11111011110";
        ram[26] = "0b00110110111";
        ram[27] = "0b00100011001";
        ram[28] = "0b11111001101";
        ram[29] = "0b11100011011";
        ram[30] = "0b11011101101";
        ram[31] = "0b11111111100";
        ram[32] = "0b00000100111";
        ram[33] = "0b11110111010";
        ram[34] = "0b11101011101";
        ram[35] = "0b11111111101";
        ram[36] = "0b00011001101";
        ram[37] = "0b00101101001";
        ram[38] = "0b00011110100";
        ram[39] = "0b11110110010";
        ram[40] = "0b11010101001";
        ram[41] = "0b11010101000";
        ram[42] = "0b11111111101";
        ram[43] = "0b00011000001";
        ram[44] = "0b00001011010";
        ram[45] = "0b11111011011";
        ram[46] = "0b11110010011";
        ram[47] = "0b00001100110";
        ram[48] = "0b00010101101";
        ram[49] = "0b00011111010";
        ram[50] = "0b00000001101";
        ram[51] = "0b11100101000";
        ram[52] = "0b11110101100";
        ram[53] = "0b00111111100";
        ram[54] = "0b01001001011";
        ram[55] = "0b00011001111";
        ram[56] = "0b11100100110";
        ram[57] = "0b11001000000";
        ram[58] = "0b11011110100";
        ram[59] = "0b00010111011";
        ram[60] = "0b00100011100";
        ram[61] = "0b00000101110";
        ram[62] = "0b11011101010";
        ram[63] = "0b11010010000";
        ram[64] = "0b11111010010";
        ram[65] = "0b00110001010";
        ram[66] = "0b01000011010";
        ram[67] = "0b00011010111";
        ram[68] = "0b11100101010";
        ram[69] = "0b11001000100";
        ram[70] = "0b11100000010";
        ram[71] = "0b00001010100";
        ram[72] = "0b00001111101";
        ram[73] = "0b00001100110";
        ram[74] = "0b11110101111";
        ram[75] = "0b11110001011";
        ram[76] = "0b00001111011";
        ram[77] = "0b00101111110";
        ram[78] = "0b00000101110";
        ram[79] = "0b11100011111";
        ram[80] = "0b11010100101";
        ram[81] = "0b11100110010";
        ram[82] = "0b00001100101";
        ram[83] = "0b00001001001";
        ram[84] = "0b00001001101";
        ram[85] = "0b11111110100";
        ram[86] = "0b00001001101";
        ram[87] = "0b00011000111";
        ram[88] = "0b00011000011";
        ram[89] = "0b11111011010";
        ram[90] = "0b11100100000";
        ram[91] = "0b11001101110";
        ram[92] = "0b11101011011";
        ram[93] = "0b00010111010";
        ram[94] = "0b00011101000";
        ram[95] = "0b00010011010";
        ram[96] = "0b11110100111";
        ram[97] = "0b11111010011";
        ram[98] = "0b11111100110";
        ram[99] = "0b00010010111";
        ram[100] = "0b00001100101";
        ram[101] = "0b11100101101";
        ram[102] = "0b11100001000";
        ram[103] = "0b11010111110";


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


SC_MODULE(L3_wlo_218_L2_WEIb7t) {


static const unsigned DataWidth = 11;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIb7t_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIb7t) {
meminst = new L3_wlo_218_L2_WEIb7t_ram("L3_wlo_218_L2_WEIb7t_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIb7t() {
    delete meminst;
}


};//endmodule
#endif
