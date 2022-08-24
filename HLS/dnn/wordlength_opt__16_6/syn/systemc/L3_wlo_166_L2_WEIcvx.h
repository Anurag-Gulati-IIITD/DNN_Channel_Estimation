// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_166_L2_WEIcvx_H__
#define __L3_wlo_166_L2_WEIcvx_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_166_L2_WEIcvx_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_166_L2_WEIcvx_ram) {
        ram[0] = "0b01001011";
        ram[1] = "0b00110100";
        ram[2] = "0b11101100";
        ram[3] = "0b10111010";
        ram[4] = "0b10110000";
        ram[5] = "0b11111100";
        ram[6] = "0b00011010";
        ram[7] = "0b00101000";
        ram[8] = "0b11111011";
        ram[9] = "0b11010011";
        ram[10] = "0b11011101";
        ram[11] = "0b00010101";
        ram[12] = "0b01000100";
        ram[13] = "0b00101000";
        ram[14] = "0b11101001";
        ram[15] = "0b10111000";
        ram[16] = "0b11000011";
        ram[17] = "0b11101010";
        ram[18] = "0b00010100";
        ram[19] = "0b00100001";
        ram[20] = "0b11111111";
        ram[21] = "0b11101011";
        ram[22] = "0b11110100";
        ram[23] = "0b00010111";
        ram[24] = "0b00100000";
        ram[25] = "0b00000100";
        ram[26] = "0b10111110";
        ram[27] = "0b11010101";
        ram[28] = "0b00000111";
        ram[29] = "0b00100010";
        ram[30] = "0b00101001";
        ram[31] = "0b00000000";
        ram[32] = "0b11111010";
        ram[33] = "0b00001010";
        ram[34] = "0b00011000";
        ram[35] = "0b00000000";
        ram[36] = "0b11100001";
        ram[37] = "0b11001010";
        ram[38] = "0b11011011";
        ram[39] = "0b00001010";
        ram[40] = "0b00110010";
        ram[41] = "0b00110011";
        ram[42] = "0b00000001";
        ram[43] = "0b11100100";
        ram[44] = "0b11110011";
        ram[45] = "0b00000101";
        ram[46] = "0b00001111";
        ram[47] = "0b11110000";
        ram[48] = "0b11100101";
        ram[49] = "0b11011001";
        ram[50] = "0b11111101";
        ram[51] = "0b00100000";
        ram[52] = "0b00001011";
        ram[53] = "0b10110011";
        ram[54] = "0b10100111";
        ram[55] = "0b11100000";
        ram[56] = "0b00100000";
        ram[57] = "0b01000011";
        ram[58] = "0b00101000";
        ram[59] = "0b11100101";
        ram[60] = "0b11010110";
        ram[61] = "0b11111001";
        ram[62] = "0b00101000";
        ram[63] = "0b00110110";
        ram[64] = "0b00000101";
        ram[65] = "0b11000100";
        ram[66] = "0b10101111";
        ram[67] = "0b11100000";
        ram[68] = "0b00100000";
        ram[69] = "0b01000010";
        ram[70] = "0b00100110";
        ram[71] = "0b11110011";
        ram[72] = "0b11101101";
        ram[73] = "0b11110000";
        ram[74] = "0b00001011";
        ram[75] = "0b00010001";
        ram[76] = "0b11101101";
        ram[77] = "0b11000110";
        ram[78] = "0b11111001";
        ram[79] = "0b00100001";
        ram[80] = "0b00110100";
        ram[81] = "0b00011111";
        ram[82] = "0b11110001";
        ram[83] = "0b11110100";
        ram[84] = "0b11110011";
        ram[85] = "0b00000001";
        ram[86] = "0b11110100";
        ram[87] = "0b11100010";
        ram[88] = "0b11100010";
        ram[89] = "0b00000101";
        ram[90] = "0b00100000";
        ram[91] = "0b00111100";
        ram[92] = "0b00011001";
        ram[93] = "0b11100101";
        ram[94] = "0b11011110";
        ram[95] = "0b11101000";
        ram[96] = "0b00001100";
        ram[97] = "0b00000101";
        ram[98] = "0b00000011";
        ram[99] = "0b11101001";
        ram[100] = "0b11110000";
        ram[101] = "0b00011111";
        ram[102] = "0b00100101";
        ram[103] = "0b00110000";


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


SC_MODULE(L3_wlo_166_L2_WEIcvx) {


static const unsigned DataWidth = 8;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_166_L2_WEIcvx_ram* meminst;


SC_CTOR(L3_wlo_166_L2_WEIcvx) {
meminst = new L3_wlo_166_L2_WEIcvx_ram("L3_wlo_166_L2_WEIcvx_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_166_L2_WEIcvx() {
    delete meminst;
}


};//endmodule
#endif
