// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_50_H__
#define __L2_up_L1_WEIGHTS_50_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_50_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_50_ram) {
        ram[0] = "0b10111100000100000000110001010010";
        ram[1] = "0b00111101110011110010100011001000";
        ram[2] = "0b10111101001101100000000101111001";
        ram[3] = "0b00111101010100110110110101100101";
        ram[4] = "0b10111101000111000000000000010001";
        ram[5] = "0b00111101010010110010101001101011";
        ram[6] = "0b00111101101111110000101100101000";
        ram[7] = "0b10111101000010100000010111011110";
        ram[8] = "0b10111101011010010010100100100100";
        ram[9] = "0b10111101100101000001000001110011";
        ram[10] = "0b10111101100110011000111100011101";
        ram[11] = "0b10111110100010011111001110100101";
        ram[12] = "0b00111101100011011010110100110010";
        ram[13] = "0b10111100011100001101110001110111";
        ram[14] = "0b10111110010111111101110001011001";
        ram[15] = "0b00111110000001101000010000000110";
        ram[16] = "0b10111101100010001001011101100011";
        ram[17] = "0b00111101011000001100111000001100";
        ram[18] = "0b10111100111011011000100100000101";
        ram[19] = "0b10111110000001111111010010011001";
        ram[20] = "0b10111101000111101101011010111011";
        ram[21] = "0b00111101001111110000000000100110";
        ram[22] = "0b00111100111101001001101011011101";
        ram[23] = "0b10111100110001111010000101111111";
        ram[24] = "0b10111100011111001110101101111001";
        ram[25] = "0b00111101000000001110111000000111";
        ram[26] = "0b00111110010110101001100101110100";
        ram[27] = "0b00111101010111111111001111110001";
        ram[28] = "0b10111101110111110011100111010010";
        ram[29] = "0b10111110001100000010110010010001";
        ram[30] = "0b00111110011001001100011010100100";
        ram[31] = "0b10111101101010101010100101110001";
        ram[32] = "0b10111101100011010010001111010101";
        ram[33] = "0b00111110000110111100101101100000";
        ram[34] = "0b00111100110000101010001000111100";
        ram[35] = "0b00111101101001101010000010011001";
        ram[36] = "0b00111101000111010111100010000001";
        ram[37] = "0b00111100010010000001010011010111";
        ram[38] = "0b10111101011000001111100100001001";
        ram[39] = "0b00111101101000100110100110011100";
        ram[40] = "0b10111100101011010101011110111100";
        ram[41] = "0b00111101001011000100010100000010";
        ram[42] = "0b00111101001100001100000100110011";
        ram[43] = "0b10111110001101111000100001010101";
        ram[44] = "0b10111101101000000110111100100110";
        ram[45] = "0b10111101100000000010011011001100";
        ram[46] = "0b00111101011101111111011110111110";
        ram[47] = "0b00111101011000010001010001001101";
        ram[48] = "0b10111011111100111100001011011011";
        ram[49] = "0b10111110001011100001101011000101";
        ram[50] = "0b00111101001100010101101101010111";
        ram[51] = "0b10111101110000100111100111011101";


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


SC_MODULE(L2_up_L1_WEIGHTS_50) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_50_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_50) {
meminst = new L2_up_L1_WEIGHTS_50_ram("L2_up_L1_WEIGHTS_50_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_50() {
    delete meminst;
}


};//endmodule
#endif
