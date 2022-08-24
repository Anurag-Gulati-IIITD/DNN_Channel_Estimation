// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_4_H__
#define __L2_up_L1_WEIGHTS_4_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_4_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_4_ram) {
        ram[0] = "0b10111100100100001000001111011100";
        ram[1] = "0b00111101111101001100101100011001";
        ram[2] = "0b00111110001111011111111001110110";
        ram[3] = "0b10111100111000011000000001001110";
        ram[4] = "0b10111101100010101000001000011111";
        ram[5] = "0b00111110100111010110110011010111";
        ram[6] = "0b00111101100101110100110101011001";
        ram[7] = "0b10111101010100100100010110110011";
        ram[8] = "0b10111101101011110110000101100111";
        ram[9] = "0b00111011001001001101001010110011";
        ram[10] = "0b10111101010111010111110010110011";
        ram[11] = "0b00111110000010100100011011100001";
        ram[12] = "0b00111101111001010001010011000010";
        ram[13] = "0b00111100010011001110111001011011";
        ram[14] = "0b00111110000001100101110111000000";
        ram[15] = "0b10111101100011000111101001111101";
        ram[16] = "0b00111100110010011110011001101000";
        ram[17] = "0b10111110010101011100001001001100";
        ram[18] = "0b10111011001000001001000000101110";
        ram[19] = "0b00111101101101001000001111001011";
        ram[20] = "0b10111100110011011001011000100000";
        ram[21] = "0b10111110001001100110111110010011";
        ram[22] = "0b00111101001001001110100010111000";
        ram[23] = "0b10111101100111111100011001010100";
        ram[24] = "0b00111100001000000100000001111101";
        ram[25] = "0b00111101000011000010010100000111";
        ram[26] = "0b00111110001000010011110001101000";
        ram[27] = "0b10111101100011100100011111011100";
        ram[28] = "0b10111101101110010111111101100011";
        ram[29] = "0b10111110011010011000001100001110";
        ram[30] = "0b10111110010100110010001111111111";
        ram[31] = "0b10111101101000101010000000100011";
        ram[32] = "0b00111101010011001101111010100000";
        ram[33] = "0b00111100110011111001101000000111";
        ram[34] = "0b00111101100001011101010100101100";
        ram[35] = "0b00111110000000101011000011101010";
        ram[36] = "0b00111101000010000110110011101100";
        ram[37] = "0b00111110001000010000101101100011";
        ram[38] = "0b00111101101110001001101111011000";
        ram[39] = "0b00111100111000100010110001000101";
        ram[40] = "0b10111101101011000100100010101110";
        ram[41] = "0b00111100111010010100111011100100";
        ram[42] = "0b00111101001011000101001110110001";
        ram[43] = "0b00111100111100100110001010001001";
        ram[44] = "0b10111101101010111000010110100101";
        ram[45] = "0b10111101111101010100111110111110";
        ram[46] = "0b00111011000111110100000010100011";
        ram[47] = "0b00111011101111101011010110110011";
        ram[48] = "0b00111101100101100110010100010111";
        ram[49] = "0b00111101000010100110011101100010";
        ram[50] = "0b00111110001010000101110100110001";
        ram[51] = "0b10111110000110100100101001001001";


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


SC_MODULE(L2_up_L1_WEIGHTS_4) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_4_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_4) {
meminst = new L2_up_L1_WEIGHTS_4_ram("L2_up_L1_WEIGHTS_4_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_4() {
    delete meminst;
}


};//endmodule
#endif
