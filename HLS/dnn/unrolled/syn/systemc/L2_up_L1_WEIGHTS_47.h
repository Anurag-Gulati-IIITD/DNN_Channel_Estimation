// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_47_H__
#define __L2_up_L1_WEIGHTS_47_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_47_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_47_ram) {
        ram[0] = "0b00111100100011100110001010011001";
        ram[1] = "0b10111101110001000010100011010100";
        ram[2] = "0b00111011000110001111011000000110";
        ram[3] = "0b10111011111001110101011110010011";
        ram[4] = "0b00111101011111110001111010001110";
        ram[5] = "0b00111100001101110110011100001010";
        ram[6] = "0b10111101110001111000001100010111";
        ram[7] = "0b00111101101110010101010001100101";
        ram[8] = "0b00111101100011111101010010111111";
        ram[9] = "0b00111110010000100100110111010011";
        ram[10] = "0b10111101111011010100010001010110";
        ram[11] = "0b00111101000100010000111001000101";
        ram[12] = "0b10111110000101001101011111110001";
        ram[13] = "0b00111011100101110010100010100110";
        ram[14] = "0b00111110011000011100001001011101";
        ram[15] = "0b10111110000011011011011110101110";
        ram[16] = "0b00111101011011101101100110011101";
        ram[17] = "0b10111100101100000100000000111010";
        ram[18] = "0b10111101100010100011101001001011";
        ram[19] = "0b00111101000001011101011000111001";
        ram[20] = "0b00111101110000001000111000010101";
        ram[21] = "0b10111101000010100000000110101100";
        ram[22] = "0b10111100011011111001100110000000";
        ram[23] = "0b00111101100110010110001000000111";
        ram[24] = "0b10111100000010110011001011001111";
        ram[25] = "0b00111011110111101010000000110100";
        ram[26] = "0b10111101101011100111001101100000";
        ram[27] = "0b00111100101000101111001001110011";
        ram[28] = "0b10111100100011101001100100100000";
        ram[29] = "0b10111101100101000111101001011011";
        ram[30] = "0b10111110010000100111010100100101";
        ram[31] = "0b00111110001101010010000011010001";
        ram[32] = "0b00111101001011011000111001000011";
        ram[33] = "0b10111101000010001001011011011101";
        ram[34] = "0b10111101101011111110100100110010";
        ram[35] = "0b00111101101011100000000100010101";
        ram[36] = "0b10111101000001010111000110001111";
        ram[37] = "0b00111101011001111011011011111110";
        ram[38] = "0b00111011000111011010110111111011";
        ram[39] = "0b10111110000101100100000111110110";
        ram[40] = "0b10111100101011001011100001011010";
        ram[41] = "0b10111100000011100000010000111010";
        ram[42] = "0b10111110001011100011110011011010";
        ram[43] = "0b00111101010101001001100000111101";
        ram[44] = "0b10111100011011000010010010000001";
        ram[45] = "0b00111100111000110001011100100111";
        ram[46] = "0b10111101000010011101101111101100";
        ram[47] = "0b10111101000110011110000111110100";
        ram[48] = "0b10111011001110011001100100010011";
        ram[49] = "0b00111110001010111100010011010010";
        ram[50] = "0b10111101000000000110110100001101";
        ram[51] = "0b00111110000011110110110000100111";


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


SC_MODULE(L2_up_L1_WEIGHTS_47) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_47_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_47) {
meminst = new L2_up_L1_WEIGHTS_47_ram("L2_up_L1_WEIGHTS_47_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_47() {
    delete meminst;
}


};//endmodule
#endif
