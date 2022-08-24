// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTS9j0_H__
#define __L2_wlo_L1_WEIGHTS9j0_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTS9j0_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTS9j0_ram) {
        ram[0] = "0b0010010011010111";
        ram[1] = "0b1010111010101100";
        ram[2] = "0b0010111110110010";
        ram[3] = "0b1010110101110000";
        ram[4] = "0b1001111110110101";
        ram[5] = "0b0011001010100001";
        ram[6] = "0b0010110110110000";
        ram[7] = "0b1010110000010001";
        ram[8] = "0b0010110110000111";
        ram[9] = "0b0010011011110001";
        ram[10] = "0b0010110111111011";
        ram[11] = "0b0010100100111001";
        ram[12] = "0b1010011011000001";
        ram[13] = "0b0011000001110001";
        ram[14] = "0b1010110100001101";
        ram[15] = "0b1010110101010010";
        ram[16] = "0b1010001001010110";
        ram[17] = "0b1010111000010100";
        ram[18] = "0b1010001101000110";
        ram[19] = "0b0010110010111110";
        ram[20] = "0b0010010101000010";
        ram[21] = "0b1010010111011101";
        ram[22] = "0b0010101010100000";
        ram[23] = "0b0010110000101011";
        ram[24] = "0b0010011100110010";
        ram[25] = "0b0010110010011011";
        ram[26] = "0b0011000011110010";
        ram[27] = "0b0010111101001001";
        ram[28] = "0b1010001001010010";
        ram[29] = "0b1011001010100101";
        ram[30] = "0b0010001100011010";
        ram[31] = "0b1010110010000000";
        ram[32] = "0b0010101000110011";
        ram[33] = "0b1001111111111100";
        ram[34] = "0b0010101010010111";
        ram[35] = "0b0010110000011011";
        ram[36] = "0b1001100100101001";
        ram[37] = "0b1011000000101100";
        ram[38] = "0b1010111110000100";
        ram[39] = "0b1001111011101010";
        ram[40] = "0b1010110000100000";
        ram[41] = "0b0010000110001011";
        ram[42] = "0b1010011000110111";
        ram[43] = "0b0011000001111100";
        ram[44] = "0b1010110110010000";
        ram[45] = "0b1010110111100111";
        ram[46] = "0b0010111010111110";
        ram[47] = "0b1010101001011010";
        ram[48] = "0b1010110000011011";
        ram[49] = "0b1011000111010010";
        ram[50] = "0b1010110110000010";
        ram[51] = "0b0010101011111011";


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


SC_MODULE(L2_wlo_L1_WEIGHTS9j0) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTS9j0_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTS9j0) {
meminst = new L2_wlo_L1_WEIGHTS9j0_ram("L2_wlo_L1_WEIGHTS9j0_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTS9j0() {
    delete meminst;
}


};//endmodule
#endif
