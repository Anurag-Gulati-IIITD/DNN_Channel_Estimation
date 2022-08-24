// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTSbWr_H__
#define __L3_wlo_L2_WEIGHTSbWr_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTSbWr_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTSbWr_ram) {
        ram[0] = "0b1001011000010110";
        ram[1] = "0b0001010100001011";
        ram[2] = "0b0001100010011110";
        ram[3] = "0b1000111111100001";
        ram[4] = "0b0001100011100011";
        ram[5] = "0b0001001110000101";
        ram[6] = "0b0000111011001000";
        ram[7] = "0b1001101011110100";
        ram[8] = "0b0001000001111001";
        ram[9] = "0b0001100101100001";
        ram[10] = "0b0001011000100100";
        ram[11] = "0b0001000001101010";
        ram[12] = "0b0001101100010001";
        ram[13] = "0b0001100110010010";
        ram[14] = "0b0001000011111111";
        ram[15] = "0b1010000010001100";
        ram[16] = "0b1001100000100111";
        ram[17] = "0b0001110000100010";
        ram[18] = "0b1001111111001010";
        ram[19] = "0b1001100110101101";
        ram[20] = "0b1001111110010011";
        ram[21] = "0b0010000000100000";
        ram[22] = "0b0010000011011100";
        ram[23] = "0b0001110000101101";
        ram[24] = "0b1001111101001100";
        ram[25] = "0b1010000110011010";
        ram[26] = "0b0001100101011100";
        ram[27] = "0b0001111110011101";
        ram[28] = "0b0001111011110001";
        ram[29] = "0b0001011001111000";
        ram[30] = "0b1010000000011010";
        ram[31] = "0b1001101100010100";
        ram[32] = "0b1001111010000011";
        ram[33] = "0b1001100101011011";
        ram[34] = "0b0010001001000001";
        ram[35] = "0b0000001101011000";
        ram[36] = "0b0001000000111100";
        ram[37] = "0b0001100000110010";
        ram[38] = "0b0001000010101001";
        ram[39] = "0b0001010111100101";
        ram[40] = "0b1010000010100101";
        ram[41] = "0b1010001000010100";
        ram[42] = "0b1001111000000001";
        ram[43] = "0b1001110000011000";
        ram[44] = "0b0001100111001111";
        ram[45] = "0b0001010110100000";
        ram[46] = "0b0010000100110001";
        ram[47] = "0b1000111110011110";
        ram[48] = "0b0001110011001111";
        ram[49] = "0b1001111100011111";
        ram[50] = "0b1001101010110111";
        ram[51] = "0b1001110011001000";
        ram[52] = "0b1001101111101100";
        ram[53] = "0b1001110111101001";
        ram[54] = "0b1001110111111011";
        ram[55] = "0b0001101111010100";
        ram[56] = "0b1001110010100111";
        ram[57] = "0b0001101111111010";
        ram[58] = "0b1001011101111011";
        ram[59] = "0b1001100011001010";
        ram[60] = "0b0000011100010100";
        ram[61] = "0b0001110100001011";
        ram[62] = "0b1000010111000100";
        ram[63] = "0b1001000110010010";
        ram[64] = "0b0001100110001110";
        ram[65] = "0b1001111110111101";
        ram[66] = "0b0001010011101010";
        ram[67] = "0b1001110110100001";
        ram[68] = "0b1001011111000010";
        ram[69] = "0b1001110010001110";
        ram[70] = "0b1001100110011001";
        ram[71] = "0b1000110010000110";
        ram[72] = "0b0001110100100001";
        ram[73] = "0b0001111100001000";
        ram[74] = "0b1001101010100101";
        ram[75] = "0b1001101100111011";
        ram[76] = "0b1000101101101000";
        ram[77] = "0b1001111001010110";
        ram[78] = "0b0010001100010001";
        ram[79] = "0b0001101100110100";
        ram[80] = "0b0001010000101111";
        ram[81] = "0b1001101001110010";
        ram[82] = "0b1010000010111110";
        ram[83] = "0b1001100000000011";
        ram[84] = "0b0001111100101010";
        ram[85] = "0b0010000000110111";
        ram[86] = "0b0001111001011000";
        ram[87] = "0b1001101111111001";
        ram[88] = "0b1001110110010110";
        ram[89] = "0b0001111100001011";
        ram[90] = "0b0001110000111100";
        ram[91] = "0b1001100110110010";
        ram[92] = "0b1001110101000010";
        ram[93] = "0b1001000011011010";
        ram[94] = "0b0001101101011110";
        ram[95] = "0b0010000011001000";
        ram[96] = "0b0001111110110000";
        ram[97] = "0b0001101000111110";
        ram[98] = "0b1001000000010110";
        ram[99] = "0b0001101110101001";
        ram[100] = "0b1001011101000011";
        ram[101] = "0b1001111000101001";
        ram[102] = "0b0001011001011000";
        ram[103] = "0b0010000011110110";


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


SC_MODULE(L3_wlo_L2_WEIGHTSbWr) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTSbWr_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTSbWr) {
meminst = new L3_wlo_L2_WEIGHTSbWr_ram("L3_wlo_L2_WEIGHTSbWr_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTSbWr() {
    delete meminst;
}


};//endmodule
#endif
