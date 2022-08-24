// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIcQA_H__
#define __L3_wlo_218_L2_WEIcQA_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIcQA_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIcQA_ram) {
        ram[0] = "0b11011010110";
        ram[1] = "0b10011100101";
        ram[2] = "0b10111010110";
        ram[3] = "0b00100001111";
        ram[4] = "0b01100101110";
        ram[5] = "0b01010110101";
        ram[6] = "0b00001001011";
        ram[7] = "0b10101110010";
        ram[8] = "0b10011000010";
        ram[9] = "0b11101010100";
        ram[10] = "0b00111101101";
        ram[11] = "0b01011110100";
        ram[12] = "0b00101101111";
        ram[13] = "0b11010000110";
        ram[14] = "0b10111011000";
        ram[15] = "0b11010110011";
        ram[16] = "0b00101001110";
        ram[17] = "0b00111000011";
        ram[18] = "0b00001101101";
        ram[19] = "0b11100101101";
        ram[20] = "0b10110000010";
        ram[21] = "0b11101101011";
        ram[22] = "0b00111000110";
        ram[23] = "0b01010010010";
        ram[24] = "0b00100110001";
        ram[25] = "0b11001011100";
        ram[26] = "0b10110110111";
        ram[27] = "0b11111101110";
        ram[28] = "0b01010001001";
        ram[29] = "0b01010001110";
        ram[30] = "0b00100011010";
        ram[31] = "0b11010110001";
        ram[32] = "0b10011101001";
        ram[33] = "0b10110011100";
        ram[34] = "0b00000001010";
        ram[35] = "0b00111011111";
        ram[36] = "0b01100000010";
        ram[37] = "0b00110101111";
        ram[38] = "0b11001110110";
        ram[39] = "0b10011110001";
        ram[40] = "0b10101010111";
        ram[41] = "0b11110110000";
        ram[42] = "0b01010011110";
        ram[43] = "0b01100101000";
        ram[44] = "0b00100101010";
        ram[45] = "0b11001010101";
        ram[46] = "0b10100101100";
        ram[47] = "0b11001110010";
        ram[48] = "0b00010011101";
        ram[49] = "0b00110111001";
        ram[50] = "0b00101000000";
        ram[51] = "0b11111000111";
        ram[52] = "0b10011110110";
        ram[53] = "0b11100100110";
        ram[54] = "0b01001111001";
        ram[55] = "0b01101011011";
        ram[56] = "0b00100010001";
        ram[57] = "0b11000101000";
        ram[58] = "0b10010011000";
        ram[59] = "0b11000101110";
        ram[60] = "0b00011100101";
        ram[61] = "0b01101001110";
        ram[62] = "0b01000100000";
        ram[63] = "0b11101001100";
        ram[64] = "0b10110001101";
        ram[65] = "0b11000000111";
        ram[66] = "0b00001000010";
        ram[67] = "0b00110101001";
        ram[68] = "0b00110110011";
        ram[69] = "0b11110000100";
        ram[70] = "0b11001011111";
        ram[71] = "0b11001001010";
        ram[72] = "0b00001010100";
        ram[73] = "0b00111100010";
        ram[74] = "0b00111010011";
        ram[75] = "0b00000011011";
        ram[76] = "0b10101110001";
        ram[77] = "0b10101100101";
        ram[78] = "0b00111001101";
        ram[79] = "0b01101110000";
        ram[80] = "0b00111100110";
        ram[81] = "0b11101110001";
        ram[82] = "0b10101100101";
        ram[83] = "0b10011100001";
        ram[84] = "0b11011101010";
        ram[85] = "0b01000011101";
        ram[86] = "0b01011101110";
        ram[87] = "0b00111100101";
        ram[88] = "0b11110000100";
        ram[89] = "0b11000000100";
        ram[90] = "0b10100001010";
        ram[91] = "0b11101011000";
        ram[92] = "0b00111001001";
        ram[93] = "0b01101010110";
        ram[94] = "0b00111001110";
        ram[95] = "0b11110010000";
        ram[96] = "0b10100011000";
        ram[97] = "0b10111101110";
        ram[98] = "0b11110110101";
        ram[99] = "0b00110001010";
        ram[100] = "0b01001011001";
        ram[101] = "0b00010100001";
        ram[102] = "0b11010010000";
        ram[103] = "0b11000111000";


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


SC_MODULE(L3_wlo_218_L2_WEIcQA) {


static const unsigned DataWidth = 11;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIcQA_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIcQA) {
meminst = new L3_wlo_218_L2_WEIcQA_ram("L3_wlo_218_L2_WEIcQA_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIcQA() {
    delete meminst;
}


};//endmodule
#endif
