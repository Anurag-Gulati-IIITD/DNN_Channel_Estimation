// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_63_H__
#define __L2_up_L1_WEIGHTS_63_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_63_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_63_ram) {
        ram[0] = "0b10111011101100010111100010110011";
        ram[1] = "0b00111100011111000001110111110011";
        ram[2] = "0b10111101001101010101010110000010";
        ram[3] = "0b00111100101111110111000001011000";
        ram[4] = "0b00111011100101000111000001100101";
        ram[5] = "0b10111110001010110101000110111101";
        ram[6] = "0b00111101010011010010011011111010";
        ram[7] = "0b00111101100100010111110001011111";
        ram[8] = "0b00111101001010000101110110110111";
        ram[9] = "0b10111110000101001011011001100011";
        ram[10] = "0b10111100111000000111101000101001";
        ram[11] = "0b10111101100000010000100101001010";
        ram[12] = "0b00111110000000101101101100011111";
        ram[13] = "0b10111101110001110100100001011110";
        ram[14] = "0b00111101100100100001011110001111";
        ram[15] = "0b10111101010001011101011000111001";
        ram[16] = "0b00111101100100111100111111110110";
        ram[17] = "0b00111101001110101001010010111100";
        ram[18] = "0b10111101101010111001000010101000";
        ram[19] = "0b10111100110010001001010011000100";
        ram[20] = "0b00111101001111011111110100100110";
        ram[21] = "0b10111101010011110111111111010000";
        ram[22] = "0b10111110001001101011010100001011";
        ram[23] = "0b00111100011001010001100011110100";
        ram[24] = "0b00111110000000011111110100010101";
        ram[25] = "0b00111101001100000101010000100110";
        ram[26] = "0b10111101101011100111110101010110";
        ram[27] = "0b10111011000001110110010110111010";
        ram[28] = "0b00111011010000010111011001010111";
        ram[29] = "0b00111110001100011111001001010110";
        ram[30] = "0b10111101101011110010100101001110";
        ram[31] = "0b10111101000000011010010110000111";
        ram[32] = "0b10111101101011101100100011010110";
        ram[33] = "0b00111100011100010010011111110110";
        ram[34] = "0b00111101101110010011011010000010";
        ram[35] = "0b00111110000110010111110111010000";
        ram[36] = "0b10111011111000110111000101010100";
        ram[37] = "0b00111100100110110110000010101111";
        ram[38] = "0b00111101101001001000011010101101";
        ram[39] = "0b00111011110010110100001010001001";
        ram[40] = "0b10111101000001100100001101000110";
        ram[41] = "0b10111101100110001111110111100011";
        ram[42] = "0b00111101000111000111000001000011";
        ram[43] = "0b00111101111100011110001110101000";
        ram[44] = "0b10111101101100110110110111101100";
        ram[45] = "0b10111100011100101000010000010110";
        ram[46] = "0b10111101101001010110101010111110";
        ram[47] = "0b10111100011010011001011000110001";
        ram[48] = "0b00111101000000101111100000111000";
        ram[49] = "0b00111100010000100001010110111010";
        ram[50] = "0b10111101001111110001100101010000";
        ram[51] = "0b10111101111010100000000010011111";


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


SC_MODULE(L2_up_L1_WEIGHTS_63) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_63_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_63) {
meminst = new L2_up_L1_WEIGHTS_63_ram("L2_up_L1_WEIGHTS_63_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_63() {
    delete meminst;
}


};//endmodule
#endif
