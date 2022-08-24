// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIcau_H__
#define __L3_wlo_218_L2_WEIcau_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIcau_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIcau_ram) {
        ram[0] = "0b00100100011";
        ram[1] = "0b01100000011";
        ram[2] = "0b01000010111";
        ram[3] = "0b11011110101";
        ram[4] = "0b10011100110";
        ram[5] = "0b10101011101";
        ram[6] = "0b11110110111";
        ram[7] = "0b01001111011";
        ram[8] = "0b01100100101";
        ram[9] = "0b00010100111";
        ram[10] = "0b11000100001";
        ram[11] = "0b10100100100";
        ram[12] = "0b11010011110";
        ram[13] = "0b00101101111";
        ram[14] = "0b01000010101";
        ram[15] = "0b00101000000";
        ram[16] = "0b11010111000";
        ram[17] = "0b11001001000";
        ram[18] = "0b11110010110";
        ram[19] = "0b00011001101";
        ram[20] = "0b01001101100";
        ram[21] = "0b00010010011";
        ram[22] = "0b11001001000";
        ram[23] = "0b10110000001";
        ram[24] = "0b11011010110";
        ram[25] = "0b00110010101";
        ram[26] = "0b01000110101";
        ram[27] = "0b00000010000";
        ram[28] = "0b10110001010";
        ram[29] = "0b10110000101";
        ram[30] = "0b11011101110";
        ram[31] = "0b00101000101";
        ram[32] = "0b01100000000";
        ram[33] = "0b01001010010";
        ram[34] = "0b11111110111";
        ram[35] = "0b11000101101";
        ram[36] = "0b10100010011";
        ram[37] = "0b11001011100";
        ram[38] = "0b00101111100";
        ram[39] = "0b01011111000";
        ram[40] = "0b01010010100";
        ram[41] = "0b00001001100";
        ram[42] = "0b10101110101";
        ram[43] = "0b10011101111";
        ram[44] = "0b11011100000";
        ram[45] = "0b00110011111";
        ram[46] = "0b01010111111";
        ram[47] = "0b00110000000";
        ram[48] = "0b11101100100";
        ram[49] = "0b11001001110";
        ram[50] = "0b11011000110";
        ram[51] = "0b00000110110";
        ram[52] = "0b01011110000";
        ram[53] = "0b00011001111";
        ram[54] = "0b10110010101";
        ram[55] = "0b10010111100";
        ram[56] = "0b11011111000";
        ram[57] = "0b00111001100";
        ram[58] = "0b01101010000";
        ram[59] = "0b00111000100";
        ram[60] = "0b11100100001";
        ram[61] = "0b10011001011";
        ram[62] = "0b10111110001";
        ram[63] = "0b00010101101";
        ram[64] = "0b01001011110";
        ram[65] = "0b00111100111";
        ram[66] = "0b11110111100";
        ram[67] = "0b11001100010";
        ram[68] = "0b11001011010";
        ram[69] = "0b00001111001";
        ram[70] = "0b00110010110";
        ram[71] = "0b00110101001";
        ram[72] = "0b11110101110";
        ram[73] = "0b11000101010";
        ram[74] = "0b11000111001";
        ram[75] = "0b11111100011";
        ram[76] = "0b01001111000";
        ram[77] = "0b01010000101";
        ram[78] = "0b11001000001";
        ram[79] = "0b10010101010";
        ram[80] = "0b11000101001";
        ram[81] = "0b00010001011";
        ram[82] = "0b01010000111";
        ram[83] = "0b01100000110";
        ram[84] = "0b00100001101";
        ram[85] = "0b10111110001";
        ram[86] = "0b10100100111";
        ram[87] = "0b11000100111";
        ram[88] = "0b00001110110";
        ram[89] = "0b00111101100";
        ram[90] = "0b01011011111";
        ram[91] = "0b00010100011";
        ram[92] = "0b11001000100";
        ram[93] = "0b10011000100";
        ram[94] = "0b11001000000";
        ram[95] = "0b00001101101";
        ram[96] = "0b01011010010";
        ram[97] = "0b01000000000";
        ram[98] = "0b00001000101";
        ram[99] = "0b11001111101";
        ram[100] = "0b10110110101";
        ram[101] = "0b11101100011";
        ram[102] = "0b00101100110";
        ram[103] = "0b00110111110";


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


SC_MODULE(L3_wlo_218_L2_WEIcau) {


static const unsigned DataWidth = 11;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIcau_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIcau) {
meminst = new L3_wlo_218_L2_WEIcau_ram("L3_wlo_218_L2_WEIcau_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIcau() {
    delete meminst;
}


};//endmodule
#endif
