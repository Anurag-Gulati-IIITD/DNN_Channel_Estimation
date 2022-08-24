// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_48_H__
#define __L2_up_L1_WEIGHTS_48_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_48_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_48_ram) {
        ram[0] = "0b10111100000011111100000011010011";
        ram[1] = "0b10111101110110001010101110010011";
        ram[2] = "0b00111101101100101001011001110000";
        ram[3] = "0b10111100100000110011011000010101";
        ram[4] = "0b00111110001101110100011001000101";
        ram[5] = "0b00111110001101111010010001100001";
        ram[6] = "0b00111101110111101000000000111001";
        ram[7] = "0b00111101000001111000110110010011";
        ram[8] = "0b10111101110100011101010110000000";
        ram[9] = "0b00111110100001100100111111011011";
        ram[10] = "0b00111101000110010000110100010111";
        ram[11] = "0b10111100010100000101001010010011";
        ram[12] = "0b10111101100010010000111111111001";
        ram[13] = "0b00111101111110011010000101110111";
        ram[14] = "0b00111101101110000001001100000001";
        ram[15] = "0b10111101100000001000010000011111";
        ram[16] = "0b00111011101001100000000010110000";
        ram[17] = "0b10111110001100100001110110010111";
        ram[18] = "0b00111100111110101111110010001011";
        ram[19] = "0b00111101100000001010111010010111";
        ram[20] = "0b00111100111110011100110001110101";
        ram[21] = "0b10111101011100101000001100001010";
        ram[22] = "0b10111100001100001010101100101110";
        ram[23] = "0b00111101101101110110110101010101";
        ram[24] = "0b00111101101001110000101110001101";
        ram[25] = "0b10111101011011010011110001111001";
        ram[26] = "0b00111101101100010101101101010111";
        ram[27] = "0b00111101100010000011010111011111";
        ram[28] = "0b00111101100100010101011010011111";
        ram[29] = "0b10111110010000001111001111001011";
        ram[30] = "0b10111101000110011101101110101001";
        ram[31] = "0b00111101000001011110000111000001";
        ram[32] = "0b10111110000001010100110011011011";
        ram[33] = "0b10111101111011110001100110010011";
        ram[34] = "0b10111101011010010110010011101001";
        ram[35] = "0b00111101000111100100100100101100";
        ram[36] = "0b00111011110100011010011001010000";
        ram[37] = "0b00111101000110110100001101010010";
        ram[38] = "0b00111011111101101000001101111111";
        ram[39] = "0b10111101011101111111110011111100";
        ram[40] = "0b10111101011010011000011001110111";
        ram[41] = "0b10111101111100011111100000011010";
        ram[42] = "0b10111110100001001011110101110111";
        ram[43] = "0b00111110000101011101111011011111";
        ram[44] = "0b00111001100010110111010111101010";
        ram[45] = "0b10111101111000000101111111110010";
        ram[46] = "0b00111101101000000010111110110110";
        ram[47] = "0b10111100100011100011000001000100";
        ram[48] = "0b00111110000010010000111000100100";
        ram[49] = "0b00111011000101010001100000101011";
        ram[50] = "0b00111101011000100101100001001111";
        ram[51] = "0b00111101101001101001101011010100";


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


SC_MODULE(L2_up_L1_WEIGHTS_48) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_48_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_48) {
meminst = new L2_up_L1_WEIGHTS_48_ram("L2_up_L1_WEIGHTS_48_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_48() {
    delete meminst;
}


};//endmodule
#endif
