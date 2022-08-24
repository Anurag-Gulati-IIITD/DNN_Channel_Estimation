// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTS_4_H__
#define __L2_wlo_L1_WEIGHTS_4_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTS_4_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTS_4_ram) {
        ram[0] = "0b1010010010000100";
        ram[1] = "0b0010111110100110";
        ram[2] = "0b0011000111110000";
        ram[3] = "0b1010011100001100";
        ram[4] = "0b1010110001010100";
        ram[5] = "0b0011010011101011";
        ram[6] = "0b0010110010111010";
        ram[7] = "0b1010101010010010";
        ram[8] = "0b1010110101111011";
        ram[9] = "0b0001100100100111";
        ram[10] = "0b1010101011101100";
        ram[11] = "0b0011000001010010";
        ram[12] = "0b0010111100101001";
        ram[13] = "0b0010001001100111";
        ram[14] = "0b0011000000110011";
        ram[15] = "0b1010110001100100";
        ram[16] = "0b0010011001001111";
        ram[17] = "0b1011001010101110";
        ram[18] = "0b1001100100000101";
        ram[19] = "0b0010110110100100";
        ram[20] = "0b1010011001101101";
        ram[21] = "0b1011000100110011";
        ram[22] = "0b0010100100100111";
        ram[23] = "0b1010110011111110";
        ram[24] = "0b0010000100000010";
        ram[25] = "0b0010100001100001";
        ram[26] = "0b0011000100001010";
        ram[27] = "0b1010110001110010";
        ram[28] = "0b1010110111001100";
        ram[29] = "0b1011001101001100";
        ram[30] = "0b1011001010011001";
        ram[31] = "0b1010110100010101";
        ram[32] = "0b0010101001100111";
        ram[33] = "0b0010011001111101";
        ram[34] = "0b0010110000101111";
        ram[35] = "0b0011000000010110";
        ram[36] = "0b0010100001000011";
        ram[37] = "0b0011000100001000";
        ram[38] = "0b0010110111000101";
        ram[39] = "0b0010011100010001";
        ram[40] = "0b1010110101100010";
        ram[41] = "0b0010011101001010";
        ram[42] = "0b0010100101100011";
        ram[43] = "0b0010011110010011";
        ram[44] = "0b1010110101011100";
        ram[45] = "0b1010111110101010";
        ram[46] = "0b0001100011111010";
        ram[47] = "0b0001110111110110";
        ram[48] = "0b0010110010110011";
        ram[49] = "0b0010100001010011";
        ram[50] = "0b0011000101000011";
        ram[51] = "0b1011000011010010";


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


SC_MODULE(L2_wlo_L1_WEIGHTS_4) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTS_4_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTS_4) {
meminst = new L2_wlo_L1_WEIGHTS_4_ram("L2_wlo_L1_WEIGHTS_4_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTS_4() {
    delete meminst;
}


};//endmodule
#endif
