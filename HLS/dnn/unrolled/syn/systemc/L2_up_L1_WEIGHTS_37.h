// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_37_H__
#define __L2_up_L1_WEIGHTS_37_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_37_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_37_ram) {
        ram[0] = "0b10111101100011010010111011011000";
        ram[1] = "0b00111101010111011000100000111100";
        ram[2] = "0b00111100101010110001000010111010";
        ram[3] = "0b10111101000110110000011110001110";
        ram[4] = "0b00111101111101010110110010010100";
        ram[5] = "0b00111110010000101011100110010001";
        ram[6] = "0b00111100100000001010001110010100";
        ram[7] = "0b10111100111010111000101101101001";
        ram[8] = "0b10111101111100000111001000001000";
        ram[9] = "0b10111101100111000110011011010011";
        ram[10] = "0b10111100001111000110011001001101";
        ram[11] = "0b00111100101110010100000011111111";
        ram[12] = "0b00111011101100001110000110110101";
        ram[13] = "0b00111101111011101011101100110100";
        ram[14] = "0b10111101101011111101110000010110";
        ram[15] = "0b10111110100000011100110100011100";
        ram[16] = "0b00111101101100111010111001101000";
        ram[17] = "0b10111101111000011001100111111110";
        ram[18] = "0b00111100000011111001011011100001";
        ram[19] = "0b00111011001111010110011000100111";
        ram[20] = "0b00111101110000101101111100001101";
        ram[21] = "0b10111101111100100000010100110110";
        ram[22] = "0b00111101000001110010100011101001";
        ram[23] = "0b10111110000101110110011010000100";
        ram[24] = "0b00111110000101001011000101101000";
        ram[25] = "0b00111101010101101010010110010100";
        ram[26] = "0b00111101100111111101011010010101";
        ram[27] = "0b10111100110010011010111111100010";
        ram[28] = "0b00111101010001000101011101111110";
        ram[29] = "0b10111110011000100100010100101100";
        ram[30] = "0b00111101100001000111111101010110";
        ram[31] = "0b00111100110100100100001110011010";
        ram[32] = "0b10111001110010011101100111010011";
        ram[33] = "0b10111100100100111010001011100000";
        ram[34] = "0b10111101001010000101111011000100";
        ram[35] = "0b00111101001011100000100111111111";
        ram[36] = "0b00111101000100000010010101111101";
        ram[37] = "0b00111101110011001110010001100101";
        ram[38] = "0b00111101001011010010000000101001";
        ram[39] = "0b10111100011110100101000010010100";
        ram[40] = "0b10111101111000010001010011010011";
        ram[41] = "0b10111001111100111100101100111110";
        ram[42] = "0b00111101111110000110101110011100";
        ram[43] = "0b00111110100010111101011100101100";
        ram[44] = "0b10111101100110011110011000100101";
        ram[45] = "0b00111100011111001001111111111001";
        ram[46] = "0b00111101011000010110111110000111";
        ram[47] = "0b00111100111011111001100110000000";
        ram[48] = "0b00111101001111001001101111000111";
        ram[49] = "0b10111011010101010011000001001001";
        ram[50] = "0b00111101111000100010000111001001";
        ram[51] = "0b00111100111110101011100101101111";


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


SC_MODULE(L2_up_L1_WEIGHTS_37) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_37_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_37) {
meminst = new L2_up_L1_WEIGHTS_37_ram("L2_up_L1_WEIGHTS_37_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_37() {
    delete meminst;
}


};//endmodule
#endif
