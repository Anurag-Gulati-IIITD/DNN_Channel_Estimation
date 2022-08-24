// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTSbYs_H__
#define __L3_wlo_L2_WEIGHTSbYs_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTSbYs_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTSbYs_ram) {
        ram[0] = "0b1010001110001001";
        ram[1] = "0b1010000001101100";
        ram[2] = "0b0001101101110111";
        ram[3] = "0b0001110111011110";
        ram[4] = "0b0010000001010011";
        ram[5] = "0b0001110010000010";
        ram[6] = "0b1000101100101101";
        ram[7] = "0b1000111110001110";
        ram[8] = "0b1001010100001000";
        ram[9] = "0b0000100101100000";
        ram[10] = "0b1000100101100000";
        ram[11] = "0b1001101001100110";
        ram[12] = "0b0001100100111000";
        ram[13] = "0b1000111111001000";
        ram[14] = "0b0001110000001111";
        ram[15] = "0b0001011110000101";
        ram[16] = "0b0001010101011000";
        ram[17] = "0b1001011100100100";
        ram[18] = "0b0000111101111001";
        ram[19] = "0b1001100000011100";
        ram[20] = "0b1001111010101110";
        ram[21] = "0b1001110011000110";
        ram[22] = "0b1000110001110101";
        ram[23] = "0b0001110000000111";
        ram[24] = "0b0001100101110001";
        ram[25] = "0b1000011011100010";
        ram[26] = "0b0001011110110010";
        ram[27] = "0b0001100000101011";
        ram[28] = "0b1001100011100101";
        ram[29] = "0b1010000000001000";
        ram[30] = "0b1001101010101001";
        ram[31] = "0b1000001100010101";
        ram[32] = "0b1001011000111110";
        ram[33] = "0b0001100101111100";
        ram[34] = "0b1001010110000000";
        ram[35] = "0b0001100010000110";
        ram[36] = "0b1001010001100001";
        ram[37] = "0b0001010111000000";
        ram[38] = "0b1001010100000000";
        ram[39] = "0b1000100110000001";
        ram[40] = "0b0001111011000010";
        ram[41] = "0b0001011000101011";
        ram[42] = "0b0001101111100011";
        ram[43] = "0b1001101001000000";
        ram[44] = "0b1001110111010101";
        ram[45] = "0b1001101011101100";
        ram[46] = "0b1001000110110110";
        ram[47] = "0b1001011001010000";
        ram[48] = "0b1000011010011110";
        ram[49] = "0b0000000110100011";
        ram[50] = "0b1001001100000001";
        ram[51] = "0b0001000001011100";
        ram[52] = "0b0001110100011011";
        ram[53] = "0b0010000010101100";
        ram[54] = "0b0010001100101011";
        ram[55] = "0b0001110111011010";
        ram[56] = "0b1001110010000010";
        ram[57] = "0b1001010111111000";
        ram[58] = "0b1001110100110101";
        ram[59] = "0b1000111010100111";
        ram[60] = "0b0001011101110010";
        ram[61] = "0b0000111111000000";
        ram[62] = "0b0001000000111000";
        ram[63] = "0b1001100101000000";
        ram[64] = "0b0001100000001101";
        ram[65] = "0b0001101000000001";
        ram[66] = "0b0010000101110010";
        ram[67] = "0b1000101011000000";
        ram[68] = "0b1001110011101000";
        ram[69] = "0b1001100010101001";
        ram[70] = "0b1001111011111000";
        ram[71] = "0b0001010011011010";
        ram[72] = "0b0001010101111000";
        ram[73] = "0b0001100000100010";
        ram[74] = "0b0001101000110010";
        ram[75] = "0b0001100010010101";
        ram[76] = "0b1001011011010010";
        ram[77] = "0b1001100001110110";
        ram[78] = "0b1001011101110000";
        ram[79] = "0b1000001111101111";
        ram[80] = "0b1001110010001100";
        ram[81] = "0b1001100010010101";
        ram[82] = "0b0000111010110011";
        ram[83] = "0b0001110011101001";
        ram[84] = "0b0001000000110100";
        ram[85] = "0b0001010111011001";
        ram[86] = "0b0000100101110001";
        ram[87] = "0b0001101100000101";
        ram[88] = "0b1001110010101101";
        ram[89] = "0b0001000000110110";
        ram[90] = "0b0001011111111110";
        ram[91] = "0b1001010101000010";
        ram[92] = "0b0001110010010010";
        ram[93] = "0b0001100010001001";
        ram[94] = "0b1001110100110010";
        ram[95] = "0b1001100110111001";
        ram[96] = "0b1001110011000011";
        ram[97] = "0b0001100101110001";
        ram[98] = "0b0001000000001110";
        ram[99] = "0b1001010001010110";
        ram[100] = "0b0001010111101111";
        ram[101] = "0b0001101110111101";
        ram[102] = "0b1001110001101010";
        ram[103] = "0b1001101001000000";


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


SC_MODULE(L3_wlo_L2_WEIGHTSbYs) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTSbYs_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTSbYs) {
meminst = new L3_wlo_L2_WEIGHTSbYs_ram("L3_wlo_L2_WEIGHTSbYs_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTSbYs() {
    delete meminst;
}


};//endmodule
#endif
