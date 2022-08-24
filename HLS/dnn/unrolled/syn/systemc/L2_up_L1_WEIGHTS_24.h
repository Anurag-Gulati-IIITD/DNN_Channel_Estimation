// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_24_H__
#define __L2_up_L1_WEIGHTS_24_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_24_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_24_ram) {
        ram[0] = "0b00111101001010111110100111001001";
        ram[1] = "0b00111110000011100111110110011010";
        ram[2] = "0b00111101011101011100001110011100";
        ram[3] = "0b00111100111000010000110011110110";
        ram[4] = "0b10111010100110111001010100011100";
        ram[5] = "0b10111101111100001100110111001000";
        ram[6] = "0b10111101110110101101011001000101";
        ram[7] = "0b10111100110010010100111101101010";
        ram[8] = "0b10111101101110100110110111110000";
        ram[9] = "0b00111110000010110100111111101000";
        ram[10] = "0b00111110000001111000100011011011";
        ram[11] = "0b10111100001001110101110011010001";
        ram[12] = "0b00111101011111011110011100100001";
        ram[13] = "0b10111101111101110010110111100100";
        ram[14] = "0b10111100100001100000011110000001";
        ram[15] = "0b10111101010001001100000001011001";
        ram[16] = "0b00111101010010111000001010000000";
        ram[17] = "0b10111101000010101011000011001001";
        ram[18] = "0b10111101001110001111010001110011";
        ram[19] = "0b00111100111000100000110011010000";
        ram[20] = "0b00111101100010101010010111000110";
        ram[21] = "0b10111100000011110011101010011011";
        ram[22] = "0b10111101000101010111001101100100";
        ram[23] = "0b10111110100010110010001100010100";
        ram[24] = "0b00111100000110010100010110110111";
        ram[25] = "0b10111101011111000110101110001011";
        ram[26] = "0b10111101111010000001010011010111";
        ram[27] = "0b00111110001111110000110010111011";
        ram[28] = "0b00111101101000010010011110110011";
        ram[29] = "0b00111101101000010110110011101000";
        ram[30] = "0b10111011111110100011111111001101";
        ram[31] = "0b10111101001001001010000001011110";
        ram[32] = "0b10111101001010001111011011001111";
        ram[33] = "0b10111100101010100100111111001010";
        ram[34] = "0b10111101110110001011100110111011";
        ram[35] = "0b00111101010011001111100111100100";
        ram[36] = "0b00111101011001010110101111001010";
        ram[37] = "0b10111101111001011101110100001001";
        ram[38] = "0b10111101001001111001101110111011";
        ram[39] = "0b10111011000100101101110110111110";
        ram[40] = "0b00111100110101110100101101000000";
        ram[41] = "0b00111100001011110100111100001110";
        ram[42] = "0b10111101101111100100000101001110";
        ram[43] = "0b00111101100001100001010110101001";
        ram[44] = "0b00111101010010000101111000111110";
        ram[45] = "0b00111101101011011110000000001101";
        ram[46] = "0b00111100100110010101101010101111";
        ram[47] = "0b10111100001000101010010011011011";
        ram[48] = "0b10111110000110010110110001000000";
        ram[49] = "0b00111101101111110110001000110000";
        ram[50] = "0b00111110000100011010100110111001";
        ram[51] = "0b10111101010011101110011111000101";


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


SC_MODULE(L2_up_L1_WEIGHTS_24) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_24_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_24) {
meminst = new L2_up_L1_WEIGHTS_24_ram("L2_up_L1_WEIGHTS_24_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_24() {
    delete meminst;
}


};//endmodule
#endif
