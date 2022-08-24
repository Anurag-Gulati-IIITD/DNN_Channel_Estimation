// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_35_H__
#define __L2_up_L1_WEIGHTS_35_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_35_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_35_ram) {
        ram[0] = "0b10111100101010111011101010011001";
        ram[1] = "0b10111101001111001000110100011001";
        ram[2] = "0b10111101001001010001011011011011";
        ram[3] = "0b00111100001001100100011111111110";
        ram[4] = "0b00111101111100001000101100110011";
        ram[5] = "0b10111110001110010101001110011100";
        ram[6] = "0b00111101110010000100011000100000";
        ram[7] = "0b00111101110100110101110110101011";
        ram[8] = "0b10111110000001010010101111010100";
        ram[9] = "0b10111101000010001101001110101110";
        ram[10] = "0b00111110000111000111110111100101";
        ram[11] = "0b00111101000001000100011010110111";
        ram[12] = "0b10111011000001111011100110011101";
        ram[13] = "0b10111101011000111001100000100000";
        ram[14] = "0b00111110000110011101001101000110";
        ram[15] = "0b00111101100110110001001000001010";
        ram[16] = "0b10111100110011110001110000110010";
        ram[17] = "0b10111100110110001110110010010110";
        ram[18] = "0b10111101110010011110100110001110";
        ram[19] = "0b10111101011010011000110111001110";
        ram[20] = "0b00111101101010011101000101110000";
        ram[21] = "0b10111100001000101110110000101001";
        ram[22] = "0b10111100001100110010110011101001";
        ram[23] = "0b00111101111110100000110101111000";
        ram[24] = "0b10111101001101101010101001001100";
        ram[25] = "0b00111100110100100110001100001111";
        ram[26] = "0b10111101110100111011110110011101";
        ram[27] = "0b10111101011100010011101111100010";
        ram[28] = "0b10111100001010000001110111000001";
        ram[29] = "0b00111101111001110101001001010100";
        ram[30] = "0b10111110011001110011101110000110";
        ram[31] = "0b00111101110111110001011010110001";
        ram[32] = "0b10111101100011100110111010101000";
        ram[33] = "0b00111101010100010110101110011000";
        ram[34] = "0b00111101010000001000011000111000";
        ram[35] = "0b00111101111101101100001001101010";
        ram[36] = "0b10111101001111100001100001101010";
        ram[37] = "0b10111110010001000110001011000011";
        ram[38] = "0b10111101010000010000000111110011";
        ram[39] = "0b10111101110000011010111101111101";
        ram[40] = "0b10111101010011100110000010000000";
        ram[41] = "0b10111101100101010010010000111010";
        ram[42] = "0b10111100101010101101100000011011";
        ram[43] = "0b10111101100010001100111011110110";
        ram[44] = "0b00111100100100111111110100001101";
        ram[45] = "0b00111100010001000111111001001010";
        ram[46] = "0b10111101001001100000011011111011";
        ram[47] = "0b10111100010111001000101110000111";
        ram[48] = "0b10111101010111111011100000101100";
        ram[49] = "0b10111101010100001101100011001011";
        ram[50] = "0b00111110000011101011100011011000";
        ram[51] = "0b00111101101100100010010010101011";


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


SC_MODULE(L2_up_L1_WEIGHTS_35) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_35_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_35) {
meminst = new L2_up_L1_WEIGHTS_35_ram("L2_up_L1_WEIGHTS_35_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_35() {
    delete meminst;
}


};//endmodule
#endif
