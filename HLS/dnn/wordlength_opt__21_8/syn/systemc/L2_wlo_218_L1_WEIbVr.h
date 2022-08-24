// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbVr_H__
#define __L2_wlo_218_L1_WEIbVr_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbVr_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIbVr_ram) {
        ram[0] = "0b1110010111101";
        ram[1] = "0b1110001001000";
        ram[2] = "0b1111011000011";
        ram[3] = "0b1111010100101";
        ram[4] = "0b1011110001101";
        ram[5] = "0b1101011010011";
        ram[6] = "0b1110111010010";
        ram[7] = "0b1111000111010";
        ram[8] = "0b0001011100110";
        ram[9] = "0b1110000101000";
        ram[10] = "0b0000110111011";
        ram[11] = "0b0110011100001";
        ram[12] = "0b1110100011010";
        ram[13] = "0b1110011010000";
        ram[14] = "0b0010000100100";
        ram[15] = "0b1110100101110";
        ram[16] = "0b0000001011011";
        ram[17] = "0b0000010011110";
        ram[18] = "0b0000000101101";
        ram[19] = "0b0000000001100";
        ram[20] = "0b0000010100000";
        ram[21] = "0b0000111110000";
        ram[22] = "0b0001110001111";
        ram[23] = "0b0000000010101";
        ram[24] = "0b1101110001100";
        ram[25] = "0b1110111010110";
        ram[26] = "0b1110011111100";
        ram[27] = "0b1111010000110";
        ram[28] = "0b0000001000011";
        ram[29] = "0b0011000110010";
        ram[30] = "0b1100101101010";
        ram[31] = "0b0000100010101";
        ram[32] = "0b0011101001110";
        ram[33] = "0b0000111000000";
        ram[34] = "0b1111111100001";
        ram[35] = "0b1101011000101";
        ram[36] = "0b1111010001011";
        ram[37] = "0b1110010001011";
        ram[38] = "0b0000111101101";
        ram[39] = "0b1101011011101";
        ram[40] = "0b0000000111101";
        ram[41] = "0b0011100110111";
        ram[42] = "0b0010100001000";
        ram[43] = "0b0001000011110";
        ram[44] = "0b0000111101111";
        ram[45] = "0b0001001100111";
        ram[46] = "0b0000000110000";
        ram[47] = "0b1111000111011";
        ram[48] = "0b1110001100000";
        ram[49] = "0b0000100000101";
        ram[50] = "0b1101101000010";
        ram[51] = "0b0001011100111";


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


SC_MODULE(L2_wlo_218_L1_WEIbVr) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbVr_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbVr) {
meminst = new L2_wlo_218_L1_WEIbVr_ram("L2_wlo_218_L1_WEIbVr_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbVr() {
    delete meminst;
}


};//endmodule
#endif
