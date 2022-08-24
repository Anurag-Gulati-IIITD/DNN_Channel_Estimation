// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_46_H__
#define __L2_up_L1_WEIGHTS_46_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_46_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_46_ram) {
        ram[0] = "0b00111100110001101001110101110011";
        ram[1] = "0b10111101110110011111001010111011";
        ram[2] = "0b00111110000111001000111011101111";
        ram[3] = "0b00111100111011101001111111110001";
        ram[4] = "0b10111101011010001010001011101100";
        ram[5] = "0b10111101011111000101110011011101";
        ram[6] = "0b10111101011000100100110011000111";
        ram[7] = "0b10111101100010011111111000000000";
        ram[8] = "0b00111110000000111011000110001110";
        ram[9] = "0b10111101001111000010010000111110";
        ram[10] = "0b10111100111001100110000000011100";
        ram[11] = "0b00111101110111101100110011000100";
        ram[12] = "0b10111101100110110001000110000100";
        ram[13] = "0b10111110000110110111101001011111";
        ram[14] = "0b00111101101010011001011111000100";
        ram[15] = "0b10111101111110111111001001101111";
        ram[16] = "0b10111101011001010001000110011101";
        ram[17] = "0b10111101110010110000000100000000";
        ram[18] = "0b10111100100111110100110100111000";
        ram[19] = "0b00111100000011000100011110100001";
        ram[20] = "0b00111011011000011000001001100110";
        ram[21] = "0b10111101111000101010111001001011";
        ram[22] = "0b00111100101001000111100010000101";
        ram[23] = "0b00111101101011000100101001000001";
        ram[24] = "0b10111011100101011001010111111111";
        ram[25] = "0b00111100101110100010011110101111";
        ram[26] = "0b00111100011101101000011110110001";
        ram[27] = "0b00111101010010100010011101101011";
        ram[28] = "0b10111100111101101011110000011111";
        ram[29] = "0b10111100100000000010001110100111";
        ram[30] = "0b10111110001011001000010011111001";
        ram[31] = "0b00111101100111001100001000001101";
        ram[32] = "0b00111101111111110101000111110000";
        ram[33] = "0b00111101011001001111111111001001";
        ram[34] = "0b10111101101100111110001101011100";
        ram[35] = "0b00111110001100110010011100100100";
        ram[36] = "0b00111100110111001110010110110100";
        ram[37] = "0b00111101111100000110101010110001";
        ram[38] = "0b10111101010010011111101101100001";
        ram[39] = "0b10111101111011010011010010011100";
        ram[40] = "0b10111101101101010110010100111101";
        ram[41] = "0b00111101100001111111110000110011";
        ram[42] = "0b00111101010110101100010101111110";
        ram[43] = "0b00111101111111010100000111111010";
        ram[44] = "0b00111101101111110100110000101011";
        ram[45] = "0b00111101011010111011101110100101";
        ram[46] = "0b10111101001010100110111100111111";
        ram[47] = "0b10111100111101011100110100001100";
        ram[48] = "0b00111101001000011101100101101111";
        ram[49] = "0b00111101111111001011101010110110";
        ram[50] = "0b10111101001111110001100101010000";
        ram[51] = "0b00111110000111110011111001000111";


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


SC_MODULE(L2_up_L1_WEIGHTS_46) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_46_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_46) {
meminst = new L2_up_L1_WEIGHTS_46_ram("L2_up_L1_WEIGHTS_46_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_46() {
    delete meminst;
}


};//endmodule
#endif
