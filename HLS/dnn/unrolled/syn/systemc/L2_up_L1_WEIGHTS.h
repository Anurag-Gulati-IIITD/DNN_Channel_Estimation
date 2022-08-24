// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_H__
#define __L2_up_L1_WEIGHTS_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_ram) {
        ram[0] = "0b10111101110100001001111110100101";
        ram[1] = "0b10111101111011011100101000001000";
        ram[2] = "0b10111101000111100111101001110100";
        ram[3] = "0b10111101001011010011110110000110";
        ram[4] = "0b10111110100001110010111110011000";
        ram[5] = "0b10111110001001011000101000110011";
        ram[6] = "0b10111101100010110110101011101000";
        ram[7] = "0b10111101011000101100111011001101";
        ram[8] = "0b00111101101110011001011001110100";
        ram[9] = "0b10111101111101011100000011111101";
        ram[10] = "0b00111101010111011101110100101011";
        ram[11] = "0b00111110110011100001011111100011";
        ram[12] = "0b10111101101110010100010010101010";
        ram[13] = "0b10111101110010111100011110110100";
        ram[14] = "0b00111110000001001000011010101101";
        ram[15] = "0b10111101101101000101011010110100";
        ram[16] = "0b00111100001101101000010010001100";
        ram[17] = "0b00111100100111100100010011111010";
        ram[18] = "0b00111011101101011100001110011100";
        ram[19] = "0b00111010110000101100010111100011";
        ram[20] = "0b00111100101000000101001101011101";
        ram[21] = "0b00111101011110000111100010111000";
        ram[22] = "0b00111101111000111100011111010110";
        ram[23] = "0b00111011001010101110101011111011";
        ram[24] = "0b10111110000011100111001000010001";
        ram[25] = "0b10111101100010100100111111001010";
        ram[26] = "0b10111101110000001110010100011101";
        ram[27] = "0b10111101001111001111000111000011";
        ram[28] = "0b00111100000001100111111100001011";
        ram[29] = "0b00111110010001100100101100100011";
        ram[30] = "0b10111110010100101011100100001010";
        ram[31] = "0b00111101000010101111101100111011";
        ram[32] = "0b00111110011010011101000111110110";
        ram[33] = "0b00111101011000000000011011010001";
        ram[34] = "0b10111011011101000111001100000100";
        ram[35] = "0b10111110001001110100111110110101";
        ram[36] = "0b10111101001110100110000001001110";
        ram[37] = "0b10111101110111010000111000010011";
        ram[38] = "0b00111101011101101011110000011111";
        ram[39] = "0b10111110001001000100110000111000";
        ram[40] = "0b00111011111101000100100100010011";
        ram[41] = "0b00111110011001101110010110001010";
        ram[42] = "0b00111110001000010001010010010000";
        ram[43] = "0b00111101100001111000100011011011";
        ram[44] = "0b00111101011101111010110000111111";
        ram[45] = "0b00111101100110011110010100011001";
        ram[46] = "0b00111011110000001111000000100000";
        ram[47] = "0b10111101011000100001111110110000";
        ram[48] = "0b10111101111001111101011011111001";
        ram[49] = "0b00111101000000101000100000000101";
        ram[50] = "0b10111110000101111011010111110010";
        ram[51] = "0b00111101101110011110001001111010";


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


SC_MODULE(L2_up_L1_WEIGHTS) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS) {
meminst = new L2_up_L1_WEIGHTS_ram("L2_up_L1_WEIGHTS_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS() {
    delete meminst;
}


};//endmodule
#endif
