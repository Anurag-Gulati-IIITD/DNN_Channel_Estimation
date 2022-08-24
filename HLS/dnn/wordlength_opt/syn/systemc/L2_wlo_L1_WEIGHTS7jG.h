// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTS7jG_H__
#define __L2_wlo_L1_WEIGHTS7jG_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTS7jG_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTS7jG_ram) {
        ram[0] = "0b1001110110001100";
        ram[1] = "0b0010001111100001";
        ram[2] = "0b1010100110101011";
        ram[3] = "0b0010010111111100";
        ram[4] = "0b0001110010100100";
        ram[5] = "0b1011000101011011";
        ram[6] = "0b0010101001101001";
        ram[7] = "0b0010110010001100";
        ram[8] = "0b0010100101000011";
        ram[9] = "0b1011000010100110";
        ram[10] = "0b1010011100000100";
        ram[11] = "0b1010110000001000";
        ram[12] = "0b0011000000010111";
        ram[13] = "0b1010111000111010";
        ram[14] = "0b0010110010010001";
        ram[15] = "0b1010101000101111";
        ram[16] = "0b0010110010011110";
        ram[17] = "0b0010100111010101";
        ram[18] = "0b1010110101011101";
        ram[19] = "0b1010011001000101";
        ram[20] = "0b0010100111110000";
        ram[21] = "0b1010101001111100";
        ram[22] = "0b1011000100110110";
        ram[23] = "0b0010001100101001";
        ram[24] = "0b0011000000010000";
        ram[25] = "0b0010100110000011";
        ram[26] = "0b1010110101110100";
        ram[27] = "0b1001100000111011";
        ram[28] = "0b0001101000001100";
        ram[29] = "0b0011000110010000";
        ram[30] = "0b1010110101111001";
        ram[31] = "0b1010100000001101";
        ram[32] = "0b1010110101110110";
        ram[33] = "0b0010001110001001";
        ram[34] = "0b0010110111001010";
        ram[35] = "0b0011000011001100";
        ram[36] = "0b1001111100011100";
        ram[37] = "0b0010010011011011";
        ram[38] = "0b0010110100100100";
        ram[39] = "0b0001111001011010";
        ram[40] = "0b1010100000110010";
        ram[41] = "0b1010110011001000";
        ram[42] = "0b0010100011100100";
        ram[43] = "0b0010111110001111";
        ram[44] = "0b1010110110011011";
        ram[45] = "0b1010001110010100";
        ram[46] = "0b1010110100101011";
        ram[47] = "0b1010001101001101";
        ram[48] = "0b0010100000011000";
        ram[49] = "0b0010001000010001";
        ram[50] = "0b1010100111111001";
        ram[51] = "0b1010111101010000";


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


SC_MODULE(L2_wlo_L1_WEIGHTS7jG) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTS7jG_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTS7jG) {
meminst = new L2_wlo_L1_WEIGHTS7jG_ram("L2_wlo_L1_WEIGHTS7jG_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTS7jG() {
    delete meminst;
}


};//endmodule
#endif
