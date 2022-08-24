// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_22_H__
#define __L2_up_L1_WEIGHTS_22_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_22_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_22_ram) {
        ram[0] = "0b10111101000001111000110110010011";
        ram[1] = "0b10111110001110000000010110100011";
        ram[2] = "0b10111101000010000011111011001001";
        ram[3] = "0b00111110000101111101001001000010";
        ram[4] = "0b10111101100010010000110001001110";
        ram[5] = "0b00111101101111011001111011000111";
        ram[6] = "0b10111101100111010111100110001110";
        ram[7] = "0b10111110000111000001000101011110";
        ram[8] = "0b10111101010110001011011100011100";
        ram[9] = "0b10111101101101101000110101110110";
        ram[10] = "0b10111101100100000001010100111100";
        ram[11] = "0b00111011110000001100111010010010";
        ram[12] = "0b00111100100010100100010111010100";
        ram[13] = "0b00111110000101110010100011101001";
        ram[14] = "0b00111101111001111110000011110000";
        ram[15] = "0b00111100101001100100001111001100";
        ram[16] = "0b00111101011000010000100111010000";
        ram[17] = "0b00111101010100100111110000111001";
        ram[18] = "0b10111101100010001111111100110010";
        ram[19] = "0b10111101000100101101001101000001";
        ram[20] = "0b10111101010101001100010101010100";
        ram[21] = "0b00111101110001001101001100111001";
        ram[22] = "0b00111110001000010110101010001100";
        ram[23] = "0b00111110011010011100100000000000";
        ram[24] = "0b10111101010101010111101111001000";
        ram[25] = "0b00111101101010101110011011001001";
        ram[26] = "0b10111110001101111010001100010010";
        ram[27] = "0b00111110000110110001101011110100";
        ram[28] = "0b00111101110000010100011010100010";
        ram[29] = "0b10111110001100000011010101111010";
        ram[30] = "0b10111101011110100001011011101000";
        ram[31] = "0b00111101001101000110100110010100";
        ram[32] = "0b00111101110000110100001010101011";
        ram[33] = "0b00111100010010010100001011010101";
        ram[34] = "0b10111101101001110100111100101111";
        ram[35] = "0b00111100110111011001111001000001";
        ram[36] = "0b00111100110101111010000100111100";
        ram[37] = "0b10111101000110000010110110111110";
        ram[38] = "0b10111110001011010011000010101101";
        ram[39] = "0b00111101100100001001000011110111";
        ram[40] = "0b00111101100010111110111110001101";
        ram[41] = "0b00111101110111010100101001011110";
        ram[42] = "0b00111101100011001111001000000110";
        ram[43] = "0b10111110000010011111111110010011";
        ram[44] = "0b00111101010110110100111011011011";
        ram[45] = "0b10111011101011110001110010111001";
        ram[46] = "0b10111110000110101111100000010110";
        ram[47] = "0b10111100001111010011001111010011";
        ram[48] = "0b10111101000000110010011101100111";
        ram[49] = "0b10111100001010110010111000010111";
        ram[50] = "0b10111100100000111100010010110001";
        ram[51] = "0b10111100101101000010101010101010";


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


SC_MODULE(L2_up_L1_WEIGHTS_22) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_22_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_22) {
meminst = new L2_up_L1_WEIGHTS_22_ram("L2_up_L1_WEIGHTS_22_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_22() {
    delete meminst;
}


};//endmodule
#endif
