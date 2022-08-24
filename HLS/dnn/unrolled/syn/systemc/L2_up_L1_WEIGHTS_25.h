// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_25_H__
#define __L2_up_L1_WEIGHTS_25_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_25_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_25_ram) {
        ram[0] = "0b00111101101100110010100100111101";
        ram[1] = "0b00111110100000100010100111101001";
        ram[2] = "0b00111101111010111111000110100110";
        ram[3] = "0b10111101011101010110010000110000";
        ram[4] = "0b00111101010110110001111010011111";
        ram[5] = "0b10111100000011101010110000000000";
        ram[6] = "0b00111101011110000110001110111111";
        ram[7] = "0b00111101111110100001101000001101";
        ram[8] = "0b00111101000001111000100001010101";
        ram[9] = "0b00111101000010101110110010001101";
        ram[10] = "0b00111101010001001000111000000100";
        ram[11] = "0b00111101111100010101001001101110";
        ram[12] = "0b00111100000111011010000101100110";
        ram[13] = "0b10111110001000110001000110100101";
        ram[14] = "0b10111011110110100011001110111110";
        ram[15] = "0b10111110001010010011110101010011";
        ram[16] = "0b00111011111110101011010100111101";
        ram[17] = "0b10111110000111000101011010010011";
        ram[18] = "0b10111100111010110110001110010001";
        ram[19] = "0b00111101100010010110000010110111";
        ram[20] = "0b00111101111011100100001010011110";
        ram[21] = "0b10111101101000101010000010101001";
        ram[22] = "0b10111101000111100101001110101000";
        ram[23] = "0b10111110011010001001011110100110";
        ram[24] = "0b10111011101011001010011110010011";
        ram[25] = "0b10111100010110011001110010111111";
        ram[26] = "0b00111100101100001000110111010010";
        ram[27] = "0b10111110001100100100010111110110";
        ram[28] = "0b00111011100001011110001111011010";
        ram[29] = "0b10111100101000100101111110100110";
        ram[30] = "0b10111011001100100100001000000111";
        ram[31] = "0b10111101001111010001111111100110";
        ram[32] = "0b10111101100011101111111001010000";
        ram[33] = "0b00111100111011000011100101111010";
        ram[34] = "0b00111101100100000011111110110011";
        ram[35] = "0b00111101110100101011100110010001";
        ram[36] = "0b00111101000000010111101010001001";
        ram[37] = "0b10111101100010011111110011110100";
        ram[38] = "0b00111110000100001111110101111110";
        ram[39] = "0b10111100111100001001001100010000";
        ram[40] = "0b10111101101100110111100011101110";
        ram[41] = "0b10111110000000110010110100101100";
        ram[42] = "0b10111101000001010110010011111001";
        ram[43] = "0b00111101110001100010101100101000";
        ram[44] = "0b10111101110001001111000110100010";
        ram[45] = "0b10111011000110111001010100011100";
        ram[46] = "0b00111100101111111010111101000010";
        ram[47] = "0b10111101101100110100000001001111";
        ram[48] = "0b10111101111111101100000111000010";
        ram[49] = "0b10111110001001000011101000100001";
        ram[50] = "0b10111101011110001000001100110100";
        ram[51] = "0b00111101010110101011110000001110";


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


SC_MODULE(L2_up_L1_WEIGHTS_25) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_25_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_25) {
meminst = new L2_up_L1_WEIGHTS_25_ram("L2_up_L1_WEIGHTS_25_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_25() {
    delete meminst;
}


};//endmodule
#endif
