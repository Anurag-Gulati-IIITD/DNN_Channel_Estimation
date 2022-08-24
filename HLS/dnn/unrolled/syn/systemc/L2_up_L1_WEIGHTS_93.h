// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_93_H__
#define __L2_up_L1_WEIGHTS_93_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_93_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_93_ram) {
        ram[0] = "0b10111101100101010100011011010100";
        ram[1] = "0b00111101110011000011111000110010";
        ram[2] = "0b00111100101000011100010001110110";
        ram[3] = "0b10111101101111010000101001100111";
        ram[4] = "0b00111101110011101000111000011101";
        ram[5] = "0b00111101000100010110111111001010";
        ram[6] = "0b00111011000110110110001011000111";
        ram[7] = "0b10111100100001100101100101001011";
        ram[8] = "0b10111110001111111101111001110010";
        ram[9] = "0b10111101000101001100010101010100";
        ram[10] = "0b00111110010000110111000010001011";
        ram[11] = "0b10111100111000001111000110110010";
        ram[12] = "0b00111101100001000110000001100111";
        ram[13] = "0b00111101111001001011110100110100";
        ram[14] = "0b10111101100010010110110001000000";
        ram[15] = "0b00111101001111100011011111011111";
        ram[16] = "0b00111101101100110000111100000110";
        ram[17] = "0b10111101010110101111101011111000";
        ram[18] = "0b10111101110001100010000110111000";
        ram[19] = "0b00111101101110011010001010000011";
        ram[20] = "0b00111101101001000110111110011100";
        ram[21] = "0b10111101110000010010101001010010";
        ram[22] = "0b00111011000001010100110011011011";
        ram[23] = "0b10111101010100011000111000110010";
        ram[24] = "0b10111100010100010001101111100111";
        ram[25] = "0b10111101001111001010101001110110";
        ram[26] = "0b10111110000110010100110000000001";
        ram[27] = "0b10111101101010010000010001110001";
        ram[28] = "0b00111110010000011101010000110000";
        ram[29] = "0b10111101010001110000111110111111";
        ram[30] = "0b00111101000011101110001110010011";
        ram[31] = "0b00111100101111000101001101101101";
        ram[32] = "0b10111101100111001111001001001001";
        ram[33] = "0b10111110010110000101101100011000";
        ram[34] = "0b00111101100110110111011100111010";
        ram[35] = "0b10111101111011100111110001001010";
        ram[36] = "0b00111011111010000000011110111100";
        ram[37] = "0b10111101101011101011111101100110";
        ram[38] = "0b00111101100000000100101101111111";
        ram[39] = "0b10111101100001100011010010011000";
        ram[40] = "0b10111100110100110000101011010100";
        ram[41] = "0b10111110001100001011101110110010";
        ram[42] = "0b00111101101010101100000100001001";
        ram[43] = "0b10111101010100000010010101111101";
        ram[44] = "0b00111101111111111001111001111100";
        ram[45] = "0b00111101100000110000101110011110";
        ram[46] = "0b10111100110100111001101110001001";
        ram[47] = "0b00111101010111110101001001110110";
        ram[48] = "0b00111100111001010110001001011010";
        ram[49] = "0b10111100100000111101101111000010";
        ram[50] = "0b00111110001101001100011110110000";
        ram[51] = "0b00111011100011011001011100101101";


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


SC_MODULE(L2_up_L1_WEIGHTS_93) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_93_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_93) {
meminst = new L2_up_L1_WEIGHTS_93_ram("L2_up_L1_WEIGHTS_93_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_93() {
    delete meminst;
}


};//endmodule
#endif
