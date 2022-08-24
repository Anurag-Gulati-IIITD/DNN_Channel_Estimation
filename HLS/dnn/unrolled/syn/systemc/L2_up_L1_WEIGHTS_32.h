// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_32_H__
#define __L2_up_L1_WEIGHTS_32_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_32_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_32_ram) {
        ram[0] = "0b00111101000011111000001011110101";
        ram[1] = "0b00111101000010100100100011111001";
        ram[2] = "0b10111100101011101100111100100000";
        ram[3] = "0b00111100101001110111111001011111";
        ram[4] = "0b00111100110101110010001101101000";
        ram[5] = "0b00111101110010000101100011111111";
        ram[6] = "0b10111101101000000111111001011010";
        ram[7] = "0b10111101000111111110010101000011";
        ram[8] = "0b00111110001101000001111000010101";
        ram[9] = "0b00111110000110111000101111110000";
        ram[10] = "0b10111101110000001001001011001101";
        ram[11] = "0b00111101010111100001100111111100";
        ram[12] = "0b00111101101010010000101000110101";
        ram[13] = "0b00111110011011110111101100011000";
        ram[14] = "0b10111110010101100101000100101011";
        ram[15] = "0b00111100001001001001001111001001";
        ram[16] = "0b00111101100000110100010111010000";
        ram[17] = "0b10111100101100111111110010000111";
        ram[18] = "0b10111100000110011101110010110101";
        ram[19] = "0b00111101110000111101010011110001";
        ram[20] = "0b00111010111111010011101100101010";
        ram[21] = "0b10111101001000000000010111000100";
        ram[22] = "0b10111100111001110000110000010011";
        ram[23] = "0b10111100001001110101110011010001";
        ram[24] = "0b00111100001010010010000111001101";
        ram[25] = "0b00111101101001101100000000001110";
        ram[26] = "0b10111110011010101101011111011000";
        ram[27] = "0b10111101010000001001000010110100";
        ram[28] = "0b00111100101101000111101001011011";
        ram[29] = "0b10111101110000111101111011101000";
        ram[30] = "0b00111110000100110111011010010010";
        ram[31] = "0b10111101110101001000100100001001";
        ram[32] = "0b00111101101011011011100101000001";
        ram[33] = "0b10111101111010010010010001101100";
        ram[34] = "0b00111101100101110100011010001000";
        ram[35] = "0b10111101011001000110111100010101";
        ram[36] = "0b10111101000100001100001011000110";
        ram[37] = "0b00111110000010111010111101010011";
        ram[38] = "0b00111100110000110010000000010000";
        ram[39] = "0b00111101001101110011001110101001";
        ram[40] = "0b00111101010111100101001010011100";
        ram[41] = "0b00111101110010110011101010101100";
        ram[42] = "0b10111101001101001100000110101001";
        ram[43] = "0b10111011110001000000010010100111";
        ram[44] = "0b00111101100001000000100011011001";
        ram[45] = "0b00111100110000010100101001001101";
        ram[46] = "0b00111001101111101101011101000001";
        ram[47] = "0b00111100111111001010010000101011";
        ram[48] = "0b10111100001001101110001100101110";
        ram[49] = "0b00111100001111010111111101010010";
        ram[50] = "0b10111110010000011110010000101110";
        ram[51] = "0b10111110000100011010110110100111";


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


SC_MODULE(L2_up_L1_WEIGHTS_32) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_32_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_32) {
meminst = new L2_up_L1_WEIGHTS_32_ram("L2_up_L1_WEIGHTS_32_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_32() {
    delete meminst;
}


};//endmodule
#endif
