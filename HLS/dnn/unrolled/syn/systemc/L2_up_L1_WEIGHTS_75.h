// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_75_H__
#define __L2_up_L1_WEIGHTS_75_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_75_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_75_ram) {
        ram[0] = "0b10111011100011101110111100011100";
        ram[1] = "0b00111110011101101111010010111111";
        ram[2] = "0b00111101101010100110010111001111";
        ram[3] = "0b00111101011111100111100111101110";
        ram[4] = "0b00111110000000000101000001111010";
        ram[5] = "0b10111100110010011110101010011010";
        ram[6] = "0b10111100100011110101000110101101";
        ram[7] = "0b00111110000000110100101001000101";
        ram[8] = "0b10111101111001011110101110110111";
        ram[9] = "0b00111110000110010111011111001001";
        ram[10] = "0b00111101110111011001011001100100";
        ram[11] = "0b10111100111111010101000000100010";
        ram[12] = "0b10111101011010010001101001110110";
        ram[13] = "0b10111110010010010011110111011001";
        ram[14] = "0b00111000110000001111000000100000";
        ram[15] = "0b10111101100011000001101100010001";
        ram[16] = "0b10111011010011101011001101010111";
        ram[17] = "0b10111100110100110110011100011011";
        ram[18] = "0b10111101000100000001111100110010";
        ram[19] = "0b00111101011100010111101111011001";
        ram[20] = "0b10111010011111011100000101100001";
        ram[21] = "0b00111100010011101110000101111010";
        ram[22] = "0b10111101110101011111110000111011";
        ram[23] = "0b10111110010111110110101001010001";
        ram[24] = "0b00111101110100101110011110110100";
        ram[25] = "0b00111101110000110011101101010100";
        ram[26] = "0b00111100101110110010110111010011";
        ram[27] = "0b10111101101110111001000001100100";
        ram[28] = "0b00111100010000111101111011101000";
        ram[29] = "0b10111100100110011001101110110010";
        ram[30] = "0b00111100010001110100011101010010";
        ram[31] = "0b00111101100101110110111101101101";
        ram[32] = "0b10111101110001000000001100010101";
        ram[33] = "0b00111101101001110010101001111100";
        ram[34] = "0b10111101101010110001101110111101";
        ram[35] = "0b00111110001001110001111001101101";
        ram[36] = "0b00111101011101111110110000110101";
        ram[37] = "0b10111100010101111100111101011111";
        ram[38] = "0b00111101100011110010000101110001";
        ram[39] = "0b10111101100110001000110000011110";
        ram[40] = "0b00111100100011001110111101100111";
        ram[41] = "0b10111100001111011111100011110100";
        ram[42] = "0b10111101111111101000001011011000";
        ram[43] = "0b00111101011110000011100011000001";
        ram[44] = "0b00111100111101000000100000010000";
        ram[45] = "0b00111110000001111110000101110110";
        ram[46] = "0b10111100111011010000101100110001";
        ram[47] = "0b10111101100000001000100011010111";
        ram[48] = "0b10111101100000101111000001011010";
        ram[49] = "0b00111101100111000100010010111111";
        ram[50] = "0b00111101100010110011111011011110";
        ram[51] = "0b00111101100001111100001010000111";


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


SC_MODULE(L2_up_L1_WEIGHTS_75) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_75_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_75) {
meminst = new L2_up_L1_WEIGHTS_75_ram("L2_up_L1_WEIGHTS_75_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_75() {
    delete meminst;
}


};//endmodule
#endif
