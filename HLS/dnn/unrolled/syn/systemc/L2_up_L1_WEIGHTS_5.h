// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_5_H__
#define __L2_up_L1_WEIGHTS_5_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_5_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_5_ram) {
        ram[0] = "0b00111100101111010000000101111110";
        ram[1] = "0b10111101110010110011111111101010";
        ram[2] = "0b00111101110111001011111111110100";
        ram[3] = "0b00111100101001011011001100011000";
        ram[4] = "0b10111110000001100011011110111101";
        ram[5] = "0b00111110001000010011111000111110";
        ram[6] = "0b00111101001110010100100101100010";
        ram[7] = "0b10111101000110000000000110110100";
        ram[8] = "0b10111100110010011110010001010000";
        ram[9] = "0b10111101011010100000100110001001";
        ram[10] = "0b10111011101110000011000001011110";
        ram[11] = "0b00111011101111110111011010100011";
        ram[12] = "0b00111101011011100111010111111111";
        ram[13] = "0b00111101100010101000001010100101";
        ram[14] = "0b00111110010100010001001111000111";
        ram[15] = "0b10111110001001100010110001110111";
        ram[16] = "0b10111100111010100110000110011110";
        ram[17] = "0b00111011110100110001111111001101";
        ram[18] = "0b00111100110100011101011010001100";
        ram[19] = "0b00111101110100111100000111001110";
        ram[20] = "0b10111100110010011010100110010111";
        ram[21] = "0b10111101001000110100101110010100";
        ram[22] = "0b10111101101101001000011101110111";
        ram[23] = "0b00111101000011001100101010110100";
        ram[24] = "0b00111101100111100110001101100011";
        ram[25] = "0b10111101010001101101011100011111";
        ram[26] = "0b00111100110010011110010001010000";
        ram[27] = "0b10111110100100100101101001000111";
        ram[28] = "0b10111100111100000010110001001101";
        ram[29] = "0b10111101110000000110100111101000";
        ram[30] = "0b10111101111101000100011011111010";
        ram[31] = "0b10111101010100010100001010110011";
        ram[32] = "0b00111101101110000111110001100011";
        ram[33] = "0b00111100111110111000100100001101";
        ram[34] = "0b10111101010110110000110011001100";
        ram[35] = "0b00111110000110011011011110111111";
        ram[36] = "0b00111101000011100111000101000111";
        ram[37] = "0b00111100011001110110100001011010";
        ram[38] = "0b00111110011011011110001001101001";
        ram[39] = "0b00111101100101110000110111101001";
        ram[40] = "0b00111101011011010001110100000100";
        ram[41] = "0b00111110000000001011110000111000";
        ram[42] = "0b10111011101100101001111001001101";
        ram[43] = "0b00111110001010000000000011101011";
        ram[44] = "0b10111101011110001000011101100110";
        ram[45] = "0b10111100111100011000001000100011";
        ram[46] = "0b10111110001011110100100010000000";
        ram[47] = "0b00111100011010000111010011001001";
        ram[48] = "0b00111101011110110101010110101100";
        ram[49] = "0b10111011100001010011110000010101";
        ram[50] = "0b00111101100101111010000010110110";
        ram[51] = "0b00111100001000011000011110100101";


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


SC_MODULE(L2_up_L1_WEIGHTS_5) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_5_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_5) {
meminst = new L2_up_L1_WEIGHTS_5_ram("L2_up_L1_WEIGHTS_5_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_5() {
    delete meminst;
}


};//endmodule
#endif
