// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_49_H__
#define __L2_up_L1_WEIGHTS_49_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_49_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_49_ram) {
        ram[0] = "0b10111101011011000100000111011101";
        ram[1] = "0b10111101110000111110010000100110";
        ram[2] = "0b00111101100110011001100010001101";
        ram[3] = "0b10111101011100101110110111111110";
        ram[4] = "0b00111110010101001000011111111101";
        ram[5] = "0b00111110011111110110110011110000";
        ram[6] = "0b00111100010001100001000011110001";
        ram[7] = "0b10111100000011101010110000000000";
        ram[8] = "0b10111110000001010010001111110110";
        ram[9] = "0b00111101100101010100011001001110";
        ram[10] = "0b10111101000101111000010111111001";
        ram[11] = "0b10111110100111001100110001000111";
        ram[12] = "0b10111101000100101101100110001100";
        ram[13] = "0b00111110000010100110000100010111";
        ram[14] = "0b10111101110110111010101110101000";
        ram[15] = "0b10111101001001101110010000111011";
        ram[16] = "0b00111101110000101011000111110111";
        ram[17] = "0b10111101011100110001101000001001";
        ram[18] = "0b10111101001010010110010111110101";
        ram[19] = "0b10111101101000111101100110101001";
        ram[20] = "0b10111100110010000111001100110110";
        ram[21] = "0b10111101101011011110111000110101";
        ram[22] = "0b00111100110010101100011011001110";
        ram[23] = "0b10111100101100111101011011000111";
        ram[24] = "0b10111100000111100001011011010111";
        ram[25] = "0b10111100101010010010110001001001";
        ram[26] = "0b00111101000011100111101010110111";
        ram[27] = "0b00111100101011100000111000110000";
        ram[28] = "0b00111110000010001110101111001100";
        ram[29] = "0b10111110000110110101111010010110";
        ram[30] = "0b00111101010001110110010010101110";
        ram[31] = "0b10111100011010101110111000100000";
        ram[32] = "0b10111110001001110011000100001010";
        ram[33] = "0b10111101010001010011001010100101";
        ram[34] = "0b10111100001010110011001001001000";
        ram[35] = "0b00111101010001001001100010000001";
        ram[36] = "0b00111101000010111011010011010101";
        ram[37] = "0b10111101001010111000010100011111";
        ram[38] = "0b10111101101100010110010001000001";
        ram[39] = "0b00111101000001110011011110010111";
        ram[40] = "0b10111110000001101001101011010100";
        ram[41] = "0b10111110011000100110010101101011";
        ram[42] = "0b10111110010001101111010010111111";
        ram[43] = "0b10111101001100110100110101101010";
        ram[44] = "0b10111101101010110001000010111010";
        ram[45] = "0b10111110000100110011101011001101";
        ram[46] = "0b00111100001001110101100010011111";
        ram[47] = "0b10111101100010110001001101011001";
        ram[48] = "0b00111110001100110000011010100011";
        ram[49] = "0b00111100110010010100010011101101";
        ram[50] = "0b00111110000010110110001011000111";
        ram[51] = "0b10111101011111011111111100111111";


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


SC_MODULE(L2_up_L1_WEIGHTS_49) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_49_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_49) {
meminst = new L2_up_L1_WEIGHTS_49_ram("L2_up_L1_WEIGHTS_49_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_49() {
    delete meminst;
}


};//endmodule
#endif
