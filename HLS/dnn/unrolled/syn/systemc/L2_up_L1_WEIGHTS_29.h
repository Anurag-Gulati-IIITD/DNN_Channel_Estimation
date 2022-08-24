// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_29_H__
#define __L2_up_L1_WEIGHTS_29_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_29_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_29_ram) {
        ram[0] = "0b00111100100010110100001110010110";
        ram[1] = "0b00111101101110101100101101000011";
        ram[2] = "0b10111011111000100010101000101100";
        ram[3] = "0b10111000100011001000001001011010";
        ram[4] = "0b00111100111011100111111001100011";
        ram[5] = "0b10111101110100011111100100100111";
        ram[6] = "0b00111101001100100110001110010101";
        ram[7] = "0b10111100010110010101010101110001";
        ram[8] = "0b10111110010000110010110001100010";
        ram[9] = "0b10111101110111000111000001000011";
        ram[10] = "0b10111100010011010000011110000101";
        ram[11] = "0b00111100110010001110011010001110";
        ram[12] = "0b10111101001011101000111000011101";
        ram[13] = "0b10111101101010111000111000001000";
        ram[14] = "0b00111101101000000001011000000101";
        ram[15] = "0b10111101101010101111110101010100";
        ram[16] = "0b00111100111111011101010001000001";
        ram[17] = "0b00111101100101001101001101111100";
        ram[18] = "0b00111100101110010001001011011100";
        ram[19] = "0b10111101010000010000101101100011";
        ram[20] = "0b10111101010100001000010011101000";
        ram[21] = "0b00111100110001110010100111110110";
        ram[22] = "0b10111011111111011101001000101000";
        ram[23] = "0b00111101011011110111101100011000";
        ram[24] = "0b00111100000111001010100111101111";
        ram[25] = "0b00111101010010110011100000001101";
        ram[26] = "0b00111110001000011111110110011100";
        ram[27] = "0b00111110000011110110101001010001";
        ram[28] = "0b10111101101000001111010001010001";
        ram[29] = "0b00111101101100000011001000010010";
        ram[30] = "0b10111101111101010101100000100001";
        ram[31] = "0b10111101010110001010000100010110";
        ram[32] = "0b00111101001110110000011100000111";
        ram[33] = "0b10111100100110100100100111000011";
        ram[34] = "0b10111101011011100010000100010000";
        ram[35] = "0b10111110011010001100001110110001";
        ram[36] = "0b10111101001010000101110010101011";
        ram[37] = "0b10111100101001000010000001110001";
        ram[38] = "0b10111110010101011110100000001100";
        ram[39] = "0b10111100100010100101010010000010";
        ram[40] = "0b00111101100011011110010011000101";
        ram[41] = "0b10111011000100011111001011011100";
        ram[42] = "0b00111101111100001011000001101100";
        ram[43] = "0b00111101100101111011101111111001";
        ram[44] = "0b10111101001110111010111011001101";
        ram[45] = "0b00111100101010010110011100000010";
        ram[46] = "0b10111100010011110010100011001000";
        ram[47] = "0b00111101011001011000000111001111";
        ram[48] = "0b10111011110000000110100111101000";
        ram[49] = "0b00111101101100111110111101101011";
        ram[50] = "0b00111110000001000111010010010111";
        ram[51] = "0b00111101001000100010010111111010";


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


SC_MODULE(L2_up_L1_WEIGHTS_29) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_29_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_29) {
meminst = new L2_up_L1_WEIGHTS_29_ram("L2_up_L1_WEIGHTS_29_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_29() {
    delete meminst;
}


};//endmodule
#endif
