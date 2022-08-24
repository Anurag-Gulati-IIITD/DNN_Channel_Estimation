// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTSb6t_H__
#define __L3_wlo_L2_WEIGHTSb6t_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTSb6t_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTSb6t_ram) {
        ram[0] = "0b0001010010111111";
        ram[1] = "0b1001101011100001";
        ram[2] = "0b1001110111100011";
        ram[3] = "0b1001110000010110";
        ram[4] = "0b1001100101000011";
        ram[5] = "0b0001011111101010";
        ram[6] = "0b0001101101010110";
        ram[7] = "0b0001101111001001";
        ram[8] = "0b0001100100001000";
        ram[9] = "0b0001010000001111";
        ram[10] = "0b1000111111110010";
        ram[11] = "0b1001010110111111";
        ram[12] = "0b1001100100011000";
        ram[13] = "0b1001001011100010";
        ram[14] = "0b1000100101010111";
        ram[15] = "0b0001000100010000";
        ram[16] = "0b1000111000101001";
        ram[17] = "0b0001001010010000";
        ram[18] = "0b0001010110100100";
        ram[19] = "0b0001011010010011";
        ram[20] = "0b0001100100010100";
        ram[21] = "0b0001010011011010";
        ram[22] = "0b0001000100111000";
        ram[23] = "0b1001010000010100";
        ram[24] = "0b1001101010010011";
        ram[25] = "0b1001010001001011";
        ram[26] = "0b1001001111000100";
        ram[27] = "0b0001001110011010";
        ram[28] = "0b0001001010111010";
        ram[29] = "0b0001011010011001";
        ram[30] = "0b0001000111110101";
        ram[31] = "0b0001010110001001";
        ram[32] = "0b1001001111100001";
        ram[33] = "0b1000111101000010";
        ram[34] = "0b1000110110111100";
        ram[35] = "0b1000111011100010";
        ram[36] = "0b1001100001001000";
        ram[37] = "0b1001100101001010";
        ram[38] = "0b1001010110000001";
        ram[39] = "0b0001000011100100";
        ram[40] = "0b0001100010010100";
        ram[41] = "0b0001101010000011";
        ram[42] = "0b0001101101110110";
        ram[43] = "0b0001010001011100";
        ram[44] = "0b1001000000010000";
        ram[45] = "0b1001100110000101";
        ram[46] = "0b1001100111010110";
        ram[47] = "0b1001101111100011";
        ram[48] = "0b1001100101100010";
        ram[49] = "0b1000010110110100";
        ram[50] = "0b0001101011000000";
        ram[51] = "0b0001110010010001";
        ram[52] = "0b1001110100111000";
        ram[53] = "0b1001111011101101";
        ram[54] = "0b1001100011010000";
        ram[55] = "0b0001101101000001";
        ram[56] = "0b0001110001110000";
        ram[57] = "0b0001101101111100";
        ram[58] = "0b0001100111001011";
        ram[59] = "0b0001000100111010";
        ram[60] = "0b1001100100100010";
        ram[61] = "0b1001101010100111";
        ram[62] = "0b1001100010001000";
        ram[63] = "0b1001110000000011";
        ram[64] = "0b1000010011001001";
        ram[65] = "0b0001001010101011";
        ram[66] = "0b0001011000100101";
        ram[67] = "0b0001100100101110";
        ram[68] = "0b0001010011000001";
        ram[69] = "0b0000111100111110";
        ram[70] = "0b1000001110111100";
        ram[71] = "0b1000011101111001";
        ram[72] = "0b1001011100001000";
        ram[73] = "0b1001011001111101";
        ram[74] = "0b1001100110110011";
        ram[75] = "0b1001011001010110";
        ram[76] = "0b1001010111001001";
        ram[77] = "0b0000110001100100";
        ram[78] = "0b0001011100011001";
        ram[79] = "0b0001100101000101";
        ram[80] = "0b0001010111011101";
        ram[81] = "0b1000101001101100";
        ram[82] = "0b1001100000111000";
        ram[83] = "0b1000000111000101";
        ram[84] = "0b1001010000000111";
        ram[85] = "0b1000101110110011";
        ram[86] = "0b1001100100010110";
        ram[87] = "0b1000110100111010";
        ram[88] = "0b1001000111010001";
        ram[89] = "0b1000100101000111";
        ram[90] = "0b0001100110111011";
        ram[91] = "0b0001100001111010";
        ram[92] = "0b0001100011111011";
        ram[93] = "0b0001101011110011";
        ram[94] = "0b1000110011101110";
        ram[95] = "0b1001100110111001";
        ram[96] = "0b1001101000101010";
        ram[97] = "0b1001101100011010";
        ram[98] = "0b1001011111001011";
        ram[99] = "0b0001001100111110";
        ram[100] = "0b0001100000011111";
        ram[101] = "0b0001100101101110";
        ram[102] = "0b0001110110010011";
        ram[103] = "0b0001101101110011";


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


SC_MODULE(L3_wlo_L2_WEIGHTSb6t) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTSb6t_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTSb6t) {
meminst = new L3_wlo_L2_WEIGHTSb6t_ram("L3_wlo_L2_WEIGHTSb6t_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTSb6t() {
    delete meminst;
}


};//endmodule
#endif
