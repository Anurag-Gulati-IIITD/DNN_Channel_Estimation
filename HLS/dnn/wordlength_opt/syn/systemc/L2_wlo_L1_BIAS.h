// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_BIAS_H__
#define __L2_wlo_L1_BIAS_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_BIAS_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_BIAS_ram) {
        ram[0] = "0b1011010000011111";
        ram[1] = "0b0010000110011100";
        ram[2] = "0b1011011011010101";
        ram[3] = "0b1011100101100110";
        ram[4] = "0b1001101000111111";
        ram[5] = "0b1011010110101110";
        ram[6] = "0b1010010010000011";
        ram[7] = "0b0010100110111011";
        ram[8] = "0b1010000111100000";
        ram[9] = "0b1010000101110011";
        ram[10] = "0b0010110000100010";
        ram[11] = "0b0011101010000001";
        ram[12] = "0b0010010001110111";
        ram[13] = "0b0011100001100011";
        ram[14] = "0b0001111011101011";
        ram[15] = "0b1010101011100000";
        ram[16] = "0b1010011010110010";
        ram[17] = "0b1011011110111001";
        ram[18] = "0b1010111110000010";
        ram[19] = "0b1011010000100100";
        ram[20] = "0b1011010100100011";
        ram[21] = "0b1011011011100000";
        ram[22] = "0b1010100111010011";
        ram[23] = "0b1010000110001101";
        ram[24] = "0b1011001100001011";
        ram[25] = "0b1010110010001110";
        ram[26] = "0b0010111101000111";
        ram[27] = "0b1010000000011100";
        ram[28] = "0b1011010011000010";
        ram[29] = "0b0011010011100010";
        ram[30] = "0b1001111011001111";
        ram[31] = "0b1010010100111011";
        ram[32] = "0b1001100011110000";
        ram[33] = "0b1011010100011110";
        ram[34] = "0b1010100000011111";
        ram[35] = "0b0011011101001101";
        ram[36] = "0b1011001010110000";
        ram[37] = "0b1010110000011111";
        ram[38] = "0b0001111110111111";
        ram[39] = "0b0010011010110011";
        ram[40] = "0b1011010000010100";
        ram[41] = "0b0001111000000001";
        ram[42] = "0b0010000110001101";
        ram[43] = "0b0010101100100010";
        ram[44] = "0b1011000110001010";
        ram[45] = "0b0010100000010010";
        ram[46] = "0b1011100101011000";
        ram[47] = "0b1011011011010010";
        ram[48] = "0b1010100000010100";
        ram[49] = "0b0010100010001010";
        ram[50] = "0b0010000110110101";
        ram[51] = "0b1010010111101001";


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


SC_MODULE(L2_wlo_L1_BIAS) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_BIAS_ram* meminst;


SC_CTOR(L2_wlo_L1_BIAS) {
meminst = new L2_wlo_L1_BIAS_ram("L2_wlo_L1_BIAS_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_BIAS() {
    delete meminst;
}


};//endmodule
#endif
