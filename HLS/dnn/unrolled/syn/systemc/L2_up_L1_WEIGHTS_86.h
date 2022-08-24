// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_86_H__
#define __L2_up_L1_WEIGHTS_86_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_86_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_86_ram) {
        ram[0] = "0b00111100011011110001101110101100";
        ram[1] = "0b00111100101101100000110100000010";
        ram[2] = "0b00111101110101011010111100101001";
        ram[3] = "0b10111100100110001111011000000110";
        ram[4] = "0b00111101001010110010011111001100";
        ram[5] = "0b00111101011011101011111001011001";
        ram[6] = "0b00111101101101110001110010010111";
        ram[7] = "0b10111101010011100100111110111001";
        ram[8] = "0b10111110001111111111000110010101";
        ram[9] = "0b10111110000011101101100001001101";
        ram[10] = "0b00111110000111011101111000110111";
        ram[11] = "0b10111100010110010111011011111111";
        ram[12] = "0b10111101100010101100010111000001";
        ram[13] = "0b10111100111110011010000001101010";
        ram[14] = "0b00111110001100001100100110010111";
        ram[15] = "0b10111101011110001001000011010110";
        ram[16] = "0b00111100110000110101110011100010";
        ram[17] = "0b10111101111101001010010011010011";
        ram[18] = "0b00111101001100101101110000101011";
        ram[19] = "0b00111100110010001100100100110010";
        ram[20] = "0b10111101000010001000000011011000";
        ram[21] = "0b10111100010011010101011100110110";
        ram[22] = "0b00111101000110101010111001101101";
        ram[23] = "0b00111100111111000110111110111101";
        ram[24] = "0b00111100011111001010110010001110";
        ram[25] = "0b00111101011000000111001011010010";
        ram[26] = "0b00111101011011011110001000100110";
        ram[27] = "0b00111101001111110000111111100000";
        ram[28] = "0b00111100100111010011000000100111";
        ram[29] = "0b10111010011111010111111001000110";
        ram[30] = "0b10111101100111011011111111001111";
        ram[31] = "0b00111101011100011011011010010001";
        ram[32] = "0b10111101110001110011000011000110";
        ram[33] = "0b10111010110000000010011011001100";
        ram[34] = "0b00111100100011101100001100010001";
        ram[35] = "0b00111101011111101000001001010001";
        ram[36] = "0b10111101100101010010011101011111";
        ram[37] = "0b10111110000100101111100111001010";
        ram[38] = "0b10111101000010111010010000001110";
        ram[39] = "0b10111101011110011000001100001110";
        ram[40] = "0b10111101011111101111001110010001";
        ram[41] = "0b10111101110001111101000100110101";
        ram[42] = "0b00111101000100100011001111011111";
        ram[43] = "0b00111101010000011111011101010001";
        ram[44] = "0b10111101100100000010101101000001";
        ram[45] = "0b10111101000100111000011110011100";
        ram[46] = "0b00111101111001000011010101101001";
        ram[47] = "0b10111010111010110000001100011001";
        ram[48] = "0b00111101000010000010111100001110";
        ram[49] = "0b10111101110000101111111010000010";
        ram[50] = "0b00111110010010111001101001011011";
        ram[51] = "0b00111101011101111000011001111111";


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


SC_MODULE(L2_up_L1_WEIGHTS_86) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_86_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_86) {
meminst = new L2_up_L1_WEIGHTS_86_ram("L2_up_L1_WEIGHTS_86_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_86() {
    delete meminst;
}


};//endmodule
#endif
