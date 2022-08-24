// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_96_H__
#define __L2_up_L1_WEIGHTS_96_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_96_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_96_ram) {
        ram[0] = "0b00111101001101001011001011111011";
        ram[1] = "0b00111100001111101110110000111001";
        ram[2] = "0b00111100000001010011001110110001";
        ram[3] = "0b00111110000000010001111101001111";
        ram[4] = "0b10111101111100110000011110101111";
        ram[5] = "0b00111101111001000010000101111101";
        ram[6] = "0b10111101101010111011101100011111";
        ram[7] = "0b10111011000000110101010110001010";
        ram[8] = "0b00111101100000101010111111011110";
        ram[9] = "0b00111100011010101011001101101000";
        ram[10] = "0b10111101101100011010001010100101";
        ram[11] = "0b10111101011000100000100010011110";
        ram[12] = "0b10111101001100100111011001110101";
        ram[13] = "0b10111100111011111010011000010110";
        ram[14] = "0b00111101101011101110100101010111";
        ram[15] = "0b10111100110011010110011111111101";
        ram[16] = "0b10111101001000111001001111101110";
        ram[17] = "0b00111011101100100101001011001110";
        ram[18] = "0b10111101010010100110000000001011";
        ram[19] = "0b00111101010101110010111111111101";
        ram[20] = "0b00111100100000010111100101111101";
        ram[21] = "0b10111101111001111011010111110010";
        ram[22] = "0b00111101001010000000000001100101";
        ram[23] = "0b00111101001100110111110010011010";
        ram[24] = "0b00111101100000000110101001101110";
        ram[25] = "0b10111101101000110001000101100010";
        ram[26] = "0b00111101000000110000101000001011";
        ram[27] = "0b00111101011101110110100000010110";
        ram[28] = "0b10111101101110000100100100000010";
        ram[29] = "0b00111011110101011100111110101011";
        ram[30] = "0b10111101101010000101111111010000";
        ram[31] = "0b00111101111111111100101110010010";
        ram[32] = "0b00111101100011001101110110010100";
        ram[33] = "0b00111101100111001010001100011110";
        ram[34] = "0b10111110010100101000100100010010";
        ram[35] = "0b00111110001001111111101101101010";
        ram[36] = "0b00111101101101011001111101101111";
        ram[37] = "0b00111101000100011000001110110110";
        ram[38] = "0b10111110000010101110000111001110";
        ram[39] = "0b10111100111010111111010001000101";
        ram[40] = "0b00111100100101000011011111000101";
        ram[41] = "0b00111110000110100101110111110010";
        ram[42] = "0b00111101010101110011000100001010";
        ram[43] = "0b00111110001011011000110011110100";
        ram[44] = "0b10111100011100000010100000011100";
        ram[45] = "0b00111100000110111000010001010101";
        ram[46] = "0b00111100100010010001110000001000";
        ram[47] = "0b00111100111010110101011011111100";
        ram[48] = "0b00111100000101001110010111010110";
        ram[49] = "0b00111110010110101011001101101000";
        ram[50] = "0b10111101000001110010000010000110";
        ram[51] = "0b00111101110110010101101110111100";


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


SC_MODULE(L2_up_L1_WEIGHTS_96) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_96_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_96) {
meminst = new L2_up_L1_WEIGHTS_96_ram("L2_up_L1_WEIGHTS_96_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_96() {
    delete meminst;
}


};//endmodule
#endif
