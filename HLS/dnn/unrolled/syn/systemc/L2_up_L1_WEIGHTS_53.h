// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_53_H__
#define __L2_up_L1_WEIGHTS_53_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_53_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_53_ram) {
        ram[0] = "0b10111100000011101101111001010101";
        ram[1] = "0b00111110010100101101111010000111";
        ram[2] = "0b00111110100001010100011101111100";
        ram[3] = "0b10111110001010001111101001111011";
        ram[4] = "0b00111101010111001010110100010101";
        ram[5] = "0b00111101110101000100001011001000";
        ram[6] = "0b00111110000100010011010011001110";
        ram[7] = "0b00111100010101000100000100110101";
        ram[8] = "0b10111100101000110101111110000001";
        ram[9] = "0b10111101100111000100110100100011";
        ram[10] = "0b10111100101001011001001110100011";
        ram[11] = "0b00111110011001010101010011111100";
        ram[12] = "0b00111100111001011111000011110110";
        ram[13] = "0b10111110010000111010111010101011";
        ram[14] = "0b00111110000010011000010001011110";
        ram[15] = "0b00111101110011010001000101111011";
        ram[16] = "0b10111100110010000001010011010111";
        ram[17] = "0b10111110010110111110110000100101";
        ram[18] = "0b10111101011101000010001001000110";
        ram[19] = "0b10111100100000011011111010110010";
        ram[20] = "0b10111101000110111001111010001100";
        ram[21] = "0b10111101110011110001100110010011";
        ram[22] = "0b00111100111001010000111001111000";
        ram[23] = "0b10111110010101010110001101100111";
        ram[24] = "0b00111100111111101000100010011100";
        ram[25] = "0b10111101010101110101001010010111";
        ram[26] = "0b00111101111000111011111001100110";
        ram[27] = "0b00111110001011011101001000101000";
        ram[28] = "0b10111101111101110110011110010000";
        ram[29] = "0b10111110000001100011101011100010";
        ram[30] = "0b10111101110110111110111101001010";
        ram[31] = "0b10111101011110111000010011011100";
        ram[32] = "0b10111101001111101100010001100001";
        ram[33] = "0b10111010011110000100000000011000";
        ram[34] = "0b00111101111001110100011001000101";
        ram[35] = "0b00111110001000001111111011001110";
        ram[36] = "0b00111101010001010100000001000110";
        ram[37] = "0b10111101001110111100101100011101";
        ram[38] = "0b10111110001000000000110001010010";
        ram[39] = "0b00111101010110110101011000110010";
        ram[40] = "0b10111100101110100100010100001011";
        ram[41] = "0b10111101010100101100001110000111";
        ram[42] = "0b00111101111100001111001100000010";
        ram[43] = "0b10111101101001000011000100111000";
        ram[44] = "0b10111101100010100100101100010010";
        ram[45] = "0b10111110000001100110110101111010";
        ram[46] = "0b00111101111110100000111110010001";
        ram[47] = "0b10111101111000001000011111001010";
        ram[48] = "0b00111101010000010101110000100001";
        ram[49] = "0b10111101111111010100011010110010";
        ram[50] = "0b10111101101000011011010101000010";
        ram[51] = "0b10111101101000000011100000011001";


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


SC_MODULE(L2_up_L1_WEIGHTS_53) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_53_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_53) {
meminst = new L2_up_L1_WEIGHTS_53_ram("L2_up_L1_WEIGHTS_53_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_53() {
    delete meminst;
}


};//endmodule
#endif
