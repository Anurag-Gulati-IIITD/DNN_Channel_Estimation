// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTS_H__
#define __L2_wlo_L1_WEIGHTS_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTS_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 16;
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


   SC_CTOR(L2_wlo_L1_WEIGHTS_ram) {
        ram[0] = "0b1010111010000101";
        ram[1] = "0b1010111101101110";
        ram[2] = "0b1010100011110100";
        ram[3] = "0b1010100101101010";
        ram[4] = "0b1011010000111001";
        ram[5] = "0b1011000100101100";
        ram[6] = "0b1010110001011011";
        ram[7] = "0b1010101100010110";
        ram[8] = "0b0010110111001101";
        ram[9] = "0b1010111110101110";
        ram[10] = "0b0010101011101111";
        ram[11] = "0b0011011001110001";
        ram[12] = "0b1010110111001010";
        ram[13] = "0b1010111001011110";
        ram[14] = "0b0011000000100100";
        ram[15] = "0b1010110110100011";
        ram[16] = "0b0010000110110100";
        ram[17] = "0b0010010011110010";
        ram[18] = "0b0001110110101110";
        ram[19] = "0b0001011000010110";
        ram[20] = "0b0010010100000011";
        ram[21] = "0b0010101111000100";
        ram[22] = "0b0010111100011110";
        ram[23] = "0b0001100101010111";
        ram[24] = "0b1011000001110100";
        ram[25] = "0b1010110001010010";
        ram[26] = "0b1010111000000111";
        ram[27] = "0b1010100111101000";
        ram[28] = "0b0010000000110100";
        ram[29] = "0b0011001000110010";
        ram[30] = "0b1011001010010110";
        ram[31] = "0b0010100001011000";
        ram[32] = "0b0011001101001111";
        ram[33] = "0b0010101100000000";
        ram[34] = "0b1001101110100100";
        ram[35] = "0b1011000100111010";
        ram[36] = "0b1010100111010011";
        ram[37] = "0b1010111011101000";
        ram[38] = "0b0010101110110110";
        ram[39] = "0b1011000100100010";
        ram[40] = "0b0001111110100010";
        ram[41] = "0b0011001100110111";
        ram[42] = "0b0011000100001001";
        ram[43] = "0b0010110000111100";
        ram[44] = "0b0010101110111101";
        ram[45] = "0b0010110011001111";
        ram[46] = "0b0001111000001000";
        ram[47] = "0b1010101100010001";
        ram[48] = "0b1010111100111111";
        ram[49] = "0b0010100000010100";
        ram[50] = "0b1011000010111110";
        ram[51] = "0b0010110111001111";


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


SC_MODULE(L2_wlo_L1_WEIGHTS) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTS_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTS) {
meminst = new L2_wlo_L1_WEIGHTS_ram("L2_wlo_L1_WEIGHTS_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTS() {
    delete meminst;
}


};//endmodule
#endif
