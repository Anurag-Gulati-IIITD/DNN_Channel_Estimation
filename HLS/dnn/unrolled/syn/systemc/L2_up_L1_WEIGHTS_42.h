// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_42_H__
#define __L2_up_L1_WEIGHTS_42_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_42_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_42_ram) {
        ram[0] = "0b00111101001011110001001101001001";
        ram[1] = "0b10111101100110010101101100110110";
        ram[2] = "0b10111101010000010001110000101010";
        ram[3] = "0b10111100110011110011011101110110";
        ram[4] = "0b00111101110000111001000111010101";
        ram[5] = "0b10111110000110101110100000011001";
        ram[6] = "0b10111100010110111010000010100101";
        ram[7] = "0b00111101100011100001100100110011";
        ram[8] = "0b10111110001011110011000011101000";
        ram[9] = "0b00111110000011110101010111011110";
        ram[10] = "0b00111101101010001101101001111111";
        ram[11] = "0b00111101011100111101100111101100";
        ram[12] = "0b00111100111011001010110011010010";
        ram[13] = "0b10111100011110010100110010001000";
        ram[14] = "0b00111100100101000101100101010011";
        ram[15] = "0b00111101010010001001010011000100";
        ram[16] = "0b00111101111001100010101000011011";
        ram[17] = "0b00111101101010101011001101101000";
        ram[18] = "0b00111101100000100010010001101000";
        ram[19] = "0b00111101100100110111010101000011";
        ram[20] = "0b10111100001011100011101000111011";
        ram[21] = "0b10111100101010001110000011001010";
        ram[22] = "0b10111101110011110111010011001101";
        ram[23] = "0b10111101000100010011000111101100";
        ram[24] = "0b00111100110100111111010110110110";
        ram[25] = "0b10111101100000001101010111101001";
        ram[26] = "0b10111101011010100011010110010011";
        ram[27] = "0b10111101111011001110100010010110";
        ram[28] = "0b00111101100010011100110100111110";
        ram[29] = "0b00111110001111101001001111100010";
        ram[30] = "0b10111100110111011011010101010010";
        ram[31] = "0b10111100101011001000000111010100";
        ram[32] = "0b10111101101010010110011001111011";
        ram[33] = "0b10111101101111101011101111111101";
        ram[34] = "0b00111101101001011110110101001010";
        ram[35] = "0b10111110001010010110001101010110";
        ram[36] = "0b10111101111010011100001011000010";
        ram[37] = "0b10111110000101011011110111010111";
        ram[38] = "0b00111100101110001001011100100000";
        ram[39] = "0b10111100001010101100000100001001";
        ram[40] = "0b00111100010101100101101000010100";
        ram[41] = "0b10111110000000000011001011011011";
        ram[42] = "0b10111101110101001111111110000110";
        ram[43] = "0b10111101101101001101010100001111";
        ram[44] = "0b00111101010110111101111010000011";
        ram[45] = "0b00111100110100100011000010111010";
        ram[46] = "0b00111100100010111001111111011100";
        ram[47] = "0b00111101101100101111110010101101";
        ram[48] = "0b10111100111000011111000110001101";
        ram[49] = "0b10111011111010001111101100000001";
        ram[50] = "0b00111110000110000011001011111101";
        ram[51] = "0b00111100101110100011000000010010";


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


SC_MODULE(L2_up_L1_WEIGHTS_42) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_42_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_42) {
meminst = new L2_up_L1_WEIGHTS_42_ram("L2_up_L1_WEIGHTS_42_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_42() {
    delete meminst;
}


};//endmodule
#endif
