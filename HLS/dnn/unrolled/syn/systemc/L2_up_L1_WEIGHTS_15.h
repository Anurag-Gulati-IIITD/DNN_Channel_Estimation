// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_15_H__
#define __L2_up_L1_WEIGHTS_15_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_15_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_15_ram) {
        ram[0] = "0b00111101010010010111111010011001";
        ram[1] = "0b10111110000001000110111101011000";
        ram[2] = "0b00111101110110000000000110110100";
        ram[3] = "0b10111101100100111100110011010001";
        ram[4] = "0b10111011100110011001010101101000";
        ram[5] = "0b00111110011010010111000001110010";
        ram[6] = "0b00111110000010110001101011110100";
        ram[7] = "0b10111101111011001010101111000101";
        ram[8] = "0b10111100110100110111100111111011";
        ram[9] = "0b10111011100101111010111011011110";
        ram[10] = "0b00111110010000111100101011111011";
        ram[11] = "0b00111101101111000001000011011000";
        ram[12] = "0b10111101001010000110101101011001";
        ram[13] = "0b00111101111110010101101010101111";
        ram[14] = "0b10111101011010001100000101010101";
        ram[15] = "0b10111101010110000010101110100110";
        ram[16] = "0b10111101010000001100101001100000";
        ram[17] = "0b10111101000011101111111011010110";
        ram[18] = "0b00111100100110010110000011111010";
        ram[19] = "0b00111100101001011000001011011100";
        ram[20] = "0b00111011100111010101101000011000";
        ram[21] = "0b10111001111001000001000010110110";
        ram[22] = "0b00111101110101000111110001110100";
        ram[23] = "0b00111101000110011110111110010101";
        ram[24] = "0b00111101110000101111101101011101";
        ram[25] = "0b00111101001101001011110101110111";
        ram[26] = "0b00111101010010011101000101110000";
        ram[27] = "0b00111110001010011010101001100001";
        ram[28] = "0b00111100000110101111100111101100";
        ram[29] = "0b10111110001111110001001110001100";
        ram[30] = "0b10111100000110101010011000001001";
        ram[31] = "0b10111101111000010111100101111101";
        ram[32] = "0b10111011000110000010110010110010";
        ram[33] = "0b10111101100000010000000101101101";
        ram[34] = "0b00111110000010101100111111111010";
        ram[35] = "0b00111101110010110011100100011001";
        ram[36] = "0b00111101010101111000100100011110";
        ram[37] = "0b10111101110000001101110111000110";
        ram[38] = "0b10111110011011100010010101000010";
        ram[39] = "0b00111100110101000010000111000000";
        ram[40] = "0b10111101010110100101101110010110";
        ram[41] = "0b00111101011100010101101101010111";
        ram[42] = "0b10111100101110001111101111001010";
        ram[43] = "0b00111101000110110001111010011111";
        ram[44] = "0b10111011010010101010001100100111";
        ram[45] = "0b00111100001001000110000101110100";
        ram[46] = "0b00111100110000001101101100100111";
        ram[47] = "0b10111101100001001101101110011100";
        ram[48] = "0b10111101001000111000100001100110";
        ram[49] = "0b00111100101011110101100110001010";
        ram[50] = "0b00111100011000011111001110100101";
        ram[51] = "0b10111101011111010010001100001100";


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


SC_MODULE(L2_up_L1_WEIGHTS_15) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_15_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_15) {
meminst = new L2_up_L1_WEIGHTS_15_ram("L2_up_L1_WEIGHTS_15_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_15() {
    delete meminst;
}


};//endmodule
#endif
