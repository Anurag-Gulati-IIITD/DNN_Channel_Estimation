// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_13_H__
#define __L2_up_L1_WEIGHTS_13_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_13_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_13_ram) {
        ram[0] = "0b10111101010111110001011010110001";
        ram[1] = "0b10111101111100010001011100101111";
        ram[2] = "0b00111100000110111001010100011100";
        ram[3] = "0b10111101101100101101001101000001";
        ram[4] = "0b00111110001011110111011011100110";
        ram[5] = "0b10111110000111010011010111101011";
        ram[6] = "0b00111011101000001010100101011000";
        ram[7] = "0b00111110000011111111010011111101";
        ram[8] = "0b00111110001000011101011010001100";
        ram[9] = "0b10111101110010001011010000111001";
        ram[10] = "0b00111101010010010001111100101110";
        ram[11] = "0b00111100111000101000010001011010";
        ram[12] = "0b00111101111011010001101001100101";
        ram[13] = "0b10111101011000011100100010101000";
        ram[14] = "0b00111101110110010101011001111110";
        ram[15] = "0b10111101100001101001001011110111";
        ram[16] = "0b00111100100101100010001010000001";
        ram[17] = "0b00111101110010010001100101101001";
        ram[18] = "0b10111101101001010011001110110001";
        ram[19] = "0b00111101011101111010001011001111";
        ram[20] = "0b00111101101001001100111100000111";
        ram[21] = "0b10111100000011000010011000010100";
        ram[22] = "0b10111110001101000100001100001011";
        ram[23] = "0b00111101111111010101101100100101";
        ram[24] = "0b10111100111000110111000101010100";
        ram[25] = "0b10111100111000001010001000000001";
        ram[26] = "0b10111110000111111101110010011100";
        ram[27] = "0b10111101101100000110100110100101";
        ram[28] = "0b00111100100011011010010111011011";
        ram[29] = "0b00111101101100010101000101100001";
        ram[30] = "0b00111101000000101110111011001000";
        ram[31] = "0b10111100100100101010101101101001";
        ram[32] = "0b10111110000110001001001101110101";
        ram[33] = "0b00111011100000101000110000110111";
        ram[34] = "0b00111101010000111000011111011111";
        ram[35] = "0b00111101011110101001001110101111";
        ram[36] = "0b00111100000011011000011001100110";
        ram[37] = "0b00111100011000010110000011011001";
        ram[38] = "0b10111100011100010010110000101000";
        ram[39] = "0b00111101101001000000001010001110";
        ram[40] = "0b10111011110010111100000001011101";
        ram[41] = "0b10111101100101110001010101000000";
        ram[42] = "0b00111110000000110010110000011111";
        ram[43] = "0b00111101010010001100010100000000";
        ram[44] = "0b10111101101000001110101111101110";
        ram[45] = "0b10111101110001101101110111110000";
        ram[46] = "0b00111101111100111000110111100111";
        ram[47] = "0b10111101011100101101100100000110";
        ram[48] = "0b00111101010011010011001010000011";
        ram[49] = "0b10111101011111100000110111101101";
        ram[50] = "0b10111110000010011001110110001000";
        ram[51] = "0b10111101111111100011011001001100";


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


SC_MODULE(L2_up_L1_WEIGHTS_13) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_13_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_13) {
meminst = new L2_up_L1_WEIGHTS_13_ram("L2_up_L1_WEIGHTS_13_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_13() {
    delete meminst;
}


};//endmodule
#endif
