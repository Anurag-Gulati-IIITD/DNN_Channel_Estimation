// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_9_H__
#define __L2_up_L1_WEIGHTS_9_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_9_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_9_ram) {
        ram[0] = "0b00111101011010100110111000110011";
        ram[1] = "0b00111100100101010000010101001011";
        ram[2] = "0b00111101001001101011101001001001";
        ram[3] = "0b10111101100011110011110111000000";
        ram[4] = "0b10111100010111111111001111110001";
        ram[5] = "0b00111110001001111001011011000000";
        ram[6] = "0b00111101001101000100111001010001";
        ram[7] = "0b10111110000010100111001100101110";
        ram[8] = "0b10111101001000110110111000101111";
        ram[9] = "0b00111101011111111110011111100010";
        ram[10] = "0b10111101011000001001111111101000";
        ram[11] = "0b00111101101011100111111001100011";
        ram[12] = "0b10111101101001010111111000100100";
        ram[13] = "0b00111110010001001000100001000000";
        ram[14] = "0b10111101110000101111011000011111";
        ram[15] = "0b00111101010010111100010010001111";
        ram[16] = "0b00111101100110111010101110101000";
        ram[17] = "0b10111100100010011110110111000000";
        ram[18] = "0b00111100010011110010110011111001";
        ram[19] = "0b00111101000111101001111000011011";
        ram[20] = "0b10111011011000011100010110000010";
        ram[21] = "0b10111101000110010010101001110011";
        ram[22] = "0b00111110001110100010010000000011";
        ram[23] = "0b10111101000011100100001000011000";
        ram[24] = "0b10111101010001101010101000001000";
        ram[25] = "0b00111100100100110111101100000111";
        ram[26] = "0b10111100110110001100101100001000";
        ram[27] = "0b00111101001111001101101010110010";
        ram[28] = "0b00111110000010101100000100001001";
        ram[29] = "0b10111110001100100011110101001111";
        ram[30] = "0b00111110010010100011010111010110";
        ram[31] = "0b00111101100100000000100010100111";
        ram[32] = "0b10111101100001111101111011010111";
        ram[33] = "0b10111101110111010010010110101011";
        ram[34] = "0b00111101010110010110101001101010";
        ram[35] = "0b10111110010001100101111100001111";
        ram[36] = "0b10111101100101001000111001000111";
        ram[37] = "0b00111101110101010010100011110010";
        ram[38] = "0b10111110000100100100001100010011";
        ram[39] = "0b10111101010000110001101111011111";
        ram[40] = "0b00111101010011101011101110111010";
        ram[41] = "0b10111000101100100100001000000111";
        ram[42] = "0b10111101101100010101100010111000";
        ram[43] = "0b10111001101010001101001000011100";
        ram[44] = "0b00111100110000011000110101101001";
        ram[45] = "0b00111101011001110111001011010110";
        ram[46] = "0b00111101110000100101011000110110";
        ram[47] = "0b00111011001011000111110110100010";
        ram[48] = "0b10111101100101110011001110101001";
        ram[49] = "0b10111101010100001001000001110001";
        ram[50] = "0b00111100001001000011111111100110";
        ram[51] = "0b00111101100000100000011100001100";


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


SC_MODULE(L2_up_L1_WEIGHTS_9) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_9_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_9) {
meminst = new L2_up_L1_WEIGHTS_9_ram("L2_up_L1_WEIGHTS_9_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_9() {
    delete meminst;
}


};//endmodule
#endif
