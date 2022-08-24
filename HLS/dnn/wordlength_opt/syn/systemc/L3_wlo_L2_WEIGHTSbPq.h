// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTSbPq_H__
#define __L3_wlo_L2_WEIGHTSbPq_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTSbPq_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTSbPq_ram) {
        ram[0] = "0b1011001110111100";
        ram[1] = "0b1010111101101100";
        ram[2] = "0b0010110010100100";
        ram[3] = "0b0011000111001110";
        ram[4] = "0b0010110111011001";
        ram[5] = "0b1010101101010010";
        ram[6] = "0b1011000000001110";
        ram[7] = "0b1010101000101010";
        ram[8] = "0b0010101101010010";
        ram[9] = "0b0010111010010011";
        ram[10] = "0b0010100011110100";
        ram[11] = "0b1010100101111000";
        ram[12] = "0b1010110001111100";
        ram[13] = "0b1010000111101000";
        ram[14] = "0b0010101011110011";
        ram[15] = "0b0010101011100101";
        ram[16] = "0b0010001000000010";
        ram[17] = "0b1010101101000100";
        ram[18] = "0b1010101010011101";
        ram[19] = "0b0001110001111000";
        ram[20] = "0b0010011110110110";
        ram[21] = "0b0010100000100111";
        ram[22] = "0b1010010001110010";
        ram[23] = "0b1010100000000011";
        ram[24] = "0b1010000001001011";
        ram[25] = "0b0010100101100001";
        ram[26] = "0b0010010000010011";
        ram[27] = "0b1010110010101001";
        ram[28] = "0b1010110111011010";
        ram[29] = "0b1010101100000100";
        ram[30] = "0b0010000110101001";
        ram[31] = "0b0010110010000100";
        ram[32] = "0b0010101100010000";
        ram[33] = "0b0010011000111011";
        ram[34] = "0b0010001110010000";
        ram[35] = "0b1010000010011110";
        ram[36] = "0b1001111011100111";
        ram[37] = "0b1010011100000001";
        ram[38] = "0b1010110000111010";
        ram[39] = "0b1010100110001111";
        ram[40] = "0b0010000100001010";
        ram[41] = "0b0010101000011101";
        ram[42] = "0b0010101010000000";
        ram[43] = "0b1010001000001011";
        ram[44] = "0b1010010110100110";
        ram[45] = "0b1001101010000010";
        ram[46] = "0b0010110100001001";
        ram[47] = "0b0010110011100100";
        ram[48] = "0b1010100001010100";
        ram[49] = "0b1011000111010001";
        ram[50] = "0b1011001000110001";
        ram[51] = "0b1010100011110000";
        ram[52] = "0b1010000000111100";
        ram[53] = "0b0011000101011000";
        ram[54] = "0b0011000110110011";
        ram[55] = "0b0010010001010010";
        ram[56] = "0b1011000000001011";
        ram[57] = "0b1010111110101011";
        ram[58] = "0b0001100111010101";
        ram[59] = "0b0010111010011001";
        ram[60] = "0b0010110110001001";
        ram[61] = "0b0001110110001000";
        ram[62] = "0b1010110110011011";
        ram[63] = "0b1010110001110101";
        ram[64] = "0b0010000111110010";
        ram[65] = "0b0010110010100001";
        ram[66] = "0b0010100111011110";
        ram[67] = "0b1010011010011000";
        ram[68] = "0b1010110001001101";
        ram[69] = "0b1010100010001001";
        ram[70] = "0b0010011010100000";
        ram[71] = "0b0010100011001111";
        ram[72] = "0b0010001111110010";
        ram[73] = "0b1010100101001111";
        ram[74] = "0b1010100010011000";
        ram[75] = "0b0010010010011100";
        ram[76] = "0b0010101101011010";
        ram[77] = "0b0010100100100110";
        ram[78] = "0b1010110101011110";
        ram[79] = "0b1010110000010110";
        ram[80] = "0b0001101110010101";
        ram[81] = "0b0010110100111111";
        ram[82] = "0b0010110100010101";
        ram[83] = "0b0010011011001100";
        ram[84] = "0b1010001001111011";
        ram[85] = "0b1010011100101011";
        ram[86] = "0b1010011001001111";
        ram[87] = "0b1010011010001111";
        ram[88] = "0b1010011111110111";
        ram[89] = "0b1010010001111001";
        ram[90] = "0b1001111101010110";
        ram[91] = "0b0010101011011000";
        ram[92] = "0b0010101100101000";
        ram[93] = "0b0010011011111010";
        ram[94] = "0b1010011101111100";
        ram[95] = "0b1010100001001111";
        ram[96] = "0b0001100110001000";
        ram[97] = "0b0010101100001001";
        ram[98] = "0b0001000001001001";
        ram[99] = "0b1010111000110110";
        ram[100] = "0b1011000011010000";
        ram[101] = "0b1010110001001000";
        ram[102] = "0b0010111010100110";
        ram[103] = "0b0011010000011111";


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


SC_MODULE(L3_wlo_L2_WEIGHTSbPq) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTSbPq_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTSbPq) {
meminst = new L3_wlo_L2_WEIGHTSbPq_ram("L3_wlo_L2_WEIGHTSbPq_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTSbPq() {
    delete meminst;
}


};//endmodule
#endif
