// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_64_H__
#define __L2_up_L1_WEIGHTS_64_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_64_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_64_ram) {
        ram[0] = "0b00111101101011011011001001110000";
        ram[1] = "0b10111101001010010001100101101001";
        ram[2] = "0b00111101101110111001110110000000";
        ram[3] = "0b10111101110101010100111000101011";
        ram[4] = "0b00111101111000001111010111100100";
        ram[5] = "0b10111101011100111001010010111000";
        ram[6] = "0b10111010101000110111001001100000";
        ram[7] = "0b00111100101011110000010110100111";
        ram[8] = "0b00111110000110010011010001101010";
        ram[9] = "0b10111101100110001000010001000000";
        ram[10] = "0b00111110000010010011100100100010";
        ram[11] = "0b00111010110011011000010101011001";
        ram[12] = "0b00111101100000111110101001110000";
        ram[13] = "0b10111110000000001111010010010101";
        ram[14] = "0b00111100011011111010101001000111";
        ram[15] = "0b10111110000000111101001001010010";
        ram[16] = "0b00111101100011110100001001111000";
        ram[17] = "0b10111110001000111011110100010110";
        ram[18] = "0b10111101001101000000010011101010";
        ram[19] = "0b00111100000010111101011001100010";
        ram[20] = "0b10111011111100000011100011100011";
        ram[21] = "0b10111100110000111001110111100101";
        ram[22] = "0b10111001001001111100010110101100";
        ram[23] = "0b00111101011000010101110110110011";
        ram[24] = "0b00111100010110011000011111000110";
        ram[25] = "0b00111100101010000011111101001111";
        ram[26] = "0b10111100110100010010101010010101";
        ram[27] = "0b00111101101001001000000011101001";
        ram[28] = "0b00111101000100100001001101011110";
        ram[29] = "0b10111100010010001001101100001111";
        ram[30] = "0b10111100111101010111011100010000";
        ram[31] = "0b00111101000110101000001001100010";
        ram[32] = "0b10111101000001110111100110100111";
        ram[33] = "0b00111101100111111000111111001101";
        ram[34] = "0b00111101110100111110011110001110";
        ram[35] = "0b00111101111011011000011001100110";
        ram[36] = "0b00111101110111010011110101000011";
        ram[37] = "0b10111101110100100010100101100011";
        ram[38] = "0b10111101110010111000010110100101";
        ram[39] = "0b00111101001110100001111101001011";
        ram[40] = "0b10111101100001110101011000000000";
        ram[41] = "0b10111101001011110001011101111010";
        ram[42] = "0b00111101111110010110101101110110";
        ram[43] = "0b00111110000011100100100011101001";
        ram[44] = "0b10111101100111001001001111101010";
        ram[45] = "0b10111101110011000101101100001000";
        ram[46] = "0b00111101111110100010100000110101";
        ram[47] = "0b10111101100101101001110110110110";
        ram[48] = "0b00111110000000101011001011000000";
        ram[49] = "0b10111101110101001010011101110010";
        ram[50] = "0b10111110001010010111110010000001";
        ram[51] = "0b10111101101011110111111000111101";


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


SC_MODULE(L2_up_L1_WEIGHTS_64) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_64_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_64) {
meminst = new L2_up_L1_WEIGHTS_64_ram("L2_up_L1_WEIGHTS_64_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_64() {
    delete meminst;
}


};//endmodule
#endif
