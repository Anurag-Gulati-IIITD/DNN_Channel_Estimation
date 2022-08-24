// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTSbVr_H__
#define __L3_wlo_L2_WEIGHTSbVr_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTSbVr_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTSbVr_ram) {
        ram[0] = "0b1001110001111001";
        ram[1] = "0b1001101111110101";
        ram[2] = "0b1001101100011101";
        ram[3] = "0b1001110010011001";
        ram[4] = "0b0001100011000010";
        ram[5] = "0b0001110000001110";
        ram[6] = "0b0001110100010011";
        ram[7] = "0b0001110101110111";
        ram[8] = "0b1001001011101000";
        ram[9] = "0b1001101101011011";
        ram[10] = "0b1001101110000111";
        ram[11] = "0b1001110000101010";
        ram[12] = "0b1001101010000100";
        ram[13] = "0b0001010001011111";
        ram[14] = "0b1000100100001100";
        ram[15] = "0b0000110000101001";
        ram[16] = "0b0001110101000011";
        ram[17] = "0b0001101000101001";
        ram[18] = "0b0001100011111011";
        ram[19] = "0b1000010010010110";
        ram[20] = "0b1001100110101111";
        ram[21] = "0b1001011110101110";
        ram[22] = "0b1001100101100000";
        ram[23] = "0b1001011011010111";
        ram[24] = "0b0001001010100011";
        ram[25] = "0b0001011011100100";
        ram[26] = "0b0001111000101010";
        ram[27] = "0b0001100100011001";
        ram[28] = "0b1001011110101111";
        ram[29] = "0b1001111101101011";
        ram[30] = "0b1001111110010110";
        ram[31] = "0b1000110100001100";
        ram[32] = "0b0001110011010110";
        ram[33] = "0b0010000000000001";
        ram[34] = "0b0001100110000011";
        ram[35] = "0b1001111101111110";
        ram[36] = "0b1001111110001101";
        ram[37] = "0b1001110111111000";
        ram[38] = "0b0001110010101011";
        ram[39] = "0b0010000101101010";
        ram[40] = "0b0010000000011111";
        ram[41] = "0b0001100000100101";
        ram[42] = "0b1001111001101001";
        ram[43] = "0b1001111001111000";
        ram[44] = "0b1001011010110110";
        ram[45] = "0b0001101001001101";
        ram[46] = "0b0001100010110010";
        ram[47] = "0b1001011001101010";
        ram[48] = "0b1001101111010101";
        ram[49] = "0b1001100011001101";
        ram[50] = "0b0001110100000101";
        ram[51] = "0b0010000000010011";
        ram[52] = "0b1001100000000101";
        ram[53] = "0b0001010011001111";
        ram[54] = "0b0001101001101000";
        ram[55] = "0b0001100110111101";
        ram[56] = "0b0001110100110100";
        ram[57] = "0b0001110111101110";
        ram[58] = "0b1001010011110100";
        ram[59] = "0b1001101111111011";
        ram[60] = "0b1001110011010111";
        ram[61] = "0b1001110111010101";
        ram[62] = "0b1000001000011001";
        ram[63] = "0b0001101011110111";
        ram[64] = "0b0001100011010011";
        ram[65] = "0b0001100000101011";
        ram[66] = "0b0001110100100101";
        ram[67] = "0b0001011001011001";
        ram[68] = "0b0001010101001001";
        ram[69] = "0b0000101000111010";
        ram[70] = "0b1001110100111101";
        ram[71] = "0b1001100111111100";
        ram[72] = "0b1001010110011111";
        ram[73] = "0b1001000011111011";
        ram[74] = "0b0001100101100100";
        ram[75] = "0b0001001101110100";
        ram[76] = "0b0001110000111100";
        ram[77] = "0b0001110000010100";
        ram[78] = "0b1000111010100111";
        ram[79] = "0b1001111111100100";
        ram[80] = "0b1001111101110111";
        ram[81] = "0b1001011011100101";
        ram[82] = "0b0001100111011000";
        ram[83] = "0b0010000001011000";
        ram[84] = "0b0001111100010111";
        ram[85] = "0b1001110001111010";
        ram[86] = "0b1001110100011111";
        ram[87] = "0b1001111110010001";
        ram[88] = "0b0001001010000011";
        ram[89] = "0b0010000010100001";
        ram[90] = "0b0010000010111011";
        ram[91] = "0b0001110010100011";
        ram[92] = "0b1001110110100111";
        ram[93] = "0b1010000101101100";
        ram[94] = "0b1001111000000110";
        ram[95] = "0b1000110101101100";
        ram[96] = "0b0001110000111010";
        ram[97] = "0b0001100001010011";
        ram[98] = "0b1001010111011101";
        ram[99] = "0b1001100111000000";
        ram[100] = "0b0001100000100011";
        ram[101] = "0b0001110110111111";
        ram[102] = "0b0001110111010101";
        ram[103] = "0b0000110101110001";


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


SC_MODULE(L3_wlo_L2_WEIGHTSbVr) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTSbVr_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTSbVr) {
meminst = new L3_wlo_L2_WEIGHTSbVr_ram("L3_wlo_L2_WEIGHTSbVr_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTSbVr() {
    delete meminst;
}


};//endmodule
#endif
