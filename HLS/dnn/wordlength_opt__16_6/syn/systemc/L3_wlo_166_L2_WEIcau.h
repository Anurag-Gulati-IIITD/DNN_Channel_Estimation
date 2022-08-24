// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_166_L2_WEIcau_H__
#define __L3_wlo_166_L2_WEIcau_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_166_L2_WEIcau_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_166_L2_WEIcau_ram) {
        ram[0] = "0b00100100";
        ram[1] = "0b01100000";
        ram[2] = "0b01000010";
        ram[3] = "0b11011110";
        ram[4] = "0b10011100";
        ram[5] = "0b10101011";
        ram[6] = "0b11110110";
        ram[7] = "0b01001111";
        ram[8] = "0b01100100";
        ram[9] = "0b00010100";
        ram[10] = "0b11000100";
        ram[11] = "0b10100100";
        ram[12] = "0b11010011";
        ram[13] = "0b00101101";
        ram[14] = "0b01000010";
        ram[15] = "0b00101000";
        ram[16] = "0b11010111";
        ram[17] = "0b11001001";
        ram[18] = "0b11110010";
        ram[19] = "0b00011001";
        ram[20] = "0b01001101";
        ram[21] = "0b00010010";
        ram[22] = "0b11001001";
        ram[23] = "0b10110000";
        ram[24] = "0b11011010";
        ram[25] = "0b00110010";
        ram[26] = "0b01000110";
        ram[27] = "0b00000010";
        ram[28] = "0b10110001";
        ram[29] = "0b10110000";
        ram[30] = "0b11011101";
        ram[31] = "0b00101000";
        ram[32] = "0b01100000";
        ram[33] = "0b01001010";
        ram[34] = "0b11111110";
        ram[35] = "0b11000101";
        ram[36] = "0b10100010";
        ram[37] = "0b11001011";
        ram[38] = "0b00101111";
        ram[39] = "0b01011111";
        ram[40] = "0b01010010";
        ram[41] = "0b00001001";
        ram[42] = "0b10101110";
        ram[43] = "0b10011101";
        ram[44] = "0b11011100";
        ram[45] = "0b00110011";
        ram[46] = "0b01010111";
        ram[47] = "0b00110000";
        ram[48] = "0b11101100";
        ram[49] = "0b11001001";
        ram[50] = "0b11011000";
        ram[51] = "0b00000110";
        ram[52] = "0b01011110";
        ram[53] = "0b00011001";
        ram[54] = "0b10110010";
        ram[55] = "0b10010111";
        ram[56] = "0b11011111";
        ram[57] = "0b00111001";
        ram[58] = "0b01101010";
        ram[59] = "0b00111000";
        ram[60] = "0b11100100";
        ram[61] = "0b10011001";
        ram[62] = "0b10111110";
        ram[63] = "0b00010101";
        ram[64] = "0b01001011";
        ram[65] = "0b00111100";
        ram[66] = "0b11110111";
        ram[67] = "0b11001100";
        ram[68] = "0b11001011";
        ram[69] = "0b00001111";
        ram[70] = "0b00110010";
        ram[71] = "0b00110101";
        ram[72] = "0b11110101";
        ram[73] = "0b11000101";
        ram[74] = "0b11000111";
        ram[75] = "0b11111100";
        ram[76] = "0b01001111";
        ram[77] = "0b01010000";
        ram[78] = "0b11001000";
        ram[79] = "0b10010101";
        ram[80] = "0b11000101";
        ram[81] = "0b00010001";
        ram[82] = "0b01010000";
        ram[83] = "0b01100000";
        ram[84] = "0b00100001";
        ram[85] = "0b10111110";
        ram[86] = "0b10100100";
        ram[87] = "0b11000100";
        ram[88] = "0b00001110";
        ram[89] = "0b00111101";
        ram[90] = "0b01011011";
        ram[91] = "0b00010100";
        ram[92] = "0b11001000";
        ram[93] = "0b10011000";
        ram[94] = "0b11001000";
        ram[95] = "0b00001101";
        ram[96] = "0b01011010";
        ram[97] = "0b01000000";
        ram[98] = "0b00001000";
        ram[99] = "0b11001111";
        ram[100] = "0b10110110";
        ram[101] = "0b11101100";
        ram[102] = "0b00101100";
        ram[103] = "0b00110111";


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


SC_MODULE(L3_wlo_166_L2_WEIcau) {


static const unsigned DataWidth = 8;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_166_L2_WEIcau_ram* meminst;


SC_CTOR(L3_wlo_166_L2_WEIcau) {
meminst = new L3_wlo_166_L2_WEIcau_ram("L3_wlo_166_L2_WEIcau_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_166_L2_WEIcau() {
    delete meminst;
}


};//endmodule
#endif