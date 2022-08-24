// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTSbQq_H__
#define __L3_wlo_L2_WEIGHTSbQq_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTSbQq_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTSbQq_ram) {
        ram[0] = "0b1010110000001100";
        ram[1] = "0b1010100011011111";
        ram[2] = "0b1010011111010101";
        ram[3] = "0b0010010111110101";
        ram[4] = "0b0010111000100101";
        ram[5] = "0b0010110100101000";
        ram[6] = "0b0010101110101110";
        ram[7] = "0b0010000010101110";
        ram[8] = "0b1010110011111011";
        ram[9] = "0b1010110111001010";
        ram[10] = "0b1010110111011001";
        ram[11] = "0b1010000010111011";
        ram[12] = "0b0010101011000000";
        ram[13] = "0b0011000000001111";
        ram[14] = "0b0010111101011110";
        ram[15] = "0b0010110000011011";
        ram[16] = "0b1010011110111011";
        ram[17] = "0b1010110101011110";
        ram[18] = "0b1010111101100110";
        ram[19] = "0b1010101100101001";
        ram[20] = "0b1001110011010110";
        ram[21] = "0b0010101101101100";
        ram[22] = "0b0010111101110010";
        ram[23] = "0b0010101111111100";
        ram[24] = "0b0010100010000100";
        ram[25] = "0b0000101010001110";
        ram[26] = "0b1010101011111100";
        ram[27] = "0b1010110011000001";
        ram[28] = "0b1010101011010111";
        ram[29] = "0b1010100110100010";
        ram[30] = "0b0010100010011010";
        ram[31] = "0b0010111010100010";
        ram[32] = "0b0010111101000101";
        ram[33] = "0b0010110110101001";
        ram[34] = "0b0010001100011000";
        ram[35] = "0b1010110011100000";
        ram[36] = "0b1010110111101010";
        ram[37] = "0b1010101101010101";
        ram[38] = "0b1010100000010111";
        ram[39] = "0b0010101000010010";
        ram[40] = "0b0010110001011000";
        ram[41] = "0b0010101111001111";
        ram[42] = "0b0010100111110011";
        ram[43] = "0b0010001011100110";
        ram[44] = "0b1010100000110110";
        ram[45] = "0b1010110011010000";
        ram[46] = "0b1010110111111111";
        ram[47] = "0b1010011111010101";
        ram[48] = "0b0010010100010011";
        ram[49] = "0b0010110001111001";
        ram[50] = "0b0010111010001011";
        ram[51] = "0b0010110100110101";
        ram[52] = "0b0001101100110000";
        ram[53] = "0b0010101001010011";
        ram[54] = "0b0010110001001010";
        ram[55] = "0b0010110011110010";
        ram[56] = "0b0010001111011110";
        ram[57] = "0b1010101001110011";
        ram[58] = "0b1010111000011000";
        ram[59] = "0b1010111001110010";
        ram[60] = "0b1010110001001110";
        ram[61] = "0b0010000101011010";
        ram[62] = "0b0010111001100100";
        ram[63] = "0b0010111010010011";
        ram[64] = "0b0010111101001000";
        ram[65] = "0b0010110010000010";
        ram[66] = "0b1010101101111101";
        ram[67] = "0b1010111100110111";
        ram[68] = "0b1010111111110000";
        ram[69] = "0b1010100010100000";
        ram[70] = "0b0010101011000000";
        ram[71] = "0b0010111010000101";
        ram[72] = "0b0010111001001001";
        ram[73] = "0b0010111010010110";
        ram[74] = "0b0010010110111011";
        ram[75] = "0b1010100000001000";
        ram[76] = "0b1010111010010110";
        ram[77] = "0b1010101011110101";
        ram[78] = "0b1010101101101001";
        ram[79] = "0b1001001010110001";
        ram[80] = "0b0010100011010001";
        ram[81] = "0b0010110011100100";
        ram[82] = "0b0010111101100001";
        ram[83] = "0b0010011001011001";
        ram[84] = "0b1010100110000110";
        ram[85] = "0b1010110011100000";
        ram[86] = "0b1010111001110100";
        ram[87] = "0b1010110001111010";
        ram[88] = "0b1010000000100111";
        ram[89] = "0b0010100001011100";
        ram[90] = "0b0010110110010100";
        ram[91] = "0b0010101110101010";
        ram[92] = "0b0010001110001111";
        ram[93] = "0b1010100010101111";
        ram[94] = "0b1010101001011000";
        ram[95] = "0b1010100101001001";
        ram[96] = "0b1010100110001101";
        ram[97] = "0b1010010000110101";
        ram[98] = "0b1010001000101010";
        ram[99] = "0b0010101110001001";
        ram[100] = "0b0010110101001001";
        ram[101] = "0b0010101010100110";
        ram[102] = "0b1001110110011100";
        ram[103] = "0b1010101011110010";


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


SC_MODULE(L3_wlo_L2_WEIGHTSbQq) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTSbQq_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTSbQq) {
meminst = new L3_wlo_L2_WEIGHTSbQq_ram("L3_wlo_L2_WEIGHTSbQq_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTSbQq() {
    delete meminst;
}


};//endmodule
#endif
