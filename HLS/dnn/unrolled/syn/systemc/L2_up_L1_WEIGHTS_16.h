// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_16_H__
#define __L2_up_L1_WEIGHTS_16_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_16_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_16_ram) {
        ram[0] = "0b00111100101111011001100001111100";
        ram[1] = "0b00111100011111111000001000101100";
        ram[2] = "0b00111101111100000000011110011010";
        ram[3] = "0b00111101001001011111101101110010";
        ram[4] = "0b10111110001011011011100000110101";
        ram[5] = "0b00111110001100010011001001110010";
        ram[6] = "0b10111101011001011111011101000000";
        ram[7] = "0b10111110001000110100101100001110";
        ram[8] = "0b10111101100110001001010110001110";
        ram[9] = "0b00111110000010101100111100110001";
        ram[10] = "0b00111101101000110000110010101010";
        ram[11] = "0b10111101001100110011101110010111";
        ram[12] = "0b10111101011010100011010110010011";
        ram[13] = "0b00111101000011111000100101000000";
        ram[14] = "0b00111101000011100001000111011100";
        ram[15] = "0b10111100001010010100111111110000";
        ram[16] = "0b10111100101001011000010011110101";
        ram[17] = "0b10111101100100010101000011011011";
        ram[18] = "0b00111101000100101101111111010111";
        ram[19] = "0b00111100010001011011100011011100";
        ram[20] = "0b10111101000111000010001110111000";
        ram[21] = "0b10111101010110000000101000011000";
        ram[22] = "0b00111110000101100011100000000000";
        ram[23] = "0b00111100000111110101110111111111";
        ram[24] = "0b00111101001010001101001100101000";
        ram[25] = "0b10111100110001000011011011111100";
        ram[26] = "0b00111101110100011101111011110000";
        ram[27] = "0b00111110010000010010000011100010";
        ram[28] = "0b10111100000110000001011110111001";
        ram[29] = "0b10111110011011101101110001111111";
        ram[30] = "0b00111101110010111010111110010110";
        ram[31] = "0b00111100101001001001010111100001";
        ram[32] = "0b00111101011101101010110001100100";
        ram[33] = "0b10111101001110100001111101001011";
        ram[34] = "0b10111101011001001111110110110001";
        ram[35] = "0b00111100001101011011111101101010";
        ram[36] = "0b00111101011100010110101000000101";
        ram[37] = "0b10111110000110011110010100011001";
        ram[38] = "0b10111110001110001110001000011001";
        ram[39] = "0b00111101100001011011110000000010";
        ram[40] = "0b10111101001110001010110100100101";
        ram[41] = "0b00111110000000100000010110111100";
        ram[42] = "0b10111101110000011100100000100001";
        ram[43] = "0b10111101101001110001111101111001";
        ram[44] = "0b10111101000010010110101110111010";
        ram[45] = "0b10111101001001100010010101100011";
        ram[46] = "0b10111101011001101100111000110110";
        ram[47] = "0b10111100101110101010010110000011";
        ram[48] = "0b10111001110100001010101010101000";
        ram[49] = "0b10111100011011101100011111001001";
        ram[50] = "0b00111101101101001111011100100011";
        ram[51] = "0b10111100101110100001011011101000";


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


SC_MODULE(L2_up_L1_WEIGHTS_16) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_16_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_16) {
meminst = new L2_up_L1_WEIGHTS_16_ram("L2_up_L1_WEIGHTS_16_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_16() {
    delete meminst;
}


};//endmodule
#endif
