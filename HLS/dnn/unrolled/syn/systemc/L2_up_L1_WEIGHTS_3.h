// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_3_H__
#define __L2_up_L1_WEIGHTS_3_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_3_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_3_ram) {
        ram[0] = "0b10111101100010011001110110001000";
        ram[1] = "0b00111110100001111000111111101111";
        ram[2] = "0b00111110010000100010101000101100";
        ram[3] = "0b10111100000011001001001100100001";
        ram[4] = "0b00111101100010100011110011101010";
        ram[5] = "0b00111110001101111011010000011100";
        ram[6] = "0b00111100101000101100000000011110";
        ram[7] = "0b00111100111001101010000100011111";
        ram[8] = "0b10111101000110110110010011100000";
        ram[9] = "0b10111101100010000011100100000100";
        ram[10] = "0b10111101010100111001101110001001";
        ram[11] = "0b00111110010100110000110100110000";
        ram[12] = "0b00111101010101001001111110010101";
        ram[13] = "0b10111101010100110110100100110100";
        ram[14] = "0b00111110001100101111101011010111";
        ram[15] = "0b00111101111100000110010011101101";
        ram[16] = "0b00111011011001111010101101110101";
        ram[17] = "0b10111110001111101011001010001110";
        ram[18] = "0b10111110000001100010010011011101";
        ram[19] = "0b10111100000110000010100010000000";
        ram[20] = "0b00111110000111110111011000011101";
        ram[21] = "0b10111101111100011110011101010011";
        ram[22] = "0b10111101001100100110101011101100";
        ram[23] = "0b10111110000110001011010011000000";
        ram[24] = "0b00111101011001011101111100100010";
        ram[25] = "0b00111101011101000110111111011111";
        ram[26] = "0b10111101011011000010110011100100";
        ram[27] = "0b10111100000100011101100110110010";
        ram[28] = "0b10111001000100111101100101100110";
        ram[29] = "0b10111101111001110000001010100011";
        ram[30] = "0b10111101111000111010000110010000";
        ram[31] = "0b10111101110000000111101110111011";
        ram[32] = "0b10111101100011101001001011010101";
        ram[33] = "0b10111100110001101100110110101111";
        ram[34] = "0b10111101010110110111101111110010";
        ram[35] = "0b00111101010000010101000010011000";
        ram[36] = "0b10111101100010010101100011011010";
        ram[37] = "0b00111100111110111000101100100110";
        ram[38] = "0b10111101100100001011000001101100";
        ram[39] = "0b00111101101000111110010010101100";
        ram[40] = "0b10111101000001110110111100101010";
        ram[41] = "0b10111101000010110110011000110000";
        ram[42] = "0b00111101101001111100010110101100";
        ram[43] = "0b10111101110000110101101001000010";
        ram[44] = "0b10111101011010100001101101011100";
        ram[45] = "0b10111110000001011101111101100101";
        ram[46] = "0b00111100001001100111011000100001";
        ram[47] = "0b00111100111110100010010010001001";
        ram[48] = "0b00111101101111111011011100100000";
        ram[49] = "0b10111101101001110101111011101010";
        ram[50] = "0b00111101100000000100001000001111";
        ram[51] = "0b10111110000101110010101111001011";


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


SC_MODULE(L2_up_L1_WEIGHTS_3) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_3_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_3) {
meminst = new L2_up_L1_WEIGHTS_3_ram("L2_up_L1_WEIGHTS_3_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_3() {
    delete meminst;
}


};//endmodule
#endif
