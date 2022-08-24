// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_33_H__
#define __L2_up_L1_WEIGHTS_33_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_33_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_33_ram) {
        ram[0] = "0b10111100101001011110000100111011";
        ram[1] = "0b10111101100101001001000101101101";
        ram[2] = "0b10111101000001111011010001011111";
        ram[3] = "0b00111101100000110111100110110111";
        ram[4] = "0b10111101101011011011101111100000";
        ram[5] = "0b10111101100001100000011011111011";
        ram[6] = "0b10111101000100101110000111101111";
        ram[7] = "0b00111101001000101110010111011110";
        ram[8] = "0b00111101110100000001001010011101";
        ram[9] = "0b00111110001001010010110001011010";
        ram[10] = "0b00111100100110111000101010100000";
        ram[11] = "0b00111100001011101101010101101011";
        ram[12] = "0b00111101110011001011101110000000";
        ram[13] = "0b00111110000000011101010010110111";
        ram[14] = "0b00111101001101001100100100000000";
        ram[15] = "0b00111110011000011001101001000001";
        ram[16] = "0b00111011110100001100001111010010";
        ram[17] = "0b10111101000001011010110101010100";
        ram[18] = "0b00111100000100000000001111101111";
        ram[19] = "0b00111100100010000110110111111000";
        ram[20] = "0b00111101011101111011101011101101";
        ram[21] = "0b00111101010110101100000001000000";
        ram[22] = "0b10111101000101110100101101000000";
        ram[23] = "0b00111101111011010010111101011110";
        ram[24] = "0b10111100100011010001001100001110";
        ram[25] = "0b10111100001010110110110100000001";
        ram[26] = "0b10111110100000101101101001110111";
        ram[27] = "0b00111100101110001111100110110001";
        ram[28] = "0b10111101000110101110101000110001";
        ram[29] = "0b00111011001010011000101010101000";
        ram[30] = "0b00111101000111011000111110010011";
        ram[31] = "0b10111101000110100100010010000101";
        ram[32] = "0b00111101110111111101100000100111";
        ram[33] = "0b10111101001110101000001011101000";
        ram[34] = "0b00111100100000110000000110101000";
        ram[35] = "0b00111110010101110011101010111101";
        ram[36] = "0b10111010011111001111100000001110";
        ram[37] = "0b00111101100101001111001111111110";
        ram[38] = "0b00111100011010010100111011100100";
        ram[39] = "0b00111110000010110110111011010110";
        ram[40] = "0b00111101110000100000110101010110";
        ram[41] = "0b00111101000001111010111100100001";
        ram[42] = "0b10111110001011110100111001000100";
        ram[43] = "0b10111110011001111011101100110000";
        ram[44] = "0b10111100001110000111101111011101";
        ram[45] = "0b00111100011111001011100100100100";
        ram[46] = "0b10111101110101110111110110010101";
        ram[47] = "0b10111101010010011010101110110000";
        ram[48] = "0b00111011011110111011100101001001";
        ram[49] = "0b10111101000111100001000010001100";
        ram[50] = "0b10111101101011110101010101011000";
        ram[51] = "0b10111110000101000110101011100100";


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


SC_MODULE(L2_up_L1_WEIGHTS_33) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_33_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_33) {
meminst = new L2_up_L1_WEIGHTS_33_ram("L2_up_L1_WEIGHTS_33_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_33() {
    delete meminst;
}


};//endmodule
#endif
