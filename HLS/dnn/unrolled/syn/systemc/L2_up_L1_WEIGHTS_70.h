// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_70_H__
#define __L2_up_L1_WEIGHTS_70_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_70_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_70_ram) {
        ram[0] = "0b00111100100001110110110000000101";
        ram[1] = "0b10111101100001111110001010000010";
        ram[2] = "0b10111101100011011000010001001101";
        ram[3] = "0b10111110000010010010011011001000";
        ram[4] = "0b00111101101110011110010010010011";
        ram[5] = "0b10111101101011011110000110100000";
        ram[6] = "0b00111101010100111101110010001100";
        ram[7] = "0b10111011101111110010101100100100";
        ram[8] = "0b00111110000110001111010100111100";
        ram[9] = "0b10111110000000110010011010011110";
        ram[10] = "0b10111101101110100100111110000111";
        ram[11] = "0b00111101011000001110010100011101";
        ram[12] = "0b00111100000110001100110000010100";
        ram[13] = "0b10111101011101000100111001010001";
        ram[14] = "0b00111100000010001000011100100011";
        ram[15] = "0b10111101011000110101000111011111";
        ram[16] = "0b00111101111100011100100101110001";
        ram[17] = "0b00111101100100011110011011001101";
        ram[18] = "0b00111101010101100010011110111111";
        ram[19] = "0b10111101001101110111000110000110";
        ram[20] = "0b10111101010101111101010010011101";
        ram[21] = "0b00111101100111011010101001010000";
        ram[22] = "0b10111101001000101100011101110101";
        ram[23] = "0b00111101100000100011001010010000";
        ram[24] = "0b10111101000101010100111110111110";
        ram[25] = "0b10111101000111101100100000001100";
        ram[26] = "0b10111101110001110111010001101001";
        ram[27] = "0b10111100110000110100110000011011";
        ram[28] = "0b00111100100111001001000011000101";
        ram[29] = "0b00111101110011101111011101111111";
        ram[30] = "0b10111010110000110110110110101000";
        ram[31] = "0b00111100011111000010001000100101";
        ram[32] = "0b10111101100111110000100100001111";
        ram[33] = "0b00111100110000100101100011010110";
        ram[34] = "0b00111100010101110000101000111101";
        ram[35] = "0b10111110000100001001010101101100";
        ram[36] = "0b00111100101101111101010000010111";
        ram[37] = "0b00111101100101111010100000001101";
        ram[38] = "0b00111110010110001101101110001100";
        ram[39] = "0b00111101100110000111111110001000";
        ram[40] = "0b10111101010100111011000110001110";
        ram[41] = "0b10111101111000010010100101000101";
        ram[42] = "0b00111110001010010100011000111101";
        ram[43] = "0b10111101010100001010110111001101";
        ram[44] = "0b00111101010111100110101010111010";
        ram[45] = "0b10111101101111100110110101011001";
        ram[46] = "0b00111101011000100100010101101111";
        ram[47] = "0b10111101110000010101101100010100";
        ram[48] = "0b00111101100101100101100110001110";
        ram[49] = "0b10111101001011110100010010010001";
        ram[50] = "0b10111110000000001011101011101001";
        ram[51] = "0b10111100100011010011111100011000";


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


SC_MODULE(L2_up_L1_WEIGHTS_70) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_70_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_70) {
meminst = new L2_up_L1_WEIGHTS_70_ram("L2_up_L1_WEIGHTS_70_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_70() {
    delete meminst;
}


};//endmodule
#endif
