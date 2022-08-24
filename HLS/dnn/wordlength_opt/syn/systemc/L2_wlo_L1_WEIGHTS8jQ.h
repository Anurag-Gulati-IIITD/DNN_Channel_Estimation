// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTS8jQ_H__
#define __L2_wlo_L1_WEIGHTS8jQ_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTS8jQ_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTS8jQ_ram) {
        ram[0] = "0b0010110101101110";
        ram[1] = "0b1010100101001001";
        ram[2] = "0b0010110111011101";
        ram[3] = "0b1010111010101010";
        ram[4] = "0b0010111100001000";
        ram[5] = "0b1010101110011101";
        ram[6] = "0b1001010100011100";
        ram[7] = "0b0010010101111000";
        ram[8] = "0b0011000011001010";
        ram[9] = "0b1010110011000100";
        ram[10] = "0b0011000001001010";
        ram[11] = "0b0001011001101100";
        ram[12] = "0b0010110000011111";
        ram[13] = "0b1011000000001000";
        ram[14] = "0b0010001101111101";
        ram[15] = "0b1011000000011111";
        ram[16] = "0b0010110001111010";
        ram[17] = "0b1011000100011110";
        ram[18] = "0b1010100110100000";
        ram[19] = "0b0010000001011111";
        ram[20] = "0b1001111110000010";
        ram[21] = "0b1010011000011101";
        ram[22] = "0b1000100100111110";
        ram[23] = "0b0010101100001011";
        ram[24] = "0b0010001011001100";
        ram[25] = "0b0010010101000010";
        ram[26] = "0b1010011010001001";
        ram[27] = "0b0010110100100100";
        ram[28] = "0b0010100010010001";
        ram[29] = "0b1010001001000101";
        ram[30] = "0b1010011110101100";
        ram[31] = "0b0010100011010100";
        ram[32] = "0b1010100000111100";
        ram[33] = "0b0010110011111100";
        ram[34] = "0b0010111010011111";
        ram[35] = "0b0010111101101100";
        ram[36] = "0b0010111011101010";
        ram[37] = "0b1010111010010001";
        ram[38] = "0b1010111001011100";
        ram[39] = "0b0010100111010001";
        ram[40] = "0b1010110000111011";
        ram[41] = "0b1010100101111001";
        ram[42] = "0b0010111111001011";
        ram[43] = "0b0011000001110010";
        ram[44] = "0b1010110011100101";
        ram[45] = "0b1010111001100011";
        ram[46] = "0b0010111111010001";
        ram[47] = "0b1010110010110101";
        ram[48] = "0b0011000000010110";
        ram[49] = "0b1010111010100101";
        ram[50] = "0b1011000101001100";
        ram[51] = "0b1010110101111100";


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


SC_MODULE(L2_wlo_L1_WEIGHTS8jQ) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTS8jQ_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTS8jQ) {
meminst = new L2_wlo_L1_WEIGHTS8jQ_ram("L2_wlo_L1_WEIGHTS8jQ_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTS8jQ() {
    delete meminst;
}


};//endmodule
#endif
