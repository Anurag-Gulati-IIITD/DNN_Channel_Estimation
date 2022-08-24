// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTScbu_H__
#define __L3_wlo_L2_WEIGHTScbu_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTScbu_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTScbu_ram) {
        ram[0] = "0b0001100000010110";
        ram[1] = "0b0001100111110111";
        ram[2] = "0b0001000100000011";
        ram[3] = "0b1000001001011100";
        ram[4] = "0b1001100000111000";
        ram[5] = "0b0001100011000011";
        ram[6] = "0b0001101100011001";
        ram[7] = "0b0001101000111000";
        ram[8] = "0b1001101001011100";
        ram[9] = "0b1001110010101111";
        ram[10] = "0b1001101000000100";
        ram[11] = "0b0000111011111111";
        ram[12] = "0b0001101011001100";
        ram[13] = "0b0001111011001100";
        ram[14] = "0b0001001000101011";
        ram[15] = "0b1001100110111011";
        ram[16] = "0b1001100111010110";
        ram[17] = "0b1001100110011101";
        ram[18] = "0b0001011111100101";
        ram[19] = "0b0001100111001011";
        ram[20] = "0b1001010011100010";
        ram[21] = "0b1001000100010100";
        ram[22] = "0b1001000001001111";
        ram[23] = "0b0000010010010110";
        ram[24] = "0b0000100011100010";
        ram[25] = "0b0001100110001110";
        ram[26] = "0b1000111111110010";
        ram[27] = "0b0000111000111010";
        ram[28] = "0b1000100110000001";
        ram[29] = "0b1000110100001000";
        ram[30] = "0b1001101000101000";
        ram[31] = "0b1001011110011100";
        ram[32] = "0b1001101001001011";
        ram[33] = "0b0000101100000011";
        ram[34] = "0b0001101011010101";
        ram[35] = "0b0001011100000011";
        ram[36] = "0b1001001111010011";
        ram[37] = "0b1001100101100100";
        ram[38] = "0b1001010000110001";
        ram[39] = "0b0001100011101101";
        ram[40] = "0b0001100111011010";
        ram[41] = "0b0001001000010000";
        ram[42] = "0b1001001111101010";
        ram[43] = "0b1001110011101000";
        ram[44] = "0b1001010100010001";
        ram[45] = "0b0000101001100100";
        ram[46] = "0b0001100110001010";
        ram[47] = "0b0000001110001010";
        ram[48] = "0b1001010111011010";
        ram[49] = "0b1001000101001101";
        ram[50] = "0b0001100110001001";
        ram[51] = "0b0001101110011011";
        ram[52] = "0b0001110100000010";
        ram[53] = "0b1001100111110101";
        ram[54] = "0b1001101010000001";
        ram[55] = "0b0001001101010111";
        ram[56] = "0b0001010111001111";
        ram[57] = "0b0001100001010000";
        ram[58] = "0b1000000100001100";
        ram[59] = "0b1001100011101000";
        ram[60] = "0b1001110010101010";
        ram[61] = "0b1001100010101110";
        ram[62] = "0b0001101101100111";
        ram[63] = "0b0001011111110000";
        ram[64] = "0b0001011110111110";
        ram[65] = "0b1001011111110011";
        ram[66] = "0b1001101000011111";
        ram[67] = "0b1001100101101010";
        ram[68] = "0b0001010110101110";
        ram[69] = "0b0001100110001101";
        ram[70] = "0b1001011100011011";
        ram[71] = "0b1001000100110100";
        ram[72] = "0b1001100110111001";
        ram[73] = "0b1001011100101001";
        ram[74] = "0b0001010000100010";
        ram[75] = "0b0001100110110111";
        ram[76] = "0b0001000100100101";
        ram[77] = "0b1001000000010000";
        ram[78] = "0b1001001101010001";
        ram[79] = "0b0001001111001010";
        ram[80] = "0b1000110011001101";
        ram[81] = "0b1001011001111000";
        ram[82] = "0b1001101010110101";
        ram[83] = "0b0001011001101010";
        ram[84] = "0b0001101000000101";
        ram[85] = "0b0001101101011100";
        ram[86] = "0b1001010000100000";
        ram[87] = "0b1001001110110101";
        ram[88] = "0b1001100100100000";
        ram[89] = "0b1000110100101101";
        ram[90] = "0b0001100100111101";
        ram[91] = "0b0001010011111001";
        ram[92] = "0b1001000011000101";
        ram[93] = "0b0000111111111011";
        ram[94] = "0b1001000110100011";
        ram[95] = "0b0001000001100010";
        ram[96] = "0b0001100100011101";
        ram[97] = "0b0001011001000011";
        ram[98] = "0b1001011000011000";
        ram[99] = "0b1001011010001011";
        ram[100] = "0b1001011100000111";
        ram[101] = "0b1000110001111101";
        ram[102] = "0b0001110000010011";
        ram[103] = "0b0001011001001111";


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


SC_MODULE(L3_wlo_L2_WEIGHTScbu) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTScbu_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTScbu) {
meminst = new L3_wlo_L2_WEIGHTScbu_ram("L3_wlo_L2_WEIGHTScbu_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTScbu() {
    delete meminst;
}


};//endmodule
#endif
