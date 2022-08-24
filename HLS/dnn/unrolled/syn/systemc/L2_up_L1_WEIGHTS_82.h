// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_82_H__
#define __L2_up_L1_WEIGHTS_82_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_82_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_82_ram) {
        ram[0] = "0b00111100110100000110100110100101";
        ram[1] = "0b00111101101111101000100110101001";
        ram[2] = "0b00111101001110100001110100110010";
        ram[3] = "0b00111100001000000010001100100001";
        ram[4] = "0b10111011011110000100000000011000";
        ram[5] = "0b00111101100100110100000011010101";
        ram[6] = "0b10111101110111100000000101011000";
        ram[7] = "0b10111011111001111001001001001011";
        ram[8] = "0b00111110001000110011111000110110";
        ram[9] = "0b00111101000110000111011000011001";
        ram[10] = "0b10111101110000000001000101001101";
        ram[11] = "0b00111100100011100001101101001100";
        ram[12] = "0b00111101100101100110001011111110";
        ram[13] = "0b00111110001010111100110000101001";
        ram[14] = "0b10111101101101100111111011001000";
        ram[15] = "0b10111101010011101101100100010111";
        ram[16] = "0b00111010111000011111011111010111";
        ram[17] = "0b10111101101000001110011110111100";
        ram[18] = "0b10111100110000111000100011101100";
        ram[19] = "0b00111101001101000110100110010100";
        ram[20] = "0b00111101101000001100100001000111";
        ram[21] = "0b10111100101010001001110110101110";
        ram[22] = "0b10111101110010110000000100000000";
        ram[23] = "0b10111101001001110011000111010011";
        ram[24] = "0b00111101100000000111001011010010";
        ram[25] = "0b10111100111001111111100100001110";
        ram[26] = "0b10111110001111100111100101101000";
        ram[27] = "0b10111110001011000010111111000111";
        ram[28] = "0b00111011010111110100011111111010";
        ram[29] = "0b10111101101000101010110010111000";
        ram[30] = "0b00111110000101010010111101111111";
        ram[31] = "0b10111101100010100010000000010100";
        ram[32] = "0b10111101000111011000101001010101";
        ram[33] = "0b10111101110000100000000011000001";
        ram[34] = "0b00111101000001111011000000101101";
        ram[35] = "0b10111011000110110110001011000111";
        ram[36] = "0b10111100101011110100100011000011";
        ram[37] = "0b00111101010000110010010101001110";
        ram[38] = "0b00111110000110101110101100111110";
        ram[39] = "0b00111101111011011011100111000111";
        ram[40] = "0b10111101100001111000110110010011";
        ram[41] = "0b00111011101010010111100111100001";
        ram[42] = "0b10111101101010000110111110001011";
        ram[43] = "0b00111101110010111101001111000011";
        ram[44] = "0b00111101001111010011111001001111";
        ram[45] = "0b00111100001000100011110000000000";
        ram[46] = "0b10111101110010110010101011110001";
        ram[47] = "0b00111100010011000111100011101010";
        ram[48] = "0b00111100000011100110110100010110";
        ram[49] = "0b00111101001000101101001011111110";
        ram[50] = "0b10111110000100011111110110011100";
        ram[51] = "0b10111110010001011100011100000100";


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


SC_MODULE(L2_up_L1_WEIGHTS_82) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_82_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_82) {
meminst = new L2_up_L1_WEIGHTS_82_ram("L2_up_L1_WEIGHTS_82_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_82() {
    delete meminst;
}


};//endmodule
#endif
