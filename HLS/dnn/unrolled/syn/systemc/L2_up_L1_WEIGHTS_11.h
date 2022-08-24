// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_11_H__
#define __L2_up_L1_WEIGHTS_11_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_11_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_11_ram) {
        ram[0] = "0b00111101100110010100001010010001";
        ram[1] = "0b00111101111001010100010011111110";
        ram[2] = "0b10111101001100100111111111100101";
        ram[3] = "0b00111110001010100100110101101110";
        ram[4] = "0b10111100101100101000000011110001";
        ram[5] = "0b10111101000011100001000111011100";
        ram[6] = "0b10111110000010110111001111010010";
        ram[7] = "0b00111101010111110101101111100110";
        ram[8] = "0b10111110011010110110010000010111";
        ram[9] = "0b10111101101010101000000100010011";
        ram[10] = "0b10111110000110000110000000010011";
        ram[11] = "0b10111110000000111000001001011110";
        ram[12] = "0b10111100111101110110101000101111";
        ram[13] = "0b00111101100101011101011001111100";
        ram[14] = "0b00111101001000000010111110110110";
        ram[15] = "0b00111101100110100000101011011001";
        ram[16] = "0b10111101010011111101100011110001";
        ram[17] = "0b00111101100110111000110010111001";
        ram[18] = "0b00111101000011011100011001011100";
        ram[19] = "0b00111100101010001111000110010001";
        ram[20] = "0b10111101101011110011111111011001";
        ram[21] = "0b00111100100011111001010011001000";
        ram[22] = "0b00111101000011000011000110011100";
        ram[23] = "0b10111101110100100110010100101000";
        ram[24] = "0b10111101100111010110001110001000";
        ram[25] = "0b00111101010110100101001100110011";
        ram[26] = "0b10111110011000100000000000111011";
        ram[27] = "0b10111110001101001100110110111000";
        ram[28] = "0b00111101000000101101001110000100";
        ram[29] = "0b00111110000001111001010001100100";
        ram[30] = "0b10111101110000000110010110110110";
        ram[31] = "0b00111101010111010101100000000000";
        ram[32] = "0b00111100101001111100101111110111";
        ram[33] = "0b10111101011100100001010011110000";
        ram[34] = "0b10111110000000111100100101101001";
        ram[35] = "0b10111101010011001100001101011101";
        ram[36] = "0b00111101010101111000011100000101";
        ram[37] = "0b00111110010000111101100111101100";
        ram[38] = "0b00111101010100010110100001110011";
        ram[39] = "0b10111100000111000010001110111000";
        ram[40] = "0b00111101010000000010001010011010";
        ram[41] = "0b10111100101011011001100010111111";
        ram[42] = "0b10111100110001001001010101011011";
        ram[43] = "0b10111101111011000110001111110001";
        ram[44] = "0b00111101010001001111001110111010";
        ram[45] = "0b00111100100111011101000110100010";
        ram[46] = "0b10111101111000011000110111101111";
        ram[47] = "0b00111101010101010011011110100000";
        ram[48] = "0b00111101000110011111100100000101";
        ram[49] = "0b00111101101100111111011101001001";
        ram[50] = "0b00111110000010111100001000110011";
        ram[51] = "0b10111100000001100100000000100001";


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


SC_MODULE(L2_up_L1_WEIGHTS_11) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_11_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_11) {
meminst = new L2_up_L1_WEIGHTS_11_ram("L2_up_L1_WEIGHTS_11_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_11() {
    delete meminst;
}


};//endmodule
#endif
