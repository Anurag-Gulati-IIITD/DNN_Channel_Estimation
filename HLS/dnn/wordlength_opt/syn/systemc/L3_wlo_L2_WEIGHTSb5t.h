// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTSb5t_H__
#define __L3_wlo_L2_WEIGHTSb5t_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTSb5t_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTSb5t_ram) {
        ram[0] = "0b0010010100001010";
        ram[1] = "0b0011000101101000";
        ram[2] = "0b0011000111110001";
        ram[3] = "0b0010101110110000";
        ram[4] = "0b1010110011101100";
        ram[5] = "0b1011000010000111";
        ram[6] = "0b1010110010100101";
        ram[7] = "0b0010011011010101";
        ram[8] = "0b0010110100000101";
        ram[9] = "0b0010110001110010";
        ram[10] = "0b1001111110101101";
        ram[11] = "0b1010110011110111";
        ram[12] = "0b1010110000000110";
        ram[13] = "0b1010010100010110";
        ram[14] = "0b0010110100011111";
        ram[15] = "0b0010111011111100";
        ram[16] = "0b0010101110011100";
        ram[17] = "0b1010100010010011";
        ram[18] = "0b1010111100111111";
        ram[19] = "0b1010111011010010";
        ram[20] = "0b1010101100000000";
        ram[21] = "0b0010101010100000";
        ram[22] = "0b0010111111011111";
        ram[23] = "0b0010111010110011";
        ram[24] = "0b0010100010111000";
        ram[25] = "0b1010110010010010";
        ram[26] = "0b1010111010011011";
        ram[27] = "0b1010000010000011";
        ram[28] = "0b0010110010100000";
        ram[29] = "0b0010110110011011";
        ram[30] = "0b0010110011011001";
        ram[31] = "0b0001110010000111";
        ram[32] = "0b1010100111111100";
        ram[33] = "0b1010101010010101";
        ram[34] = "0b1010100001111010";
        ram[35] = "0b1010010011001001";
        ram[36] = "0b1010010011001111";
        ram[37] = "0b1001010001100000";
        ram[38] = "0b0010011010001000";
        ram[39] = "0b0010110000010011";
        ram[40] = "0b0010110000110000";
        ram[41] = "0b0010011100100000";
        ram[42] = "0b1010100100101110";
        ram[43] = "0b1010110100010001";
        ram[44] = "0b1010110110001000";
        ram[45] = "0b1010011010010100";
        ram[46] = "0b0010010101001110";
        ram[47] = "0b0010101100010100";
        ram[48] = "0b0010101110001111";
        ram[49] = "0b0010100101000111";
        ram[50] = "0b0010010100101001";
        ram[51] = "0b0001011011111010";
        ram[52] = "0b0011000111111010";
        ram[53] = "0b0010111000001100";
        ram[54] = "0b1010101001101110";
        ram[55] = "0b1011000010111011";
        ram[56] = "0b1011000001001000";
        ram[57] = "0b1010010100011000";
        ram[58] = "0b0010110011000111";
        ram[59] = "0b0010111010001111";
        ram[60] = "0b0010100010010001";
        ram[61] = "0b1010101101111000";
        ram[62] = "0b1010110111011100";
        ram[63] = "0b1010100000111111";
        ram[64] = "0b0010100111110010";
        ram[65] = "0b0010111000010001";
        ram[66] = "0b0010110001110010";
        ram[67] = "0b1010011100111100";
        ram[68] = "0b1010111001000101";
        ram[69] = "0b1010111011011110";
        ram[70] = "0b1010100110101101";
        ram[71] = "0b0010100111011001";
        ram[72] = "0b0010111011011100";
        ram[73] = "0b0010111101111010";
        ram[74] = "0b0010100111100001";
        ram[75] = "0b1010101111001100";
        ram[76] = "0b1011000001101100";
        ram[77] = "0b1010111110110110";
        ram[78] = "0b0010110011110010";
        ram[79] = "0b0011000000011001";
        ram[80] = "0b0010110100100010";
        ram[81] = "0b0000100001111101";
        ram[82] = "0b1010101110011000";
        ram[83] = "0b1010110100100001";
        ram[84] = "0b1010101010101011";
        ram[85] = "0b1001110110000100";
        ram[86] = "0b0010000001011010";
        ram[87] = "0b0010011111001000";
        ram[88] = "0b0010011110100100";
        ram[89] = "0b0010101011100001";
        ram[90] = "0b0010100011100011";
        ram[91] = "0b0010001011001010";
        ram[92] = "0b1010011011010010";
        ram[93] = "0b1010110100101101";
        ram[94] = "0b1010110101011000";
        ram[95] = "0b1010001111110100";
        ram[96] = "0b0010100110011100";
        ram[97] = "0b0010110100100010";
        ram[98] = "0b0010110010110100";
        ram[99] = "0b0010011101010110";
        ram[100] = "0b1001110100110010";
        ram[101] = "0b1010011110100011";
        ram[102] = "0b1010101010001100";
        ram[103] = "0b1010110110010100";


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


SC_MODULE(L3_wlo_L2_WEIGHTSb5t) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTSb5t_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTSb5t) {
meminst = new L3_wlo_L2_WEIGHTSb5t_ram("L3_wlo_L2_WEIGHTSb5t_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTSb5t() {
    delete meminst;
}


};//endmodule
#endif
