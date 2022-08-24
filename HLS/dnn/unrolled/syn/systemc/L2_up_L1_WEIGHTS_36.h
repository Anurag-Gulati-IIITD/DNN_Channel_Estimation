// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_36_H__
#define __L2_up_L1_WEIGHTS_36_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_36_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_36_ram) {
        ram[0] = "0b10111101010011011100100001110101";
        ram[1] = "0b00111101000101000101111010010010";
        ram[2] = "0b00111101111110100011110110110100";
        ram[3] = "0b10111101101000001110011010110000";
        ram[4] = "0b00111110010010000001101110101000";
        ram[5] = "0b00111101000110111011001001111001";
        ram[6] = "0b00111101100010010000111011101101";
        ram[7] = "0b00111101001011000101001110110001";
        ram[8] = "0b10111110011001100010000001101000";
        ram[9] = "0b10111101111110110100100010010001";
        ram[10] = "0b00111101011011111100000101011001";
        ram[11] = "0b00111011111010010001010000101011";
        ram[12] = "0b10111101100111111011101001000101";
        ram[13] = "0b10111101000010100011101101011000";
        ram[14] = "0b00111110001001000110110010111001";
        ram[15] = "0b10111101111011110100000101101100";
        ram[16] = "0b10111100000011011100100110000010";
        ram[17] = "0b10111100010000101001011111000000";
        ram[18] = "0b10111101011110110100101000100011";
        ram[19] = "0b00111100100010101000100011110000";
        ram[20] = "0b00111101101010111001100100001011";
        ram[21] = "0b10111101110001100011101111101111";
        ram[22] = "0b10111101100110110101100011010001";
        ram[23] = "0b10111101110000100000110011010000";
        ram[24] = "0b00111100100011110101111001000010";
        ram[25] = "0b00111011011000010101000000010010";
        ram[26] = "0b10111100110100100101000000101111";
        ram[27] = "0b10111101100011110010010100011100";
        ram[28] = "0b00111101000110111001000011101011";
        ram[29] = "0b10111101001101011101010001100011";
        ram[30] = "0b10111101100001111111000010101010";
        ram[31] = "0b00111100010110100010111110001100";
        ram[32] = "0b10111101101011101001001101011100";
        ram[33] = "0b10111101101100110100011000010011";
        ram[34] = "0b00111101100001111101110101000100";
        ram[35] = "0b00111101011000100101111110100110";
        ram[36] = "0b00111101100100100110100011010011";
        ram[37] = "0b10111110000101011000111100101110";
        ram[38] = "0b10111100010001100100011101111000";
        ram[39] = "0b10111101111111000111110011011001";
        ram[40] = "0b10111101000110011010100101010100";
        ram[41] = "0b10111101101010101011001001011011";
        ram[42] = "0b00111110000000001111011010101101";
        ram[43] = "0b00111101110111111101110101100110";
        ram[44] = "0b10111101010010111010011000100110";
        ram[45] = "0b10111101010001000010111010011001";
        ram[46] = "0b10111100100111111000011111110000";
        ram[47] = "0b10111101000001001111001010101110";
        ram[48] = "0b10111100101011001010110111011110";
        ram[49] = "0b10111101100000010100011110101110";
        ram[50] = "0b00111110001111000000011101101000";
        ram[51] = "0b00111101101100100111010001011100";


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


SC_MODULE(L2_up_L1_WEIGHTS_36) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_36_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_36) {
meminst = new L2_up_L1_WEIGHTS_36_ram("L2_up_L1_WEIGHTS_36_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_36() {
    delete meminst;
}


};//endmodule
#endif
