// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbUr_H__
#define __L2_wlo_218_L1_WEIbUr_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbUr_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIbUr_ram) {
        ram[0] = "0b1111010011101";
        ram[1] = "0b0000101011110";
        ram[2] = "0b1110100100101";
        ram[3] = "0b1111011111100";
        ram[4] = "0b1011011001010";
        ram[5] = "0b1100011111110";
        ram[6] = "0b1111110101111";
        ram[7] = "0b0000000100100";
        ram[8] = "0b0001011001110";
        ram[9] = "0b1010100001010";
        ram[10] = "0b0000011011100";
        ram[11] = "0b0011010010000";
        ram[12] = "0b0000100011010";
        ram[13] = "0b1101100110000";
        ram[14] = "0b1111100111000";
        ram[15] = "0b0001110001001";
        ram[16] = "0b1111000001110";
        ram[17] = "0b0000100101111";
        ram[18] = "0b0000100010110";
        ram[19] = "0b1101001100001";
        ram[20] = "0b0000100001011";
        ram[21] = "0b0000101110001";
        ram[22] = "0b0001000001011";
        ram[23] = "0b1110010011100";
        ram[24] = "0b1110100001001";
        ram[25] = "0b0000000110011";
        ram[26] = "0b0000100100100";
        ram[27] = "0b1111111110111";
        ram[28] = "0b1101001110010";
        ram[29] = "0b0010110110011";
        ram[30] = "0b0001110011000";
        ram[31] = "0b1111111110011";
        ram[32] = "0b0001111011111";
        ram[33] = "0b0011110110011";
        ram[34] = "0b1111101001110";
        ram[35] = "0b1111011011100";
        ram[36] = "0b1111001010111";
        ram[37] = "0b1111111110110";
        ram[38] = "0b0000011011011";
        ram[39] = "0b0001010010101";
        ram[40] = "0b0001001001010";
        ram[41] = "0b0010000001011";
        ram[42] = "0b0010001101100";
        ram[43] = "0b1101100100000";
        ram[44] = "0b0000110010110";
        ram[45] = "0b0000111110100";
        ram[46] = "0b0001101101110";
        ram[47] = "0b0000011000000";
        ram[48] = "0b1111000110100";
        ram[49] = "0b0000111101110";
        ram[50] = "0b1111000000010";
        ram[51] = "0b1110010000111";


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


SC_MODULE(L2_wlo_218_L1_WEIbUr) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbUr_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbUr) {
meminst = new L2_wlo_218_L1_WEIbUr_ram("L2_wlo_218_L1_WEIbUr_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbUr() {
    delete meminst;
}


};//endmodule
#endif
