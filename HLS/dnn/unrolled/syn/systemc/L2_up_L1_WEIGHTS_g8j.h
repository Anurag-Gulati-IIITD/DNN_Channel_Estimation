// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_g8j_H__
#define __L2_up_L1_WEIGHTS_g8j_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_g8j_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_g8j_ram) {
        ram[0] = "0b10111101001100010011100010111101";
        ram[1] = "0b00111101001011110101001000110011";
        ram[2] = "0b10111101101101101001010101010011";
        ram[3] = "0b10111101000000011000011100011110";
        ram[4] = "0b10111110100100110101011000110010";
        ram[5] = "0b10111110011000000011100000011001";
        ram[6] = "0b10111100001000000101110111011001";
        ram[7] = "0b00111011100100100100011010111111";
        ram[8] = "0b00111101101100111011011001000110";
        ram[9] = "0b10111110101011110101111001000010";
        ram[10] = "0b00111100110111001001011000000011";
        ram[11] = "0b00111110010100100001111101101101";
        ram[12] = "0b00111101000011010111101111101010";
        ram[13] = "0b10111110000110011111111011001010";
        ram[14] = "0b10111100110001111111100110010100";
        ram[15] = "0b00111101111000100111011111000100";
        ram[16] = "0b10111101011110001101110101100001";
        ram[17] = "0b00111101000101111011011000110101";
        ram[18] = "0b00111101000010110100101011101101";
        ram[19] = "0b10111110001100111100010001101110";
        ram[20] = "0b00111101000001011101010000100000";
        ram[21] = "0b00111101001110001110000010000111";
        ram[22] = "0b00111101100000101101101001010101";
        ram[23] = "0b10111101110110001100001000011110";
        ram[24] = "0b10111101101111011010110101110101";
        ram[25] = "0b00111011110011011111101011001010";
        ram[26] = "0b00111101000100100010000011111111";
        ram[27] = "0b10111010100011010100101110101101";
        ram[28] = "0b10111110001100011010011011010111";
        ram[29] = "0b00111110001101100111000001011101";
        ram[30] = "0b00111101111001100000000100110110";
        ram[31] = "0b10111010110001001011110100110100";
        ram[32] = "0b00111101111101111111101101101010";
        ram[33] = "0b00111110011101100110011100110000";
        ram[34] = "0b10111100101100011011011110011110";
        ram[35] = "0b10111101000100011101010110000000";
        ram[36] = "0b10111101010101000001100101011101";
        ram[37] = "0b10111010100111011000110001101101";
        ram[38] = "0b00111100110110110011100111100010";
        ram[39] = "0b00111101101001010100110001010101";
        ram[40] = "0b00111101100100101011111101010101";
        ram[41] = "0b00111110000000010110100111000010";
        ram[42] = "0b00111110000011011001110000101000";
        ram[43] = "0b10111110000110111111110001100101";
        ram[44] = "0b00111101010010110101011001110101";
        ram[45] = "0b00111101011110100110000101011011";
        ram[46] = "0b00111101110110111010101010011011";
        ram[47] = "0b00111100110000000110011111001111";
        ram[48] = "0b10111101011001011111010100100111";
        ram[49] = "0b00111101011101110010001111101110";
        ram[50] = "0b10111101011111101110100100010100";
        ram[51] = "0b10111101110111100000101001000010";


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


SC_MODULE(L2_up_L1_WEIGHTS_g8j) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_g8j_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_g8j) {
meminst = new L2_up_L1_WEIGHTS_g8j_ram("L2_up_L1_WEIGHTS_g8j_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_g8j() {
    delete meminst;
}


};//endmodule
#endif
