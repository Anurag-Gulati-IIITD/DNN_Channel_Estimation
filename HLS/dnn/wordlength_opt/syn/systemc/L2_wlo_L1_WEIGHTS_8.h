// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTS_8_H__
#define __L2_wlo_L1_WEIGHTS_8_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTS_8_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTS_8_ram) {
        ram[0] = "0b1010110000000101";
        ram[1] = "0b1010111001010101";
        ram[2] = "0b1010101110000111";
        ram[3] = "0b1010110101101000";
        ram[4] = "0b0001000000011111";
        ram[5] = "0b1010011001110101";
        ram[6] = "0b0010101011110100";
        ram[7] = "0b1010000110111111";
        ram[8] = "0b0011000101011111";
        ram[9] = "0b0010100000110111";
        ram[10] = "0b0010111100000110";
        ram[11] = "0b0001111000110100";
        ram[12] = "0b1010101001010010";
        ram[13] = "0b0010010000101111";
        ram[14] = "0b1011000010001101";
        ram[15] = "0b0010101000100110";
        ram[16] = "0b0010010111001010";
        ram[17] = "0b0010110000100101";
        ram[18] = "0b1010001011011110";
        ram[19] = "0b0010000011101010";
        ram[20] = "0b1010100101111011";
        ram[21] = "0b1010101101111011";
        ram[22] = "0b0010011001111001";
        ram[23] = "0b0010110100111111";
        ram[24] = "0b1010101101011001";
        ram[25] = "0b1010100111101110";
        ram[26] = "0b0011000011101001";
        ram[27] = "0b0011000111100011";
        ram[28] = "0b0010111100010011";
        ram[29] = "0b0010111000011100";
        ram[30] = "0b0011000000111101";
        ram[31] = "0b0010110010101010";
        ram[32] = "0b1010001011000011";
        ram[33] = "0b1010100000111010";
        ram[34] = "0b0010011111001011";
        ram[35] = "0b1011000100111010";
        ram[36] = "0b0010010111001000";
        ram[37] = "0b1010100110010100";
        ram[38] = "0b1010111100001101";
        ram[39] = "0b1001000011111111";
        ram[40] = "0b0010000100100110";
        ram[41] = "0b1010101001010011";
        ram[42] = "0b1010110000001111";
        ram[43] = "0b0010111000010101";
        ram[44] = "0b1010100010001000";
        ram[45] = "0b0010111100011101";
        ram[46] = "0b0011000011111001";
        ram[47] = "0b1010100110110011";
        ram[48] = "0b1010101000010110";
        ram[49] = "0b1010110100000110";
        ram[50] = "0b1010111000100101";
        ram[51] = "0b0010101101100101";


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


SC_MODULE(L2_wlo_L1_WEIGHTS_8) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTS_8_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTS_8) {
meminst = new L2_wlo_L1_WEIGHTS_8_ram("L2_wlo_L1_WEIGHTS_8_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTS_8() {
    delete meminst;
}


};//endmodule
#endif
