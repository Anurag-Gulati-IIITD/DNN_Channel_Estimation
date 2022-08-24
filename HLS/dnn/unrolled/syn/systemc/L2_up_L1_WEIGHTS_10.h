// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_10_H__
#define __L2_up_L1_WEIGHTS_10_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_10_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_10_ram) {
        ram[0] = "0b00111101101011010101100101001111";
        ram[1] = "0b00111110000001010010010000111010";
        ram[2] = "0b10111101100010100011100010111001";
        ram[3] = "0b00111101100010011001111100011011";
        ram[4] = "0b10111100110011110111000000010101";
        ram[5] = "0b00111101110011000110010011111110";
        ram[6] = "0b10111101100111100110100100100111";
        ram[7] = "0b10111101111011100000100011110010";
        ram[8] = "0b10111110000011000110110101100001";
        ram[9] = "0b00111100101001001100000111101100";
        ram[10] = "0b10111101111100100111110000111001";
        ram[11] = "0b00111101100001001001011011101110";
        ram[12] = "0b10111100110001100111001110000010";
        ram[13] = "0b00111110010101011000010000101011";
        ram[14] = "0b10111100001100101101000010100010";
        ram[15] = "0b00111110001000011111110111011111";
        ram[16] = "0b00111100110000110010000000010000";
        ram[17] = "0b00111101100011000110000001000110";
        ram[18] = "0b00111101001111001110001000001001";
        ram[19] = "0b00111101000110100110011000010011";
        ram[20] = "0b00111101100001010110010001110011";
        ram[21] = "0b00111101010000110011011100100010";
        ram[22] = "0b00111101100000000001111101110101";
        ram[23] = "0b10111110000010011001001011001001";
        ram[24] = "0b10111100100111111010010101001100";
        ram[25] = "0b10111101101010101111010001101011";
        ram[26] = "0b10111101100101101001000010011011";
        ram[27] = "0b10111101000010000001000110110010";
        ram[28] = "0b00111110001011111011110001011110";
        ram[29] = "0b10111101110010110101111011011001";
        ram[30] = "0b00111101111010100100101100010010";
        ram[31] = "0b00111101001100101000101101101110";
        ram[32] = "0b00111101101110001011110001011010";
        ram[33] = "0b00111100101100111110010101110101";
        ram[34] = "0b10111110000100010011101011010110";
        ram[35] = "0b10111110000001100111001001110101";
        ram[36] = "0b00111101010101101100011000010101";
        ram[37] = "0b00111110001000011000100110111110";
        ram[38] = "0b10111100110000011001110000010111";
        ram[39] = "0b10111101101111111110111010110011";
        ram[40] = "0b00111101000010100100001010101111";
        ram[41] = "0b10111100111101001110110010100111";
        ram[42] = "0b10111101101100100010010000100101";
        ram[43] = "0b10111101111101101110100010110000";
        ram[44] = "0b00111100001110111010110111000001";
        ram[45] = "0b10111101010000111001000101001111";
        ram[46] = "0b10111101100100110111011011010101";
        ram[47] = "0b00111101010001110000011001001111";
        ram[48] = "0b00111101001010101000011001010001";
        ram[49] = "0b00111101110010110110111000001101";
        ram[50] = "0b00111110000101111110011001110001";
        ram[51] = "0b00111101101110011011000000100101";


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


SC_MODULE(L2_up_L1_WEIGHTS_10) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_10_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_10) {
meminst = new L2_up_L1_WEIGHTS_10_ram("L2_up_L1_WEIGHTS_10_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_10() {
    delete meminst;
}


};//endmodule
#endif
