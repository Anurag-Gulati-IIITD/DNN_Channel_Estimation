// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_18_H__
#define __L2_up_L1_WEIGHTS_18_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_18_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_18_ram) {
        ram[0] = "0b10111101011001011001001010010110";
        ram[1] = "0b00111101111000111010111100110010";
        ram[2] = "0b10111101010001101000100110000111";
        ram[3] = "0b10111101001011010001100011010010";
        ram[4] = "0b10111101001010110011010101101110";
        ram[5] = "0b10111110000110001011110001011010";
        ram[6] = "0b00111101010010111111110000100010";
        ram[7] = "0b00111101101000011000000111100000";
        ram[8] = "0b10111011111011010100010111101001";
        ram[9] = "0b00111101100010011101010010010101";
        ram[10] = "0b10111101111110010000010111000000";
        ram[11] = "0b10111100110001001101100001110111";
        ram[12] = "0b10111110001011001000011100010010";
        ram[13] = "0b10111110001001111110110111001000";
        ram[14] = "0b00111100110100100001010101110111";
        ram[15] = "0b00111101010010000110100010111010";
        ram[16] = "0b10111101110110010101101110111100";
        ram[17] = "0b10111101000001100011111100010100";
        ram[18] = "0b10111101010101010001011000010010";
        ram[19] = "0b10111101010000001000001000000110";
        ram[20] = "0b00111011100000011101110000001110";
        ram[21] = "0b00111101001011001111111010011011";
        ram[22] = "0b10111101001011001001000010000010";
        ram[23] = "0b10111101100010001010010110001011";
        ram[24] = "0b00111101010110100011010011001010";
        ram[25] = "0b10111100110000000101101100111010";
        ram[26] = "0b00111110010011110110010011010000";
        ram[27] = "0b10111101100110001001010100000111";
        ram[28] = "0b10111101100001000010111100011111";
        ram[29] = "0b00111101100101101011010001000010";
        ram[30] = "0b10111100101110011000001000000010";
        ram[31] = "0b00111100110110011010001100001010";
        ram[32] = "0b10111101010110011001111011011000";
        ram[33] = "0b00111101100000100001111000011101";
        ram[34] = "0b00111100001010110101001111010110";
        ram[35] = "0b10111101100111010000101101110100";
        ram[36] = "0b00111101100000110011010010000011";
        ram[37] = "0b00111101100110110101001110010011";
        ram[38] = "0b00111101101110110001110010000110";
        ram[39] = "0b10111101111101111011101011101101";
        ram[40] = "0b10111101000101101011111010111110";
        ram[41] = "0b00111100101100000111010010100111";
        ram[42] = "0b10111100011001001000111010001010";
        ram[43] = "0b10111100100111110110111011000110";
        ram[44] = "0b10111100101001101001001101111101";
        ram[45] = "0b00111100001100010001110001101101";
        ram[46] = "0b10111101101001001011100100000010";
        ram[47] = "0b10111100010110111101101101011110";
        ram[48] = "0b10111101100110011101110111000010";
        ram[49] = "0b00111101110001000101111011010101";
        ram[50] = "0b00111101100001011111100011010011";
        ram[51] = "0b00111110000011011000100111001110";


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


SC_MODULE(L2_up_L1_WEIGHTS_18) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_18_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_18) {
meminst = new L2_up_L1_WEIGHTS_18_ram("L2_up_L1_WEIGHTS_18_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_18() {
    delete meminst;
}


};//endmodule
#endif
