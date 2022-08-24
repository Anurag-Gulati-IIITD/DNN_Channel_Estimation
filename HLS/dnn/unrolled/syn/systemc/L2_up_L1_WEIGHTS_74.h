// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_74_H__
#define __L2_up_L1_WEIGHTS_74_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_74_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_74_ram) {
        ram[0] = "0b10111100111110011000000011110101";
        ram[1] = "0b00111101110001100100110111000010";
        ram[2] = "0b00111100010001101000101010010011";
        ram[3] = "0b00111101001101111011011111001000";
        ram[4] = "0b10111101011010000000101011100001";
        ram[5] = "0b10111101101000111110100011011110";
        ram[6] = "0b10111110000100010111011010011011";
        ram[7] = "0b00111101010110111111000101100011";
        ram[8] = "0b10111110001101011100010110110101";
        ram[9] = "0b00111101001110001000101010001011";
        ram[10] = "0b00111110010100100010011010000001";
        ram[11] = "0b10111101011011110101011001100101";
        ram[12] = "0b00111100110101100010111000001010";
        ram[13] = "0b10111101111111000100010111001100";
        ram[14] = "0b00111100111100111011010000101101";
        ram[15] = "0b10111101100000000000110100011011";
        ram[16] = "0b10111101011000100101110010000001";
        ram[17] = "0b10111101000111010101110100111110";
        ram[18] = "0b00111011011000011001001100101101";
        ram[19] = "0b00111011111010101110100111101110";
        ram[20] = "0b00111011000001001100011010100100";
        ram[21] = "0b10111101000010010001100111110000";
        ram[22] = "0b00111101000111010110011010101110";
        ram[23] = "0b10111110010011010100000001101000";
        ram[24] = "0b00111101000101100110100111001111";
        ram[25] = "0b10111101001101111001011101000110";
        ram[26] = "0b10111110000001101001111010000000";
        ram[27] = "0b00111101101000011110001011011111";
        ram[28] = "0b10111101111000001110000101110010";
        ram[29] = "0b00111101101011110111110010101010";
        ram[30] = "0b10111100011010000111100011111011";
        ram[31] = "0b00111101100011101011000100111110";
        ram[32] = "0b10111100100011001110111101100111";
        ram[33] = "0b10111101011010011001110110001000";
        ram[34] = "0b10111110010001001111010011000111";
        ram[35] = "0b00111101111101001110010101001111";
        ram[36] = "0b10111011111000111100010100110111";
        ram[37] = "0b10111101110111000111101000111010";
        ram[38] = "0b10111101111101000101111000001011";
        ram[39] = "0b00111101100101110010100000100000";
        ram[40] = "0b10111101011110011000111010010111";
        ram[41] = "0b00111101010001111011011001111000";
        ram[42] = "0b10111101110001110100010100111001";
        ram[43] = "0b00111100110111111110011101011100";
        ram[44] = "0b00111101110000000111101110111011";
        ram[45] = "0b00111101110101110011000100001010";
        ram[46] = "0b10111110000001010010110101100110";
        ram[47] = "0b10111011101000111001110001010010";
        ram[48] = "0b10111110000010011000000010110010";
        ram[49] = "0b00111110001110010111110011000100";
        ram[50] = "0b00111110010110101110110111011101";
        ram[51] = "0b10111100100011100110101011111101";


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


SC_MODULE(L2_up_L1_WEIGHTS_74) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_74_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_74) {
meminst = new L2_up_L1_WEIGHTS_74_ram("L2_up_L1_WEIGHTS_74_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_74() {
    delete meminst;
}


};//endmodule
#endif
