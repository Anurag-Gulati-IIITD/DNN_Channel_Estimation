// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIcLz_H__
#define __L3_wlo_218_L2_WEIcLz_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIcLz_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIcLz_ram) {
        ram[0] = "0b01001100010";
        ram[1] = "0b00010100100";
        ram[2] = "0b11000100000";
        ram[3] = "0b10010110101";
        ram[4] = "0b10100011101";
        ram[5] = "0b11011110111";
        ram[6] = "0b00010101100";
        ram[7] = "0b01011100111";
        ram[8] = "0b00111101011";
        ram[9] = "0b00101001110";
        ram[10] = "0b00010010110";
        ram[11] = "0b11110110001";
        ram[12] = "0b11000010101";
        ram[13] = "0b10100000001";
        ram[14] = "0b10111000011";
        ram[15] = "0b00101001100";
        ram[16] = "0b01011111011";
        ram[17] = "0b01011101011";
        ram[18] = "0b01001000101";
        ram[19] = "0b11111101111";
        ram[20] = "0b10111000110";
        ram[21] = "0b10011100001";
        ram[22] = "0b10110111011";
        ram[23] = "0b00001101011";
        ram[24] = "0b01010001100";
        ram[25] = "0b01000000111";
        ram[26] = "0b11110110100";
        ram[27] = "0b11100010011";
        ram[28] = "0b11101000101";
        ram[29] = "0b11011101111";
        ram[30] = "0b11101100000";
        ram[31] = "0b11110010101";
        ram[32] = "0b00010101111";
        ram[33] = "0b01000110101";
        ram[34] = "0b00111001011";
        ram[35] = "0b00101000011";
        ram[36] = "0b00000001111";
        ram[37] = "0b11000110010";
        ram[38] = "0b11001011010";
        ram[39] = "0b11010101101";
        ram[40] = "0b11111001111";
        ram[41] = "0b00011000110";
        ram[42] = "0b00100111111";
        ram[43] = "0b00101010001";
        ram[44] = "0b01000001100";
        ram[45] = "0b01000110111";
        ram[46] = "0b00001001010";
        ram[47] = "0b11100101011";
        ram[48] = "0b10000111010";
        ram[49] = "0b10101001110";
        ram[50] = "0b11000001001";
        ram[51] = "0b00111001101";
        ram[52] = "0b10111100111";
        ram[53] = "0b10010101000";
        ram[54] = "0b11001000000";
        ram[55] = "0b11010100110";
        ram[56] = "0b01000011100";
        ram[57] = "0b01010110101";
        ram[58] = "0b01010010001";
        ram[59] = "0b00100010000";
        ram[60] = "0b11110100101";
        ram[61] = "0b11001100101";
        ram[62] = "0b11000100011";
        ram[63] = "0b11001011110";
        ram[64] = "0b11000111010";
        ram[65] = "0b00011100011";
        ram[66] = "0b00110111111";
        ram[67] = "0b01010100111";
        ram[68] = "0b01001011111";
        ram[69] = "0b00011000110";
        ram[70] = "0b10100110110";
        ram[71] = "0b10011001100";
        ram[72] = "0b10011101111";
        ram[73] = "0b11101011101";
        ram[74] = "0b01011000110";
        ram[75] = "0b01000100000";
        ram[76] = "0b00010101100";
        ram[77] = "0b11111011100";
        ram[78] = "0b11001001100";
        ram[79] = "0b11100001100";
        ram[80] = "0b11100110000";
        ram[81] = "0b11111011000";
        ram[82] = "0b00011111110";
        ram[83] = "0b00101101001";
        ram[84] = "0b00110001001";
        ram[85] = "0b00011011110";
        ram[86] = "0b11100111111";
        ram[87] = "0b10111010111";
        ram[88] = "0b11001000100";
        ram[89] = "0b11001001110";
        ram[90] = "0b11100110110";
        ram[91] = "0b00001100000";
        ram[92] = "0b00101010001";
        ram[93] = "0b00100010101";
        ram[94] = "0b00011010011";
        ram[95] = "0b00101100010";
        ram[96] = "0b11110111000";
        ram[97] = "0b11101100011";
        ram[98] = "0b10101101110";
        ram[99] = "0b10000010001";
        ram[100] = "0b11010001101";
        ram[101] = "0b01000101101";
        ram[102] = "0b01010110100";
        ram[103] = "0b01000001011";


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


SC_MODULE(L3_wlo_218_L2_WEIcLz) {


static const unsigned DataWidth = 11;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIcLz_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIcLz) {
meminst = new L3_wlo_218_L2_WEIcLz_ram("L3_wlo_218_L2_WEIcLz_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIcLz() {
    delete meminst;
}


};//endmodule
#endif
