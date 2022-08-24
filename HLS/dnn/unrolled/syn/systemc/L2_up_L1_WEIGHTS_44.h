// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_44_H__
#define __L2_up_L1_WEIGHTS_44_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_44_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_44_ram) {
        ram[0] = "0b00111101011110001001100000101101";
        ram[1] = "0b00111101111011010000100110011110";
        ram[2] = "0b00111100100100101011101000010111";
        ram[3] = "0b10111101000011101001101000101100";
        ram[4] = "0b10111110000111000010010101001010";
        ram[5] = "0b00111110000100101110110011110010";
        ram[6] = "0b00111100101101010110100101101110";
        ram[7] = "0b10111110000100100111011110000001";
        ram[8] = "0b10111101001001101101110111110000";
        ram[9] = "0b10111101111100111101001000001111";
        ram[10] = "0b10111101001001000011000000101011";
        ram[11] = "0b10111100011000110011101011001101";
        ram[12] = "0b10111100100100100011000111000110";
        ram[13] = "0b00111110001000011000000110011101";
        ram[14] = "0b10111110000100011010001111110100";
        ram[15] = "0b00111100111011100000101100001011";
        ram[16] = "0b00111011111111000110000100001111";
        ram[17] = "0b10111101100001010001011101100001";
        ram[18] = "0b10111101110001011001100111101101";
        ram[19] = "0b00111101010110101001001100101001";
        ram[20] = "0b00111100010011101000000100000010";
        ram[21] = "0b00111010111000000100001110100010";
        ram[22] = "0b00111110001100100001001001010001";
        ram[23] = "0b10111101010111111011000111100010";
        ram[24] = "0b00111101100001001101111011000010";
        ram[25] = "0b10111100010101010000011001010111";
        ram[26] = "0b10111101111101000001010100101011";
        ram[27] = "0b10111101001111110110101000001110";
        ram[28] = "0b00111100000001000000111000010111";
        ram[29] = "0b10111110000010010101010000100010";
        ram[30] = "0b00111110010111011001100101000110";
        ram[31] = "0b00111101100011110010010110100010";
        ram[32] = "0b00111110010000111001001100100101";
        ram[33] = "0b10111100101110110010001101010111";
        ram[34] = "0b00111101111111111101011000001111";
        ram[35] = "0b00111101001110101101111000100010";
        ram[36] = "0b10111100111100010001101101100001";
        ram[37] = "0b10111100110010000100001011111010";
        ram[38] = "0b00111101110110011011000110111000";
        ram[39] = "0b00111100100001111001000111000101";
        ram[40] = "0b10111011001110110010101110111011";
        ram[41] = "0b00111101111001001110010100001100";
        ram[42] = "0b00111110010101110100010011110110";
        ram[43] = "0b10111100011111011011110100110000";
        ram[44] = "0b00111101011100011110001110101000";
        ram[45] = "0b00111101101101010011110011011110";
        ram[46] = "0b10111100111010100100111010111110";
        ram[47] = "0b10111101011101110001001100100111";
        ram[48] = "0b00111100110111000101011100011001";
        ram[49] = "0b10111101101010011100011101111010";
        ram[50] = "0b00111100111101011010111110110000";
        ram[51] = "0b10111101110101001000000010100110";


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


SC_MODULE(L2_up_L1_WEIGHTS_44) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_44_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_44) {
meminst = new L2_up_L1_WEIGHTS_44_ram("L2_up_L1_WEIGHTS_44_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_44() {
    delete meminst;
}


};//endmodule
#endif
