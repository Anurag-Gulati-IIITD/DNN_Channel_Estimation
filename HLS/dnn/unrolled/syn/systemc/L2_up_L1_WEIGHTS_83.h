// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_83_H__
#define __L2_up_L1_WEIGHTS_83_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_83_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_83_ram) {
        ram[0] = "0b00111100110001011111101111111000";
        ram[1] = "0b10111101100001010101101001111101";
        ram[2] = "0b10111011110000010000000011100111";
        ram[3] = "0b00111101101011001101101001101110";
        ram[4] = "0b10111101110111101100111001010111";
        ram[5] = "0b10111100101001100101101011011110";
        ram[6] = "0b00111100110111100000001011101011";
        ram[7] = "0b00111101000110101000110111101011";
        ram[8] = "0b00111110010000111010111010101011";
        ram[9] = "0b00111100001100011110010111000001";
        ram[10] = "0b10111100100100000100011100001011";
        ram[11] = "0b10111100110010001001111101000001";
        ram[12] = "0b00111101111010110001110011001001";
        ram[13] = "0b00111101101111000111101101000110";
        ram[14] = "0b10111100110000001011001101001110";
        ram[15] = "0b00111110000101110100001101100011";
        ram[16] = "0b10111100010011100111110011010000";
        ram[17] = "0b10111100001110010001011100001101";
        ram[18] = "0b10111101111100100101100100011001";
        ram[19] = "0b00111101110000101001000011101111";
        ram[20] = "0b00111101101110000100011111110101";
        ram[21] = "0b10111101000100011010000000000110";
        ram[22] = "0b10111101100101101110100010110000";
        ram[23] = "0b00111101011011100100111100110011";
        ram[24] = "0b00111011101010011011110011111101";
        ram[25] = "0b00111101010101000100000100110101";
        ram[26] = "0b10111110001011110100011010101010";
        ram[27] = "0b10111101111111110010010111100101";
        ram[28] = "0b00111101010001010000000101011100";
        ram[29] = "0b10111100111010101111011010000011";
        ram[30] = "0b00111101000000110001110111110111";
        ram[31] = "0b10111101001100110010100111000011";
        ram[32] = "0b10111100010110111011010110011110";
        ram[33] = "0b00111101010111001010111100101101";
        ram[34] = "0b00111101101011100100011011010000";
        ram[35] = "0b00111110011111011001011011101010";
        ram[36] = "0b10111101011011000010011010011010";
        ram[37] = "0b10111100011011110111001111000001";
        ram[38] = "0b00111110000101000001000011111001";
        ram[39] = "0b10111100000000100101111000010100";
        ram[40] = "0b00111100110110011110011000100101";
        ram[41] = "0b00111101100001111111010111101000";
        ram[42] = "0b10111100100110101000011010010100";
        ram[43] = "0b10111110001111111011010110001101";
        ram[44] = "0b00111100001110111001100011001000";
        ram[45] = "0b10111100110000100010100010011001";
        ram[46] = "0b10111011101001101100101000000100";
        ram[47] = "0b10111100001111000101000101010101";
        ram[48] = "0b10111101011111110010100100001011";
        ram[49] = "0b10111110000011100000111001110011";
        ram[50] = "0b10111110011111011000111110010011";
        ram[51] = "0b10111101101000010101111101000110";


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


SC_MODULE(L2_up_L1_WEIGHTS_83) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_83_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_83) {
meminst = new L2_up_L1_WEIGHTS_83_ram("L2_up_L1_WEIGHTS_83_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_83() {
    delete meminst;
}


};//endmodule
#endif
