// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTS_9_H__
#define __L2_wlo_L1_WEIGHTS_9_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTS_9_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTS_9_ram) {
        ram[0] = "0b0010101101010011";
        ram[1] = "0b0010010010101000";
        ram[2] = "0b0010100100110110";
        ram[3] = "0b1010110001111010";
        ram[4] = "0b1010001100000000";
        ram[5] = "0b0011000100111101";
        ram[6] = "0b0010100110100010";
        ram[7] = "0b1011000001010100";
        ram[8] = "0b1010100100011011";
        ram[9] = "0b0010101111111111";
        ram[10] = "0b1010101100000101";
        ram[11] = "0b0010110101110100";
        ram[12] = "0b1010110100101100";
        ram[13] = "0b0011001000100100";
        ram[14] = "0b1010111000011000";
        ram[15] = "0b0010101001011110";
        ram[16] = "0b0010110011011101";
        ram[17] = "0b1010010001001111";
        ram[18] = "0b0010001001111001";
        ram[19] = "0b0010100011110101";
        ram[20] = "0b1001101100001110";
        ram[21] = "0b1010100011001001";
        ram[22] = "0b0011000111010001";
        ram[23] = "0b1010100001110010";
        ram[24] = "0b1010101000110101";
        ram[25] = "0b0010010010011100";
        ram[26] = "0b1010011011000110";
        ram[27] = "0b0010100111100111";
        ram[28] = "0b0011000001010110";
        ram[29] = "0b1011000110010010";
        ram[30] = "0b0011001001010010";
        ram[31] = "0b0010110010000000";
        ram[32] = "0b1010110000111111";
        ram[33] = "0b1010111011101001";
        ram[34] = "0b0010101011001011";
        ram[35] = "0b1011001000110011";
        ram[36] = "0b1010110010100100";
        ram[37] = "0b0010111010101001";
        ram[38] = "0b1011000010010010";
        ram[39] = "0b1010101000011001";
        ram[40] = "0b0010101001110110";
        ram[41] = "0b1000010110010010";
        ram[42] = "0b1010110110001011";
        ram[43] = "0b1000110101000111";
        ram[44] = "0b0010011000001100";
        ram[45] = "0b0010101100111100";
        ram[46] = "0b0010111000010011";
        ram[47] = "0b0001100101100100";
        ram[48] = "0b1010110010111010";
        ram[49] = "0b1010101010000101";
        ram[50] = "0b0010000100100010";
        ram[51] = "0b0010110000010000";


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


SC_MODULE(L2_wlo_L1_WEIGHTS_9) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTS_9_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTS_9) {
meminst = new L2_wlo_L1_WEIGHTS_9_ram("L2_wlo_L1_WEIGHTS_9_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTS_9() {
    delete meminst;
}


};//endmodule
#endif
