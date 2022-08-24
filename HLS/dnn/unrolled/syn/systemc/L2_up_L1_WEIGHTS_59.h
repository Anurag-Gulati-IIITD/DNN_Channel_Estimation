// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_59_H__
#define __L2_up_L1_WEIGHTS_59_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_59_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_59_ram) {
        ram[0] = "0b10111101100011101000010010101101";
        ram[1] = "0b00111100100000110000101000001011";
        ram[2] = "0b10111011100101101100001111111100";
        ram[3] = "0b10111101000111110100111101010001";
        ram[4] = "0b10111100100100110000101111100001";
        ram[5] = "0b00111101110011010100101010100001";
        ram[6] = "0b00111100111011011101111100000001";
        ram[7] = "0b10111101110101000110110010111001";
        ram[8] = "0b00111100111011001010101010111001";
        ram[9] = "0b00111101001101101101000000001011";
        ram[10] = "0b00111100011110100101010011000101";
        ram[11] = "0b00111101100110111100110100110110";
        ram[12] = "0b10111101100110010101101100110110";
        ram[13] = "0b00111101100111111001011100100100";
        ram[14] = "0b10111101110111011110101011001101";
        ram[15] = "0b10111100110100000010011010001001";
        ram[16] = "0b00111101100010011100010011011011";
        ram[17] = "0b00111100100110101110110101010111";
        ram[18] = "0b10111101001000100000110111011100";
        ram[19] = "0b00111101010011000001011101100101";
        ram[20] = "0b10111101001011001101000001111000";
        ram[21] = "0b10111101100010001011110110101001";
        ram[22] = "0b00111110000010010101111101100111";
        ram[23] = "0b10111101001000111010001110101001";
        ram[24] = "0b10111101001100111001111100110100";
        ram[25] = "0b10111100011110110011001100010010";
        ram[26] = "0b00111100100101111000011100000101";
        ram[27] = "0b00111101100011011101101011001111";
        ram[28] = "0b00111101110000011100101111001101";
        ram[29] = "0b10111101011100110011111111001000";
        ram[30] = "0b00111110000101101101110010100000";
        ram[31] = "0b00111101111000010000101011011101";
        ram[32] = "0b10111101100010001111100011101000";
        ram[33] = "0b10111101101011011001011100101101";
        ram[34] = "0b00111101001000101101100000111100";
        ram[35] = "0b10111101111010011000010111110000";
        ram[36] = "0b10111101101111011101101010001100";
        ram[37] = "0b00111011111001110101111111110110";
        ram[38] = "0b10111110001111001011100011100001";
        ram[39] = "0b10111101000110101101110110011100";
        ram[40] = "0b00111101010010000011000000011010";
        ram[41] = "0b10111101110001101111000001001010";
        ram[42] = "0b10111101010100100000000001111110";
        ram[43] = "0b10111101010110010111111001010110";
        ram[44] = "0b10111101100100010110101100010010";
        ram[45] = "0b00111101001111011010111010000010";
        ram[46] = "0b00111010100111011100111110001001";
        ram[47] = "0b10111100110111110100101000010010";
        ram[48] = "0b10111101011101110110100100100011";
        ram[49] = "0b10111101101010110110011111000011";
        ram[50] = "0b10111100110110001101000101010010";
        ram[51] = "0b00111101110001110001101000111011";


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


SC_MODULE(L2_up_L1_WEIGHTS_59) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_59_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_59) {
meminst = new L2_up_L1_WEIGHTS_59_ram("L2_up_L1_WEIGHTS_59_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_59() {
    delete meminst;
}


};//endmodule
#endif
