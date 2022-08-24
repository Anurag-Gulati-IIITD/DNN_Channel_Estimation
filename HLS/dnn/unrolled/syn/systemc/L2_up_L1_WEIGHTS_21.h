// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_21_H__
#define __L2_up_L1_WEIGHTS_21_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_21_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_21_ram) {
        ram[0] = "0b10111101000110011010110001111001";
        ram[1] = "0b10111110100100010101111010011110";
        ram[2] = "0b10111101001011101101100110011101";
        ram[3] = "0b00111101010111001100110010001010";
        ram[4] = "0b10111100111110100111011001010011";
        ram[5] = "0b00111101101110001010100001101101";
        ram[6] = "0b10111101010010010000100000011100";
        ram[7] = "0b10111110000011101001001010010010";
        ram[8] = "0b00111101111011110010000111110111";
        ram[9] = "0b10111101110000000001111011101111";
        ram[10] = "0b10111101101101111001110100001010";
        ram[11] = "0b10111010110000010001000110101110";
        ram[12] = "0b00111101011001101100101000000100";
        ram[13] = "0b00111101110000101111010000000110";
        ram[14] = "0b10111100101011000011100001101101";
        ram[15] = "0b00111100111111101011110100001010";
        ram[16] = "0b00111101011101101111110100100010";
        ram[17] = "0b00111101100110111001101101100111";
        ram[18] = "0b10111010100000011110010001110001";
        ram[19] = "0b00111101000011000001100101111110";
        ram[20] = "0b10111101100011100011000011001011";
        ram[21] = "0b00111101000011001000001001011010";
        ram[22] = "0b00111101111110011101100110010000";
        ram[23] = "0b00111110011100100000101011111010";
        ram[24] = "0b00111011101011111001001000101001";
        ram[25] = "0b10111101000101001010101100011101";
        ram[26] = "0b10111101001110111111011100100111";
        ram[27] = "0b00111000101111001011111001100010";
        ram[28] = "0b00111101101001010000000111100010";
        ram[29] = "0b10111101110101111101000111111110";
        ram[30] = "0b00111100110111110110100110001000";
        ram[31] = "0b10111100111111000111001111101111";
        ram[32] = "0b10111100000000101111110101110110";
        ram[33] = "0b10111101110000010010001001110101";
        ram[34] = "0b00111101100001011010001101011101";
        ram[35] = "0b10111110001100101001001010000001";
        ram[36] = "0b10111101100110101100011000000100";
        ram[37] = "0b00111101101001000111101010011110";
        ram[38] = "0b10111101001110101111001100011011";
        ram[39] = "0b00111100110100010110010101001101";
        ram[40] = "0b00111101110001101111111011111000";
        ram[41] = "0b00111011101001011101011010111111";
        ram[42] = "0b00111101010000000010111100110000";
        ram[43] = "0b10111101000001010110011100010010";
        ram[44] = "0b00111101111001110111111011100101";
        ram[45] = "0b10111101011101111010101000100110";
        ram[46] = "0b10111100101110101101111000100010";
        ram[47] = "0b10111100101100010010101100011011";
        ram[48] = "0b00111110000001100011110000110010";
        ram[49] = "0b10111101000111110101101011011001";
        ram[50] = "0b10111101100000110101011100011101";
        ram[51] = "0b10111101011100101000100001001000";


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


SC_MODULE(L2_up_L1_WEIGHTS_21) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_21_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_21) {
meminst = new L2_up_L1_WEIGHTS_21_ram("L2_up_L1_WEIGHTS_21_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_21() {
    delete meminst;
}


};//endmodule
#endif
