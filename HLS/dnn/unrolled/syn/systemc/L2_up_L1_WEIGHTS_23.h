// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_23_H__
#define __L2_up_L1_WEIGHTS_23_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_23_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_23_ram) {
        ram[0] = "0b00111100001111110000000100110010";
        ram[1] = "0b00111011100011100110000010000000";
        ram[2] = "0b00111100100111000010110000011011";
        ram[3] = "0b00111110000110011001000000101010";
        ram[4] = "0b10111110000011101011001111011101";
        ram[5] = "0b10111101001010001100011110011111";
        ram[6] = "0b10111101100001010010011100011100";
        ram[7] = "0b10111110001000000101011011000101";
        ram[8] = "0b10111110001110001010011010011000";
        ram[9] = "0b10111100000000001110000001100101";
        ram[10] = "0b00111110001110100000101111100101";
        ram[11] = "0b10111100001100101000100101010101";
        ram[12] = "0b00111101110110001000100011111000";
        ram[13] = "0b00111101001011011111110101101001";
        ram[14] = "0b00111101100011001001011111011001";
        ram[15] = "0b00111101000011101001100000010100";
        ram[16] = "0b10111110000110111001111110011001";
        ram[17] = "0b10111100001010001111110000001101";
        ram[18] = "0b10111100000011100100111110111001";
        ram[19] = "0b00111011101000110000110110110111";
        ram[20] = "0b10111101000000000101111101101100";
        ram[21] = "0b00111100011101111010010011101000";
        ram[22] = "0b00111101111101010101101101000110";
        ram[23] = "0b10111100101000101001000111111011";
        ram[24] = "0b00111101100111010010000101111001";
        ram[25] = "0b10111100110000000001011000000101";
        ram[26] = "0b10111110001110010010011011001000";
        ram[27] = "0b00111110010101001000011000100111";
        ram[28] = "0b10111010101001100001000101110111";
        ram[29] = "0b00111101010100100000011011001000";
        ram[30] = "0b10111101010010111101011101101111";
        ram[31] = "0b10111011000101111000010011101100";
        ram[32] = "0b00111100111111111011010010000001";
        ram[33] = "0b00111100101111011001100001111100";
        ram[34] = "0b10111110000010001000101100010001";
        ram[35] = "0b10111011001001010010011010010110";
        ram[36] = "0b10111100101000100010010011101110";
        ram[37] = "0b10111101100110010100101101111011";
        ram[38] = "0b10111110010001000001111001011000";
        ram[39] = "0b10111100110101010101101000111010";
        ram[40] = "0b10111011100100100001010001101010";
        ram[41] = "0b00111101111101010000010101001011";
        ram[42] = "0b00111101000010100010001100111010";
        ram[43] = "0b10111100100011110110100010111110";
        ram[44] = "0b00111101001011011111000111100001";
        ram[45] = "0b00111101101010111011000100101001";
        ram[46] = "0b10111110001111111101110101100110";
        ram[47] = "0b00111100001111100000100110111011";
        ram[48] = "0b00111100110111110011101101100100";
        ram[49] = "0b00111110011011101110100110011010";
        ram[50] = "0b00111110001101010110001100100100";
        ram[51] = "0b10111101011001000101100000000100";


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


SC_MODULE(L2_up_L1_WEIGHTS_23) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_23_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_23) {
meminst = new L2_up_L1_WEIGHTS_23_ram("L2_up_L1_WEIGHTS_23_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_23() {
    delete meminst;
}


};//endmodule
#endif
