// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_85_H__
#define __L2_up_L1_WEIGHTS_85_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_85_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_85_ram) {
        ram[0] = "0b10111010111100100011100010010111";
        ram[1] = "0b10111101100000101011100101001110";
        ram[2] = "0b10111011111010101010011011010010";
        ram[3] = "0b00111100100110001010111010111000";
        ram[4] = "0b00111101100100110111010101000011";
        ram[5] = "0b10111101110001011111111110100100";
        ram[6] = "0b10111010101011100111010011110011";
        ram[7] = "0b10111011001010100010000110100111";
        ram[8] = "0b10111011000101010110110000001101";
        ram[9] = "0b10111101111100010000010111100010";
        ram[10] = "0b00111110010000100110110001111111";
        ram[11] = "0b10111110000010000001011110111001";
        ram[12] = "0b10111101000101101011101010001100";
        ram[13] = "0b10111101111011110001001111001111";
        ram[14] = "0b00111110100001010010100011010000";
        ram[15] = "0b00111101111001000001110000111111";
        ram[16] = "0b10111100100101100111101010010110";
        ram[17] = "0b10111101111000010101111101000110";
        ram[18] = "0b10111101100011001010011100001101";
        ram[19] = "0b00111101010101110111110110010101";
        ram[20] = "0b00111100101100010011000101100110";
        ram[21] = "0b00111101000010100110000100010111";
        ram[22] = "0b10111101101101110100111011101100";
        ram[23] = "0b00111110001011011010000111101100";
        ram[24] = "0b00111010101001110001110111100111";
        ram[25] = "0b00111100001110000000111011010000";
        ram[26] = "0b10111101010001011100100110100011";
        ram[27] = "0b00111101101010010101001010001111";
        ram[28] = "0b10111101100110011011010101100011";
        ram[29] = "0b10111100110001001011000010011111";
        ram[30] = "0b10111110001010100000110010101110";
        ram[31] = "0b00111101110010000110101001001101";
        ram[32] = "0b10111101101000100100010111110110";
        ram[33] = "0b00111010000110111111100111000110";
        ram[34] = "0b00111110000011110100101001010110";
        ram[35] = "0b00111110010010111101101000001110";
        ram[36] = "0b00111100011000010101000000010010";
        ram[37] = "0b10111101111101011001110011010000";
        ram[38] = "0b00111100101111000010111111000111";
        ram[39] = "0b10111101101011001110100000010000";
        ram[40] = "0b10111100110111110001000101110011";
        ram[41] = "0b00111100001011101101110111001110";
        ram[42] = "0b00111101101111000011010001111111";
        ram[43] = "0b10111101110000111110110110010110";
        ram[44] = "0b10111101001001100011011000101010";
        ram[45] = "0b00111101000011010000100110011110";
        ram[46] = "0b00111100001111011101101110011000";
        ram[47] = "0b00111101001001000110101111110000";
        ram[48] = "0b10111100100100011011111001101110";
        ram[49] = "0b10111110000000111000111100110110";
        ram[50] = "0b00111101111110111110010011001101";
        ram[51] = "0b00111110000110110101000110111101";


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


SC_MODULE(L2_up_L1_WEIGHTS_85) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_85_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_85) {
meminst = new L2_up_L1_WEIGHTS_85_ram("L2_up_L1_WEIGHTS_85_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_85() {
    delete meminst;
}


};//endmodule
#endif
