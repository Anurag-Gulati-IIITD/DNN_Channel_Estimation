// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTSb9t_H__
#define __L3_wlo_L2_WEIGHTSb9t_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTSb9t_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTSb9t_ram) {
        ram[0] = "0b0011000101100001";
        ram[1] = "0b0010111101011111";
        ram[2] = "0b1001100111000011";
        ram[3] = "0b1010101101001000";
        ram[4] = "0b1010101111110100";
        ram[5] = "0b1010111001010101";
        ram[6] = "0b1010011010100111";
        ram[7] = "0b0010100010110111";
        ram[8] = "0b0010110111100001";
        ram[9] = "0b0010111010011100";
        ram[10] = "0b0010101011011100";
        ram[11] = "0b0010100100010110";
        ram[12] = "0b1010011011101011";
        ram[13] = "0b1010110001100001";
        ram[14] = "0b1010101001110011";
        ram[15] = "0b1010100100100001";
        ram[16] = "0b0001110101110101";
        ram[17] = "0b0010110101100010";
        ram[18] = "0b0010110010111011";
        ram[19] = "0b0010110011011111";
        ram[20] = "0b0010010110110011";
        ram[21] = "0b1010101110001101";
        ram[22] = "0b1010100000110011";
        ram[23] = "0b1010111010010001";
        ram[24] = "0b1010110101000110";
        ram[25] = "0b1010011010101010";
        ram[26] = "0b0010110100111011";
        ram[27] = "0b0010110010111000";
        ram[28] = "0b0010100011100010";
        ram[29] = "0b1010011001000111";
        ram[30] = "0b1010110101010101";
        ram[31] = "0b1010110010000111";
        ram[32] = "0b1010101001111001";
        ram[33] = "0b0010100100011000";
        ram[34] = "0b0010110111111010";
        ram[35] = "0b0010111010011110";
        ram[36] = "0b0010110110011000";
        ram[37] = "0b0010100101010111";
        ram[38] = "0b1010100011101110";
        ram[39] = "0b1010011010001111";
        ram[40] = "0b1010110000010111";
        ram[41] = "0b1010110010110101";
        ram[42] = "0b1010110000000110";
        ram[43] = "0b1001110010101010";
        ram[44] = "0b0010011100010111";
        ram[45] = "0b0010110011000011";
        ram[46] = "0b0010110111100010";
        ram[47] = "0b0010110010110001";
        ram[48] = "0b0001111111111101";
        ram[49] = "0b1010110111100101";
        ram[50] = "0b1010111110010010";
        ram[51] = "0b1010111111111000";
        ram[52] = "0b0010001010011001";
        ram[53] = "0b1010110101101011";
        ram[54] = "0b1011000011110011";
        ram[55] = "0b1010110010100111";
        ram[56] = "0b1010110100001001";
        ram[57] = "0b1010001101011011";
        ram[58] = "0b0010110011111101";
        ram[59] = "0b0010110011111010";
        ram[60] = "0b0010101000110110";
        ram[61] = "0b0010010111110001";
        ram[62] = "0b1010010010010110";
        ram[63] = "0b1010111010011101";
        ram[64] = "0b1010101100000101";
        ram[65] = "0b1001100110100101";
        ram[66] = "0b0010000101010100";
        ram[67] = "0b0010110001100100";
        ram[68] = "0b0010101000010100";
        ram[69] = "0b0010111010011001";
        ram[70] = "0b0010110001010110";
        ram[71] = "0b1010000101000101";
        ram[72] = "0b1010110000000111";
        ram[73] = "0b1010010110001100";
        ram[74] = "0b1010101010010110";
        ram[75] = "0b0010000011110100";
        ram[76] = "0b0010000101101111";
        ram[77] = "0b0010111100011010";
        ram[78] = "0b1010000100101001";
        ram[79] = "0b1010101000010011";
        ram[80] = "0b1010111000000111";
        ram[81] = "0b1010111101110010";
        ram[82] = "0b1010100000101011";
        ram[83] = "0b1010001110111011";
        ram[84] = "0b0010110001001010";
        ram[85] = "0b0010111010110111";
        ram[86] = "0b0010110110010110";
        ram[87] = "0b0010100001111010";
        ram[88] = "0b1010101011100100";
        ram[89] = "0b1010111101010100";
        ram[90] = "0b1010110000101000";
        ram[91] = "0b1010100111001100";
        ram[92] = "0b1010100001101111";
        ram[93] = "0b1001111100001100";
        ram[94] = "0b0010100000011001";
        ram[95] = "0b0010110111001101";
        ram[96] = "0b0011000000001011";
        ram[97] = "0b0010101000111010";
        ram[98] = "0b1010101101000001";
        ram[99] = "0b1010110111010001";
        ram[100] = "0b1010111010001001";
        ram[101] = "0b1010111101100001";
        ram[102] = "0b0001101010100001";
        ram[103] = "0b0011000000110100";


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


SC_MODULE(L3_wlo_L2_WEIGHTSb9t) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTSb9t_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTSb9t) {
meminst = new L3_wlo_L2_WEIGHTSb9t_ram("L3_wlo_L2_WEIGHTSb9t_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTSb9t() {
    delete meminst;
}


};//endmodule
#endif
