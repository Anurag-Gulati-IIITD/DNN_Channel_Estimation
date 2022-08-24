// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_30_H__
#define __L2_up_L1_WEIGHTS_30_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_30_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_30_ram) {
        ram[0] = "0b10111101111100110110110011011111";
        ram[1] = "0b00111110000010101000110001011000";
        ram[2] = "0b10111101100100111011100101101011";
        ram[3] = "0b10111110000100000100000011000000";
        ram[4] = "0b00111101011100101100110101111101";
        ram[5] = "0b10111110001000100011101010110000";
        ram[6] = "0b10111101010101111011001100010000";
        ram[7] = "0b00111101010001100110101100011110";
        ram[8] = "0b10111110000111011110001011101111";
        ram[9] = "0b10111101111010111111111011000001";
        ram[10] = "0b00111011110001010011101100001000";
        ram[11] = "0b00111101100000111110000100000000";
        ram[12] = "0b00111101010010000001000110110010";
        ram[13] = "0b10111010011000011011010010111011";
        ram[14] = "0b10111101000110001110101001111101";
        ram[15] = "0b10111110010001010111101000110101";
        ram[16] = "0b00111001010001010010000111011110";
        ram[17] = "0b00111100100010000001111001000111";
        ram[18] = "0b10111011100000111110110010001001";
        ram[19] = "0b10111101010001111111000000100100";
        ram[20] = "0b00111100100001100111011010100111";
        ram[21] = "0b00111101000111001000001100100011";
        ram[22] = "0b10111100100000010111010101001011";
        ram[23] = "0b10111110001001011101010110110010";
        ram[24] = "0b10111101010110100011110100101110";
        ram[25] = "0b00111010100001000110000111111010";
        ram[26] = "0b10111100000111110000010111101010";
        ram[27] = "0b10111101000011111001101000000111";
        ram[28] = "0b00111101111001100101001001111010";
        ram[29] = "0b00111110001111010011001011000110";
        ram[30] = "0b00111101101100100010111010100001";
        ram[31] = "0b10111101011011110111011111110010";
        ram[32] = "0b10111101100000111100010010110001";
        ram[33] = "0b10111101100110000111111110001000";
        ram[34] = "0b10111101101110000101001001110010";
        ram[35] = "0b10111101111110000100011111110101";
        ram[36] = "0b10111101100100011100001100100110";
        ram[37] = "0b00111101000100011000010011000010";
        ram[38] = "0b10111101011110111010001000111000";
        ram[39] = "0b00111101100110100101100011110111";
        ram[40] = "0b10111101001001110100001110100110";
        ram[41] = "0b10111101010110110111011010110100";
        ram[42] = "0b00111101000111001011110011001111";
        ram[43] = "0b00111110000111001101000111001000";
        ram[44] = "0b10111101100000100001110010001010";
        ram[45] = "0b10111101110111011111000000001011";
        ram[46] = "0b00111101100010000011001111000110";
        ram[47] = "0b00111101101010011000000110111111";
        ram[48] = "0b00111011000101010111110011010100";
        ram[49] = "0b00111101101001110000010101000010";
        ram[50] = "0b00111101101000010111111101000001";
        ram[51] = "0b10111101101000110111000011001110";


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


SC_MODULE(L2_up_L1_WEIGHTS_30) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_30_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_30) {
meminst = new L2_up_L1_WEIGHTS_30_ram("L2_up_L1_WEIGHTS_30_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_30() {
    delete meminst;
}


};//endmodule
#endif
