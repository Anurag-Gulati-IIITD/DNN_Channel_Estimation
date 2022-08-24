// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTS_1_H__
#define __L2_wlo_L1_WEIGHTS_1_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTS_1_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTS_1_ram) {
        ram[0] = "0b0010110001101001";
        ram[1] = "0b0010101001001000";
        ram[2] = "0b0010001100111100";
        ram[3] = "0b1010111010110000";
        ram[4] = "0b0011000011001010";
        ram[5] = "0b1011001010000010";
        ram[6] = "0b0001010000001111";
        ram[7] = "0b1010100101000101";
        ram[8] = "0b0011000001101111";
        ram[9] = "0b1010100111010111";
        ram[10] = "0b0001110011110010";
        ram[11] = "0b1011000001110000";
        ram[12] = "0b1010110011001110";
        ram[13] = "0b1011000010101110";
        ram[14] = "0b1011000111111011";
        ram[15] = "0b0010111000001000";
        ram[16] = "0b0010011110001111";
        ram[17] = "0b0010111010011110";
        ram[18] = "0b1010101010111011";
        ram[19] = "0b0010101001101100";
        ram[20] = "0b0000101010101111";
        ram[21] = "0b0010100110100101";
        ram[22] = "0b1010100001111001";
        ram[23] = "0b1010001101110100";
        ram[24] = "0b0010101111011000";
        ram[25] = "0b0010100100000110";
        ram[26] = "0b1011000001001110";
        ram[27] = "0b0011010101111110";
        ram[28] = "0b0010010110010010";
        ram[29] = "0b0011001010111001";
        ram[30] = "0b0011000101111010";
        ram[31] = "0b0010101001111010";
        ram[32] = "0b1010111100101101";
        ram[33] = "0b1010100100111010";
        ram[34] = "0b0010101111011001";
        ram[35] = "0b0011001010110000";
        ram[36] = "0b1010100011001000";
        ram[37] = "0b0010101101011100";
        ram[38] = "0b1011010100110010";
        ram[39] = "0b1011000010001110";
        ram[40] = "0b0010010011110001";
        ram[41] = "0b1010111111100001";
        ram[42] = "0b0010111111001010";
        ram[43] = "0b1010110011100100";
        ram[44] = "0b1010100011101110";
        ram[45] = "0b1010100110000011";
        ram[46] = "0b0010110100101000";
        ram[47] = "0b0001011110111011";
        ram[48] = "0b1010101010111111";
        ram[49] = "0b1010011100001000";
        ram[50] = "0b1011000001000111";
        ram[51] = "0b0010101001110101";


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


SC_MODULE(L2_wlo_L1_WEIGHTS_1) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTS_1_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTS_1) {
meminst = new L2_wlo_L1_WEIGHTS_1_ram("L2_wlo_L1_WEIGHTS_1_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTS_1() {
    delete meminst;
}


};//endmodule
#endif
