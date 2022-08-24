// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_31_H__
#define __L2_up_L1_WEIGHTS_31_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_31_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_31_ram) {
        ram[0] = "0b00111011001010000111111000111001";
        ram[1] = "0b00111110011000110100000101011011";
        ram[2] = "0b10111100110011011110000110100000";
        ram[3] = "0b10111101001000010011101100011001";
        ram[4] = "0b00111011011111111000011001011101";
        ram[5] = "0b10111101101000010000001110000110";
        ram[6] = "0b10111011011110001011010110001001";
        ram[7] = "0b00111101100000001001010011100110";
        ram[8] = "0b00111101110110100000100111001100";
        ram[9] = "0b00111101011011110010110110000000";
        ram[10] = "0b10111110000101101110101111010101";
        ram[11] = "0b00111101100000101011111110011000";
        ram[12] = "0b00111110001001101010101001001100";
        ram[13] = "0b10111100011101010000000110011111";
        ram[14] = "0b10111110101010001010001111010111";
        ram[15] = "0b10111110000011101001100101100011";
        ram[16] = "0b00111110000111110001100000000001";
        ram[17] = "0b00111100001011100101111111111010";
        ram[18] = "0b00111101100110010011011010000010";
        ram[19] = "0b10111100000111000111101111001100";
        ram[20] = "0b10111100110101011000011001000100";
        ram[21] = "0b10111100100001101000100110000111";
        ram[22] = "0b10111101110010111010101001011000";
        ram[23] = "0b10111101100010000100000001011011";
        ram[24] = "0b10111100110000100110110111001110";
        ram[25] = "0b00111100101110000101010000000100";
        ram[26] = "0b10111110010001111011101111111001";
        ram[27] = "0b10111101110101111100001111010111";
        ram[28] = "0b00111101011001111000100011011011";
        ram[29] = "0b00111101100001001011010101010111";
        ram[30] = "0b00111110100110111011000010100011";
        ram[31] = "0b10111101101011111110001111110011";
        ram[32] = "0b00111101011010000001110010110100";
        ram[33] = "0b10111101101000011110001111101011";
        ram[34] = "0b10111101100111101101100101011010";
        ram[35] = "0b10111101111010100010000010011011";
        ram[36] = "0b10111100110100010111001111111011";
        ram[37] = "0b00111101100111100111001110100011";
        ram[38] = "0b00111100000110101100101111001001";
        ram[39] = "0b00111101011101001000110100111011";
        ram[40] = "0b10111100110000111111100000010010";
        ram[41] = "0b00111010101101011110110110001101";
        ram[42] = "0b10111100101011101011000111000100";
        ram[43] = "0b00111110000110100011101100010101";
        ram[44] = "0b00111101101101100001110111001001";
        ram[45] = "0b10111010101011011010101110011111";
        ram[46] = "0b00111011111011000111110010010101";
        ram[47] = "0b10111100011101101011010111010100";
        ram[48] = "0b10111100100011011110101100010000";
        ram[49] = "0b00111101001010100110101100001110";
        ram[50] = "0b10111101010001101111010001111011";
        ram[51] = "0b10111101111000001111111101010100";


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


SC_MODULE(L2_up_L1_WEIGHTS_31) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_31_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_31) {
meminst = new L2_up_L1_WEIGHTS_31_ram("L2_up_L1_WEIGHTS_31_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_31() {
    delete meminst;
}


};//endmodule
#endif
