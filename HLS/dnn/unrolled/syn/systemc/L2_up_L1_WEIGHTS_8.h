// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_8_H__
#define __L2_up_L1_WEIGHTS_8_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_8_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_8_ram) {
        ram[0] = "0b10111101100000001001011011111111";
        ram[1] = "0b10111101110010101010111110111100";
        ram[2] = "0b10111101011100001110000110110101";
        ram[3] = "0b10111101101011010000100000001011";
        ram[4] = "0b00111010000000111101101111000010";
        ram[5] = "0b10111100110011101010001010010000";
        ram[6] = "0b00111101010111101000010111111101";
        ram[7] = "0b10111100001101111101100001001001";
        ram[8] = "0b00111110001010111101011100101100";
        ram[9] = "0b00111101000001101110101100001011";
        ram[10] = "0b00111101111000001100011100111011";
        ram[11] = "0b00111011110001101000101010010011";
        ram[12] = "0b10111101010010100011010000000001";
        ram[13] = "0b00111100100001011110111001010111";
        ram[14] = "0b10111110000100011001101100001011";
        ram[15] = "0b00111101010001001100110011101110";
        ram[16] = "0b00111100101110010011001001010001";
        ram[17] = "0b00111101100001001010101011011010";
        ram[18] = "0b10111100010110111011111000000001";
        ram[19] = "0b00111100000111010100110110000011";
        ram[20] = "0b10111101001011110101110110111100";
        ram[21] = "0b10111101011011110110000111101101";
        ram[22] = "0b00111100110011110001100000000001";
        ram[23] = "0b00111101101001111110011111000000";
        ram[24] = "0b10111101011010110010111100100011";
        ram[25] = "0b10111101001111011100100010111000";
        ram[26] = "0b00111110000111010001000001101111";
        ram[27] = "0b00111110001111000110000111011000";
        ram[28] = "0b00111101111000100101000001110010";
        ram[29] = "0b00111101110000110111000111011010";
        ram[30] = "0b00111110000001111001101000101000";
        ram[31] = "0b00111101100101010011101111010001";
        ram[32] = "0b10111100010110000110001000101100";
        ram[33] = "0b10111101000001110100100101101011";
        ram[34] = "0b00111100111110010101010011101011";
        ram[35] = "0b10111110001001110011001001011001";
        ram[36] = "0b00111100101110010000010000101110";
        ram[37] = "0b10111101001100101000110001111010";
        ram[38] = "0b10111101111000011010011010010011";
        ram[39] = "0b10111010000111111110100001101000";
        ram[40] = "0b00111100001001001011100110001000";
        ram[41] = "0b10111101010010100101000001010000";
        ram[42] = "0b10111101100000011110011110010110";
        ram[43] = "0b00111101110000101001011100111001";
        ram[44] = "0b10111101000100001111100101001101";
        ram[45] = "0b00111101111000111001000001000011";
        ram[46] = "0b00111110000111110010000001100100";
        ram[47] = "0b10111101001101100101000100101011";
        ram[48] = "0b10111101010000101100110100111010";
        ram[49] = "0b10111101101000001100011100111011";
        ram[50] = "0b10111101110001001010011000100010";
        ram[51] = "0b00111101011011001010000000111100";


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


SC_MODULE(L2_up_L1_WEIGHTS_8) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_8_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_8) {
meminst = new L2_up_L1_WEIGHTS_8_ram("L2_up_L1_WEIGHTS_8_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_8() {
    delete meminst;
}


};//endmodule
#endif
