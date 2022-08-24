// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_2_H__
#define __L2_up_L1_WEIGHTS_2_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_2_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_2_ram) {
        ram[0] = "0b10111101100000010111111111000111";
        ram[1] = "0b00111110011000011000001001100110";
        ram[2] = "0b10111101011111001011101100111101";
        ram[3] = "0b10111101011111011101001100110101";
        ram[4] = "0b00111110001011110001001111001111";
        ram[5] = "0b10111101101011001011011101001110";
        ram[6] = "0b10111101011000010001110110111101";
        ram[7] = "0b10111100111000111111100110100101";
        ram[8] = "0b00111101011011011000110100110111";
        ram[9] = "0b10111101111110010001101010111001";
        ram[10] = "0b10111100100011110111100110000101";
        ram[11] = "0b00111101110011100101010101111110";
        ram[12] = "0b10111011000010100000010011010001";
        ram[13] = "0b10111110001011100111101010110111";
        ram[14] = "0b10111101100010110110111110100000";
        ram[15] = "0b00111110000111100111100001011011";
        ram[16] = "0b10111101001000001111110000101111";
        ram[17] = "0b10111100001100011000100101111010";
        ram[18] = "0b10111100010110111111000001010110";
        ram[19] = "0b00111101000101000001011101000100";
        ram[20] = "0b00111101100100011001110111101101";
        ram[21] = "0b10111101001101010010110010011101";
        ram[22] = "0b10111101011101110001111110111100";
        ram[23] = "0b10111110100011000111100000100001";
        ram[24] = "0b00111101110100010010011001100011";
        ram[25] = "0b10111100101101111100100110011011";
        ram[26] = "0b10111101110000101110100100000011";
        ram[27] = "0b00111110101011001101000101100011";
        ram[28] = "0b10111100110000111001011110011010";
        ram[29] = "0b00111101100011111001111010111111";
        ram[30] = "0b00111101111001110011010001110010";
        ram[31] = "0b10111101010000001001000010110100";
        ram[32] = "0b10111101101001001101010001000101";
        ram[33] = "0b00111011110000110001000101100010";
        ram[34] = "0b00111101100110000011000111110000";
        ram[35] = "0b00111110010101011011001110011110";
        ram[36] = "0b00111101100111001011110001001001";
        ram[37] = "0b00111101000100101011101100100011";
        ram[38] = "0b10111110100000010010011000100000";
        ram[39] = "0b10111101010001000010100101011010";
        ram[40] = "0b00111100111011100000000010001111";
        ram[41] = "0b10111101100100101011111011001111";
        ram[42] = "0b00111101100010000101110100110001";
        ram[43] = "0b10111110011000111111111101101001";
        ram[44] = "0b10111101001100110000101001001110";
        ram[45] = "0b10111101010001010101000000000001";
        ram[46] = "0b00111100110100011000010011000010";
        ram[47] = "0b10111101010111100000010100000011";
        ram[48] = "0b00111101100011010101000101110010";
        ram[49] = "0b00111011011110101100111001101000";
        ram[50] = "0b10111101111110010110100011010111";
        ram[51] = "0b10111100101001100011000011101100";


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


SC_MODULE(L2_up_L1_WEIGHTS_2) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_2_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_2) {
meminst = new L2_up_L1_WEIGHTS_2_ram("L2_up_L1_WEIGHTS_2_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_2() {
    delete meminst;
}


};//endmodule
#endif
