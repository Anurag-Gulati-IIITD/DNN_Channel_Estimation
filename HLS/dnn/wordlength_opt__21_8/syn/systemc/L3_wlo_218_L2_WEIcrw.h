// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIcrw_H__
#define __L3_wlo_218_L2_WEIcrw_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIcrw_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 10;
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


   SC_CTOR(L3_wlo_218_L2_WEIcrw_ram) {
        ram[0] = "0b1100000001";
        ram[1] = "0b0011101001";
        ram[2] = "0b0000011110";
        ram[3] = "0b0101101101";
        ram[4] = "0b1111110111";
        ram[5] = "0b1111010100";
        ram[6] = "0b1110100011";
        ram[7] = "0b1111011011";
        ram[8] = "0b0000100000";
        ram[9] = "0b1110101001";
        ram[10] = "0b0000001110";
        ram[11] = "0b0010011000";
        ram[12] = "0b1101010110";
        ram[13] = "0b0101001000";
        ram[14] = "0b0000000001";
        ram[15] = "0b1100100011";
        ram[16] = "0b1111010111";
        ram[17] = "0b0000111110";
        ram[18] = "0b0001100101";
        ram[19] = "0b1111101110";
        ram[20] = "0b0010010010";
        ram[21] = "0b1101001000";
        ram[22] = "0b0000110100";
        ram[23] = "0b1111100111";
        ram[24] = "0b1110001001";
        ram[25] = "0b1110100110";
        ram[26] = "0b0011011110";
        ram[27] = "0b0011010111";
        ram[28] = "0b1110100100";
        ram[29] = "0b1100110110";
        ram[30] = "0b1111010010";
        ram[31] = "0b0000110101";
        ram[32] = "0b1101110110";
        ram[33] = "0b1100010000";
        ram[34] = "0b0001101100";
        ram[35] = "0b0001101101";
        ram[36] = "0b0011100000";
        ram[37] = "0b0010110000";
        ram[38] = "0b1101110000";
        ram[39] = "0b0000010110";
        ram[40] = "0b1101000000";
        ram[41] = "0b0001010001";
        ram[42] = "0b0010000110";
        ram[43] = "0b0000001110";
        ram[44] = "0b1101110001";
        ram[45] = "0b0000101111";
        ram[46] = "0b0100101001";
        ram[47] = "0b1101011011";
        ram[48] = "0b1111011011";
        ram[49] = "0b0010100010";
        ram[50] = "0b0000011111";
        ram[51] = "0b1101001011";
        ram[52] = "0b0100111011";
        ram[53] = "0b1110010100";
        ram[54] = "0b1101111000";
        ram[55] = "0b0010100000";
        ram[56] = "0b1111001101";
        ram[57] = "0b0001001101";
        ram[58] = "0b1110111000";
        ram[59] = "0b1111101110";
        ram[60] = "0b1111011011";
        ram[61] = "0b1101010011";
        ram[62] = "0b0000011100";
        ram[63] = "0b1110100101";
        ram[64] = "0b0000011110";
        ram[65] = "0b1110000000";
        ram[66] = "0b1101010110";
        ram[67] = "0b0010100111";
        ram[68] = "0b1110101010";
        ram[69] = "0b0100111011";
        ram[70] = "0b1100100010";
        ram[71] = "0b0000110111";
        ram[72] = "0b0010001101";
        ram[73] = "0b1111100101";
        ram[74] = "0b0000100011";
        ram[75] = "0b1110011110";
        ram[76] = "0b1110011101";
        ram[77] = "0b1010111010";
        ram[78] = "0b1100111100";
        ram[79] = "0b0001101101";
        ram[80] = "0b0000100111";
        ram[81] = "0b0001001001";
        ram[82] = "0b0001100000";
        ram[83] = "0b0010010111";
        ram[84] = "0b0100101001";
        ram[85] = "0b0001000101";
        ram[86] = "0b0000100011";
        ram[87] = "0b0000111000";
        ram[88] = "0b1111001001";
        ram[89] = "0b0100000110";
        ram[90] = "0b0001100000";
        ram[91] = "0b1011101000";
        ram[92] = "0b1011010010";
        ram[93] = "0b0101011001";
        ram[94] = "0b0010100000";
        ram[95] = "0b0000011111";
        ram[96] = "0b1100010111";
        ram[97] = "0b0000111000";
        ram[98] = "0b0001110100";
        ram[99] = "0b1101000001";
        ram[100] = "0b1110011000";
        ram[101] = "0b1101110100";
        ram[102] = "0b0000110001";
        ram[103] = "0b0010111101";


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


SC_MODULE(L3_wlo_218_L2_WEIcrw) {


static const unsigned DataWidth = 10;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIcrw_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIcrw) {
meminst = new L3_wlo_218_L2_WEIcrw_ram("L3_wlo_218_L2_WEIcrw_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIcrw() {
    delete meminst;
}


};//endmodule
#endif
