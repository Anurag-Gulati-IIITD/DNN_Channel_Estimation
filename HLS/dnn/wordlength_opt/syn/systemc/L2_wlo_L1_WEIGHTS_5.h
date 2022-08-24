// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTS_5_H__
#define __L2_wlo_L1_WEIGHTS_5_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTS_5_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTS_5_ram) {
        ram[0] = "0b0010010111101000";
        ram[1] = "0b1010111001011010";
        ram[2] = "0b0010111011100110";
        ram[3] = "0b0010010100101110";
        ram[4] = "0b1011000000110010";
        ram[5] = "0b0011000100001010";
        ram[6] = "0b0010100111001010";
        ram[7] = "0b1010100011000000";
        ram[8] = "0b1010011001001111";
        ram[9] = "0b1010101101010000";
        ram[10] = "0b1001110111000010";
        ram[11] = "0b0001110111111100";
        ram[12] = "0b0010101101110100";
        ram[13] = "0b0010110001010100";
        ram[14] = "0b0011001010001001";
        ram[15] = "0b1011000100110001";
        ram[16] = "0b1010011101010011";
        ram[17] = "0b0001111010011001";
        ram[18] = "0b0010011010001111";
        ram[19] = "0b0010111010011110";
        ram[20] = "0b1010011001001101";
        ram[21] = "0b1010100100011010";
        ram[22] = "0b1010110110100100";
        ram[23] = "0b0010100001100110";
        ram[24] = "0b0010110011110011";
        ram[25] = "0b1010101000110111";
        ram[26] = "0b0010011001001111";
        ram[27] = "0b1011010010010011";
        ram[28] = "0b1010011110000001";
        ram[29] = "0b1010111000000011";
        ram[30] = "0b1010111110100010";
        ram[31] = "0b1010101010001010";
        ram[32] = "0b0010110111000100";
        ram[33] = "0b0010011111011100";
        ram[34] = "0b1010101011011000";
        ram[35] = "0b0011000011001110";
        ram[36] = "0b0010100001110100";
        ram[37] = "0b0010001100111011";
        ram[38] = "0b0011001101101111";
        ram[39] = "0b0010110010111000";
        ram[40] = "0b0010101101101001";
        ram[41] = "0b0011000000000110";
        ram[42] = "0b1001110110010101";
        ram[43] = "0b0011000101000000";
        ram[44] = "0b1010101111000100";
        ram[45] = "0b1010011110001100";
        ram[46] = "0b1011000101111010";
        ram[47] = "0b0010001101000100";
        ram[48] = "0b0010101111011011";
        ram[49] = "0b1001110000101010";
        ram[50] = "0b0010110010111101";
        ram[51] = "0b0010000100001100";


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


SC_MODULE(L2_wlo_L1_WEIGHTS_5) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTS_5_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTS_5) {
meminst = new L2_wlo_L1_WEIGHTS_5_ram("L2_wlo_L1_WEIGHTS_5_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTS_5() {
    delete meminst;
}


};//endmodule
#endif
