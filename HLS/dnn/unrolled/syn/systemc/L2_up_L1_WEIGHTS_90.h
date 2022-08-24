// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_90_H__
#define __L2_up_L1_WEIGHTS_90_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_90_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_90_ram) {
        ram[0] = "0b10111101000000101000010011100000";
        ram[1] = "0b10111101101011010110010111100100";
        ram[2] = "0b10111101110000111100110100010100";
        ram[3] = "0b00111100100101000010011011111110";
        ram[4] = "0b10111101100100010101111110001001";
        ram[5] = "0b10111110001001011111101110110101";
        ram[6] = "0b10111100110100111010000111010011";
        ram[7] = "0b00111101001100000100011010000100";
        ram[8] = "0b00111110001100100011110001000011";
        ram[9] = "0b00111101101010000011111011001001";
        ram[10] = "0b10111101100010100111101111010101";
        ram[11] = "0b10111101000111100110101010111010";
        ram[12] = "0b00111101011101100101101010011011";
        ram[13] = "0b10111101110110110010000100111110";
        ram[14] = "0b00111101010110001111111101110110";
        ram[15] = "0b00111110010001000110001011000011";
        ram[16] = "0b10111101010011001010000111001111";
        ram[17] = "0b00111110000000000001000001000001";
        ram[18] = "0b10111011111110010110111000010110";
        ram[19] = "0b10111101101010011001101111110110";
        ram[20] = "0b10111101100111001111000000110000";
        ram[21] = "0b00111100110001110100100101101011";
        ram[22] = "0b10111101100001000000101011110010";
        ram[23] = "0b00111101101000011001001010100111";
        ram[24] = "0b10111110000010111000111001001100";
        ram[25] = "0b10111100010100000010110011010100";
        ram[26] = "0b00111101001010000011011011101011";
        ram[27] = "0b00111101011010010000100010100010";
        ram[28] = "0b10111110001100100011111010011111";
        ram[29] = "0b00111110010100110101011101100000";
        ram[30] = "0b00111100100000010100010100001111";
        ram[31] = "0b10111110000000000011000001111111";
        ram[32] = "0b00111101101100001011111010010100";
        ram[33] = "0b00111101011110101100011100010001";
        ram[34] = "0b10111110000100000010101000110101";
        ram[35] = "0b10111101111111011110110011100101";
        ram[36] = "0b10111100101001011110001101010100";
        ram[37] = "0b00111110000110001110110110100010";
        ram[38] = "0b10111110000100100010111100100111";
        ram[39] = "0b00111101100101100100111010001011";
        ram[40] = "0b00111101000000111111110101010000";
        ram[41] = "0b00111101100111111010011111101011";
        ram[42] = "0b10111110000101111111110011111100";
        ram[43] = "0b10111110000010001111000111010100";
        ram[44] = "0b00111100110100101010101001011100";
        ram[45] = "0b00111101001011001000101000110111";
        ram[46] = "0b10111100011111110001000011101101";
        ram[47] = "0b10111100111001100111101101011111";
        ram[48] = "0b10111100111100110110000001001010";
        ram[49] = "0b00111101001000110000101010010001";
        ram[50] = "0b10111110010010011011101011100100";
        ram[51] = "0b10111101110011000011001000100011";


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


SC_MODULE(L2_up_L1_WEIGHTS_90) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_90_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_90) {
meminst = new L2_up_L1_WEIGHTS_90_ram("L2_up_L1_WEIGHTS_90_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_90() {
    delete meminst;
}


};//endmodule
#endif
