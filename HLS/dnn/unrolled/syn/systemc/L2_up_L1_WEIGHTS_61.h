// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_61_H__
#define __L2_up_L1_WEIGHTS_61_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_61_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_61_ram) {
        ram[0] = "0b00111101010010010111111010011001";
        ram[1] = "0b00111101110000011001101100001011";
        ram[2] = "0b00111000101110001000110010100100";
        ram[3] = "0b00111110001011111111101001111111";
        ram[4] = "0b10111101100011101010010000100011";
        ram[5] = "0b00111100001011110100101011011100";
        ram[6] = "0b10111110001011110111110000100100";
        ram[7] = "0b10111101101000001000001100010010";
        ram[8] = "0b10111110010110101100100011100111";
        ram[9] = "0b00111100011100001111010110100001";
        ram[10] = "0b10111110000011000011101010000110";
        ram[11] = "0b10111100001001101001001101111101";
        ram[12] = "0b00111101101100100101100000001100";
        ram[13] = "0b00111110001100111011110110011101";
        ram[14] = "0b10111100101010110011001001001000";
        ram[15] = "0b00111110001110000100001100111101";
        ram[16] = "0b00111100001111000111011100010100";
        ram[17] = "0b00111101010111010101011011110011";
        ram[18] = "0b00111100100100011100000010000111";
        ram[19] = "0b00111100110001110000000000000100";
        ram[20] = "0b00111101000000110010010001000010";
        ram[21] = "0b00111101101000010100101001001101";
        ram[22] = "0b00111101010011111111101110001011";
        ram[23] = "0b10111110010100111011111100101111";
        ram[24] = "0b10111101010101101000000011100000";
        ram[25] = "0b10111100100110001111100000011111";
        ram[26] = "0b10111110010001000101110101000010";
        ram[27] = "0b10111101101100011111010001101111";
        ram[28] = "0b00111101010000110010000100011101";
        ram[29] = "0b10111100001001001001110000101100";
        ram[30] = "0b10111101010010101101010101111100";
        ram[31] = "0b00111100000011100011001001011101";
        ram[32] = "0b00111101010000010101100011111011";
        ram[33] = "0b10111011011000000100001110100010";
        ram[34] = "0b10111110001111010100000101110100";
        ram[35] = "0b10111100110111111001100111000100";
        ram[36] = "0b00111101010101100011010101100001";
        ram[37] = "0b00111110001111001100010101110110";
        ram[38] = "0b00111101110110101010101011000001";
        ram[39] = "0b00111100100010000111100001110101";
        ram[40] = "0b00111100111110110001001110011101";
        ram[41] = "0b00111100011100011101100000011111";
        ram[42] = "0b10111101100010100010110010101010";
        ram[43] = "0b10111110001010100011111001111101";
        ram[44] = "0b00111101110011000000011010011110";
        ram[45] = "0b00111100001010100101100000101110";
        ram[46] = "0b10111101110001001111101100010010";
        ram[47] = "0b00111011100100010011000111101100";
        ram[48] = "0b10111101001100100101010111110011";
        ram[49] = "0b00111110010011100011101011000001";
        ram[50] = "0b00111110100001101001111010000000";
        ram[51] = "0b10111100011110010000010100111010";


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


SC_MODULE(L2_up_L1_WEIGHTS_61) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_61_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_61) {
meminst = new L2_up_L1_WEIGHTS_61_ram("L2_up_L1_WEIGHTS_61_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_61() {
    delete meminst;
}


};//endmodule
#endif
