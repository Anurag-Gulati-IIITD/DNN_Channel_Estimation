// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_80_H__
#define __L2_up_L1_WEIGHTS_80_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_80_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_80_ram) {
        ram[0] = "0b10111101001011001100100000010101";
        ram[1] = "0b00111101111001011101000110000001";
        ram[2] = "0b10111101101010010001001110100101";
        ram[3] = "0b10111101100101000011100001001100";
        ram[4] = "0b00111101100111001100000001111011";
        ram[5] = "0b10111110101011000011011100011110";
        ram[6] = "0b10111101010111111000111101000111";
        ram[7] = "0b10111100001011000111110110100010";
        ram[8] = "0b10111101111000011011101010000000";
        ram[9] = "0b10111101100110011011001011000100";
        ram[10] = "0b00111110001000010110101100010010";
        ram[11] = "0b00111101000111000010010111010000";
        ram[12] = "0b00111101110011010001100111011111";
        ram[13] = "0b10111101100001100010000100110010";
        ram[14] = "0b10111101000101111100010111101111";
        ram[15] = "0b10111101101110111010010111100011";
        ram[16] = "0b00111101011100111110111111110010";
        ram[17] = "0b00111100010110001010110110101100";
        ram[18] = "0b00111100111011111010110001100000";
        ram[19] = "0b10111100011000100101010000011110";
        ram[20] = "0b00111100111000101000101010100100";
        ram[21] = "0b00111100111000011011010010111011";
        ram[22] = "0b10111001111011011000000010100001";
        ram[23] = "0b10111110000001011101101010101101";
        ram[24] = "0b10111101110000110110100001101010";
        ram[25] = "0b10111100100011111111111110111101";
        ram[26] = "0b10111101100011000011100001101101";
        ram[27] = "0b00111110000111000011110111101110";
        ram[28] = "0b00111101110011000010000001001111";
        ram[29] = "0b00111110100100010111110010100010";
        ram[30] = "0b00111011001001010011011101011101";
        ram[31] = "0b10111100100110010000101011111110";
        ram[32] = "0b00111100000001000011001111010111";
        ram[33] = "0b10111100100101001111111100000000";
        ram[34] = "0b00111011001101101001010101010011";
        ram[35] = "0b10111110011010011101000000100000";
        ram[36] = "0b10111100111011100111010111111111";
        ram[37] = "0b10111101101111010001101100101110";
        ram[38] = "0b10111101100100111010001101100110";
        ram[39] = "0b00111100000001111011000100111010";
        ram[40] = "0b00111101010011110011001101000100";
        ram[41] = "0b10111101110110011111011011101100";
        ram[42] = "0b00111101100111011111111010111001";
        ram[43] = "0b00111110000100110000110000100100";
        ram[44] = "0b00111101110001011010110101010100";
        ram[45] = "0b10111100111010110010000001110101";
        ram[46] = "0b00111101111110100100100111000011";
        ram[47] = "0b10111011101010111001001011000000";
        ram[48] = "0b10111011000100000111000011111100";
        ram[49] = "0b00111101101100111111001110011101";
        ram[50] = "0b00111110000010110001010110110101";
        ram[51] = "0b10111101100011000101010101000011";


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


SC_MODULE(L2_up_L1_WEIGHTS_80) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_80_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_80) {
meminst = new L2_up_L1_WEIGHTS_80_ram("L2_up_L1_WEIGHTS_80_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_80() {
    delete meminst;
}


};//endmodule
#endif
