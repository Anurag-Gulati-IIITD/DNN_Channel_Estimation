// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEI8jQ_H__
#define __L2_wlo_218_L1_WEI8jQ_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEI8jQ_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEI8jQ_ram) {
        ram[0] = "0b1111101011101";
        ram[1] = "0b0010110011010";
        ram[2] = "0b0010101110110";
        ram[3] = "0b0000000101000";
        ram[4] = "0b1111100000010";
        ram[5] = "0b0100000101011";
        ram[6] = "0b0000000111100";
        ram[7] = "0b1110100110111";
        ram[8] = "0b1110100011101";
        ram[9] = "0b1110111001111";
        ram[10] = "0b0000110000101";
        ram[11] = "0b0011011010010";
        ram[12] = "0b1111110000100";
        ram[13] = "0b1111100110011";
        ram[14] = "0b0010111001110";
        ram[15] = "0b1111110001110";
        ram[16] = "0b0000111111110";
        ram[17] = "0b1100110001001";
        ram[18] = "0b1111001111101";
        ram[19] = "0b0000010100110";
        ram[20] = "0b1111100111110";
        ram[21] = "0b1101011010010";
        ram[22] = "0b0000100101111";
        ram[23] = "0b1110001000010";
        ram[24] = "0b1111111110011";
        ram[25] = "0b1111101011000";
        ram[26] = "0b0010101110100";
        ram[27] = "0b1110111111011";
        ram[28] = "0b0000011000110";
        ram[29] = "0b1011010110100";
        ram[30] = "0b1100010100001";
        ram[31] = "0b1111111000100";
        ram[32] = "0b0000010110101";
        ram[33] = "0b0000011101100";
        ram[34] = "0b0000111000111";
        ram[35] = "0b1111010000111";
        ram[36] = "0b0001100001111";
        ram[37] = "0b1110110000010";
        ram[38] = "0b1111111100110";
        ram[39] = "0b0010010101110";
        ram[40] = "0b1111010001000";
        ram[41] = "0b0001001101110";
        ram[42] = "0b0001000011010";
        ram[43] = "0b1111010100010";
        ram[44] = "0b1111011110111";
        ram[45] = "0b1110001000111";
        ram[46] = "0b0001010001010";
        ram[47] = "0b1110111101100";
        ram[48] = "0b0010110111010";
        ram[49] = "0b1101101111011";
        ram[50] = "0b0000110100110";
        ram[51] = "0b1110111000101";


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


SC_MODULE(L2_wlo_218_L1_WEI8jQ) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEI8jQ_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEI8jQ) {
meminst = new L2_wlo_218_L1_WEI8jQ_ram("L2_wlo_218_L1_WEI8jQ_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEI8jQ() {
    delete meminst;
}


};//endmodule
#endif
