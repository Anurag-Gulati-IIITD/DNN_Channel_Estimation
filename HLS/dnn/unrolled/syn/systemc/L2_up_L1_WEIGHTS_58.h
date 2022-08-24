// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_58_H__
#define __L2_up_L1_WEIGHTS_58_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_58_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_58_ram) {
        ram[0] = "0b10111101110011001010000000111100";
        ram[1] = "0b10111101101010011111010000001010";
        ram[2] = "0b10111101110100001001000011110111";
        ram[3] = "0b10111110000111001011111001100010";
        ram[4] = "0b00111101001101100001010001011001";
        ram[5] = "0b10111101110111111001000111100110";
        ram[6] = "0b00111101000100111101010100110100";
        ram[7] = "0b00111101000111000001010100001001";
        ram[8] = "0b00111110000010101101000011000100";
        ram[9] = "0b10111101101010101011000001000010";
        ram[10] = "0b00111101101111100001001100101011";
        ram[11] = "0b00111101001100001111010110100001";
        ram[12] = "0b10111101110010111101001100111101";
        ram[13] = "0b10111101101100110010001001101100";
        ram[14] = "0b10111101110010000000101101100111";
        ram[15] = "0b10111101100110100010110011101101";
        ram[16] = "0b00111101100010111101101010010100";
        ram[17] = "0b00111110001010100010000001011000";
        ram[18] = "0b00111101101001010001111010111000";
        ram[19] = "0b10111101000000111111010111111001";
        ram[20] = "0b10111101100011011000111101010000";
        ram[21] = "0b00111101011010001101111110111101";
        ram[22] = "0b10111101011011000111111010101110";
        ram[23] = "0b00111101100101001101001001110000";
        ram[24] = "0b10111101100011000100101111010011";
        ram[25] = "0b10111101100110000010101110100110";
        ram[26] = "0b00111100111111101111100111011011";
        ram[27] = "0b00111101101100010100001100111001";
        ram[28] = "0b00111100011000001100000101110110";
        ram[29] = "0b00111110010001111011100000001011";
        ram[30] = "0b00111101100101111111000011101101";
        ram[31] = "0b00111101101010000101111011000100";
        ram[32] = "0b10111101111110111000101010100000";
        ram[33] = "0b10111101010010110001110111010110";
        ram[34] = "0b10111100101000000011110001001011";
        ram[35] = "0b10111110000010011011110111000111";
        ram[36] = "0b00111101000001011001011001000010";
        ram[37] = "0b10111110000100110111110110100110";
        ram[38] = "0b10111110001110100100101101010101";
        ram[39] = "0b10111101111001101001011100101001";
        ram[40] = "0b00111101001010010011011111010010";
        ram[41] = "0b10111110001010011110001111001001";
        ram[42] = "0b00111101000001011111000101111100";
        ram[43] = "0b00111101101010000111101010001101";
        ram[44] = "0b10111011100110011010011000101111";
        ram[45] = "0b10111101000011100111001001010100";
        ram[46] = "0b00111110000101111011001011001100";
        ram[47] = "0b00111100110100110101011001010100";
        ram[48] = "0b10111100101001111101001001000010";
        ram[49] = "0b10111101100000100011110000000000";
        ram[50] = "0b10111110000111011000011101110010";
        ram[51] = "0b00111101010111010000110110001101";


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


SC_MODULE(L2_up_L1_WEIGHTS_58) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_58_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_58) {
meminst = new L2_up_L1_WEIGHTS_58_ram("L2_up_L1_WEIGHTS_58_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_58() {
    delete meminst;
}


};//endmodule
#endif
