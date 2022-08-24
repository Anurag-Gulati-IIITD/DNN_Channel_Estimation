// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIlbW_H__
#define __L2_wlo_218_L1_WEIlbW_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIlbW_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 13;
  static const unsigned AddressRange = 52;
  static const unsigned AddressWidth = 6;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(L2_wlo_218_L1_WEIlbW_ram) {
        ram[0] = "0b0000010111101";
        ram[1] = "0b1110011010011";
        ram[2] = "0b0001101110010";
        ram[3] = "0b0000010100101";
        ram[4] = "0b1101111001110";
        ram[5] = "0b0010100001001";
        ram[6] = "0b0000101110010";
        ram[7] = "0b1111011001111";
        ram[8] = "0b1111100110110";
        ram[9] = "0b1111000101011";
        ram[10] = "0b1111111010001";
        ram[11] = "0b0000000101111";
        ram[12] = "0b0000111011100";
        ram[13] = "0b0001000101010";
        ram[14] = "0b0011010001000";
        ram[15] = "0b1101011001110";
        ram[16] = "0b1111100010101";
        ram[17] = "0b0000000110100";
        ram[18] = "0b0000011010001";
        ram[19] = "0b0001101001111";
        ram[20] = "0b1111100110110";
        ram[21] = "0b1111010111001";
        ram[22] = "0b1110100101101";
        ram[23] = "0b0000100011001";
        ram[24] = "0b0001001111001";
        ram[25] = "0b1111001110010";
        ram[26] = "0b0000011001001";
        ram[27] = "0b1011011011010";
        ram[28] = "0b1111100001111";
        ram[29] = "0b1110011111110";
        ram[30] = "0b1110000101110";
        ram[31] = "0b1111001011101";
        ram[32] = "0b0001011100001";
        ram[33] = "0b0000011111011";
        ram[34] = "0b1111001001001";
        ram[35] = "0b0010011001101";
        ram[36] = "0b0000100011100";
        ram[37] = "0b0000001110011";
        ram[38] = "0b0011101101111";
        ram[39] = "0b0001001011100";
        ram[40] = "0b0000111011010";
        ram[41] = "0b0010000000101";
        ram[42] = "0b1111111010011";
        ram[43] = "0b0010101000000";
        ram[44] = "0b1111000001110";
        ram[45] = "0b1111100001110";
        ram[46] = "0b1101010000101";
        ram[47] = "0b0000001110100";
        ram[48] = "0b0000111110110";
        ram[49] = "0b1111111011110";
        ram[50] = "0b0001001011110";
        ram[51] = "0b0000001010000";


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


SC_MODULE(L2_wlo_218_L1_WEIlbW) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIlbW_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIlbW) {
meminst = new L2_wlo_218_L1_WEIlbW_ram("L2_wlo_218_L1_WEIlbW_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIlbW() {
    delete meminst;
}


};//endmodule
#endif
