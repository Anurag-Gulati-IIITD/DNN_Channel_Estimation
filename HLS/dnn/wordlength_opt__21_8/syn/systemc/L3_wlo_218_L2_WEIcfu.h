// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIcfu_H__
#define __L3_wlo_218_L2_WEIcfu_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIcfu_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIcfu_ram) {
        ram[0] = "0b00100000001";
        ram[1] = "0b11100010011";
        ram[2] = "0b11001000000";
        ram[3] = "0b11101101011";
        ram[4] = "0b00010011111";
        ram[5] = "0b00001111000";
        ram[6] = "0b11010010101";
        ram[7] = "0b11011001110";
        ram[8] = "0b11110100011";
        ram[9] = "0b00101110101";
        ram[10] = "0b01000000100";
        ram[11] = "0b00001101111";
        ram[12] = "0b11011100111";
        ram[13] = "0b11001101000";
        ram[14] = "0b00001000100";
        ram[15] = "0b01000111101";
        ram[16] = "0b00101011110";
        ram[17] = "0b11010111101";
        ram[18] = "0b10100000011";
        ram[19] = "0b10101111101";
        ram[20] = "0b00010110110";
        ram[21] = "0b01011111101";
        ram[22] = "0b01000101111";
        ram[23] = "0b11110101000";
        ram[24] = "0b10110001000";
        ram[25] = "0b10111001111";
        ram[26] = "0b00110111100";
        ram[27] = "0b00110010010";
        ram[28] = "0b11110010011";
        ram[29] = "0b11000100001";
        ram[30] = "0b11100101010";
        ram[31] = "0b00010100011";
        ram[32] = "0b00110010010";
        ram[33] = "0b00100001101";
        ram[34] = "0b11111110101";
        ram[35] = "0b11101101011";
        ram[36] = "0b11111011011";
        ram[37] = "0b00011011101";
        ram[38] = "0b00010100101";
        ram[39] = "0b11101000101";
        ram[40] = "0b11001011011";
        ram[41] = "0b11101011000";
        ram[42] = "0b00011000110";
        ram[43] = "0b00110000110";
        ram[44] = "0b00100011011";
        ram[45] = "0b11011000101";
        ram[46] = "0b11000001010";
        ram[47] = "0b11101100111";
        ram[48] = "0b01001100100";
        ram[49] = "0b01011000110";
        ram[50] = "0b00000111011";
        ram[51] = "0b10000011010";
        ram[52] = "0b10011101110";
        ram[53] = "0b10100101110";
        ram[54] = "0b00000001001";
        ram[55] = "0b00100111101";
        ram[56] = "0b00001011111";
        ram[57] = "0b11100011000";
        ram[58] = "0b11100010101";
        ram[59] = "0b00001101001";
        ram[60] = "0b01000011110";
        ram[61] = "0b00100101111";
        ram[62] = "0b11100101010";
        ram[63] = "0b11010101010";
        ram[64] = "0b11011010101";
        ram[65] = "0b00010111110";
        ram[66] = "0b00101100010";
        ram[67] = "0b00001000110";
        ram[68] = "0b10111011100";
        ram[69] = "0b11001001000";
        ram[70] = "0b11110011010";
        ram[71] = "0b01000100010";
        ram[72] = "0b01100000000";
        ram[73] = "0b00011010110";
        ram[74] = "0b10111111010";
        ram[75] = "0b10010001011";
        ram[76] = "0b11010110000";
        ram[77] = "0b00100100011";
        ram[78] = "0b00100101101";
        ram[79] = "0b11001100101";
        ram[80] = "0b10110100111";
        ram[81] = "0b11101010111";
        ram[82] = "0b00011111110";
        ram[83] = "0b01000001111";
        ram[84] = "0b00011110101";
        ram[85] = "0b11011100011";
        ram[86] = "0b11011111000";
        ram[87] = "0b00001111001";
        ram[88] = "0b00011011110";
        ram[89] = "0b00000010010";
        ram[90] = "0b11001000011";
        ram[91] = "0b11001110110";
        ram[92] = "0b00000100000";
        ram[93] = "0b00100000110";
        ram[94] = "0b00110111111";
        ram[95] = "0b00000101010";
        ram[96] = "0b11010101110";
        ram[97] = "0b11000110110";
        ram[98] = "0b00001011101";
        ram[99] = "0b01001000100";
        ram[100] = "0b00100011010";
        ram[101] = "0b11011100010";
        ram[102] = "0b10000010011";
        ram[103] = "0b10100110010";


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


SC_MODULE(L3_wlo_218_L2_WEIcfu) {


static const unsigned DataWidth = 11;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIcfu_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIcfu) {
meminst = new L3_wlo_218_L2_WEIcfu_ram("L3_wlo_218_L2_WEIcfu_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIcfu() {
    delete meminst;
}


};//endmodule
#endif
