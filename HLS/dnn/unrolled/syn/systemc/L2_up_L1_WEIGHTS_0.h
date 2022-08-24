// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_0_H__
#define __L2_up_L1_WEIGHTS_0_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_0_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
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


   SC_CTOR(L2_up_L1_WEIGHTS_0_ram) {
        ram[0] = "0b00111100011111111111001101101011";
        ram[1] = "0b10111101111100100001111111110011";
        ram[2] = "0b10111110010111011000100110001011";
        ram[3] = "0b00111101101100110011111111001000";
        ram[4] = "0b00111101110100111100011110010011";
        ram[5] = "0b10111110100000111001011011110010";
        ram[6] = "0b10111110000101100001000010101110";
        ram[7] = "0b00111101100011110010100101001110";
        ram[8] = "0b00111100011000100101010000011110";
        ram[9] = "0b00111100011001011111001100001110";
        ram[10] = "0b10111101001000111101110101010101";
        ram[11] = "0b10111110100000011001000010001110";
        ram[12] = "0b10111101100011011111010100000110";
        ram[13] = "0b00111101110000110111000101010100";
        ram[14] = "0b10111110001100010011110010101100";
        ram[15] = "0b10111101101011110000111010010001";
        ram[16] = "0b00111101000101101101111000110011";
        ram[17] = "0b00111101111110100001101000001101";
        ram[18] = "0b10111101100001111101010011100001";
        ram[19] = "0b10111101100110100000010110011010";
        ram[20] = "0b00111100000101111010001001001001";
        ram[21] = "0b00111110000101011010111110110000";
        ram[22] = "0b10111100101000001111100100001001";
        ram[23] = "0b00111110000100010111101000000011";
        ram[24] = "0b00111100111000001110011100110110";
        ram[25] = "0b00111101000000000110010010101010";
        ram[26] = "0b10111110011101101000110000100110";
        ram[27] = "0b00111101010111000110010010111011";
        ram[28] = "0b00111101111110010101100110100011";
        ram[29] = "0b00111101111101000001111110100111";
        ram[30] = "0b00111110011100001000111001011000";
        ram[31] = "0b00111101111110001111110111100011";
        ram[32] = "0b00111100100110111110100011111111";
        ram[33] = "0b10111110000001101010100111000101";
        ram[34] = "0b10111101010101110111100101100100";
        ram[35] = "0b00111110001000011110100110101111";
        ram[36] = "0b10111101000010000010001001111001";
        ram[37] = "0b10111101001100110001001010110010";
        ram[38] = "0b10111101111010011100000000100011";
        ram[39] = "0b10111110000110010011001000001110";
        ram[40] = "0b00111101001000000000100011101010";
        ram[41] = "0b10111101011001011001011011001000";
        ram[42] = "0b10111101011111001100110000000011";
        ram[43] = "0b00111101010100011101010001110100";
        ram[44] = "0b00111110000010011111001000110100";
        ram[45] = "0b00111101110011001101100001010110";
        ram[46] = "0b10111110000100100011101110111100";
        ram[47] = "0b10111101010001101010110100101110";
        ram[48] = "0b10111101101011011011011110101110";
        ram[49] = "0b00111101110011111111101001111111";
        ram[50] = "0b10111101000110000001000101101111";
        ram[51] = "0b00111101101101001110101100010100";


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


SC_MODULE(L2_up_L1_WEIGHTS_0) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_0_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_0) {
meminst = new L2_up_L1_WEIGHTS_0_ram("L2_up_L1_WEIGHTS_0_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_0() {
    delete meminst;
}


};//endmodule
#endif
