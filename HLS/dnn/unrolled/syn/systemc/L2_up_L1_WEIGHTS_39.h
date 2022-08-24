// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_39_H__
#define __L2_up_L1_WEIGHTS_39_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_39_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_39_ram) {
        ram[0] = "0b00111101110011101010010100101111";
        ram[1] = "0b10111100010111110000010011011110";
        ram[2] = "0b10111101101100100000000001111110";
        ram[3] = "0b00111101101110011001010001011011";
        ram[4] = "0b10111110001001010111100110101111";
        ram[5] = "0b10111100100101010110010111000011";
        ram[6] = "0b10111101100001100110000000011100";
        ram[7] = "0b10111100011111011010100000110111";
        ram[8] = "0b00111101110000101101110101111011";
        ram[9] = "0b00111101111110110111101101101100";
        ram[10] = "0b10111110010110101000101011000110";
        ram[11] = "0b10111110000001010001110110101100";
        ram[12] = "0b00111101101111001100100011011110";
        ram[13] = "0b10111101000111010001100100010101";
        ram[14] = "0b10111101100101001101000001010111";
        ram[15] = "0b10111011001000010110101001001000";
        ram[16] = "0b10111101101010001000110101101101";
        ram[17] = "0b00111101000100000100100100100011";
        ram[18] = "0b00111011100010001101011011010100";
        ram[19] = "0b10111110001000001001011101000010";
        ram[20] = "0b10111101101111100110100010100001";
        ram[21] = "0b00111101100111010011111011010101";
        ram[22] = "0b00111101101011111011001110110111";
        ram[23] = "0b00111001000100101100110011110111";
        ram[24] = "0b10111101010001110100001100100000";
        ram[25] = "0b00111100100001010010101101001110";
        ram[26] = "0b00111110001111100100000111010101";
        ram[27] = "0b00111101010001000111010111100110";
        ram[28] = "0b10111101110001111011000100111010";
        ram[29] = "0b00111100001000100100100010010101";
        ram[30] = "0b00111100100001010000110111110001";
        ram[31] = "0b10111101000100000111011000111010";
        ram[32] = "0b00111100000010001000101101010100";
        ram[33] = "0b00111110001101001110101101010111";
        ram[34] = "0b10111110001000100110100101011001";
        ram[35] = "0b00111101100110100111111100111101";
        ram[36] = "0b10111100000101000010010011100110";
        ram[37] = "0b00111110001010110001010011101100";
        ram[38] = "0b10111101100100111110110101010010";
        ram[39] = "0b00111101010000010111001000100110";
        ram[40] = "0b00111100111101000111111110011001";
        ram[41] = "0b00111101101100011101011000000110";
        ram[42] = "0b10111110001011100100101110001000";
        ram[43] = "0b10111101000110111000000000100100";
        ram[44] = "0b00111101100100010111000111100011";
        ram[45] = "0b10111100100001111001101000101000";
        ram[46] = "0b10111101110111001000000010000100";
        ram[47] = "0b00111011111000100111111000001111";
        ram[48] = "0b00111101011101101000111100001000";
        ram[49] = "0b00111101111101110000010110000101";
        ram[50] = "0b10111110001000101110101000010000";
        ram[51] = "0b10111100110010001011110010011101";


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


SC_MODULE(L2_up_L1_WEIGHTS_39) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_39_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_39) {
meminst = new L2_up_L1_WEIGHTS_39_ram("L2_up_L1_WEIGHTS_39_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_39() {
    delete meminst;
}


};//endmodule
#endif
