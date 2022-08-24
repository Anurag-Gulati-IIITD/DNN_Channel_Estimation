// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_95_H__
#define __L2_up_L1_WEIGHTS_95_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_95_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_95_ram) {
        ram[0] = "0b00111101001000101000111011010110";
        ram[1] = "0b00111101010101011010001010010100";
        ram[2] = "0b00111101101111110000001011000101";
        ram[3] = "0b00111100100101111111000111111010";
        ram[4] = "0b10111101111010111010101101100101";
        ram[5] = "0b00111110000101010100011110011101";
        ram[6] = "0b00111101110000000001111011101111";
        ram[7] = "0b10111101111001111000100111100111";
        ram[8] = "0b00111101100110110100111111101000";
        ram[9] = "0b10111110000110011010110000110110";
        ram[10] = "0b10111101011100011000100101111010";
        ram[11] = "0b10111101101110110000010001101000";
        ram[12] = "0b00111011011010011011001110001101";
        ram[13] = "0b10111101100100110110011010010101";
        ram[14] = "0b10111110001011000110001101101011";
        ram[15] = "0b10111110000010110101100001001011";
        ram[16] = "0b10111101001010000010110101111011";
        ram[17] = "0b10111101101010001111011111011011";
        ram[18] = "0b10111101011101101010111001111101";
        ram[19] = "0b00111100100110001001011110100110";
        ram[20] = "0b00111100111110011110100111010001";
        ram[21] = "0b00111011001010011001101101101111";
        ram[22] = "0b00111101100111110010111001001001";
        ram[23] = "0b10111101101000111100001000010010";
        ram[24] = "0b00111101100010010010110111011100";
        ram[25] = "0b00111101000101111000110101010000";
        ram[26] = "0b10111101100101010111011000000100";
        ram[27] = "0b10111101011010001111000110010001";
        ram[28] = "0b10111101011000111011000101001011";
        ram[29] = "0b10111110000101000010000011110111";
        ram[30] = "0b00111101111010010010011110010001";
        ram[31] = "0b00111100001010101000001000011111";
        ram[32] = "0b00111101011111011010011000011110";
        ram[33] = "0b10111100111101011011101000101100";
        ram[34] = "0b00111101010100101011010111100101";
        ram[35] = "0b00111110011011011101111010111110";
        ram[36] = "0b10111100110111100001011111100011";
        ram[37] = "0b00111101011000001001111011011100";
        ram[38] = "0b10111101010010101001001001100000";
        ram[39] = "0b10111100001110011100001100000101";
        ram[40] = "0b10111101000100010000000010100100";
        ram[41] = "0b00111110010001010000001111111011";
        ram[42] = "0b00111110010100100011000000110100";
        ram[43] = "0b00111110000110101100000101001100";
        ram[44] = "0b10111100100011110100000011100110";
        ram[45] = "0b10111100110110010101000101000000";
        ram[46] = "0b10111101100101101010110011101011";
        ram[47] = "0b10111100010101001100001100111011";
        ram[48] = "0b10111101000011010111010010010010";
        ram[49] = "0b10111100111011011011101101011010";
        ram[50] = "0b10111100100011111011011001010110";
        ram[51] = "0b00111100101100110000000011011110";


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


SC_MODULE(L2_up_L1_WEIGHTS_95) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_95_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_95) {
meminst = new L2_up_L1_WEIGHTS_95_ram("L2_up_L1_WEIGHTS_95_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_95() {
    delete meminst;
}


};//endmodule
#endif
