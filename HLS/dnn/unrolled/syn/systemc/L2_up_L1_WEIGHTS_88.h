// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_88_H__
#define __L2_up_L1_WEIGHTS_88_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_88_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_88_ram) {
        ram[0] = "0b10111011101101000011100101011000";
        ram[1] = "0b00111110000010100011110100101110";
        ram[2] = "0b10111100100000001001010011100110";
        ram[3] = "0b10111101101000001111110111000001";
        ram[4] = "0b10111100111011010001011111000110";
        ram[5] = "0b00111101101101000001100011010111";
        ram[6] = "0b00111101010001001010111110010010";
        ram[7] = "0b10111101111101111110111111100001";
        ram[8] = "0b00111101010101000011111000010000";
        ram[9] = "0b10111101100011001111011101000100";
        ram[10] = "0b10111101110011010000110101001010";
        ram[11] = "0b10111100100111101001010010101011";
        ram[12] = "0b00111101011011000101000110011000";
        ram[13] = "0b00111101101110100001111000111111";
        ram[14] = "0b10111101110000111110011011000101";
        ram[15] = "0b10111110010110111011100111010000";
        ram[16] = "0b00111011110100110011100011111000";
        ram[17] = "0b10111011111101011100001010001111";
        ram[18] = "0b10111101010001000111110100111101";
        ram[19] = "0b10111101000010100010111111001111";
        ram[20] = "0b10111101110111000110110100011110";
        ram[21] = "0b00111101001001100011010000010001";
        ram[22] = "0b00111101100111110110000010011110";
        ram[23] = "0b10111110001000010110110001100001";
        ram[24] = "0b00111100111100110011011001011001";
        ram[25] = "0b10111100100001001001011001101000";
        ram[26] = "0b00111110001010100010100000110101";
        ram[27] = "0b10111101001110100111101110010001";
        ram[28] = "0b10111100010011011111001001100111";
        ram[29] = "0b10111101111000111110100011011110";
        ram[30] = "0b00111101101111010100111110011100";
        ram[31] = "0b10111101010110010100110000000001";
        ram[32] = "0b00111100111010001000110111110011";
        ram[33] = "0b10111100000100100010000011111111";
        ram[34] = "0b10111101001011011000100100000101";
        ram[35] = "0b00111011001001011010110011001101";
        ram[36] = "0b10111101110011010111101101100011";
        ram[37] = "0b00111101101001110010111000100111";
        ram[38] = "0b00111101010011110011001000111000";
        ram[39] = "0b00111101010101100001100000000101";
        ram[40] = "0b10111100110001100011100011001001";
        ram[41] = "0b10111101100001100101101101100100";
        ram[42] = "0b00111101010111100101011011001101";
        ram[43] = "0b00111110011001001101011010100001";
        ram[44] = "0b10111100111101101011111000111000";
        ram[45] = "0b10111100101001001000001100000010";
        ram[46] = "0b10111101001100010010010111011101";
        ram[47] = "0b10111100101010101100010100111011";
        ram[48] = "0b00111100001001100001000101110111";
        ram[49] = "0b00111011010101010101000111010111";
        ram[50] = "0b10111101000110001111011000000110";
        ram[51] = "0b10111011111111001001101111000111";


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


SC_MODULE(L2_up_L1_WEIGHTS_88) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_88_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_88) {
meminst = new L2_up_L1_WEIGHTS_88_ram("L2_up_L1_WEIGHTS_88_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_88() {
    delete meminst;
}


};//endmodule
#endif
