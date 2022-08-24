// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_71_H__
#define __L2_up_L1_WEIGHTS_71_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_71_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_71_ram) {
        ram[0] = "0b10111100111111100010101000111101";
        ram[1] = "0b10111110011000010100001101111100";
        ram[2] = "0b00111011110111111110011101011100";
        ram[3] = "0b10111101100010100101110111110010";
        ram[4] = "0b00111101010111011000100000111100";
        ram[5] = "0b00111100111011111000001001101111";
        ram[6] = "0b10111011100000101101011110110110";
        ram[7] = "0b00111101001110101100110001001111";
        ram[8] = "0b00111101100110011011100000000010";
        ram[9] = "0b10111110001000110100000010010010";
        ram[10] = "0b10111100100011100110110100010110";
        ram[11] = "0b00111101110110000110010011001011";
        ram[12] = "0b00111101100110001110100111110111";
        ram[13] = "0b00111101111111111000101010001111";
        ram[14] = "0b00111100011010010110100000001110";
        ram[15] = "0b00111100000101110000011100011000";
        ram[16] = "0b00111101101100101100111010001001";
        ram[17] = "0b00111101011111000101000001001000";
        ram[18] = "0b00111101011100001011101011101001";
        ram[19] = "0b10111011100010110000000001111010";
        ram[20] = "0b00111101110101100010011100111001";
        ram[21] = "0b00111101010100100011110101001111";
        ram[22] = "0b00111100000110111110100011111111";
        ram[23] = "0b00111110000111100001000010001100";
        ram[24] = "0b10111101011010111110001001110001";
        ram[25] = "0b00111101000001000001100010010011";
        ram[26] = "0b10111101110100001110100010000110";
        ram[27] = "0b10111100100001110001101000111011";
        ram[28] = "0b00111101111111001101001001001110";
        ram[29] = "0b00111101010110101001101110001101";
        ram[30] = "0b10111100100000000010110000001010";
        ram[31] = "0b00111100100100110000101111100001";
        ram[32] = "0b10111100000111000111011110011010";
        ram[33] = "0b10111101100101111010101100110010";
        ram[34] = "0b00111101100100110000101011010100";
        ram[35] = "0b10111101111000101110000110101100";
        ram[36] = "0b10111100101011010101011110111100";
        ram[37] = "0b00111101100101011111111011011010";
        ram[38] = "0b00111100000110100010010000000011";
        ram[39] = "0b00111101010100001110011001101101";
        ram[40] = "0b00111011011010110101011011111100";
        ram[41] = "0b10111101010111000111100110110011";
        ram[42] = "0b00111110011100001110000101110010";
        ram[43] = "0b00111100101010001100101111010001";
        ram[44] = "0b00111101001010100100000100011100";
        ram[45] = "0b10111110000011000110100000100011";
        ram[46] = "0b00111101100111011010101101011100";
        ram[47] = "0b10111101101111110010011101111000";
        ram[48] = "0b00111101110110101001101010000000";
        ram[49] = "0b00111011011000100011101011110011";
        ram[50] = "0b10111101110010001101101001111111";
        ram[51] = "0b10111011110101111100011011111100";


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


SC_MODULE(L2_up_L1_WEIGHTS_71) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_71_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_71) {
meminst = new L2_up_L1_WEIGHTS_71_ram("L2_up_L1_WEIGHTS_71_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_71() {
    delete meminst;
}


};//endmodule
#endif
