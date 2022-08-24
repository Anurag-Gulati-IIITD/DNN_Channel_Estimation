// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTSbTr_H__
#define __L3_wlo_L2_WEIGHTSbTr_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTSbTr_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTSbTr_ram) {
        ram[0] = "0b1010100100101110";
        ram[1] = "0b0010101110011110";
        ram[2] = "0b0010111011110000";
        ram[3] = "0b0010111010000111";
        ram[4] = "0b0010011100110100";
        ram[5] = "0b1010110001000001";
        ram[6] = "0b1011000000000111";
        ram[7] = "0b1010111010010010";
        ram[8] = "0b1010000111101111";
        ram[9] = "0b0010110101101001";
        ram[10] = "0b0011000001011100";
        ram[11] = "0b0010111010110111";
        ram[12] = "0b0001001000101101";
        ram[13] = "0b1010110100000011";
        ram[14] = "0b1010111101110110";
        ram[15] = "0b1010110010001111";
        ram[16] = "0b0010000100011000";
        ram[17] = "0b0010110000100011";
        ram[18] = "0b0010110000010010";
        ram[19] = "0b0010010010010111";
        ram[20] = "0b0010000000111100";
        ram[21] = "0b0010000000010010";
        ram[22] = "0b0001000100011101";
        ram[23] = "0b1010010001110001";
        ram[24] = "0b1010101111001110";
        ram[25] = "0b1010101101101101";
        ram[26] = "0b0010110110101000";
        ram[27] = "0b0010111100010101";
        ram[28] = "0b0010101001010001";
        ram[29] = "0b1010110000001011";
        ram[30] = "0b1011000100100001";
        ram[31] = "0b1010111101000001";
        ram[32] = "0b0010010011101110";
        ram[33] = "0b0011000010101001";
        ram[34] = "0b0011000110010101";
        ram[35] = "0b0010110011001010";
        ram[36] = "0b1010110001100010";
        ram[37] = "0b1011000011100001";
        ram[38] = "0b1011000000110011";
        ram[39] = "0b1010100100001001";
        ram[40] = "0b0010101011110101";
        ram[41] = "0b0010110111110001";
        ram[42] = "0b0010110110001010";
        ram[43] = "0b0010100111111000";
        ram[44] = "0b0010010110010011";
        ram[45] = "0b1010100010000010";
        ram[46] = "0b1010110010110010";
        ram[47] = "0b1010111010111011";
        ram[48] = "0b1010110011111011";
        ram[49] = "0b0010001011101010";
        ram[50] = "0b0011000000000001";
        ram[51] = "0b0011000010111001";
        ram[52] = "0b0010111101111111";
        ram[53] = "0b0010111100101101";
        ram[54] = "0b0010011100010011";
        ram[55] = "0b1010110010001011";
        ram[56] = "0b1010111101111111";
        ram[57] = "0b1010111001010001";
        ram[58] = "0b1010001100110100";
        ram[59] = "0b0010110011111100";
        ram[60] = "0b0011000000101110";
        ram[61] = "0b0010111100000100";
        ram[62] = "0b0010001100011010";
        ram[63] = "0b1010110110000000";
        ram[64] = "0b1011000000110001";
        ram[65] = "0b1010110110111101";
        ram[66] = "0b0001101101100000";
        ram[67] = "0b0010110110011100";
        ram[68] = "0b0010110110011010";
        ram[69] = "0b0010100110010101";
        ram[70] = "0b1010001001100011";
        ram[71] = "0b1010100001100101";
        ram[72] = "0b1010010010010110";
        ram[73] = "0b1010010001011111";
        ram[74] = "0b1010011111010101";
        ram[75] = "0b1010100100010101";
        ram[76] = "0b0001101001111111";
        ram[77] = "0b0010101101110000";
        ram[78] = "0b0010110001010011";
        ram[79] = "0b1010100011100000";
        ram[80] = "0b1010111111101000";
        ram[81] = "0b1010111111001011";
        ram[82] = "0b1010011000111110";
        ram[83] = "0b0010111101000011";
        ram[84] = "0b0011000111010001";
        ram[85] = "0b0010111001000110";
        ram[86] = "0b1010100101100010";
        ram[87] = "0b1011000100111010";
        ram[88] = "0b1011000100010010";
        ram[89] = "0b1010101101100000";
        ram[90] = "0b0010110010100101";
        ram[91] = "0b0011000001000001";
        ram[92] = "0b0010111001100100";
        ram[93] = "0b0010100001110001";
        ram[94] = "0b1010010111100100";
        ram[95] = "0b1010110001000100";
        ram[96] = "0b1010110011111000";
        ram[97] = "0b1010110100001000";
        ram[98] = "0b1010101111111010";
        ram[99] = "0b0010001111001001";
        ram[100] = "0b0010110111111011";
        ram[101] = "0b0011000001011100";
        ram[102] = "0b0010110111001100";
        ram[103] = "0b1010011000110010";


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


SC_MODULE(L3_wlo_L2_WEIGHTSbTr) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTSbTr_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTSbTr) {
meminst = new L3_wlo_L2_WEIGHTSbTr_ram("L3_wlo_L2_WEIGHTSbTr_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTSbTr() {
    delete meminst;
}


};//endmodule
#endif
