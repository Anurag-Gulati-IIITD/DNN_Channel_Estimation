// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_1_H__
#define __L2_up_L1_WEIGHTS_1_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_1_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_1_ram) {
        ram[0] = "0b00111101100011010010110010111111";
        ram[1] = "0b00111101010010010000101000110101";
        ram[2] = "0b00111100011001111000000110000100";
        ram[3] = "0b10111101110101011111111001010100";
        ram[4] = "0b00111110000110010100110000000001";
        ram[5] = "0b10111110010100000011100000011001";
        ram[6] = "0b00111010100000011110010001110001";
        ram[7] = "0b10111101001010001001011001010111";
        ram[8] = "0b00111110000011011110010000111111";
        ram[9] = "0b10111101001110101110101111000100";
        ram[10] = "0b00111011100111100100110101011110";
        ram[11] = "0b10111110000011100000001010100111";
        ram[12] = "0b10111101100110011011100010001000";
        ram[13] = "0b10111110000101011100010000100010";
        ram[14] = "0b10111110001111110110000110101010";
        ram[15] = "0b00111101110000001111101100100010";
        ram[16] = "0b00111100111100011110100011100110";
        ram[17] = "0b00111101110100111011110010010000";
        ram[18] = "0b10111101010101110101111100101101";
        ram[19] = "0b00111101010011010111100111010001";
        ram[20] = "0b00111001010101011110100011010101";
        ram[21] = "0b00111101001101001010100110001011";
        ram[22] = "0b10111101000011110010101111101101";
        ram[23] = "0b10111100011011100111100000011000";
        ram[24] = "0b00111101011110101111110110010111";
        ram[25] = "0b00111101001000001011001111010101";
        ram[26] = "0b10111110000010011100110110000001";
        ram[27] = "0b00111110101011111011011111101001";
        ram[28] = "0b00111100101100100011010101110010";
        ram[29] = "0b00111110010101110010101010111111";
        ram[30] = "0b00111110001011110100011010101010";
        ram[31] = "0b00111101010011110100010000001011";
        ram[32] = "0b10111101111001011010001011010111";
        ram[33] = "0b10111101001001110100110100010110";
        ram[34] = "0b00111101011110110001000110000100";
        ram[35] = "0b00111110010101011111000000101100";
        ram[36] = "0b10111101000110010000001110100111";
        ram[37] = "0b00111101011010111000000011101101";
        ram[38] = "0b10111110101001100100010100111101";
        ram[39] = "0b10111110000100011100111101111000";
        ram[40] = "0b00111100100111100010001101101100";
        ram[41] = "0b10111101111111000010011111101001";
        ram[42] = "0b00111101111110010100100101100010";
        ram[43] = "0b10111101100111001000010100111100";
        ram[44] = "0b10111101000111011100010000000000";
        ram[45] = "0b10111101001100000101010100110010";
        ram[46] = "0b00111101101001010000010110001110";
        ram[47] = "0b00111010111101110101010100110111";
        ram[48] = "0b10111101010101111101011010110110";
        ram[49] = "0b10111100111000010000101011011101";
        ram[50] = "0b10111110000010001110000000000001";
        ram[51] = "0b00111101010011101001110001000101";


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


SC_MODULE(L2_up_L1_WEIGHTS_1) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_1_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_1) {
meminst = new L2_up_L1_WEIGHTS_1_ram("L2_up_L1_WEIGHTS_1_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_1() {
    delete meminst;
}


};//endmodule
#endif
