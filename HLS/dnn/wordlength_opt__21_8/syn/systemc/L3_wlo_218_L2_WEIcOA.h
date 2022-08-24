// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIcOA_H__
#define __L3_wlo_218_L2_WEIcOA_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIcOA_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIcOA_ram) {
        ram[0] = "0b10110011110";
        ram[1] = "0b11101011101";
        ram[2] = "0b00111011101";
        ram[3] = "0b01101001000";
        ram[4] = "0b01011100000";
        ram[5] = "0b00100001000";
        ram[6] = "0b11101010101";
        ram[7] = "0b10100011011";
        ram[8] = "0b11000010101";
        ram[9] = "0b11010110010";
        ram[10] = "0b11101101010";
        ram[11] = "0b00001001111";
        ram[12] = "0b00111101000";
        ram[13] = "0b01011111010";
        ram[14] = "0b01000111010";
        ram[15] = "0b11010110011";
        ram[16] = "0b10100000111";
        ram[17] = "0b10100011000";
        ram[18] = "0b10110111100";
        ram[19] = "0b00000010010";
        ram[20] = "0b01000110111";
        ram[21] = "0b01100011010";
        ram[22] = "0b01001000000";
        ram[23] = "0b11110010100";
        ram[24] = "0b10101110101";
        ram[25] = "0b10111111001";
        ram[26] = "0b00001001011";
        ram[27] = "0b00011101100";
        ram[28] = "0b00010111010";
        ram[29] = "0b00100010001";
        ram[30] = "0b00010011110";
        ram[31] = "0b00001101001";
        ram[32] = "0b11101001110";
        ram[33] = "0b10111001011";
        ram[34] = "0b11000110101";
        ram[35] = "0b11010111101";
        ram[36] = "0b11111110001";
        ram[37] = "0b00111001100";
        ram[38] = "0b00110100100";
        ram[39] = "0b00101010001";
        ram[40] = "0b00000110000";
        ram[41] = "0b11100111011";
        ram[42] = "0b11011000001";
        ram[43] = "0b11010101110";
        ram[44] = "0b10111110101";
        ram[45] = "0b10111001010";
        ram[46] = "0b11110110110";
        ram[47] = "0b00011010010";
        ram[48] = "0b01110111111";
        ram[49] = "0b01010101101";
        ram[50] = "0b00111110101";
        ram[51] = "0b11000110110";
        ram[52] = "0b01000010110";
        ram[53] = "0b01101010110";
        ram[54] = "0b00110111110";
        ram[55] = "0b00101010110";
        ram[56] = "0b10111100100";
        ram[57] = "0b10101001100";
        ram[58] = "0b10101110001";
        ram[59] = "0b11011110000";
        ram[60] = "0b00001011010";
        ram[61] = "0b00110011000";
        ram[62] = "0b00111011001";
        ram[63] = "0b00110011110";
        ram[64] = "0b00111000100";
        ram[65] = "0b11100011100";
        ram[66] = "0b11001000010";
        ram[67] = "0b10101011011";
        ram[68] = "0b10110100011";
        ram[69] = "0b11100111011";
        ram[70] = "0b01011000111";
        ram[71] = "0b01100101111";
        ram[72] = "0b01100001100";
        ram[73] = "0b00010100000";
        ram[74] = "0b10100111101";
        ram[75] = "0b10111100001";
        ram[76] = "0b11101010100";
        ram[77] = "0b00000100100";
        ram[78] = "0b00110110011";
        ram[79] = "0b00011110100";
        ram[80] = "0b00011001110";
        ram[81] = "0b00000100111";
        ram[82] = "0b11100000000";
        ram[83] = "0b11010010110";
        ram[84] = "0b11001110111";
        ram[85] = "0b11100100011";
        ram[86] = "0b00011000000";
        ram[87] = "0b01000100111";
        ram[88] = "0b00110111010";
        ram[89] = "0b00110110000";
        ram[90] = "0b00011001001";
        ram[91] = "0b11110011111";
        ram[92] = "0b11010101110";
        ram[93] = "0b11011101010";
        ram[94] = "0b11100101100";
        ram[95] = "0b11010011101";
        ram[96] = "0b00001000110";
        ram[97] = "0b00010011100";
        ram[98] = "0b01010001110";
        ram[99] = "0b01111101001";
        ram[100] = "0b00101110001";
        ram[101] = "0b10111010101";
        ram[102] = "0b10101001111";
        ram[103] = "0b10111110110";


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


SC_MODULE(L3_wlo_218_L2_WEIcOA) {


static const unsigned DataWidth = 11;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIcOA_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIcOA) {
meminst = new L3_wlo_218_L2_WEIcOA_ram("L3_wlo_218_L2_WEIcOA_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIcOA() {
    delete meminst;
}


};//endmodule
#endif
