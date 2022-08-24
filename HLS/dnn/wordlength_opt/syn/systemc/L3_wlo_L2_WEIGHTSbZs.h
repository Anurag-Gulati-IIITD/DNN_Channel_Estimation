// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTSbZs_H__
#define __L3_wlo_L2_WEIGHTSbZs_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTSbZs_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTSbZs_ram) {
        ram[0] = "0b0010010010010111";
        ram[1] = "0b0010001110110001";
        ram[2] = "0b0001100111010000";
        ram[3] = "0b1001111110110110";
        ram[4] = "0b1010000110111111";
        ram[5] = "0b1001111000011010";
        ram[6] = "0b0001011111011100";
        ram[7] = "0b0001111010100011";
        ram[8] = "0b0001101101100000";
        ram[9] = "0b1001110000000101";
        ram[10] = "0b1001100000010100";
        ram[11] = "0b1001101000001101";
        ram[12] = "0b0001001000111010";
        ram[13] = "0b0010000000100001";
        ram[14] = "0b1001101111100111";
        ram[15] = "0b1010000000001101";
        ram[16] = "0b1010000001111000";
        ram[17] = "0b1001011000011001";
        ram[18] = "0b0001111011000111";
        ram[19] = "0b0010001110000110";
        ram[20] = "0b0010001000101101";
        ram[21] = "0b0001100101000010";
        ram[22] = "0b1001101010110000";
        ram[23] = "0b1001100100010101";
        ram[24] = "0b0001110101101010";
        ram[25] = "0b0010000000010101";
        ram[26] = "0b1010000000010110";
        ram[27] = "0b1010001110010011";
        ram[28] = "0b1010000001010100";
        ram[29] = "0b0001110011101100";
        ram[30] = "0b0001110110011000";
        ram[31] = "0b0001111111111110";
        ram[32] = "0b0001000001111001";
        ram[33] = "0b1001101010111010";
        ram[34] = "0b0001010010000010";
        ram[35] = "0b0000111111100110";
        ram[36] = "0b0001110111010101";
        ram[37] = "0b1001111101111011";
        ram[38] = "0b1010001001000101";
        ram[39] = "0b1001110010000000";
        ram[40] = "0b1001100111000111";
        ram[41] = "0b1001001001101000";
        ram[42] = "0b0010000101100110";
        ram[43] = "0b0001011110001110";
        ram[44] = "0b0001110000011101";
        ram[45] = "0b1001010010111111";
        ram[46] = "0b1001110010111101";
        ram[47] = "0b1001110010111001";
        ram[48] = "0b1001111111111001";
        ram[49] = "0b1001101100101011";
        ram[50] = "0b1000111010101111";
        ram[51] = "0b0010000011100100";
        ram[52] = "0b0001101000111011";
        ram[53] = "0b1010000101110100";
        ram[54] = "0b1010001100100111";
        ram[55] = "0b1010000111010001";
        ram[56] = "0b0001011000110000";
        ram[57] = "0b0010000000010110";
        ram[58] = "0b0010000011101011";
        ram[59] = "0b0001100110100000";
        ram[60] = "0b1001111010111111";
        ram[61] = "0b1001110111011001";
        ram[62] = "0b0001001010010110";
        ram[63] = "0b0001110110101110";
        ram[64] = "0b1001101111010000";
        ram[65] = "0b1001100110011010";
        ram[66] = "0b1010001101000100";
        ram[67] = "0b1001100111100101";
        ram[68] = "0b0001111110100011";
        ram[69] = "0b0010000001111001";
        ram[70] = "0b0010000011010100";
        ram[71] = "0b1001011001101111";
        ram[72] = "0b1001111100010100";
        ram[73] = "0b1010000101110110";
        ram[74] = "0b0000110000010100";
        ram[75] = "0b0001010110111010";
        ram[76] = "0b0001110001110010";
        ram[77] = "0b1001001100111110";
        ram[78] = "0b1001110011010110";
        ram[79] = "0b0001010101001001";
        ram[80] = "0b0010000010101000";
        ram[81] = "0b0010001101010010";
        ram[82] = "0b0001110110100010";
        ram[83] = "0b1001001011010001";
        ram[84] = "0b1001001101111011";
        ram[85] = "0b1001101001111001";
        ram[86] = "0b0001000010110000";
        ram[87] = "0b1001111010111001";
        ram[88] = "0b1001100011000110";
        ram[89] = "0b1010000100111000";
        ram[90] = "0b1001110010001100";
        ram[91] = "0b0001101101101100";
        ram[92] = "0b0010000100101100";
        ram[93] = "0b0001110111101101";
        ram[94] = "0b0001100101110001";
        ram[95] = "0b1001000010001000";
        ram[96] = "0b1001111000110001";
        ram[97] = "0b1001110101011100";
        ram[98] = "0b1001110110011110";
        ram[99] = "0b0000101101001111";
        ram[100] = "0b1001110010000011";
        ram[101] = "0b0001111010010000";
        ram[102] = "0b0010000100011001";
        ram[103] = "0b0001011010100100";


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


SC_MODULE(L3_wlo_L2_WEIGHTSbZs) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTSbZs_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTSbZs) {
meminst = new L3_wlo_L2_WEIGHTSbZs_ram("L3_wlo_L2_WEIGHTSbZs_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTSbZs() {
    delete meminst;
}


};//endmodule
#endif
