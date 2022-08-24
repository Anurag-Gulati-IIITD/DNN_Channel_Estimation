// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTS_7_H__
#define __L2_wlo_L1_WEIGHTS_7_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTS_7_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTS_7_ram) {
        ram[0] = "0b1010110001101110";
        ram[1] = "0b1011000010101010";
        ram[2] = "0b1010110001110000";
        ram[3] = "0b1010100111001010";
        ram[4] = "0b1010010010101001";
        ram[5] = "0b1010111101011000";
        ram[6] = "0b0010100000100100";
        ram[7] = "0b0010100010000010";
        ram[8] = "0b0011000110111001";
        ram[9] = "0b1010101000000001";
        ram[10] = "0b0011000000111001";
        ram[11] = "0b0010101100101101";
        ram[12] = "0b1010110110011100";
        ram[13] = "0b1010110001000010";
        ram[14] = "0b1010110001100011";
        ram[15] = "0b1011001001101100";
        ram[16] = "0b0010110100010111";
        ram[17] = "0b1001111001100110";
        ram[18] = "0b0010010100110100";
        ram[19] = "0b1010101101000010";
        ram[20] = "0b0010011010001010";
        ram[21] = "0b1010000000010011";
        ram[22] = "0b0001110101011010";
        ram[23] = "0b0011000001101111";
        ram[24] = "0b0001101111100100";
        ram[25] = "0b0001110010001011";
        ram[26] = "0b0010111110001011";
        ram[27] = "0b0010011101110110";
        ram[28] = "0b1010111001110011";
        ram[29] = "0b0010110111100100";
        ram[30] = "0b0010111100001011";
        ram[31] = "0b1010001100001110";
        ram[32] = "0b1010010110011000";
        ram[33] = "0b0010010001101111";
        ram[34] = "0b0010010110100010";
        ram[35] = "0b1010101001010101";
        ram[36] = "0b0010101111101110";
        ram[37] = "0b1011000000010001";
        ram[38] = "0b1010110110111111";
        ram[39] = "0b1010111101100010";
        ram[40] = "0b0010101000010100";
        ram[41] = "0b0010010110010010";
        ram[42] = "0b0010000010011100";
        ram[43] = "0b0011000000100101";
        ram[44] = "0b1010101011010110";
        ram[45] = "0b0000100111110111";
        ram[46] = "0b0010111011101011";
        ram[47] = "0b1010110100011000";
        ram[48] = "0b1010100100101110";
        ram[49] = "0b1010110010100011";
        ram[50] = "0b1011001000001001";
        ram[51] = "0b0010110001100000";


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


SC_MODULE(L2_wlo_L1_WEIGHTS_7) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTS_7_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTS_7) {
meminst = new L2_wlo_L1_WEIGHTS_7_ram("L2_wlo_L1_WEIGHTS_7_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTS_7() {
    delete meminst;
}


};//endmodule
#endif
