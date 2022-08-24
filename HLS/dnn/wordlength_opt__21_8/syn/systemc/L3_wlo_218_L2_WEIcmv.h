// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIcmv_H__
#define __L3_wlo_218_L2_WEIcmv_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIcmv_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIcmv_ram) {
        ram[0] = "0b10000111";
        ram[1] = "0b10111001";
        ram[2] = "0b00011101";
        ram[3] = "0b00101110";
        ram[4] = "0b01000101";
        ram[5] = "0b00100100";
        ram[6] = "0b11111110";
        ram[7] = "0b11111100";
        ram[8] = "0b11110101";
        ram[9] = "0b00000001";
        ram[10] = "0b11111110";
        ram[11] = "0b11100110";
        ram[12] = "0b00010100";
        ram[13] = "0b11111100";
        ram[14] = "0b00100000";
        ram[15] = "0b00001111";
        ram[16] = "0b00001010";
        ram[17] = "0b11110001";
        ram[18] = "0b00000011";
        ram[19] = "0b11101111";
        ram[20] = "0b11001010";
        ram[21] = "0b11011001";
        ram[22] = "0b11111101";
        ram[23] = "0b00100000";
        ram[24] = "0b00010101";
        ram[25] = "0b11111111";
        ram[26] = "0b00001111";
        ram[27] = "0b00010000";
        ram[28] = "0b11101100";
        ram[29] = "0b10111111";
        ram[30] = "0b11100101";
        ram[31] = "0b11111111";
        ram[32] = "0b11110011";
        ram[33] = "0b00010101";
        ram[34] = "0b11110100";
        ram[35] = "0b00010010";
        ram[36] = "0b11110111";
        ram[37] = "0b00001011";
        ram[38] = "0b11110101";
        ram[39] = "0b11111110";
        ram[40] = "0b00110110";
        ram[41] = "0b00001100";
        ram[42] = "0b00011111";
        ram[43] = "0b11100110";
        ram[44] = "0b11010001";
        ram[45] = "0b11100100";
        ram[46] = "0b11111010";
        ram[47] = "0b11110011";
        ram[48] = "0b11111111";
        ram[49] = "0b00000000";
        ram[50] = "0b11111000";
        ram[51] = "0b00000100";
        ram[52] = "0b00101000";
        ram[53] = "0b01001010";
        ram[54] = "0b01110010";
        ram[55] = "0b00101110";
        ram[56] = "0b11011011";
        ram[57] = "0b11110100";
        ram[58] = "0b11010110";
        ram[59] = "0b11111100";
        ram[60] = "0b00001110";
        ram[61] = "0b00000011";
        ram[62] = "0b00000100";
        ram[63] = "0b11101011";
        ram[64] = "0b00010000";
        ram[65] = "0b00011000";
        ram[66] = "0b01010111";
        ram[67] = "0b11111110";
        ram[68] = "0b11011000";
        ram[69] = "0b11101101";
        ram[70] = "0b11001000";
        ram[71] = "0b00001001";
        ram[72] = "0b00001010";
        ram[73] = "0b00010000";
        ram[74] = "0b00011000";
        ram[75] = "0b00010010";
        ram[76] = "0b11110010";
        ram[77] = "0b11101110";
        ram[78] = "0b11110001";
        ram[79] = "0b11111111";
        ram[80] = "0b11011011";
        ram[81] = "0b11101101";
        ram[82] = "0b00000011";
        ram[83] = "0b00100111";
        ram[84] = "0b00000100";
        ram[85] = "0b00001011";
        ram[86] = "0b00000001";
        ram[87] = "0b00011100";
        ram[88] = "0b11011010";
        ram[89] = "0b00000100";
        ram[90] = "0b00001111";
        ram[91] = "0b11110101";
        ram[92] = "0b00100100";
        ram[93] = "0b00010010";
        ram[94] = "0b11010110";
        ram[95] = "0b11101001";
        ram[96] = "0b11011001";
        ram[97] = "0b00010101";
        ram[98] = "0b00000100";
        ram[99] = "0b11110111";
        ram[100] = "0b00001011";
        ram[101] = "0b00011110";
        ram[102] = "0b11011100";
        ram[103] = "0b11100110";


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


SC_MODULE(L3_wlo_218_L2_WEIcmv) {


static const unsigned DataWidth = 8;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIcmv_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIcmv) {
meminst = new L3_wlo_218_L2_WEIcmv_ram("L3_wlo_218_L2_WEIcmv_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIcmv() {
    delete meminst;
}


};//endmodule
#endif
