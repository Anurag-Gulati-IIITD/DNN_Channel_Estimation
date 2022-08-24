// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTSb7t_H__
#define __L3_wlo_L2_WEIGHTSb7t_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTSb7t_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 16;
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


   SC_CTOR(L3_wlo_L2_WEIGHTSb7t_ram) {
        ram[0] = "0b0010110010110001";
        ram[1] = "0b0010101010001101";
        ram[2] = "0b1010010011101011";
        ram[3] = "0b1010110001100000";
        ram[4] = "0b1010110011111011";
        ram[5] = "0b1001101100001100";
        ram[6] = "0b0010011010101111";
        ram[7] = "0b0010100100011111";
        ram[8] = "0b1001110010110101";
        ram[9] = "0b1010100110100000";
        ram[10] = "0b1010100001000010";
        ram[11] = "0b0010010101000111";
        ram[12] = "0b0010110001001000";
        ram[13] = "0b0010100100001011";
        ram[14] = "0b1010010110111100";
        ram[15] = "0b1010110001110000";
        ram[16] = "0b1010101110001101";
        ram[17] = "0b1010010101100100";
        ram[18] = "0b0010010100000100";
        ram[19] = "0b0010100000100011";
        ram[20] = "0b1000110100011101";
        ram[21] = "0b1010010100110010";
        ram[22] = "0b1010000110111111";
        ram[23] = "0b0010010111100111";
        ram[24] = "0b0010100000010001";
        ram[25] = "0b0001110011011001";
        ram[26] = "0b1010110000011100";
        ram[27] = "0b1010100101000111";
        ram[28] = "0b0001111101111000";
        ram[29] = "0b0010100001001011";
        ram[30] = "0b0010100100110101";
        ram[31] = "0b0001001101010101";
        ram[32] = "0b1001110101100111";
        ram[33] = "0b0010000100001111";
        ram[34] = "0b0010011000000101";
        ram[35] = "0b0000111100000111";
        ram[36] = "0b1010011110100101";
        ram[37] = "0b1010101010111100";
        ram[38] = "0b1010100010011100";
        ram[39] = "0b0010000100111110";
        ram[40] = "0b0010101001001101";
        ram[41] = "0b0010101001100111";
        ram[42] = "0b0001010000001100";
        ram[43] = "0b1010011011011100";
        ram[44] = "0b1010001001010010";
        ram[45] = "0b0001110111001111";
        ram[46] = "0b0010001111000110";
        ram[47] = "0b1010001111111110";
        ram[48] = "0b1010011010101011";
        ram[49] = "0b1010100011000000";
        ram[50] = "0b1001100100110010";
        ram[51] = "0b0010100000000101";
        ram[52] = "0b0010000111011100";
        ram[53] = "0b1010110011001000";
        ram[54] = "0b1010110110001000";
        ram[55] = "0b1010011111110000";
        ram[56] = "0b0010100000001111";
        ram[57] = "0b0010110000111001";
        ram[58] = "0b0010100100011111";
        ram[59] = "0b1010011010111001";
        ram[60] = "0b1010100100110101";
        ram[61] = "0b1001111011100101";
        ram[62] = "0b0010100100010001";
        ram[63] = "0b0010101011000111";
        ram[64] = "0b0001110111111011";
        ram[65] = "0b1010101101101000";
        ram[66] = "0b1010110100000110";
        ram[67] = "0b1010011111110111";
        ram[68] = "0b0010100000001100";
        ram[69] = "0b0010110000101001";
        ram[70] = "0b0010100011001011";
        ram[71] = "0b1010001000110000";
        ram[72] = "0b1010010010101110";
        ram[73] = "0b1010001111011100";
        ram[74] = "0b0010000111000110";
        ram[75] = "0b0010010001000110";
        ram[76] = "0b1010010010011111";
        ram[77] = "0b1010101100100100";
        ram[78] = "0b1001111011100011";
        ram[79] = "0b0010100000110011";
        ram[80] = "0b0010101010001001";
        ram[81] = "0b0010011111001000";
        ram[82] = "0b1010001101010111";
        ram[83] = "0b1010000110100000";
        ram[84] = "0b1010001000000101";
        ram[85] = "0b0001010011111001";
        ram[86] = "0b1010000110101110";
        ram[87] = "0b1010011101110110";
        ram[88] = "0b1010011101001110";
        ram[89] = "0b0001110100011101";
        ram[90] = "0b0010100000011110";
        ram[91] = "0b0010101110000001";
        ram[92] = "0b0010011001010010";
        ram[93] = "0b1010011010100110";
        ram[94] = "0b1010100000111110";
        ram[95] = "0b1010010111000010";
        ram[96] = "0b0010001000111011";
        ram[97] = "0b0001110110000110";
        ram[98] = "0b0001101000110001";
        ram[99] = "0b1010010110111010";
        ram[100] = "0b1010001110000101";
        ram[101] = "0b0010011111111100";
        ram[102] = "0b0010100010110001";
        ram[103] = "0b0010101000010100";


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


SC_MODULE(L3_wlo_L2_WEIGHTSb7t) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTSb7t_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTSb7t) {
meminst = new L3_wlo_L2_WEIGHTSb7t_ram("L3_wlo_L2_WEIGHTSb7t_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTSb7t() {
    delete meminst;
}


};//endmodule
#endif
