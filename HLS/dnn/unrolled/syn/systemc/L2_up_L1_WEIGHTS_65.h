// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_65_H__
#define __L2_up_L1_WEIGHTS_65_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_65_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_65_ram) {
        ram[0] = "0b00111100100110101101010000101100";
        ram[1] = "0b10111101110101010111011000000100";
        ram[2] = "0b00111101111101100100100011000111";
        ram[3] = "0b10111101101011011111101101010000";
        ram[4] = "0b10111011111101101001010001000110";
        ram[5] = "0b00111110010101000001011110000111";
        ram[6] = "0b00111101101101100000010010011111";
        ram[7] = "0b10111101100000100001010000100111";
        ram[8] = "0b00111101101100001110001111001110";
        ram[9] = "0b00111100110111100010010001111001";
        ram[10] = "0b00111101101111110110111000111111";
        ram[11] = "0b00111101001001110001001101101010";
        ram[12] = "0b10111100110110000001100011000110";
        ram[13] = "0b00111110000011100001000000000110";
        ram[14] = "0b10111101101000011010111101111101";
        ram[15] = "0b10111101101010100011101101011000";
        ram[16] = "0b10111100010010101100100011100111";
        ram[17] = "0b10111101110000100111100001001011";
        ram[18] = "0b10111100011010001100110011011110";
        ram[19] = "0b00111101100101111011101111111001";
        ram[20] = "0b00111100101010000011011011101011";
        ram[21] = "0b10111100101110111001111100010010";
        ram[22] = "0b00111101010101000000110011001000";
        ram[23] = "0b00111101100001010101001000011010";
        ram[24] = "0b00111100111001100100011011110001";
        ram[25] = "0b00111101100100110101101100001100";
        ram[26] = "0b00111110000111100011110101100000";
        ram[27] = "0b00111101111010010010001111100110";
        ram[28] = "0b10111100010010100100001010101111";
        ram[29] = "0b10111110010101001010001010111010";
        ram[30] = "0b00111100011000110011101011001101";
        ram[31] = "0b10111101100100000000111101110111";
        ram[32] = "0b00111101010001100110101100011110";
        ram[33] = "0b10111011111111110111110111111010";
        ram[34] = "0b00111101010100101110011000100001";
        ram[35] = "0b00111101100000110101110001011011";
        ram[36] = "0b10111011001001010010011010010110";
        ram[37] = "0b10111110000001011000111110110100";
        ram[38] = "0b10111101111100001000000100111101";
        ram[39] = "0b10111011110111010011111111100010";
        ram[40] = "0b10111101100000111111110011001010";
        ram[41] = "0b00111100001100010101101101010111";
        ram[42] = "0b10111100110001101110101100001011";
        ram[43] = "0b00111110000011111000111101000111";
        ram[44] = "0b10111101101100100000111010100110";
        ram[45] = "0b10111101101111001110111100100100";
        ram[46] = "0b00111101110101111100101000100001";
        ram[47] = "0b10111101010010110011000010110110";
        ram[48] = "0b10111101100000110110100011110001";
        ram[49] = "0b10111110001110100011110111110111";
        ram[50] = "0b10111101101100000011011011001010";
        ram[51] = "0b00111101010111110110110110111001";


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


SC_MODULE(L2_up_L1_WEIGHTS_65) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_65_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_65) {
meminst = new L2_up_L1_WEIGHTS_65_ram("L2_up_L1_WEIGHTS_65_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_65() {
    delete meminst;
}


};//endmodule
#endif
