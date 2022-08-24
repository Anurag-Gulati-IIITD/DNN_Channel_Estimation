// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_17_H__
#define __L2_up_L1_WEIGHTS_17_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_17_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_17_ram) {
        ram[0] = "0b10111101010000110010110110110010";
        ram[1] = "0b00111110010101010000000010010011";
        ram[2] = "0b00111101100001100101011010101100";
        ram[3] = "0b00111101100110101000100010101101";
        ram[4] = "0b10111101111011100001111001110001";
        ram[5] = "0b00111110000001010100100001100111";
        ram[6] = "0b10111100100110101000100010101101";
        ram[7] = "0b10111101100101011110110010000001";
        ram[8] = "0b10111110010010111000101111110000";
        ram[9] = "0b00111110000001100010110000110100";
        ram[10] = "0b00111101111010100110011001010110";
        ram[11] = "0b10111101001100011110000110001111";
        ram[12] = "0b10111110000001010011101101001011";
        ram[13] = "0b10111100100011100010001110101111";
        ram[14] = "0b00111100110000010110110111110100";
        ram[15] = "0b00111101001111100100101010111110";
        ram[16] = "0b10111100110110110111101011100101";
        ram[17] = "0b10111101111000110010110110110010";
        ram[18] = "0b00111100111011001110010101110001";
        ram[19] = "0b10111101101001011100110001000010";
        ram[20] = "0b10111101001100100000111110110010";
        ram[21] = "0b10111101101000011101110110100000";
        ram[22] = "0b10111100100011100000000000001000";
        ram[23] = "0b10111110010001010100101111001111";
        ram[24] = "0b00111100100101011010011011000110";
        ram[25] = "0b10111101011010101100010100111011";
        ram[26] = "0b00111101110000101011110011111001";
        ram[27] = "0b00111101110010101010001100100111";
        ram[28] = "0b10111110000111000100100110111010";
        ram[29] = "0b10111110000010101011110111100100";
        ram[30] = "0b10111101101000000100011111010100";
        ram[31] = "0b00111110000110101001001010100011";
        ram[32] = "0b00111110000001000010011001111000";
        ram[33] = "0b00111101101110100101110110101111";
        ram[34] = "0b10111101100000110100111010111010";
        ram[35] = "0b00111101000111101110111111100101";
        ram[36] = "0b00111011100101111101000001101100";
        ram[37] = "0b10111101101011011000010001001101";
        ram[38] = "0b10111101010001101110011111100110";
        ram[39] = "0b10111101111111000001011100100010";
        ram[40] = "0b00111100010000111100111000100001";
        ram[41] = "0b00111110010000111001001001011100";
        ram[42] = "0b10111110010101010010111001110011";
        ram[43] = "0b10111011101111011100001001101110";
        ram[44] = "0b00111100010100111001100101110000";
        ram[45] = "0b00111110000001000000000100111111";
        ram[46] = "0b10111101100000110001100111000110";
        ram[47] = "0b00111100011011001011101110000000";
        ram[48] = "0b10111101101001110010011101010111";
        ram[49] = "0b00111101001010010100100010011001";
        ram[50] = "0b00111110000111000000111100000010";
        ram[51] = "0b00111110000100101111111011000101";


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


SC_MODULE(L2_up_L1_WEIGHTS_17) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_17_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_17) {
meminst = new L2_up_L1_WEIGHTS_17_ram("L2_up_L1_WEIGHTS_17_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_17() {
    delete meminst;
}


};//endmodule
#endif
