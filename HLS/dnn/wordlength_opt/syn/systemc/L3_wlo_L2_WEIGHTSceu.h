// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTSceu_H__
#define __L3_wlo_L2_WEIGHTSceu_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTSceu_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTSceu_ram) {
        ram[0] = "0b0010000101101001";
        ram[1] = "0b0001011101000010";
        ram[2] = "0b1001111111100010";
        ram[3] = "0b0001010111000011";
        ram[4] = "0b0010001011111101";
        ram[5] = "0b0001101011001111";
        ram[6] = "0b0001100101100010";
        ram[7] = "0b1010000000110100";
        ram[8] = "0b1001110011110011";
        ram[9] = "0b1001011101100011";
        ram[10] = "0b0010010000000100";
        ram[11] = "0b0010010000101100";
        ram[12] = "0b0010001101010011";
        ram[13] = "0b0001110000100100";
        ram[14] = "0b1001100110001010";
        ram[15] = "0b1010000101110100";
        ram[16] = "0b1001110110110110";
        ram[17] = "0b0001110000110011";
        ram[18] = "0b0001110110001011";
        ram[19] = "0b1001100100011000";
        ram[20] = "0b0001111001101001";
        ram[21] = "0b1001101101001111";
        ram[22] = "0b0001100000011011";
        ram[23] = "0b1001010111100110";
        ram[24] = "0b1010000001000001";
        ram[25] = "0b1001110001000101";
        ram[26] = "0b1001101011110000";
        ram[27] = "0b1010000010010111";
        ram[28] = "0b1001101011011110";
        ram[29] = "0b0001101001101010";
        ram[30] = "0b0001100111011000";
        ram[31] = "0b0010000111111001";
        ram[32] = "0b0010001101000100";
        ram[33] = "0b1001100101111000";
        ram[34] = "0b0010000000001111";
        ram[35] = "0b0001111011001110";
        ram[36] = "0b1001101010101110";
        ram[37] = "0b0001011010100011";
        ram[38] = "0b1010001011111100";
        ram[39] = "0b1010000001100000";
        ram[40] = "0b1001011111100011";
        ram[41] = "0b0001010001011101";
        ram[42] = "0b0010001011001100";
        ram[43] = "0b0010000100111010";
        ram[44] = "0b1001101000000110";
        ram[45] = "0b1010001101100011";
        ram[46] = "0b1010001010011100";
        ram[47] = "0b0001110111111111";
        ram[48] = "0b0001111111011101";
        ram[49] = "0b0001101111100111";
        ram[50] = "0b1010001001000010";
        ram[51] = "0b1010010010110000";
        ram[52] = "0b1010000001010000";
        ram[53] = "0b1001110010010111";
        ram[54] = "0b1001100110001000";
        ram[55] = "0b0001010001101001";
        ram[56] = "0b0001110010111111";
        ram[57] = "0b1001110111001000";
        ram[58] = "0b1010000010110001";
        ram[59] = "0b1010000010001111";
        ram[60] = "0b0010000001010011";
        ram[61] = "0b0010001000001111";
        ram[62] = "0b0010000111010110";
        ram[63] = "0b0001110100001011";
        ram[64] = "0b1010001000010101";
        ram[65] = "0b1010001100010001";
        ram[66] = "0b1010000011000100";
        ram[67] = "0b1001011100001110";
        ram[68] = "0b1001101000110001";
        ram[69] = "0b0010001111011000";
        ram[70] = "0b0001111101111111";
        ram[71] = "0b0001001000000011";
        ram[72] = "0b0001010101010110";
        ram[73] = "0b0001100111110001";
        ram[74] = "0b1010000101100111";
        ram[75] = "0b1001101001110100";
        ram[76] = "0b0000011000111010";
        ram[77] = "0b1000011100100101";
        ram[78] = "0b0001010101010101";
        ram[79] = "0b0001100010000111";
        ram[80] = "0b0001101011100101";
        ram[81] = "0b0001100011111011";
        ram[82] = "0b0010000011111100";
        ram[83] = "0b1001111000011110";
        ram[84] = "0b0010000001000110";
        ram[85] = "0b1001100001010110";
        ram[86] = "0b1001100011000110";
        ram[87] = "0b0001110010100100";
        ram[88] = "0b1010000011110111";
        ram[89] = "0b1010000100000110";
        ram[90] = "0b1001001011001111";
        ram[91] = "0b0001001101101010";
        ram[92] = "0b0010001000000000";
        ram[93] = "0b0010000010100000";
        ram[94] = "0b1001010001010110";
        ram[95] = "0b1010000110111010";
        ram[96] = "0b1010000001101010";
        ram[97] = "0b1001100001110111";
        ram[98] = "0b0001000101101100";
        ram[99] = "0b0010000000111000";
        ram[100] = "0b1001100010001011";
        ram[101] = "0b1010000111011011";
        ram[102] = "0b1001100110100010";
        ram[103] = "0b0001010100110010";


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


SC_MODULE(L3_wlo_L2_WEIGHTSceu) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTSceu_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTSceu) {
meminst = new L3_wlo_L2_WEIGHTSceu_ram("L3_wlo_L2_WEIGHTSceu_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTSceu() {
    delete meminst;
}


};//endmodule
#endif
