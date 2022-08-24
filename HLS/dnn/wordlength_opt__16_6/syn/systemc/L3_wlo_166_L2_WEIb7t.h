// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_166_L2_WEIb7t_H__
#define __L3_wlo_166_L2_WEIb7t_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_166_L2_WEIb7t_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_166_L2_WEIb7t_ram) {
        ram[0] = "0b11000001";
        ram[1] = "0b11010100";
        ram[2] = "0b00010000";
        ram[3] = "0b00111001";
        ram[4] = "0b01000001";
        ram[5] = "0b00000001";
        ram[6] = "0b11101001";
        ram[7] = "0b11011101";
        ram[8] = "0b00000101";
        ram[9] = "0b00100110";
        ram[10] = "0b00011101";
        ram[11] = "0b11101110";
        ram[12] = "0b11000110";
        ram[13] = "0b11011101";
        ram[14] = "0b00010010";
        ram[15] = "0b00111011";
        ram[16] = "0b00110010";
        ram[17] = "0b00010010";
        ram[18] = "0b11101111";
        ram[19] = "0b11100100";
        ram[20] = "0b00000000";
        ram[21] = "0b00010001";
        ram[22] = "0b00001001";
        ram[23] = "0b11101100";
        ram[24] = "0b11100100";
        ram[25] = "0b11111011";
        ram[26] = "0b00110110";
        ram[27] = "0b00100011";
        ram[28] = "0b11111001";
        ram[29] = "0b11100011";
        ram[30] = "0b11011101";
        ram[31] = "0b11111111";
        ram[32] = "0b00000100";
        ram[33] = "0b11110111";
        ram[34] = "0b11101011";
        ram[35] = "0b11111111";
        ram[36] = "0b00011001";
        ram[37] = "0b00101101";
        ram[38] = "0b00011110";
        ram[39] = "0b11110110";
        ram[40] = "0b11010101";
        ram[41] = "0b11010101";
        ram[42] = "0b11111111";
        ram[43] = "0b00011000";
        ram[44] = "0b00001011";
        ram[45] = "0b11111011";
        ram[46] = "0b11110010";
        ram[47] = "0b00001100";
        ram[48] = "0b00010101";
        ram[49] = "0b00011111";
        ram[50] = "0b00000001";
        ram[51] = "0b11100101";
        ram[52] = "0b11110101";
        ram[53] = "0b00111111";
        ram[54] = "0b01001001";
        ram[55] = "0b00011001";
        ram[56] = "0b11100100";
        ram[57] = "0b11001000";
        ram[58] = "0b11011110";
        ram[59] = "0b00010111";
        ram[60] = "0b00100011";
        ram[61] = "0b00000101";
        ram[62] = "0b11011101";
        ram[63] = "0b11010010";
        ram[64] = "0b11111010";
        ram[65] = "0b00110001";
        ram[66] = "0b01000011";
        ram[67] = "0b00011010";
        ram[68] = "0b11100101";
        ram[69] = "0b11001000";
        ram[70] = "0b11100000";
        ram[71] = "0b00001010";
        ram[72] = "0b00001111";
        ram[73] = "0b00001100";
        ram[74] = "0b11110101";
        ram[75] = "0b11110001";
        ram[76] = "0b00001111";
        ram[77] = "0b00101111";
        ram[78] = "0b00000101";
        ram[79] = "0b11100011";
        ram[80] = "0b11010100";
        ram[81] = "0b11100110";
        ram[82] = "0b00001100";
        ram[83] = "0b00001001";
        ram[84] = "0b00001001";
        ram[85] = "0b11111110";
        ram[86] = "0b00001001";
        ram[87] = "0b00011000";
        ram[88] = "0b00011000";
        ram[89] = "0b11111011";
        ram[90] = "0b11100100";
        ram[91] = "0b11001101";
        ram[92] = "0b11101011";
        ram[93] = "0b00010111";
        ram[94] = "0b00011101";
        ram[95] = "0b00010011";
        ram[96] = "0b11110100";
        ram[97] = "0b11111010";
        ram[98] = "0b11111100";
        ram[99] = "0b00010010";
        ram[100] = "0b00001100";
        ram[101] = "0b11100101";
        ram[102] = "0b11100001";
        ram[103] = "0b11010111";


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


SC_MODULE(L3_wlo_166_L2_WEIb7t) {


static const unsigned DataWidth = 8;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_166_L2_WEIb7t_ram* meminst;


SC_CTOR(L3_wlo_166_L2_WEIb7t) {
meminst = new L3_wlo_166_L2_WEIb7t_ram("L3_wlo_166_L2_WEIb7t_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_166_L2_WEIb7t() {
    delete meminst;
}


};//endmodule
#endif
