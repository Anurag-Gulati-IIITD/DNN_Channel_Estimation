// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_166_L2_WEIcow_H__
#define __L3_wlo_166_L2_WEIcow_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_166_L2_WEIcow_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 8;
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


   SC_CTOR(L3_wlo_166_L2_WEIcow_ram) {
        ram[0] = "0b00000011";
        ram[1] = "0b11100000";
        ram[2] = "0b11110110";
        ram[3] = "0b00100011";
        ram[4] = "0b00000010";
        ram[5] = "0b11101101";
        ram[6] = "0b10011111";
        ram[7] = "0b11000111";
        ram[8] = "0b00100001";
        ram[9] = "0b01000100";
        ram[10] = "0b00110010";
        ram[11] = "0b11110011";
        ram[12] = "0b10100011";
        ram[13] = "0b10111101";
        ram[14] = "0b11100101";
        ram[15] = "0b00111110";
        ram[16] = "0b01001011";
        ram[17] = "0b11111111";
        ram[18] = "0b10111001";
        ram[19] = "0b10101101";
        ram[20] = "0b11111011";
        ram[21] = "0b00111001";
        ram[22] = "0b01001101";
        ram[23] = "0b00101010";
        ram[24] = "0b11001110";
        ram[25] = "0b10101011";
        ram[26] = "0b00000011";
        ram[27] = "0b00110001";
        ram[28] = "0b00111101";
        ram[29] = "0b00101010";
        ram[30] = "0b11111100";
        ram[31] = "0b11011000";
        ram[32] = "0b11100110";
        ram[33] = "0b11100011";
        ram[34] = "0b11010000";
        ram[35] = "0b11100010";
        ram[36] = "0b00100011";
        ram[37] = "0b00111110";
        ram[38] = "0b01010111";
        ram[39] = "0b00011100";
        ram[40] = "0b11011100";
        ram[41] = "0b10101111";
        ram[42] = "0b10101111";
        ram[43] = "0b11101011";
        ram[44] = "0b00111000";
        ram[45] = "0b01001111";
        ram[46] = "0b00110110";
        ram[47] = "0b00001100";
        ram[48] = "0b11101011";
        ram[49] = "0b11110000";
        ram[50] = "0b11011110";
        ram[51] = "0b11100011";
        ram[52] = "0b00010010";
        ram[53] = "0b00010100";
        ram[54] = "0b00001111";
        ram[55] = "0b11110000";
        ram[56] = "0b11100000";
        ram[57] = "0b11010001";
        ram[58] = "0b00010010";
        ram[59] = "0b00110100";
        ram[60] = "0b01000011";
        ram[61] = "0b00011100";
        ram[62] = "0b11100001";
        ram[63] = "0b10101001";
        ram[64] = "0b11010101";
        ram[65] = "0b00100101";
        ram[66] = "0b01000010";
        ram[67] = "0b00111000";
        ram[68] = "0b11110010";
        ram[69] = "0b10110101";
        ram[70] = "0b11000011";
        ram[71] = "0b00100010";
        ram[72] = "0b01011100";
        ram[73] = "0b00101101";
        ram[74] = "0b11100100";
        ram[75] = "0b10101100";
        ram[76] = "0b10110101";
        ram[77] = "0b11111100";
        ram[78] = "0b00110101";
        ram[79] = "0b00010001";
        ram[80] = "0b11111111";
        ram[81] = "0b11100000";
        ram[82] = "0b11010111";
        ram[83] = "0b11101111";
        ram[84] = "0b11011101";
        ram[85] = "0b11110111";
        ram[86] = "0b00011011";
        ram[87] = "0b00100101";
        ram[88] = "0b01000100";
        ram[89] = "0b00001001";
        ram[90] = "0b11100001";
        ram[91] = "0b10110000";
        ram[92] = "0b10100101";
        ram[93] = "0b11101101";
        ram[94] = "0b00111100";
        ram[95] = "0b01000111";
        ram[96] = "0b00111001";
        ram[97] = "0b00000111";
        ram[98] = "0b11110010";
        ram[99] = "0b11001111";
        ram[100] = "0b11011010";
        ram[101] = "0b11110001";
        ram[102] = "0b11110010";
        ram[103] = "0b00110101";


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


SC_MODULE(L3_wlo_166_L2_WEIcow) {


static const unsigned DataWidth = 8;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_166_L2_WEIcow_ram* meminst;


SC_CTOR(L3_wlo_166_L2_WEIcow) {
meminst = new L3_wlo_166_L2_WEIcow_ram("L3_wlo_166_L2_WEIcow_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_166_L2_WEIcow() {
    delete meminst;
}


};//endmodule
#endif
