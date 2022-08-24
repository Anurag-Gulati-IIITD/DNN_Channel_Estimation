// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIb8t_H__
#define __L3_wlo_218_L2_WEIb8t_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIb8t_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIb8t_ram) {
        ram[0] = "0b11011010001";
        ram[1] = "0b00100010011";
        ram[2] = "0b00001000100";
        ram[3] = "0b00010000100";
        ram[4] = "0b11111010110";
        ram[5] = "0b00001011100";
        ram[6] = "0b00101001010";
        ram[7] = "0b00110011010";
        ram[8] = "0b00000010011";
        ram[9] = "0b11111010011";
        ram[10] = "0b11010101110";
        ram[11] = "0b11001001011";
        ram[12] = "0b11011111001";
        ram[13] = "0b11110010100";
        ram[14] = "0b00101101000";
        ram[15] = "0b00011000101";
        ram[16] = "0b00001001110";
        ram[17] = "0b00000101001";
        ram[18] = "0b11011100000";
        ram[19] = "0b00101011110";
        ram[20] = "0b00100101110";
        ram[21] = "0b00000010000";
        ram[22] = "0b10110110011";
        ram[23] = "0b10111001000";
        ram[24] = "0b11011110110";
        ram[25] = "0b00000111001";
        ram[26] = "0b01010010111";
        ram[27] = "0b00101110110";
        ram[28] = "0b00001000110";
        ram[29] = "0b11101000001";
        ram[30] = "0b11001110111";
        ram[31] = "0b11011001100";
        ram[32] = "0b11000101011";
        ram[33] = "0b11110100000";
        ram[34] = "0b11101111010";
        ram[35] = "0b00011001111";
        ram[36] = "0b00101011110";
        ram[37] = "0b00100000001";
        ram[38] = "0b11111100010";
        ram[39] = "0b11100111011";
        ram[40] = "0b11011001111";
        ram[41] = "0b00010111111";
        ram[42] = "0b00011011110";
        ram[43] = "0b00100000000";
        ram[44] = "0b00000011101";
        ram[45] = "0b11110100011";
        ram[46] = "0b11100011110";
        ram[47] = "0b11001011110";
        ram[48] = "0b11101010110";
        ram[49] = "0b00011100101";
        ram[50] = "0b00111000001";
        ram[51] = "0b01010011101";
        ram[52] = "0b00001110011";
        ram[53] = "0b01000010100";
        ram[54] = "0b00010001010";
        ram[55] = "0b11101001110";
        ram[56] = "0b11111000011";
        ram[57] = "0b11111111010";
        ram[58] = "0b00011000111";
        ram[59] = "0b11111110001";
        ram[60] = "0b11010110010";
        ram[61] = "0b10110101110";
        ram[62] = "0b11001010110";
        ram[63] = "0b11101001111";
        ram[64] = "0b01000110010";
        ram[65] = "0b00110001011";
        ram[66] = "0b00100010101";
        ram[67] = "0b11110101100";
        ram[68] = "0b11101110011";
        ram[69] = "0b11110000100";
        ram[70] = "0b00011101110";
        ram[71] = "0b00001100000";
        ram[72] = "0b11110001110";
        ram[73] = "0b11010001100";
        ram[74] = "0b11111100001";
        ram[75] = "0b00010010111";
        ram[76] = "0b01000000010";
        ram[77] = "0b01010001100";
        ram[78] = "0b00001010111";
        ram[79] = "0b11110000000";
        ram[80] = "0b10111101100";
        ram[81] = "0b11101010000";
        ram[82] = "0b11011111011";
        ram[83] = "0b00000001010";
        ram[84] = "0b00001101000";
        ram[85] = "0b00100011011";
        ram[86] = "0b00010000001";
        ram[87] = "0b00011010101";
        ram[88] = "0b00000000001";
        ram[89] = "0b11110011011";
        ram[90] = "0b11101001111";
        ram[91] = "0b11101111100";
        ram[92] = "0b00010010010";
        ram[93] = "0b00001110111";
        ram[94] = "0b00000011101";
        ram[95] = "0b11010111000";
        ram[96] = "0b11000101000";
        ram[97] = "0b11100101010";
        ram[98] = "0b00000011100";
        ram[99] = "0b00010110101";
        ram[100] = "0b00111110100";
        ram[101] = "0b00110010101";
        ram[102] = "0b00010010110";
        ram[103] = "0b11001010011";


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


SC_MODULE(L3_wlo_218_L2_WEIb8t) {


static const unsigned DataWidth = 11;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIb8t_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIb8t) {
meminst = new L3_wlo_218_L2_WEIb8t_ram("L3_wlo_218_L2_WEIb8t_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIb8t() {
    delete meminst;
}


};//endmodule
#endif
