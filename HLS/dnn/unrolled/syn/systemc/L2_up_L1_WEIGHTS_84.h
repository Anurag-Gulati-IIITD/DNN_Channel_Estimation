// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_84_H__
#define __L2_up_L1_WEIGHTS_84_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_84_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_84_ram) {
        ram[0] = "0b00111101000101011011101010110010";
        ram[1] = "0b10111101111000111110110100001111";
        ram[2] = "0b00111101010000010101101000001000";
        ram[3] = "0b00111110010001011001101011111010";
        ram[4] = "0b10111101100111100011011001001100";
        ram[5] = "0b00111101011010000001011001101010";
        ram[6] = "0b00111101010110110010000111000100";
        ram[7] = "0b00111100101011100101011110010111";
        ram[8] = "0b00111101010000000011110111011110";
        ram[9] = "0b00111101001000101001100001000110";
        ram[10] = "0b00111011110010001010101111010110";
        ram[11] = "0b00111101000001010010110001011010";
        ram[12] = "0b10111100001000110011001101110110";
        ram[13] = "0b10111100001110001110100011101010";
        ram[14] = "0b00111101011001001000111110010111";
        ram[15] = "0b00111110100001110000110010111011";
        ram[16] = "0b10111101110010001100001111110100";
        ram[17] = "0b10111101011010000001101010011100";
        ram[18] = "0b10111101101000101100010001010000";
        ram[19] = "0b10111101100100011001100010101111";
        ram[20] = "0b10111101010010011101100011000111";
        ram[21] = "0b00111100100110011001100110011010";
        ram[22] = "0b00111011110011000011010111001110";
        ram[23] = "0b00111101100010101101100010100001";
        ram[24] = "0b00111101110110001011001111110110";
        ram[25] = "0b00111100110111110001100111010110";
        ram[26] = "0b10111100100100010111101101010011";
        ram[27] = "0b00111010110011010100001000111110";
        ram[28] = "0b10111100110111010001100000001001";
        ram[29] = "0b10111100101110001111110111100011";
        ram[30] = "0b10111101011110010011110011001101";
        ram[31] = "0b00111100100111001011111011101000";
        ram[32] = "0b00111101101011100101111111111010";
        ram[33] = "0b00111101001011001110000000110011";
        ram[34] = "0b00111101010101100010100011001100";
        ram[35] = "0b00111101100000011001100111111110";
        ram[36] = "0b00111101101110010110010100101100";
        ram[37] = "0b10111101001100101111101110100000";
        ram[38] = "0b10111100100011000111100111110110";
        ram[39] = "0b10111101100101110001011001001100";
        ram[40] = "0b10111101000001111001111101100110";
        ram[41] = "0b00111101110010010111101001101000";
        ram[42] = "0b10111010110010001010101111010110";
        ram[43] = "0b10111110011011010110100110010000";
        ram[44] = "0b00111100110000001100111010010010";
        ram[45] = "0b10111100101011111100101011001001";
        ram[46] = "0b10111101110101010010101010000100";
        ram[47] = "0b10111100010011110010010010010110";
        ram[48] = "0b00111101010110100101010101001100";
        ram[49] = "0b00111011111000011110011100010000";
        ram[50] = "0b10111101100000101101001011111110";
        ram[51] = "0b10111100101100011001000111011110";


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


SC_MODULE(L2_up_L1_WEIGHTS_84) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_84_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_84) {
meminst = new L2_up_L1_WEIGHTS_84_ram("L2_up_L1_WEIGHTS_84_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_84() {
    delete meminst;
}


};//endmodule
#endif
