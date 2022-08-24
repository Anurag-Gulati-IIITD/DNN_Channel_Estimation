// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTScsw_H__
#define __L3_wlo_L2_WEIGHTScsw_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTScsw_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTScsw_ram) {
        ram[0] = "0b1010100010100101";
        ram[1] = "0b1010111000110101";
        ram[2] = "0b1010110001010100";
        ram[3] = "0b0010100000111110";
        ram[4] = "0b0010111001011101";
        ram[5] = "0b0010110101101011";
        ram[6] = "0b0010000010110001";
        ram[7] = "0b1010110100011100";
        ram[8] = "0b1010111001111011";
        ram[9] = "0b1010010101011101";
        ram[10] = "0b0010101110110111";
        ram[11] = "0b0010110111101001";
        ram[12] = "0b0010100110111100";
        ram[13] = "0b1010100111100111";
        ram[14] = "0b1010110001001110";
        ram[15] = "0b1010100100110010";
        ram[16] = "0b0010100100111010";
        ram[17] = "0b0010101100001101";
        ram[18] = "0b0010001011011100";
        ram[19] = "0b1010011010010010";
        ram[20] = "0b1010110011111011";
        ram[21] = "0b1010010010101000";
        ram[22] = "0b0010101100011100";
        ram[23] = "0b0010110100100101";
        ram[24] = "0b0010100011000101";
        ram[25] = "0b1010101010001101";
        ram[26] = "0b1010110010010000";
        ram[27] = "0b1001100001000111";
        ram[28] = "0b0010110100010010";
        ram[29] = "0b0010110100011101";
        ram[30] = "0b0010100001101001";
        ram[31] = "0b1010100100111000";
        ram[32] = "0b1010111000101101";
        ram[33] = "0b1010110011000111";
        ram[34] = "0b0001010100001110";
        ram[35] = "0b0010101101111110";
        ram[36] = "0b0010111000000100";
        ram[37] = "0b0010101010111110";
        ram[38] = "0b1010101000100110";
        ram[39] = "0b1010111000011110";
        ram[40] = "0b1010110101010001";
        ram[41] = "0b1010000011110010";
        ram[42] = "0b0010110100111100";
        ram[43] = "0b0010111001010000";
        ram[44] = "0b0010100010101001";
        ram[45] = "0b1010101010101010";
        ram[46] = "0b1010110110100110";
        ram[47] = "0b1010101000110101";
        ram[48] = "0b0010010011101011";
        ram[49] = "0b0010101011101000";
        ram[50] = "0b0010100100000000";
        ram[51] = "0b1001111100001101";
        ram[52] = "0b1010111000010011";
        ram[53] = "0b1010011011001011";
        ram[54] = "0b0010110011110010";
        ram[55] = "0b0010111010111000";
        ram[56] = "0b0010100001000101";
        ram[57] = "0b1010101101011110";
        ram[58] = "0b1010111011010000";
        ram[59] = "0b1010101101000101";
        ram[60] = "0b0010011100101101";
        ram[61] = "0b0010111010011101";
        ram[62] = "0b0010110001000001";
        ram[63] = "0b1010010110011011";
        ram[64] = "0b1010110011100110";
        ram[65] = "0b1010101111100010";
        ram[66] = "0b0010000000100100";
        ram[67] = "0b0010101010100111";
        ram[68] = "0b0010101011001111";
        ram[69] = "0b1010001110111001";
        ram[70] = "0b1010101010000100";
        ram[71] = "0b1010101011010100";
        ram[72] = "0b0010000101000011";
        ram[73] = "0b0010101110001011";
        ram[74] = "0b0010101101001100";
        ram[75] = "0b0001101011000111";
        ram[76] = "0b1010110100011100";
        ram[77] = "0b1010110100110100";
        ram[78] = "0b0010101100110110";
        ram[79] = "0b0010111011100001";
        ram[80] = "0b0010101110011001";
        ram[81] = "0b1010010001110110";
        ram[82] = "0b1010110100110101";
        ram[83] = "0b1010111000111101";
        ram[84] = "0b1010100001010101";
        ram[85] = "0b0010110000111100";
        ram[86] = "0b0010110111011100";
        ram[87] = "0b0010101110010111";
        ram[88] = "0b1010001110111100";
        ram[89] = "0b1010101111101100";
        ram[90] = "0b1010110111101010";
        ram[91] = "0b1010010100111101";
        ram[92] = "0b0010101100100110";
        ram[93] = "0b0010111010101101";
        ram[94] = "0b0010101100111001";
        ram[95] = "0b1010001011110110";
        ram[96] = "0b1010110111010000";
        ram[97] = "0b1010110000100011";
        ram[98] = "0b1010000010101011";
        ram[99] = "0b0010101000101010";
        ram[100] = "0b0010110010110011";
        ram[101] = "0b0010010100001010";
        ram[102] = "0b1010100110111101";
        ram[103] = "0b1010101100011100";


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


SC_MODULE(L3_wlo_L2_WEIGHTScsw) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTScsw_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTScsw) {
meminst = new L3_wlo_L2_WEIGHTScsw_ram("L3_wlo_L2_WEIGHTScsw_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTScsw() {
    delete meminst;
}


};//endmodule
#endif
