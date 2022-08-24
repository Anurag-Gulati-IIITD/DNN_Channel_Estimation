// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_12_H__
#define __L2_up_L1_WEIGHTS_12_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_12_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_12_ram) {
        ram[0] = "0b10111100110110011101110111000010";
        ram[1] = "0b10111101001000000001100010100100";
        ram[2] = "0b10111110000001111001101000101000";
        ram[3] = "0b00111110000010001001011001010111";
        ram[4] = "0b00111101000000101010000100110000";
        ram[5] = "0b10111110011000100010011111010000";
        ram[6] = "0b00111100111101100010110110000100";
        ram[7] = "0b00111110001010100110001110110111";
        ram[8] = "0b10111101000000100011110010000110";
        ram[9] = "0b10111101101000010010100010111111";
        ram[10] = "0b10111110000010000110000110100110";
        ram[11] = "0b10111101111000001100101111110011";
        ram[12] = "0b10111010011111100000010001111101";
        ram[13] = "0b10111101001011010101011010110000";
        ram[14] = "0b00111101110100001000100100011010";
        ram[15] = "0b10111100100111010110110011111000";
        ram[16] = "0b00111011100111110110001000110000";
        ram[17] = "0b00111101110111111100001110110101";
        ram[18] = "0b00111100100010000100011000100000";
        ram[19] = "0b10111011010100111110000010111101";
        ram[20] = "0b00111101100100100110110100000101";
        ram[21] = "0b00111100111100101110010010001111";
        ram[22] = "0b10111101101101011001111101101111";
        ram[23] = "0b10111101010111010010010010011110";
        ram[24] = "0b00111101100110110000010011101110";
        ram[25] = "0b10111101101100010001100111001110";
        ram[26] = "0b10111101111101101100011110101000";
        ram[27] = "0b10111101000101100010101111110001";
        ram[28] = "0b00111100001011111001001000101001";
        ram[29] = "0b00111110000110100010000110100111";
        ram[30] = "0b10111101000001101101110101101010";
        ram[31] = "0b10111101000000010100010100001111";
        ram[32] = "0b10111101100010101111110101010100";
        ram[33] = "0b10111101010110110101100001001011";
        ram[34] = "0b00111101000111101000110001001000";
        ram[35] = "0b00111110000000001110000011101011";
        ram[36] = "0b10111101110001000101001000111111";
        ram[37] = "0b00111011111110110110110111001010";
        ram[38] = "0b00111101111111110010110111000011";
        ram[39] = "0b00111101001100110000011000011100";
        ram[40] = "0b10111100100000111111100100011110";
        ram[41] = "0b10111101011110100110000101011011";
        ram[42] = "0b00111101001000110011110111110011";
        ram[43] = "0b00111011010111010001111001010100";
        ram[44] = "0b00111100101100011011110111101000";
        ram[45] = "0b10111101110010001010110001011100";
        ram[46] = "0b10111100001101000010100010010001";
        ram[47] = "0b10111100100101001100001000101111";
        ram[48] = "0b10111011001110100000111010000100";
        ram[49] = "0b10111100011011011110100101111101";
        ram[50] = "0b00111100111111011000001001110111";
        ram[51] = "0b10111101011011010111000111110011";


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


SC_MODULE(L2_up_L1_WEIGHTS_12) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_12_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_12) {
meminst = new L2_up_L1_WEIGHTS_12_ram("L2_up_L1_WEIGHTS_12_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_12() {
    delete meminst;
}


};//endmodule
#endif
