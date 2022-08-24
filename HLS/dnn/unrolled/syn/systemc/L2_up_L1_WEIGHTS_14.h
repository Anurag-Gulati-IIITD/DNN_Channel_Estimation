// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_14_H__
#define __L2_up_L1_WEIGHTS_14_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_14_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_14_ram) {
        ram[0] = "0b10111101010100001101001110001101";
        ram[1] = "0b10111101011110001110110000010000";
        ram[2] = "0b00111101100111010011000110111010";
        ram[3] = "0b10111101111001011010101000101110";
        ram[4] = "0b00111101111100001000111011011110";
        ram[5] = "0b00111101111101000001100101011101";
        ram[6] = "0b00111100101000100000101111000100";
        ram[7] = "0b00111100011011101111101000011110";
        ram[8] = "0b00111110001000110010110010100101";
        ram[9] = "0b10111110000000011000111111000101";
        ram[10] = "0b00111110001010011001001110010010";
        ram[11] = "0b00111110001000110001001110111110";
        ram[12] = "0b00111101011100110110010001111100";
        ram[13] = "0b10111101100011011011001101111101";
        ram[14] = "0b00111100111000001111101000010110";
        ram[15] = "0b10111101100000100100111011011111";
        ram[16] = "0b00111100111010100100110010100101";
        ram[17] = "0b10111101001011000011111010111000";
        ram[18] = "0b10111101100011000010110011100100";
        ram[19] = "0b00111101101111110110010111011100";
        ram[20] = "0b00111101111100000110111001011101";
        ram[21] = "0b10111110001000110001001101111011";
        ram[22] = "0b00111101000110110001000011111101";
        ram[23] = "0b00111101111010110100101111111001";
        ram[24] = "0b00111101110111110000000110111000";
        ram[25] = "0b00111100111110010000110110011101";
        ram[26] = "0b10111100100010010000110101011010";
        ram[27] = "0b00111101001100111001010111000100";
        ram[28] = "0b00111101100111011100111110001001";
        ram[29] = "0b10111110000100110110110000010110";
        ram[30] = "0b00111101010010000111000000010001";
        ram[31] = "0b10111101000010010001000010000000";
        ram[32] = "0b10111100000110010101101010101111";
        ram[33] = "0b10111101000100010110001100110101";
        ram[34] = "0b00111101100111111010110110110000";
        ram[35] = "0b00111101010000100110000100111001";
        ram[36] = "0b00111000001000111001001111101110";
        ram[37] = "0b10111110000000001111000000100000";
        ram[38] = "0b10111101111000011010001011101000";
        ram[39] = "0b00111110001010001010111001110101";
        ram[40] = "0b10111101110101100000010010011111";
        ram[41] = "0b10111110000000010100101101011010";
        ram[42] = "0b00111101011110100000011100101101";
        ram[43] = "0b00111110000101001011011111110110";
        ram[44] = "0b00111100100111110011000111110100";
        ram[45] = "0b10111101100101001111111110000110";
        ram[46] = "0b00111110000110001110111101111000";
        ram[47] = "0b10111101101001011101000001110100";
        ram[48] = "0b00111101011001110110110110011000";
        ram[49] = "0b10111110010011010100001101001010";
        ram[50] = "0b10111110001111100001000110011001";
        ram[51] = "0b10111011001000110000110110110111";


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


SC_MODULE(L2_up_L1_WEIGHTS_14) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_14_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_14) {
meminst = new L2_up_L1_WEIGHTS_14_ram("L2_up_L1_WEIGHTS_14_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_14() {
    delete meminst;
}


};//endmodule
#endif
