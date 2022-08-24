// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_91_H__
#define __L2_up_L1_WEIGHTS_91_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_91_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_91_ram) {
        ram[0] = "0b10111101101011010111000001100001";
        ram[1] = "0b10111101110011010110000100101100";
        ram[2] = "0b10111101001010011101000111110110";
        ram[3] = "0b10111100111000100000101010110111";
        ram[4] = "0b00111100111000001000100011010111";
        ram[5] = "0b10111110011010011100010101100001";
        ram[6] = "0b00111011010110001110110010010110";
        ram[7] = "0b00111101100011000110101101001000";
        ram[8] = "0b00111101110101001011001110000001";
        ram[9] = "0b00111101100011011100101110011011";
        ram[10] = "0b00111101100111011001110110111011";
        ram[11] = "0b00111101010000010101110000100001";
        ram[12] = "0b00111101101011101010011011000010";
        ram[13] = "0b10111101100100010001101001010100";
        ram[14] = "0b00111101100001100111011100101101";
        ram[15] = "0b00111110001011111101100001101011";
        ram[16] = "0b00111101001110110101010010100000";
        ram[17] = "0b00111101100111011011001111000000";
        ram[18] = "0b00111100100100001000000111000011";
        ram[19] = "0b10111101100100001011101111110101";
        ram[20] = "0b10111101000101101001001010110100";
        ram[21] = "0b00111101101011011011100101000001";
        ram[22] = "0b10111110000111101101010011100101";
        ram[23] = "0b00111101111111111001000101100000";
        ram[24] = "0b10111101010010010000110001001110";
        ram[25] = "0b10111101101000010010100000111001";
        ram[26] = "0b10111101000011100101110101011011";
        ram[27] = "0b10111100000010000010101011011100";
        ram[28] = "0b10111010101010000100101111100100";
        ram[29] = "0b00111110000111110000111101011010";
        ram[30] = "0b10111101100101110101001100011110";
        ram[31] = "0b00111100110111101100110000111110";
        ram[32] = "0b00111101000001111110101011100110";
        ram[33] = "0b00111100110011001000101111001010";
        ram[34] = "0b00111101000100010110001100110101";
        ram[35] = "0b10111100111110110100111001010101";
        ram[36] = "0b10111101100010101101000000111110";
        ram[37] = "0b10111100111101111001010000100001";
        ram[38] = "0b10111101100000000111110111010100";
        ram[39] = "0b00111101011100001011110100000001";
        ram[40] = "0b00111101010011000001100101111110";
        ram[41] = "0b00111010110001000101100010001010";
        ram[42] = "0b10111110000100000110100111101000";
        ram[43] = "0b10111110000001110101000000111100";
        ram[44] = "0b00111101100110110011101101110101";
        ram[45] = "0b00111101001100000101110110010110";
        ram[46] = "0b10111101000001001001010101011011";
        ram[47] = "0b10111100101011111111101100000101";
        ram[48] = "0b10111101011111000101001101101101";
        ram[49] = "0b10111100101010010011001010010100";
        ram[50] = "0b10111100111000111110110100001111";
        ram[51] = "0b10111101100100101101111011001010";


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


SC_MODULE(L2_up_L1_WEIGHTS_91) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_91_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_91) {
meminst = new L2_up_L1_WEIGHTS_91_ram("L2_up_L1_WEIGHTS_91_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_91() {
    delete meminst;
}


};//endmodule
#endif
