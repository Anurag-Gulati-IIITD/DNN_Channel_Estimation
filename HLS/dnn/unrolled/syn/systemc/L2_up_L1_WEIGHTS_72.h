// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_72_H__
#define __L2_up_L1_WEIGHTS_72_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_72_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_72_ram) {
        ram[0] = "0b00111101011001010010101011000111";
        ram[1] = "0b10111110000110111100100001111110";
        ram[2] = "0b10111101001100101010011110111101";
        ram[3] = "0b00111101101000000001001101100110";
        ram[4] = "0b10111101110111101000001101011110";
        ram[5] = "0b00111110011000001000110010000010";
        ram[6] = "0b10111101010011000110100000100011";
        ram[7] = "0b10111110001100011100100100101110";
        ram[8] = "0b10111101001100110000101101011011";
        ram[9] = "0b10111101100111110011000111110100";
        ram[10] = "0b00111101100001001111110110110001";
        ram[11] = "0b00111101110000101110111111010100";
        ram[12] = "0b00111110000000100100111010011100";
        ram[13] = "0b00111101110001000011111001010011";
        ram[14] = "0b10111101010010010110000100111101";
        ram[15] = "0b00111100111110010101100100011101";
        ram[16] = "0b10111101010101011010100111101011";
        ram[17] = "0b10111100110010111111100011111101";
        ram[18] = "0b10111011111000001111001111001011";
        ram[19] = "0b00111100011000110110000010001101";
        ram[20] = "0b00111101100001111011100110011101";
        ram[21] = "0b10111100110111000011100110111101";
        ram[22] = "0b00111110011011110110100110001000";
        ram[23] = "0b00111110001010100001111010000010";
        ram[24] = "0b10111101001101001011111010000011";
        ram[25] = "0b10111101100001011000100000011010";
        ram[26] = "0b10111110010000101001011001110000";
        ram[27] = "0b00111110000001001110001010110000";
        ram[28] = "0b00111101010101100100110001110011";
        ram[29] = "0b10111110000000001010011011111100";
        ram[30] = "0b00111101001101100010100001000110";
        ram[31] = "0b10111101010010010010110011001111";
        ram[32] = "0b00111101110110101111101001110010";
        ram[33] = "0b10111101110110101100000001000000";
        ram[34] = "0b10111101010111110000100000000011";
        ram[35] = "0b00111101000001110001000111011000";
        ram[36] = "0b10111101000110010000000010000010";
        ram[37] = "0b00111100110111101001110000000010";
        ram[38] = "0b10111101110100111001110110100001";
        ram[39] = "0b00111101110001000101000010101101";
        ram[40] = "0b00111101100001010101010111000101";
        ram[41] = "0b00111101101101010000010011000101";
        ram[42] = "0b10111011000001100101100101001011";
        ram[43] = "0b10111101000001001100100111001001";
        ram[44] = "0b00111011101000000111111101100111";
        ram[45] = "0b10111100101100101110101111100110";
        ram[46] = "0b10111101101000101101110001101110";
        ram[47] = "0b10111001011010011101010100011011";
        ram[48] = "0b00111101100011111101010000111001";
        ram[49] = "0b00111110000101001011110011110001";
        ram[50] = "0b00111101000001001110101001001011";
        ram[51] = "0b10111101101101011010101101111110";


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


SC_MODULE(L2_up_L1_WEIGHTS_72) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_72_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_72) {
meminst = new L2_up_L1_WEIGHTS_72_ram("L2_up_L1_WEIGHTS_72_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_72() {
    delete meminst;
}


};//endmodule
#endif
