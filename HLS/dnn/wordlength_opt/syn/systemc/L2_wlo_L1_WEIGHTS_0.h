// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTS_0_H__
#define __L2_wlo_L1_WEIGHTS_0_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTS_0_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTS_0_ram) {
        ram[0] = "0b0010010000000000";
        ram[1] = "0b1010111110010001";
        ram[2] = "0b1011001011101100";
        ram[3] = "0b0010110110011010";
        ram[4] = "0b0010111010011110";
        ram[5] = "0b1011010000011101";
        ram[6] = "0b1011000010110001";
        ram[7] = "0b0010110001111001";
        ram[8] = "0b0010001100010011";
        ram[9] = "0b0010001100110000";
        ram[10] = "0b1010100100011111";
        ram[11] = "0b1011010000001101";
        ram[12] = "0b1010110001110000";
        ram[13] = "0b0010111000011100";
        ram[14] = "0b1011000110001010";
        ram[15] = "0b1010110101111000";
        ram[16] = "0b0010100010110111";
        ram[17] = "0b0010111111010001";
        ram[18] = "0b1010110000111111";
        ram[19] = "0b1010110011010000";
        ram[20] = "0b0010000010111101";
        ram[21] = "0b0011000010101101";
        ram[22] = "0b1010010100001000";
        ram[23] = "0b0011000010001100";
        ram[24] = "0b0010011100000111";
        ram[25] = "0b0010100000000011";
        ram[26] = "0b1011001110110100";
        ram[27] = "0b0010101011100011";
        ram[28] = "0b0010111111001011";
        ram[29] = "0b0010111110100001";
        ram[30] = "0b0011001110000100";
        ram[31] = "0b0010111111001000";
        ram[32] = "0b0010010011011111";
        ram[33] = "0b1011000000110101";
        ram[34] = "0b1010101010111100";
        ram[35] = "0b0011000100001111";
        ram[36] = "0b1010100001000001";
        ram[37] = "0b1010100110011001";
        ram[38] = "0b1010111101001110";
        ram[39] = "0b1011000011001010";
        ram[40] = "0b0010100100000000";
        ram[41] = "0b1010101100101101";
        ram[42] = "0b1010101111100110";
        ram[43] = "0b0010101010001111";
        ram[44] = "0b0011000001010000";
        ram[45] = "0b0010111001100111";
        ram[46] = "0b1011000010010010";
        ram[47] = "0b1010101000110101";
        ram[48] = "0b1010110101101110";
        ram[49] = "0b0010111010000000";
        ram[50] = "0b1010100011000001";
        ram[51] = "0b0010110110100111";


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


SC_MODULE(L2_wlo_L1_WEIGHTS_0) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTS_0_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTS_0) {
meminst = new L2_wlo_L1_WEIGHTS_0_ram("L2_wlo_L1_WEIGHTS_0_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTS_0() {
    delete meminst;
}


};//endmodule
#endif
