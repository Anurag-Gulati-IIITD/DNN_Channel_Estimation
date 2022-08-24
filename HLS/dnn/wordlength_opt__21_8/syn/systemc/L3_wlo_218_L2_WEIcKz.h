// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIcKz_H__
#define __L3_wlo_218_L2_WEIcKz_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIcKz_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIcKz_ram) {
        ram[0] = "0b00110010";
        ram[1] = "0b11110000";
        ram[2] = "0b00011000";
        ram[3] = "0b00110100";
        ram[4] = "0b00000110";
        ram[5] = "0b11011000";
        ram[6] = "0b00010010";
        ram[7] = "0b11010011";
        ram[8] = "0b11101110";
        ram[9] = "0b00001001";
        ram[10] = "0b00011100";
        ram[11] = "0b00011111";
        ram[12] = "0b00111001";
        ram[13] = "0b00110110";
        ram[14] = "0b11100100";
        ram[15] = "0b10010111";
        ram[16] = "0b11100111";
        ram[17] = "0b11111001";
        ram[18] = "0b00010111";
        ram[19] = "0b00101001";
        ram[20] = "0b11001010";
        ram[21] = "0b11101011";
        ram[22] = "0b00110100";
        ram[23] = "0b00100011";
        ram[24] = "0b11111011";
        ram[25] = "0b00010111";
        ram[26] = "0b10101110";
        ram[27] = "0b01001100";
        ram[28] = "0b11111100";
        ram[29] = "0b00110100";
        ram[30] = "0b00100101";
        ram[31] = "0b10111000";
        ram[32] = "0b10110111";
        ram[33] = "0b11010010";
        ram[34] = "0b00000011";
        ram[35] = "0b00001011";
        ram[36] = "0b01010011";
        ram[37] = "0b00010000";
        ram[38] = "0b11110011";
        ram[39] = "0b11110100";
        ram[40] = "0b00011010";
        ram[41] = "0b11111001";
        ram[42] = "0b11101011";
        ram[43] = "0b11010000";
        ram[44] = "0b11111110";
        ram[45] = "0b00000111";
        ram[46] = "0b00100010";
        ram[47] = "0b00111001";
        ram[48] = "0b00110101";
        ram[49] = "0b11010011";
        ram[50] = "0b11101011";
        ram[51] = "0b10101101";
        ram[52] = "0b00100000";
        ram[53] = "0b00000100";
        ram[54] = "0b11011010";
        ram[55] = "0b11110111";
        ram[56] = "0b11101100";
        ram[57] = "0b11100100";
        ram[58] = "0b11110110";
        ram[59] = "0b00100000";
        ram[60] = "0b00001111";
        ram[61] = "0b00001111";
        ram[62] = "0b00101001";
        ram[63] = "0b00100000";
        ram[64] = "0b11101100";
        ram[65] = "0b10100010";
        ram[66] = "0b11101010";
        ram[67] = "0b11111001";
        ram[68] = "0b00011000";
        ram[69] = "0b00111000";
        ram[70] = "0b11010011";
        ram[71] = "0b11101000";
        ram[72] = "0b00100000";
        ram[73] = "0b11110011";
        ram[74] = "0b00010001";
        ram[75] = "0b00011111";
        ram[76] = "0b11100011";
        ram[77] = "0b10111100";
        ram[78] = "0b11101011";
        ram[79] = "0b00101011";
        ram[80] = "0b01011010";
        ram[81] = "0b10110111";
        ram[82] = "0b11001111";
        ram[83] = "0b11011011";
        ram[84] = "0b11110101";
        ram[85] = "0b00011001";
        ram[86] = "0b01100001";
        ram[87] = "0b00010110";
        ram[88] = "0b11101010";
        ram[89] = "0b00001000";
        ram[90] = "0b11101110";
        ram[91] = "0b11111101";
        ram[92] = "0b11111111";
        ram[93] = "0b00000110";
        ram[94] = "0b00000001";
        ram[95] = "0b00000010";
        ram[96] = "0b00010111";
        ram[97] = "0b00100011";
        ram[98] = "0b00000000";
        ram[99] = "0b11100011";
        ram[100] = "0b11101101";
        ram[101] = "0b10110000";
        ram[102] = "0b11011111";
        ram[103] = "0b01000010";


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


SC_MODULE(L3_wlo_218_L2_WEIcKz) {


static const unsigned DataWidth = 8;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIcKz_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIcKz) {
meminst = new L3_wlo_218_L2_WEIcKz_ram("L3_wlo_218_L2_WEIcKz_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIcKz() {
    delete meminst;
}


};//endmodule
#endif
