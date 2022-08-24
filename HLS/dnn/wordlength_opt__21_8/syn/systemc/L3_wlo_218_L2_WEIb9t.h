// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIb9t_H__
#define __L3_wlo_218_L2_WEIb9t_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIb9t_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIb9t_ram) {
        ram[0] = "0b11111100011";
        ram[1] = "0b00100000100";
        ram[2] = "0b00001001001";
        ram[3] = "0b11011011011";
        ram[4] = "0b11111101010";
        ram[5] = "0b00010011100";
        ram[6] = "0b01100010100";
        ram[7] = "0b00111010001";
        ram[8] = "0b11011101111";
        ram[9] = "0b10111001001";
        ram[10] = "0b11001100001";
        ram[11] = "0b00001100110";
        ram[12] = "0b01011110101";
        ram[13] = "0b01000100011";
        ram[14] = "0b00011010111";
        ram[15] = "0b10111111100";
        ram[16] = "0b10110010111";
        ram[17] = "0b00000000001";
        ram[18] = "0b01000111101";
        ram[19] = "0b01010100000";
        ram[20] = "0b00000100101";
        ram[21] = "0b11000100111";
        ram[22] = "0b10110000011";
        ram[23] = "0b11010100010";
        ram[24] = "0b00110010011";
        ram[25] = "0b01010110110";
        ram[26] = "0b11111100100";
        ram[27] = "0b11001101000";
        ram[28] = "0b11000001001";
        ram[29] = "0b11010100001";
        ram[30] = "0b00000011100";
        ram[31] = "0b00101000011";
        ram[32] = "0b00011010011";
        ram[33] = "0b00011101000";
        ram[34] = "0b00110000011";
        ram[35] = "0b00011110011";
        ram[36] = "0b11011011110";
        ram[37] = "0b10111111100";
        ram[38] = "0b10100110110";
        ram[39] = "0b11100010100";
        ram[40] = "0b00100100000";
        ram[41] = "0b01010010110";
        ram[42] = "0b01010010001";
        ram[43] = "0b00010100100";
        ram[44] = "0b11000101100";
        ram[45] = "0b10101110001";
        ram[46] = "0b11001000010";
        ram[47] = "0b11110011101";
        ram[48] = "0b00010100111";
        ram[49] = "0b00001111110";
        ram[50] = "0b00100010011";
        ram[51] = "0b00011101101";
        ram[52] = "0b11101100111";
        ram[53] = "0b11101010110";
        ram[54] = "0b11110000010";
        ram[55] = "0b00001111101";
        ram[56] = "0b00100000101";
        ram[57] = "0b00101111000";
        ram[58] = "0b11101101001";
        ram[59] = "0b11001010011";
        ram[60] = "0b10111010011";
        ram[61] = "0b11100011000";
        ram[62] = "0b00011111110";
        ram[63] = "0b01011000101";
        ram[64] = "0b00101011011";
        ram[65] = "0b11011001110";
        ram[66] = "0b10111011110";
        ram[67] = "0b11000110001";
        ram[68] = "0b00001110001";
        ram[69] = "0b01001100001";
        ram[70] = "0b00111110000";
        ram[71] = "0b11011101000";
        ram[72] = "0b10100001011";
        ram[73] = "0b11010001001";
        ram[74] = "0b00011100010";
        ram[75] = "0b01010101100";
        ram[76] = "0b01001100101";
        ram[77] = "0b00000011111";
        ram[78] = "0b11001000101";
        ram[79] = "0b11101101101";
        ram[80] = "0b00000000011";
        ram[81] = "0b00100000010";
        ram[82] = "0b00101001100";
        ram[83] = "0b00010001000";
        ram[84] = "0b00100010111";
        ram[85] = "0b00001000100";
        ram[86] = "0b11100100000";
        ram[87] = "0b11011001110";
        ram[88] = "0b10111010000";
        ram[89] = "0b11110101111";
        ram[90] = "0b00011110111";
        ram[91] = "0b01010001101";
        ram[92] = "0b01011100101";
        ram[93] = "0b00010011001";
        ram[94] = "0b11000001101";
        ram[95] = "0b10110111001";
        ram[96] = "0b11000100111";
        ram[97] = "0b11111000011";
        ram[98] = "0b00001110000";
        ram[99] = "0b00110001001";
        ram[100] = "0b00100110011";
        ram[101] = "0b00001110100";
        ram[102] = "0b00001110010";
        ram[103] = "0b11001001100";


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


SC_MODULE(L3_wlo_218_L2_WEIb9t) {


static const unsigned DataWidth = 11;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIb9t_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIb9t) {
meminst = new L3_wlo_218_L2_WEIb9t_ram("L3_wlo_218_L2_WEIb9t_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIb9t() {
    delete meminst;
}


};//endmodule
#endif
