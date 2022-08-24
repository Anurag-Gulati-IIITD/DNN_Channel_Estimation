// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_66_H__
#define __L2_up_L1_WEIGHTS_66_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_66_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_66_ram) {
        ram[0] = "0b10111100110101000101110001111001";
        ram[1] = "0b00111100100001111101110101000100";
        ram[2] = "0b00111110001010101001000111011010";
        ram[3] = "0b00111101001110011010001110010000";
        ram[4] = "0b10111110000010111110010100010001";
        ram[5] = "0b00111110011110101010011011010010";
        ram[6] = "0b00111101101100101011000000100001";
        ram[7] = "0b10111110100011010010111010110110";
        ram[8] = "0b10111100000000101000001111010011";
        ram[9] = "0b00111110001100010101010010000110";
        ram[10] = "0b00111100000100100101001101010100";
        ram[11] = "0b10111101100001101011101001001001";
        ram[12] = "0b10111101101101011001100110101010";
        ram[13] = "0b00111101101001000011000010110001";
        ram[14] = "0b00111100010101001111000101011110";
        ram[15] = "0b10111101011100010010101100011011";
        ram[16] = "0b00111101010111101011101101110111";
        ram[17] = "0b10111110000111001101100001010110";
        ram[18] = "0b10111011111000010011111101001011";
        ram[19] = "0b10111101000001110010001010011111";
        ram[20] = "0b10111101101111110011011100110011";
        ram[21] = "0b10111100100100100000000110001010";
        ram[22] = "0b00111110001000111101100001011010";
        ram[23] = "0b10111101100001010100110011011011";
        ram[24] = "0b00111100010011011010101100011001";
        ram[25] = "0b00111101100101111010010101101110";
        ram[26] = "0b00111110000100100101011001111010";
        ram[27] = "0b00111110001011010100101011100100";
        ram[28] = "0b10111100011011001001100111110010";
        ram[29] = "0b10111110101011001001001111001001";
        ram[30] = "0b10111100001010100111110111101101";
        ram[31] = "0b00111101111000101101100101001001";
        ram[32] = "0b00111101100100000011001010011000";
        ram[33] = "0b10111100110111010110000101110000";
        ram[34] = "0b00111101011000000100001110100010";
        ram[35] = "0b10111101001001111101100110011001";
        ram[36] = "0b00111101101111110001011110111110";
        ram[37] = "0b10111101111001010100101000111100";
        ram[38] = "0b10111101101011101110000011110100";
        ram[39] = "0b10111101111011001010111111110111";
        ram[40] = "0b10111100111001010011110010011011";
        ram[41] = "0b00111110001000000111001111011110";
        ram[42] = "0b10111110010111011001100100000011";
        ram[43] = "0b10111100101011101101101110110110";
        ram[44] = "0b10111101011000000101101010110100";
        ram[45] = "0b00111101110001101100010111010010";
        ram[46] = "0b10111101000100101011001011000000";
        ram[47] = "0b10111101101010010110000111000011";
        ram[48] = "0b10111101100110111010101010011011";
        ram[49] = "0b10111100100011000100011110100001";
        ram[50] = "0b00111101111111110011110101111101";
        ram[51] = "0b00111101110011110100100000111101";


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


SC_MODULE(L2_up_L1_WEIGHTS_66) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_66_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_66) {
meminst = new L2_up_L1_WEIGHTS_66_ram("L2_up_L1_WEIGHTS_66_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_66() {
    delete meminst;
}


};//endmodule
#endif
