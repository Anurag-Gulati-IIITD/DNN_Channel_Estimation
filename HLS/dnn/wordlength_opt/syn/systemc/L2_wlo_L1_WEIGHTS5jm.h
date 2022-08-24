// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTS5jm_H__
#define __L2_wlo_L1_WEIGHTS5jm_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTS5jm_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTS5jm_ram) {
        ram[0] = "0b0010101001001100";
        ram[1] = "0b0010111000001101";
        ram[2] = "0b0000010111000100";
        ram[3] = "0b0011000110000000";
        ram[4] = "0b1010110001110101";
        ram[5] = "0b0010000101111010";
        ram[6] = "0b1011000101111100";
        ram[7] = "0b1010110100000100";
        ram[8] = "0b1011001011010110";
        ram[9] = "0b0010001110001000";
        ram[10] = "0b1011000001100010";
        ram[11] = "0b1010000100110101";
        ram[12] = "0b0010110110010011";
        ram[13] = "0b0011000110011110";
        ram[14] = "0b1010010101011010";
        ram[15] = "0b0011000111000010";
        ram[16] = "0b0010000111100100";
        ram[17] = "0b0010101011101011";
        ram[18] = "0b0010010010001110";
        ram[19] = "0b0010011000111000";
        ram[20] = "0b0010100000011001";
        ram[21] = "0b0010110100001010";
        ram[22] = "0b0010101010000000";
        ram[23] = "0b1011001010011110";
        ram[24] = "0b1010101010110100";
        ram[25] = "0b1010010011001000";
        ram[26] = "0b1011001000100011";
        ram[27] = "0b1010110110010000";
        ram[28] = "0b0010101000011001";
        ram[29] = "0b1010000100100101";
        ram[30] = "0b1010101001010111";
        ram[31] = "0b0010000001110010";
        ram[32] = "0b0010101000001011";
        ram[33] = "0b1001101100000010";
        ram[34] = "0b1011000111101010";
        ram[35] = "0b1010011011111101";
        ram[36] = "0b0010101010110010";
        ram[37] = "0b0011000111100110";
        ram[38] = "0b0010111011010101";
        ram[39] = "0b0010010001000100";
        ram[40] = "0b0010011111011001";
        ram[41] = "0b0010001110001111";
        ram[42] = "0b1010110001010001";
        ram[43] = "0b1011000101010010";
        ram[44] = "0b0010111001100000";
        ram[45] = "0b0010000101010011";
        ram[46] = "0b1010111000101000";
        ram[47] = "0b0001110010001010";
        ram[48] = "0b1010100110010011";
        ram[49] = "0b0011001001110010";
        ram[50] = "0b0011010000110101";
        ram[51] = "0b1010001111001000";


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


SC_MODULE(L2_wlo_L1_WEIGHTS5jm) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTS5jm_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTS5jm) {
meminst = new L2_wlo_L1_WEIGHTS5jm_ram("L2_wlo_L1_WEIGHTS5jm_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTS5jm() {
    delete meminst;
}


};//endmodule
#endif
