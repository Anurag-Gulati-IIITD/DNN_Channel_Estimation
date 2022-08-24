// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_7_H__
#define __L2_up_L1_WEIGHTS_7_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_7_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_7_ram) {
        ram[0] = "0b10111101100011011100110000100001";
        ram[1] = "0b10111110000101010011111010110100";
        ram[2] = "0b10111101100011100000011011011001";
        ram[3] = "0b10111101001110010011010101110110";
        ram[4] = "0b10111100100101010001011000010010";
        ram[5] = "0b10111101111010101111000111001100";
        ram[6] = "0b00111101000001001000010010010100";
        ram[7] = "0b00111101000100000100101100111100";
        ram[8] = "0b00111110001101110001100011101100";
        ram[9] = "0b10111101010000000010100111110001";
        ram[10] = "0b00111110000001110010110001010010";
        ram[11] = "0b00111101011001011010000101000101";
        ram[12] = "0b10111101101100111000101011000010";
        ram[13] = "0b10111101100010000100000101101000";
        ram[14] = "0b10111101100011000110111001101110";
        ram[15] = "0b10111110010011010111000010100100";
        ram[16] = "0b00111101101000101110110100110101";
        ram[17] = "0b10111011110011001011110000000110";
        ram[18] = "0b00111100101001100111110001101100";
        ram[19] = "0b10111101011010000100101111100100";
        ram[20] = "0b00111100110100010011110101110101";
        ram[21] = "0b10111100000000100101100111100010";
        ram[22] = "0b00111011101010110011011001111010";
        ram[23] = "0b00111110000011011101010101001110";
        ram[24] = "0b00111011011111000111000111010110";
        ram[25] = "0b00111011100100010110110010100100";
        ram[26] = "0b00111101111100010110011111101100";
        ram[27] = "0b00111100111011101011000010111000";
        ram[28] = "0b10111101110011100101100000011101";
        ram[29] = "0b00111101101111001000111000100110";
        ram[30] = "0b00111101111000010101010001000011";
        ram[31] = "0b10111100011000011011000010001010";
        ram[32] = "0b10111100101100101111011001100010";
        ram[33] = "0b00111100100011011110110100101001";
        ram[34] = "0b00111100101101000011100101011000";
        ram[35] = "0b10111101010010101010010101000000";
        ram[36] = "0b00111101011111011011001111000000";
        ram[37] = "0b10111110000000100001000000111000";
        ram[38] = "0b10111101101101111110110000110101";
        ram[39] = "0b10111101111011000011101010000110";
        ram[40] = "0b00111101010000101000100100010010";
        ram[41] = "0b00111100101100100011100110100100";
        ram[42] = "0b00111100000100110111100011101110";
        ram[43] = "0b00111110000001001010110001101101";
        ram[44] = "0b10111101010110101100010101111110";
        ram[45] = "0b00111001001111101101011101000001";
        ram[46] = "0b00111101110111010110000101110000";
        ram[47] = "0b10111101101000110000000110101000";
        ram[48] = "0b10111101001001011100010111111000";
        ram[49] = "0b10111101100101000110111101011000";
        ram[50] = "0b10111110010000010001010011010011";
        ram[51] = "0b00111101100011000000110111110110";


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


SC_MODULE(L2_up_L1_WEIGHTS_7) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_7_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_7) {
meminst = new L2_up_L1_WEIGHTS_7_ram("L2_up_L1_WEIGHTS_7_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_7() {
    delete meminst;
}


};//endmodule
#endif
