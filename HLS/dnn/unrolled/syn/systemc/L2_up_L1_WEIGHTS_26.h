// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_26_H__
#define __L2_up_L1_WEIGHTS_26_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_26_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_26_ram) {
        ram[0] = "0b00111101100110001101111101111010";
        ram[1] = "0b10111110001110111110110100110001";
        ram[2] = "0b00111101111101010000101110010101";
        ram[3] = "0b10111101011101101000010110011000";
        ram[4] = "0b00111100001001100001000101110111";
        ram[5] = "0b00111110100101000010110100000110";
        ram[6] = "0b00111101100000110101011010010111";
        ram[7] = "0b00111100010100010110011101100110";
        ram[8] = "0b00111101110111101001010010101011";
        ram[9] = "0b00111101100110000110100110000011";
        ram[10] = "0b10111110000000110001100010111001";
        ram[11] = "0b00111101110100100011100010010111";
        ram[12] = "0b10111100011011010101011010110000";
        ram[13] = "0b00111101111100110111001100101010";
        ram[14] = "0b10111101000101001111110111110100";
        ram[15] = "0b00111101001110100011110110110100";
        ram[16] = "0b10111100000100011110011001000111";
        ram[17] = "0b10111101101010111100100111001101";
        ram[18] = "0b10111101100110001011010110001001";
        ram[19] = "0b00111101010111101011011000111001";
        ram[20] = "0b10111100100101101011011101100111";
        ram[21] = "0b10111101101111100101001100100010";
        ram[22] = "0b00111100100110110001110110010011";
        ram[23] = "0b00111101111011100101100100101001";
        ram[24] = "0b00111101011110100000011100101101";
        ram[25] = "0b10111100001011010111110101111100";
        ram[26] = "0b00111101110000000101001101011101";
        ram[27] = "0b10111110001011110110010101010110";
        ram[28] = "0b10111101010011110000000011101111";
        ram[29] = "0b10111110100110110101011010111000";
        ram[30] = "0b00111101001001110000000010001010";
        ram[31] = "0b00111010101100101000010100100011";
        ram[32] = "0b10111101010110001101101011000010";
        ram[33] = "0b10111101000010011011111010010000";
        ram[34] = "0b00111110010000001001010110101111";
        ram[35] = "0b00111101100000000110101001101110";
        ram[36] = "0b10111100101101100110001011111110";
        ram[37] = "0b00111101110000001100011111000001";
        ram[38] = "0b00111110001100110011010100001001";
        ram[39] = "0b10111101100111010110101111101100";
        ram[40] = "0b10111101101010110010010000100000";
        ram[41] = "0b10111100110111011100100000110010";
        ram[42] = "0b00111100101111011110100000101101";
        ram[43] = "0b10111001011011110001001101001001";
        ram[44] = "0b10111101101010110100000011110110";
        ram[45] = "0b10111011111100111110110011001100";
        ram[46] = "0b00111100011110111110111111010000";
        ram[47] = "0b10111110000110001100110111101010";
        ram[48] = "0b00111010101000010101100110000001";
        ram[49] = "0b10111101111111001010001000010010";
        ram[50] = "0b10111110000001100101001110000111";
        ram[51] = "0b00111101110000101100110000101101";


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


SC_MODULE(L2_up_L1_WEIGHTS_26) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_26_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_26) {
meminst = new L2_up_L1_WEIGHTS_26_ram("L2_up_L1_WEIGHTS_26_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_26() {
    delete meminst;
}


};//endmodule
#endif
