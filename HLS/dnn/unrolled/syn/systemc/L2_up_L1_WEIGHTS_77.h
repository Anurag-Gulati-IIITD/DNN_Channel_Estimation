// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_77_H__
#define __L2_up_L1_WEIGHTS_77_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_77_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_77_ram) {
        ram[0] = "0b00111100110111011110010110001110";
        ram[1] = "0b10111101110000010100111100000101";
        ram[2] = "0b00111101101011000010101101010010";
        ram[3] = "0b10111100111011101010001000001010";
        ram[4] = "0b00111110000001001010100110001011";
        ram[5] = "0b00111110101001011001100110101010";
        ram[6] = "0b00111100111110101101000010000001";
        ram[7] = "0b00111011101111110110111000111111";
        ram[8] = "0b00111110010000111110001100011001";
        ram[9] = "0b00111101011100111110100110100111";
        ram[10] = "0b10111110001101011001001000010000";
        ram[11] = "0b10111010010000000110100111101000";
        ram[12] = "0b10111101010001100010001011000100";
        ram[13] = "0b00111101001011111001001100110110";
        ram[14] = "0b00111100110011110011000100101011";
        ram[15] = "0b10111101001110100111100001101100";
        ram[16] = "0b00111101100100010101110011101010";
        ram[17] = "0b10111100111101101000110111111100";
        ram[18] = "0b10111011101101010100010111001000";
        ram[19] = "0b00111010101010100000000000011001";
        ram[20] = "0b10111101100110000100100110001000";
        ram[21] = "0b10111011010001101000001000110000";
        ram[22] = "0b00111001011011001111101001101010";
        ram[23] = "0b00111101111000110010000010010110";
        ram[24] = "0b10111100101011001010001101100010";
        ram[25] = "0b10111101010110011011110000110100";
        ram[26] = "0b00111101111010001010010100000101";
        ram[27] = "0b10111101011100010010000010011111";
        ram[28] = "0b10111100001010011110111101010010";
        ram[29] = "0b10111110100000111011111101010001";
        ram[30] = "0b00111101001100111011101110000100";
        ram[31] = "0b00111101101101001100001000101111";
        ram[32] = "0b10111101101001100100101110101001";
        ram[33] = "0b00111101000110111010001010111110";
        ram[34] = "0b00111101010101001010101000010001";
        ram[35] = "0b00111100100001111001000111000101";
        ram[36] = "0b10111101001100011101110101011101";
        ram[37] = "0b00111110010010011010110010111101";
        ram[38] = "0b00111110000010001001111010111010";
        ram[39] = "0b10111101110111110100011101110011";
        ram[40] = "0b10111101011100100010001010010010";
        ram[41] = "0b10111101000000011110011110010110";
        ram[42] = "0b10111100100011101011011001111100";
        ram[43] = "0b00111101001111010010110001111100";
        ram[44] = "0b10111101010010100001101011010110";
        ram[45] = "0b10111101010011101110000101111010";
        ram[46] = "0b00111101110001001010011110110101";
        ram[47] = "0b10111101010001110100100001011110";
        ram[48] = "0b00111101000011001010001011011011";
        ram[49] = "0b10111110000100010000001110000110";
        ram[50] = "0b10111101111011001011110010001100";
        ram[51] = "0b10111100000011010011111100011000";


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


SC_MODULE(L2_up_L1_WEIGHTS_77) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_77_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_77) {
meminst = new L2_up_L1_WEIGHTS_77_ram("L2_up_L1_WEIGHTS_77_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_77() {
    delete meminst;
}


};//endmodule
#endif
