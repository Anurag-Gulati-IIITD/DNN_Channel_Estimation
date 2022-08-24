// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_97_H__
#define __L2_up_L1_WEIGHTS_97_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_97_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_97_ram) {
        ram[0] = "0b10111100100100100011010111111000";
        ram[1] = "0b10111110000001100101010000001101";
        ram[2] = "0b00111101010101100111110110111011";
        ram[3] = "0b10111100010011100010110100011111";
        ram[4] = "0b10111011111101010011110001011000";
        ram[5] = "0b10111101010010010100111001011101";
        ram[6] = "0b00111100000001100011001110001011";
        ram[7] = "0b00111101000101100000111010010101";
        ram[8] = "0b00111101110110110110111011010110";
        ram[9] = "0b00111110001010011110011101110101";
        ram[10] = "0b10111101000110000000111101010110";
        ram[11] = "0b00111101101100110110100010101101";
        ram[12] = "0b10111101110011011110011001011000";
        ram[13] = "0b10111110001001101010100111000101";
        ram[14] = "0b00111101110101011011001101011011";
        ram[15] = "0b10111100111111100101101001111001";
        ram[16] = "0b10111100000110111011111100001110";
        ram[17] = "0b10111110000000111110001101011100";
        ram[18] = "0b10111101100100100110110100000101";
        ram[19] = "0b00111100000100111100000000111100";
        ram[20] = "0b00111101100000010000111110010101";
        ram[21] = "0b00111010000001111100101001100100";
        ram[22] = "0b10111100101100011001101001000001";
        ram[23] = "0b00111100111000001000100011010111";
        ram[24] = "0b00111000110110100001101010010011";
        ram[25] = "0b00111001110111011100011000011001";
        ram[26] = "0b00111100110101010000101010001001";
        ram[27] = "0b00111101000000010110001101111000";
        ram[28] = "0b10111110001011010111101011011101";
        ram[29] = "0b00111100010111110001111000001000";
        ram[30] = "0b10111101110001000000100101011111";
        ram[31] = "0b00111101111010010111100101011011";
        ram[32] = "0b10111101010000000100001100011100";
        ram[33] = "0b00111101111011001001010100111010";
        ram[34] = "0b00111011101011100001100010101101";
        ram[35] = "0b00111101111001111110010100100001";
        ram[36] = "0b10111010110010110010100101011111";
        ram[37] = "0b00111101001101000100110000111000";
        ram[38] = "0b10111100111111101000000000111001";
        ram[39] = "0b10111101111100110000111010000000";
        ram[40] = "0b10111010111101100000010110101011";
        ram[41] = "0b00111100101001000010010010100010";
        ram[42] = "0b10111110000110101010101100000100";
        ram[43] = "0b10111100110111111110011101011100";
        ram[44] = "0b10111100100110111000100010000111";
        ram[45] = "0b10111101011010100001110101110101";
        ram[46] = "0b10111011110111111110011101011100";
        ram[47] = "0b10111100100101000110010111101001";
        ram[48] = "0b00111101001010101110100011100010";
        ram[49] = "0b00111101100100011001011110100010";
        ram[50] = "0b10111110000100111101010001101011";
        ram[51] = "0b00111101000110101000001001100010";


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


SC_MODULE(L2_up_L1_WEIGHTS_97) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_97_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_97) {
meminst = new L2_up_L1_WEIGHTS_97_ram("L2_up_L1_WEIGHTS_97_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_97() {
    delete meminst;
}


};//endmodule
#endif
