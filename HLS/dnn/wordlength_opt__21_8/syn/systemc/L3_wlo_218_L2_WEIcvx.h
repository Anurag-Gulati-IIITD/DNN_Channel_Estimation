// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIcvx_H__
#define __L3_wlo_218_L2_WEIcvx_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIcvx_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIcvx_ram) {
        ram[0] = "0b01001011000";
        ram[1] = "0b00110100011";
        ram[2] = "0b11101100010";
        ram[3] = "0b10111010000";
        ram[4] = "0b10110000010";
        ram[5] = "0b11111100011";
        ram[6] = "0b00011010101";
        ram[7] = "0b00101000111";
        ram[8] = "0b11111011010";
        ram[9] = "0b11010011000";
        ram[10] = "0b11011101111";
        ram[11] = "0b00010101000";
        ram[12] = "0b01000100100";
        ram[13] = "0b00101000010";
        ram[14] = "0b11101001000";
        ram[15] = "0b10111000111";
        ram[16] = "0b11000011100";
        ram[17] = "0b11101010011";
        ram[18] = "0b00010100000";
        ram[19] = "0b00100001000";
        ram[20] = "0b11111111101";
        ram[21] = "0b11101011001";
        ram[22] = "0b11110100100";
        ram[23] = "0b00010111100";
        ram[24] = "0b00100000100";
        ram[25] = "0b00000100110";
        ram[26] = "0b10111110010";
        ram[27] = "0b11010101110";
        ram[28] = "0b00000111011";
        ram[29] = "0b00100010010";
        ram[30] = "0b00101001101";
        ram[31] = "0b00000000111";
        ram[32] = "0b11111010100";
        ram[33] = "0b00001010000";
        ram[34] = "0b00011000000";
        ram[35] = "0b00000000011";
        ram[36] = "0b11100001011";
        ram[37] = "0b11001010000";
        ram[38] = "0b11011011001";
        ram[39] = "0b00001010011";
        ram[40] = "0b00110010011";
        ram[41] = "0b00110011001";
        ram[42] = "0b00000001000";
        ram[43] = "0b11100100100";
        ram[44] = "0b11110011010";
        ram[45] = "0b00000101110";
        ram[46] = "0b00001111100";
        ram[47] = "0b11110000000";
        ram[48] = "0b11100101010";
        ram[49] = "0b11011001111";
        ram[50] = "0b11111101011";
        ram[51] = "0b00100000001";
        ram[52] = "0b00001011101";
        ram[53] = "0b10110011100";
        ram[54] = "0b10100111100";
        ram[55] = "0b11100000001";
        ram[56] = "0b00100000011";
        ram[57] = "0b01000011100";
        ram[58] = "0b00101000111";
        ram[59] = "0b11100101000";
        ram[60] = "0b11010110010";
        ram[61] = "0b11111001000";
        ram[62] = "0b00101000100";
        ram[63] = "0b00110110001";
        ram[64] = "0b00000101111";
        ram[65] = "0b11000100110";
        ram[66] = "0b10101111101";
        ram[67] = "0b11100000001";
        ram[68] = "0b00100000010";
        ram[69] = "0b01000010100";
        ram[70] = "0b00100110010";
        ram[71] = "0b11110011100";
        ram[72] = "0b11101101010";
        ram[73] = "0b11110000010";
        ram[74] = "0b00001011100";
        ram[75] = "0b00010001000";
        ram[76] = "0b11101101100";
        ram[77] = "0b11000110111";
        ram[78] = "0b11111001000";
        ram[79] = "0b00100001100";
        ram[80] = "0b00110100010";
        ram[81] = "0b00011111000";
        ram[82] = "0b11110001010";
        ram[83] = "0b11110100110";
        ram[84] = "0b11110011111";
        ram[85] = "0b00000001001";
        ram[86] = "0b11110100101";
        ram[87] = "0b11100010001";
        ram[88] = "0b11100010110";
        ram[89] = "0b00000101000";
        ram[90] = "0b00100000111";
        ram[91] = "0b00111100000";
        ram[92] = "0b00011001010";
        ram[93] = "0b11100101011";
        ram[94] = "0b11011110000";
        ram[95] = "0b11101000111";
        ram[96] = "0b00001100011";
        ram[97] = "0b00000101100";
        ram[98] = "0b00000011000";
        ram[99] = "0b11101001000";
        ram[100] = "0b11110000111";
        ram[101] = "0b00011111111";
        ram[102] = "0b00100101100";
        ram[103] = "0b00110000100";


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


SC_MODULE(L3_wlo_218_L2_WEIcvx) {


static const unsigned DataWidth = 11;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIcvx_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIcvx) {
meminst = new L3_wlo_218_L2_WEIcvx_ram("L3_wlo_218_L2_WEIcvx_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIcvx() {
    delete meminst;
}


};//endmodule
#endif
