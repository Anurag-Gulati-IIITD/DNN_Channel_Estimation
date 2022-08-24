// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_20_H__
#define __L2_up_L1_WEIGHTS_20_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_20_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_20_ram) {
        ram[0] = "0b10111100100110100011000010011000";
        ram[1] = "0b10111110000001110010011001001010";
        ram[2] = "0b10111101001101110111110100001111";
        ram[3] = "0b10111101101011000010111011111101";
        ram[4] = "0b00111101101000000100001100011100";
        ram[5] = "0b10111101010001110101101000110010";
        ram[6] = "0b00111011110001110011001001011001";
        ram[7] = "0b10111100001010000110000011011101";
        ram[8] = "0b00111110011110101011101101000101";
        ram[9] = "0b10111110010100101100011101110101";
        ram[10] = "0b10111101111011111011011111101001";
        ram[11] = "0b00111110000110100011100000110010";
        ram[12] = "0b10111101100010100100110110110001";
        ram[13] = "0b00111110001100100001000100000010";
        ram[14] = "0b10111101001100001111001001111100";
        ram[15] = "0b10111100010001101000101010010011";
        ram[16] = "0b00111101001010000000001110001010";
        ram[17] = "0b00111100011001100011000111111001";
        ram[18] = "0b00111101100101110011001110101001";
        ram[19] = "0b10111010100010111111110000100010";
        ram[20] = "0b00111100000101111001000110000010";
        ram[21] = "0b10111100110010011101111000000101";
        ram[22] = "0b10111101110000001011000000101001";
        ram[23] = "0b00111110001011001101111010100000";
        ram[24] = "0b10111101011101110111011111010001";
        ram[25] = "0b10111100101111011111101100001101";
        ram[26] = "0b00111101011110010010111100101011";
        ram[27] = "0b10111110000001010010010000111010";
        ram[28] = "0b10111101000110110111000001101001";
        ram[29] = "0b00111101001010101000100001101010";
        ram[30] = "0b10111100010101101101001110110111";
        ram[31] = "0b10111010010111000011001101110010";
        ram[32] = "0b00111100001101110111110000000011";
        ram[33] = "0b10111101110101001101110111111000";
        ram[34] = "0b00111110000100000001101000110111";
        ram[35] = "0b10111110011110111011001001111001";
        ram[36] = "0b10111011011001010011111010110100";
        ram[37] = "0b00111101111111010000001110010111";
        ram[38] = "0b00111110010100110000110100110000";
        ram[39] = "0b10111101010110001110111010101111";
        ram[40] = "0b00111101010011100100110110100001";
        ram[41] = "0b10111110000010111001101011100001";
        ram[42] = "0b00111101101111111101011010010101";
        ram[43] = "0b10111100110010000100011100101100";
        ram[44] = "0b00111101001101101110011100011101";
        ram[45] = "0b10111101101100000110000111001000";
        ram[46] = "0b00111101000011100101001111101011";
        ram[47] = "0b10111101110111100111001100011101";
        ram[48] = "0b00111101100110110100110101001001";
        ram[49] = "0b10111110001011101010000110000011";
        ram[50] = "0b10111110011100010110101000000101";
        ram[51] = "0b00111100100101110110010101110111";


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


SC_MODULE(L2_up_L1_WEIGHTS_20) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_20_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_20) {
meminst = new L2_up_L1_WEIGHTS_20_ram("L2_up_L1_WEIGHTS_20_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_20() {
    delete meminst;
}


};//endmodule
#endif
