// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_6_H__
#define __L2_up_L1_WEIGHTS_6_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_6_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_6_ram) {
        ram[0] = "0b00111100110101101000000111101101";
        ram[1] = "0b10111101101111111111001011100101";
        ram[2] = "0b10111101100011110010000011101010";
        ram[3] = "0b10111100011001111100110100000011";
        ram[4] = "0b10111101011000011000010110001100";
        ram[5] = "0b10111101111110101001111100111000";
        ram[6] = "0b00111101001100011111110011010010";
        ram[7] = "0b00111101111011110011001111001010";
        ram[8] = "0b10111101101110011101101110101001";
        ram[9] = "0b10111101100000000011001101100001";
        ram[10] = "0b00111101111110001111110111100011";
        ram[11] = "0b10111110010011001101100011011100";
        ram[12] = "0b00111100101101111100101110110100";
        ram[13] = "0b10111101011110110111011000101110";
        ram[14] = "0b00111101001110001000001100110100";
        ram[15] = "0b10111110000101000101110101000010";
        ram[16] = "0b10111101001111011110101001000110";
        ram[17] = "0b00111110000011000111000110010011";
        ram[18] = "0b10111100111010110110000101111000";
        ram[19] = "0b10111101011011010011100001000111";
        ram[20] = "0b10111101010101111010110111010001";
        ram[21] = "0b00111100100001001100101011010101";
        ram[22] = "0b10111110000011110001111100010101";
        ram[23] = "0b00111101111011110001101010100000";
        ram[24] = "0b10111100101001101111011000001110";
        ram[25] = "0b10111101010100001111001100000010";
        ram[26] = "0b00111110000100011001001101110001";
        ram[27] = "0b10111110011001110100001011011101";
        ram[28] = "0b10111101011001110010110110100001";
        ram[29] = "0b00111101101101001000100110001111";
        ram[30] = "0b10111101000101111000000010111011";
        ram[31] = "0b10111100101001100010000000100101";
        ram[32] = "0b00111101010000011110001101100101";
        ram[33] = "0b00111100100011001111010110110010";
        ram[34] = "0b10111101000111000111001101101001";
        ram[35] = "0b00111100111101100110000111110010";
        ram[36] = "0b00111100000110000110101110011100";
        ram[37] = "0b10111101001001101010010001000100";
        ram[38] = "0b00111110000001101001111100000110";
        ram[39] = "0b00111101010010100010001100111010";
        ram[40] = "0b10111100111010010100101010110010";
        ram[41] = "0b00111101110100011001110001011010";
        ram[42] = "0b10111001011100010010110000101000";
        ram[43] = "0b00111110000000100011111010011111";
        ram[44] = "0b10111100110001110101101000110010";
        ram[45] = "0b00111110000001110011100010100100";
        ram[46] = "0b10111101010000110010110110110010";
        ram[47] = "0b00111101100000001101000000100100";
        ram[48] = "0b10111101011100011100100001100101";
        ram[49] = "0b10111100010010110110110001111010";
        ram[50] = "0b00111100010100101100001110000111";
        ram[51] = "0b10111101110011001100001011010111";


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


SC_MODULE(L2_up_L1_WEIGHTS_6) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_6_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_6) {
meminst = new L2_up_L1_WEIGHTS_6_ram("L2_up_L1_WEIGHTS_6_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_6() {
    delete meminst;
}


};//endmodule
#endif
