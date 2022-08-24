// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_166_L2_WEIcQA_H__
#define __L3_wlo_166_L2_WEIcQA_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_166_L2_WEIcQA_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_166_L2_WEIcQA_ram) {
        ram[0] = "0b11011010";
        ram[1] = "0b10011100";
        ram[2] = "0b10111010";
        ram[3] = "0b00100001";
        ram[4] = "0b01100101";
        ram[5] = "0b01010110";
        ram[6] = "0b00001001";
        ram[7] = "0b10101110";
        ram[8] = "0b10011000";
        ram[9] = "0b11101010";
        ram[10] = "0b00111101";
        ram[11] = "0b01011110";
        ram[12] = "0b00101101";
        ram[13] = "0b11010000";
        ram[14] = "0b10111011";
        ram[15] = "0b11010110";
        ram[16] = "0b00101001";
        ram[17] = "0b00111000";
        ram[18] = "0b00001101";
        ram[19] = "0b11100101";
        ram[20] = "0b10110000";
        ram[21] = "0b11101101";
        ram[22] = "0b00111000";
        ram[23] = "0b01010010";
        ram[24] = "0b00100110";
        ram[25] = "0b11001011";
        ram[26] = "0b10110110";
        ram[27] = "0b11111101";
        ram[28] = "0b01010001";
        ram[29] = "0b01010001";
        ram[30] = "0b00100011";
        ram[31] = "0b11010110";
        ram[32] = "0b10011101";
        ram[33] = "0b10110011";
        ram[34] = "0b00000001";
        ram[35] = "0b00111011";
        ram[36] = "0b01100000";
        ram[37] = "0b00110101";
        ram[38] = "0b11001110";
        ram[39] = "0b10011110";
        ram[40] = "0b10101010";
        ram[41] = "0b11110110";
        ram[42] = "0b01010011";
        ram[43] = "0b01100101";
        ram[44] = "0b00100101";
        ram[45] = "0b11001010";
        ram[46] = "0b10100101";
        ram[47] = "0b11001110";
        ram[48] = "0b00010011";
        ram[49] = "0b00110111";
        ram[50] = "0b00101000";
        ram[51] = "0b11111000";
        ram[52] = "0b10011110";
        ram[53] = "0b11100100";
        ram[54] = "0b01001111";
        ram[55] = "0b01101011";
        ram[56] = "0b00100010";
        ram[57] = "0b11000101";
        ram[58] = "0b10010011";
        ram[59] = "0b11000101";
        ram[60] = "0b00011100";
        ram[61] = "0b01101001";
        ram[62] = "0b01000100";
        ram[63] = "0b11101001";
        ram[64] = "0b10110001";
        ram[65] = "0b11000000";
        ram[66] = "0b00001000";
        ram[67] = "0b00110101";
        ram[68] = "0b00110110";
        ram[69] = "0b11110000";
        ram[70] = "0b11001011";
        ram[71] = "0b11001001";
        ram[72] = "0b00001010";
        ram[73] = "0b00111100";
        ram[74] = "0b00111010";
        ram[75] = "0b00000011";
        ram[76] = "0b10101110";
        ram[77] = "0b10101100";
        ram[78] = "0b00111001";
        ram[79] = "0b01101110";
        ram[80] = "0b00111100";
        ram[81] = "0b11101110";
        ram[82] = "0b10101100";
        ram[83] = "0b10011100";
        ram[84] = "0b11011101";
        ram[85] = "0b01000011";
        ram[86] = "0b01011101";
        ram[87] = "0b00111100";
        ram[88] = "0b11110000";
        ram[89] = "0b11000000";
        ram[90] = "0b10100001";
        ram[91] = "0b11101011";
        ram[92] = "0b00111001";
        ram[93] = "0b01101010";
        ram[94] = "0b00111001";
        ram[95] = "0b11110010";
        ram[96] = "0b10100011";
        ram[97] = "0b10111101";
        ram[98] = "0b11110110";
        ram[99] = "0b00110001";
        ram[100] = "0b01001011";
        ram[101] = "0b00010100";
        ram[102] = "0b11010010";
        ram[103] = "0b11000111";


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


SC_MODULE(L3_wlo_166_L2_WEIcQA) {


static const unsigned DataWidth = 8;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_166_L2_WEIcQA_ram* meminst;


SC_CTOR(L3_wlo_166_L2_WEIcQA) {
meminst = new L3_wlo_166_L2_WEIcQA_ram("L3_wlo_166_L2_WEIcQA_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_166_L2_WEIcQA() {
    delete meminst;
}


};//endmodule
#endif
