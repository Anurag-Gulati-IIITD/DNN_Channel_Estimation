// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTSbUr_H__
#define __L3_wlo_L2_WEIGHTSbUr_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTSbUr_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTSbUr_ram) {
        ram[0] = "0b0001110000011001";
        ram[1] = "0b0001100100100110";
        ram[2] = "0b0001111001011011";
        ram[3] = "0b1010000010110011";
        ram[4] = "0b1001101000100011";
        ram[5] = "0b1010010110101000";
        ram[6] = "0b1010000001110010";
        ram[7] = "0b1001111010000010";
        ram[8] = "0b0010001100111011";
        ram[9] = "0b0010001011111000";
        ram[10] = "0b0001101100111111";
        ram[11] = "0b1001111010000011";
        ram[12] = "0b0001010010111110";
        ram[13] = "0b1010010000000011";
        ram[14] = "0b1001001111111101";
        ram[15] = "0b1001011101110000";
        ram[16] = "0b1001110000101010";
        ram[17] = "0b1001100110010010";
        ram[18] = "0b1001111111001000";
        ram[19] = "0b0001011100011000";
        ram[20] = "0b0010000001110000";
        ram[21] = "0b0001110000100100";
        ram[22] = "0b1001100000110101";
        ram[23] = "0b1001110000011010";
        ram[24] = "0b0001111000010111";
        ram[25] = "0b1010000011001001";
        ram[26] = "0b0001001001011101";
        ram[27] = "0b1001110110000100";
        ram[28] = "0b0001001100011000";
        ram[29] = "0b0001100111111001";
        ram[30] = "0b0010001000111111";
        ram[31] = "0b0001110101000001";
        ram[32] = "0b0010001100111000";
        ram[33] = "0b1000110001001011";
        ram[34] = "0b1001111111000010";
        ram[35] = "0b1001110110101010";
        ram[36] = "0b0001100000011001";
        ram[37] = "0b0001100100100100";
        ram[38] = "0b1001110001000010";
        ram[39] = "0b1010001001000100";
        ram[40] = "0b1001111011010010";
        ram[41] = "0b0001110110001011";
        ram[42] = "0b0001110010000101";
        ram[43] = "0b0010010110001010";
        ram[44] = "0b0000110000011101";
        ram[45] = "0b0001000001101000";
        ram[46] = "0b1010000111000001";
        ram[47] = "0b1001000010101001";
        ram[48] = "0b0001101101111001";
        ram[49] = "0b1001001110110101";
        ram[50] = "0b1010010000100001";
        ram[51] = "0b1010001000101001";
        ram[52] = "0b1010001101111110";
        ram[53] = "0b0010000110000001";
        ram[54] = "0b0001000110111110";
        ram[55] = "0b1010010100011101";
        ram[56] = "0b1001111000011010";
        ram[57] = "0b0001100100001001";
        ram[58] = "0b0001111000100111";
        ram[59] = "0b0010000111010100";
        ram[60] = "0b0010001001110100";
        ram[61] = "0b0001100100010001";
        ram[62] = "0b1010000011110000";
        ram[63] = "0b0001111101111100";
        ram[64] = "0b1001011111100001";
        ram[65] = "0b0001100101000011";
        ram[66] = "0b1001100111110110";
        ram[67] = "0b1010000010001011";
        ram[68] = "0b1001110110111000";
        ram[69] = "0b0000110011000000";
        ram[70] = "0b0010010101100011";
        ram[71] = "0b0010001001101000";
        ram[72] = "0b0010001000100100";
        ram[73] = "0b0001010001101000";
        ram[74] = "0b1001101001001001";
        ram[75] = "0b1010000000100010";
        ram[76] = "0b0001100010101110";
        ram[77] = "0b1001010010101001";
        ram[78] = "0b0001011110011001";
        ram[79] = "0b1001110000100101";
        ram[80] = "0b0001110000110010";
        ram[81] = "0b0010000100100010";
        ram[82] = "0b0010010001000011";
        ram[83] = "0b1010000011110100";
        ram[84] = "0b1010000001011000";
        ram[85] = "0b1010001111101001";
        ram[86] = "0b0001111110100011";
        ram[87] = "0b1001101111011110";
        ram[88] = "0b0001010101101101";
        ram[89] = "0b0001100010000010";
        ram[90] = "0b1001110011111001";
        ram[91] = "0b0001111111100010";
        ram[92] = "0b0010000011010110";
        ram[93] = "0b1001111100001100";
        ram[94] = "0b1001110011110011";
        ram[95] = "0b1010000001001000";
        ram[96] = "0b1010001000111011";
        ram[97] = "0b1001110000000111";
        ram[98] = "0b0010000111110001";
        ram[99] = "0b0001111101010100";
        ram[100] = "0b0010000100100000";
        ram[101] = "0b0001110101101001";
        ram[102] = "0b1010001110110010";
        ram[103] = "0b1010000011101101";


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


SC_MODULE(L3_wlo_L2_WEIGHTSbUr) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTSbUr_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTSbUr) {
meminst = new L3_wlo_L2_WEIGHTSbUr_ram("L3_wlo_L2_WEIGHTSbUr_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTSbUr() {
    delete meminst;
}


};//endmodule
#endif
