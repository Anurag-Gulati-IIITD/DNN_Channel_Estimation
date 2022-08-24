// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_68_H__
#define __L2_up_L1_WEIGHTS_68_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_68_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_68_ram) {
        ram[0] = "0b10111101110111011111001100110000";
        ram[1] = "0b00111101011101100110111010000111";
        ram[2] = "0b10111101100001000101000000100111";
        ram[3] = "0b00111100011110101010010001110110";
        ram[4] = "0b00111101101101011000100101101010";
        ram[5] = "0b10111110001110000111100011111011";
        ram[6] = "0b10111100001101101111010111001011";
        ram[7] = "0b00111101110010110111100010001001";
        ram[8] = "0b10111101001100001111101111101100";
        ram[9] = "0b00111101101111101001101011110110";
        ram[10] = "0b10111110000001111000010011101100";
        ram[11] = "0b10111101011100101110100011000000";
        ram[12] = "0b10111101001111110111100111001000";
        ram[13] = "0b10111110000100101100111010001001";
        ram[14] = "0b00111100110011110011111111011001";
        ram[15] = "0b00111101111011001001111010101010";
        ram[16] = "0b00111100100011100111001101100000";
        ram[17] = "0b00111110001010110110100110011000";
        ram[18] = "0b00111101100101100110110101111010";
        ram[19] = "0b10111101101111101110001011001010";
        ram[20] = "0b10111101011011010010110010111111";
        ram[21] = "0b10111100100111110001101011100011";
        ram[22] = "0b10111110000111110001111101011000";
        ram[23] = "0b10111101111000100110100000001010";
        ram[24] = "0b10111101100000101010011101111010";
        ram[25] = "0b10111100101000000010001100100001";
        ram[26] = "0b00111101111111001100101011110111";
        ram[27] = "0b10111110001001100110010011010100";
        ram[28] = "0b10111101101100011100001000011010";
        ram[29] = "0b00111110001111001111111010011011";
        ram[30] = "0b00111101000010100010010101010011";
        ram[31] = "0b00111101011101010111100000011100";
        ram[32] = "0b10111101010000010011101010010011";
        ram[33] = "0b00111110000110011001110000111001";
        ram[34] = "0b10111101111000111100110100010100";
        ram[35] = "0b10111101110100001110000100101111";
        ram[36] = "0b00111100111111010001001101010001";
        ram[37] = "0b00111110000011010101000111111000";
        ram[38] = "0b00111110010001001011000100100101";
        ram[39] = "0b10111101000000110101110011100010";
        ram[40] = "0b00111100001010100001110101110101";
        ram[41] = "0b10111100000000000011100010100000";
        ram[42] = "0b10111101110100011100101001111101";
        ram[43] = "0b10111101110000101110001111000101";
        ram[44] = "0b10111100110110111001000111110111";
        ram[45] = "0b00111101100010110000010000100101";
        ram[46] = "0b10111100001110101100111101110100";
        ram[47] = "0b10111100101111011101001100110101";
        ram[48] = "0b10111101111000111110111100101000";
        ram[49] = "0b00111101011111000100000110011010";
        ram[50] = "0b00111100101000001010010100100111";
        ram[51] = "0b00111110000111111000010011001011";


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


SC_MODULE(L2_up_L1_WEIGHTS_68) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_68_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_68) {
meminst = new L2_up_L1_WEIGHTS_68_ram("L2_up_L1_WEIGHTS_68_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_68() {
    delete meminst;
}


};//endmodule
#endif
