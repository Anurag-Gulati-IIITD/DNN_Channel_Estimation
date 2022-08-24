// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_60_H__
#define __L2_up_L1_WEIGHTS_60_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_60_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_60_ram) {
        ram[0] = "0b00111011101101001011011100101100";
        ram[1] = "0b00111110010011001001111001100111";
        ram[2] = "0b00111101101011101110111010010101";
        ram[3] = "0b10111101100011101000111110110000";
        ram[4] = "0b00111101100111011111000110011101";
        ram[5] = "0b00111110001101101100011100100010";
        ram[6] = "0b10111101000010010000011100010000";
        ram[7] = "0b10111101010011100010100011101101";
        ram[8] = "0b10111101101000010001011011101100";
        ram[9] = "0b00111011101000000010001100100001";
        ram[10] = "0b10111101011101011001010101111001";
        ram[11] = "0b00111101111111010010111110100001";
        ram[12] = "0b10111100001001101110001100101110";
        ram[13] = "0b00111110000000101101101100011111";
        ram[14] = "0b00111011000110100010010000000011";
        ram[15] = "0b00111101100010111110101011010101";
        ram[16] = "0b00111101001110001111111011101111";
        ram[17] = "0b10111101001111111101101101001101";
        ram[18] = "0b00111101001110101011011101010110";
        ram[19] = "0b00111101001111100111111100101100";
        ram[20] = "0b10111011001111000111101101000110";
        ram[21] = "0b10111100111000101111011110110001";
        ram[22] = "0b00111100101000110001000111101000";
        ram[23] = "0b10111110001110111101110010101101";
        ram[24] = "0b10111100100111010001101100101110";
        ram[25] = "0b00111100100010111011100100000110";
        ram[26] = "0b10111110000101001111100111000010";
        ram[27] = "0b00111100101111100000001101110001";
        ram[28] = "0b00111101101011110111001111000001";
        ram[29] = "0b10111101100111011011101010010001";
        ram[30] = "0b10111101000001110100011101010010";
        ram[31] = "0b00111101000011010100011101111100";
        ram[32] = "0b00111100110100111111110000000001";
        ram[33] = "0b10111101111000100011100111100111";
        ram[34] = "0b00111101010111101111100101010101";
        ram[35] = "0b10111101100100101000110001111010";
        ram[36] = "0b10111101100101011111010011100100";
        ram[37] = "0b00111110001000110000111111010000";
        ram[38] = "0b10111101001100101110010110011011";
        ram[39] = "0b10111101111001110001110011011010";
        ram[40] = "0b00111011101101010100010111001000";
        ram[41] = "0b10111101100101110110100010011101";
        ram[42] = "0b10111101011111010100000001101000";
        ram[43] = "0b10111101101111111100111100111110";
        ram[44] = "0b00111100101111001001111011101101";
        ram[45] = "0b10111101000000011100111101111000";
        ram[46] = "0b00111101000010000011101010010111";
        ram[47] = "0b10111100110000111101000000111001";
        ram[48] = "0b00111100001001111000001010010000";
        ram[49] = "0b00111101101010001111100011101000";
        ram[50] = "0b00111101111010110000010000100101";
        ram[51] = "0b00111101110000001101111011010011";


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


SC_MODULE(L2_up_L1_WEIGHTS_60) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_60_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_60) {
meminst = new L2_up_L1_WEIGHTS_60_ram("L2_up_L1_WEIGHTS_60_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_60() {
    delete meminst;
}


};//endmodule
#endif
