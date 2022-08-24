// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_41_H__
#define __L2_up_L1_WEIGHTS_41_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_41_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_41_ram) {
        ram[0] = "0b10111101000001000101101010100011";
        ram[1] = "0b00111100010010101100110100011000";
        ram[2] = "0b10111101110111101001001100011000";
        ram[3] = "0b10111101111000100101010010100100";
        ram[4] = "0b10111100100110001101001001011111";
        ram[5] = "0b10111110001100111001101100000010";
        ram[6] = "0b10111101000011011011000101100100";
        ram[7] = "0b00111110000101111100011000110010";
        ram[8] = "0b00111101101100100110110110001011";
        ram[9] = "0b00111110000000111111101000101011";
        ram[10] = "0b00111011110011110000011100111010";
        ram[11] = "0b00111100100000001000110010000010";
        ram[12] = "0b00111010101010101010011111011111";
        ram[13] = "0b10111101111010101001011100011000";
        ram[14] = "0b00111101110001101111011110100001";
        ram[15] = "0b00111110000100101111010110011001";
        ram[16] = "0b00111101011010111101011011101001";
        ram[17] = "0b00111101101010101011110101011110";
        ram[18] = "0b00111101101110010011011110001111";
        ram[19] = "0b10111011110000101001001110001110";
        ram[20] = "0b10111100111110010111100010010010";
        ram[21] = "0b00111101100010011010110010111101";
        ram[22] = "0b10111101110110000110011111110001";
        ram[23] = "0b00111101101010111110010000000100";
        ram[24] = "0b10111101100110100001101100011001";
        ram[25] = "0b10111011101010100010000110100111";
        ram[26] = "0b00111101100111010111111011001100";
        ram[27] = "0b00111101110101011100011011000001";
        ram[28] = "0b00111101011010000101111011000100";
        ram[29] = "0b00111110000110101110110101010111";
        ram[30] = "0b10111110001001110010001001011011";
        ram[31] = "0b10111101001011101001001101011100";
        ram[32] = "0b00111100100011000011100011110011";
        ram[33] = "0b00111011110000100001111000011101";
        ram[34] = "0b00111101100111110001111010001110";
        ram[35] = "0b10111110001000101011011111111110";
        ram[36] = "0b10111101001011001101100011011100";
        ram[37] = "0b10111101111001111001101110111011";
        ram[38] = "0b10111101100001001111011101100110";
        ram[39] = "0b00111101100000110011011010011100";
        ram[40] = "0b00111100111110111011001011111111";
        ram[41] = "0b10111101011110111011110101111011";
        ram[42] = "0b10111101110100101101110010110001";
        ram[43] = "0b10111110000010011100100110010011";
        ram[44] = "0b00111101001011111100000101011001";
        ram[45] = "0b00111101011001100101010010010011";
        ram[46] = "0b00111101101001001000100101001100";
        ram[47] = "0b00111100100110011010111010010010";
        ram[48] = "0b00111100110110010111110101001010";
        ram[49] = "0b10111101101001100110001010111011";
        ram[50] = "0b00111101011100000001010000101111";
        ram[51] = "0b10111101100000010000101111101001";


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


SC_MODULE(L2_up_L1_WEIGHTS_41) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_41_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_41) {
meminst = new L2_up_L1_WEIGHTS_41_ram("L2_up_L1_WEIGHTS_41_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_41() {
    delete meminst;
}


};//endmodule
#endif
