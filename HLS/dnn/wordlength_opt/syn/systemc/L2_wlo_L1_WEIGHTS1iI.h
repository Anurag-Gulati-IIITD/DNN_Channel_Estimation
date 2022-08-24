// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTS1iI_H__
#define __L2_wlo_L1_WEIGHTS1iI_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTS1iI_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTS1iI_ram) {
        ram[0] = "0b0010001110000001";
        ram[1] = "0b1011000001000000";
        ram[2] = "0b1010111010111000";
        ram[3] = "0b1010011100000111";
        ram[4] = "0b1010000111001011";
        ram[5] = "0b1011000011011000";
        ram[6] = "0b0000110000110110";
        ram[7] = "0b0010010110101001";
        ram[8] = "0b0010110111001110";
        ram[9] = "0b0010110001101001";
        ram[10] = "0b0010101010111011";
        ram[11] = "0b1011000011100001";
        ram[12] = "0b1010100010110101";
        ram[13] = "0b1010010000011001";
        ram[14] = "0b1010100100001010";
        ram[15] = "0b1011000010011101";
        ram[16] = "0b1010011001000101";
        ram[17] = "0b0011001011110111";
        ram[18] = "0b0010101101000101";
        ram[19] = "0b1010101110000010";
        ram[20] = "0b0001100001100010";
        ram[21] = "0b0010110110000010";
        ram[22] = "0b1010111110011010";
        ram[23] = "0b0011000111101001";
        ram[24] = "0b1010110100111110";
        ram[25] = "0b0010001111101101";
        ram[26] = "0b0010100101110011";
        ram[27] = "0b0010110010110111";
        ram[28] = "0b0010010100000010";
        ram[29] = "0b0011001001101010";
        ram[30] = "0b0010000011110100";
        ram[31] = "0b0010011101001010";
        ram[32] = "0b0001100000100111";
        ram[33] = "0b1010001011111011";
        ram[34] = "0b0010110011000101";
        ram[35] = "0b1011000010001100";
        ram[36] = "0b1001100111110011";
        ram[37] = "0b0001111001011001";
        ram[38] = "0b1010010001000000";
        ram[39] = "0b1010110101110110";
        ram[40] = "0b0010111000101010";
        ram[41] = "0b1010010100000111";
        ram[42] = "0b1010110011101000";
        ram[43] = "0b0010111111010000";
        ram[44] = "0b1010011101000100";
        ram[45] = "0b1010000110110001";
        ram[46] = "0b0010100111000011";
        ram[47] = "0b0010100000010101";
        ram[48] = "0b1010111010100101";
        ram[49] = "0b0010010100010111";
        ram[50] = "0b1010110100110110";
        ram[51] = "0b0010111101100011";


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


SC_MODULE(L2_wlo_L1_WEIGHTS1iI) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTS1iI_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTS1iI) {
meminst = new L2_wlo_L1_WEIGHTS1iI_ram("L2_wlo_L1_WEIGHTS1iI_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTS1iI() {
    delete meminst;
}


};//endmodule
#endif
