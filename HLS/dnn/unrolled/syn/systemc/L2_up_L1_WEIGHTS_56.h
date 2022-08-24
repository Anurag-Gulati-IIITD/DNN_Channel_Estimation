// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_56_H__
#define __L2_up_L1_WEIGHTS_56_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_56_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_56_ram) {
        ram[0] = "0b10111100010001100100111111011011";
        ram[1] = "0b10111101111110100011101100010101";
        ram[2] = "0b10111101011011101000001110100001";
        ram[3] = "0b00111101111011111111110010011000";
        ram[4] = "0b10111101101110110011100111100010";
        ram[5] = "0b10111101001111110100000000011100";
        ram[6] = "0b10111101001010010011110100010000";
        ram[7] = "0b00111101000100111101111010100100";
        ram[8] = "0b10111110000101100111000010100000";
        ram[9] = "0b00111101111110111000010111101000";
        ram[10] = "0b00111101101010010110000111000011";
        ram[11] = "0b10111110000111001111001011010000";
        ram[12] = "0b10111100100001001010001011111101";
        ram[13] = "0b00111110000100011101011111011100";
        ram[14] = "0b10111100100001101010010011001010";
        ram[15] = "0b10111110000111101110010100100110";
        ram[16] = "0b10111101001100110010010010000101";
        ram[17] = "0b00111101111010001100111101111101";
        ram[18] = "0b00111100100111111011101001000101";
        ram[19] = "0b10111101101101100101011011101111";
        ram[20] = "0b10111101100011010001101101110001";
        ram[21] = "0b10111100010110011000001110010100";
        ram[22] = "0b10111101101000101100011011101111";
        ram[23] = "0b00111110000111100101101000110110";
        ram[24] = "0b10111101100001110111111011100101";
        ram[25] = "0b10111101100110110000100000010100";
        ram[26] = "0b00111101110010110101110111001100";
        ram[27] = "0b10111110011111010100101110101101";
        ram[28] = "0b00111001111110100001010111011011";
        ram[29] = "0b00111101101101110011101110000110";
        ram[30] = "0b10111101000011100000011001010011";
        ram[31] = "0b10111101010010010010101111000011";
        ram[32] = "0b00111101101110000000000000100010";
        ram[33] = "0b10111011110111110000010011011110";
        ram[34] = "0b10111101011001111101101110110001";
        ram[35] = "0b00111100111001000011001001000100";
        ram[36] = "0b10111101000100111000011010010000";
        ram[37] = "0b10111101110001011100100110100011";
        ram[38] = "0b00111110000110100100110001100010";
        ram[39] = "0b00111011111111110101010000001001";
        ram[40] = "0b00111100010000101110011101110001";
        ram[41] = "0b00111101101111111011100110111111";
        ram[42] = "0b10111100100111111010100101111110";
        ram[43] = "0b00111110001101111100111111100110";
        ram[44] = "0b10111100100101100010100011001100";
        ram[45] = "0b00111101010110110000011110001110";
        ram[46] = "0b10111101011001010111111010101010";
        ram[47] = "0b00111100001010010001000100000110";
        ram[48] = "0b00111011110111110010011001101100";
        ram[49] = "0b00111101011100101000101001100001";
        ram[50] = "0b00111110001100010000101010011010";
        ram[51] = "0b10111100011011001000010011111001";


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


SC_MODULE(L2_up_L1_WEIGHTS_56) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_56_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_56) {
meminst = new L2_up_L1_WEIGHTS_56_ram("L2_up_L1_WEIGHTS_56_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_56() {
    delete meminst;
}


};//endmodule
#endif
