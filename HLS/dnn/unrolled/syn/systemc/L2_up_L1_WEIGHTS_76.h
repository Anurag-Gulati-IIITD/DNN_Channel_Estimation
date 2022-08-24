// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_76_H__
#define __L2_up_L1_WEIGHTS_76_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_76_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_76_ram) {
        ram[0] = "0b10111101010101111001101011110010";
        ram[1] = "0b00111110000100100101001110010111";
        ram[2] = "0b00111101001010000001000000011111";
        ram[3] = "0b10111101110100010000001000110110";
        ram[4] = "0b00111101111100110000011000011100";
        ram[5] = "0b00111110000001000101110001111001";
        ram[6] = "0b00111101111110110001101001101101";
        ram[7] = "0b00111101100111111100100001101101";
        ram[8] = "0b00111100100000010110101011001111";
        ram[9] = "0b00111100001100110100000111100001";
        ram[10] = "0b10111101000100111100111111110110";
        ram[11] = "0b00111101101110101111100011011111";
        ram[12] = "0b10111100000010111100100111001101";
        ram[13] = "0b10111100101010011001001100001100";
        ram[14] = "0b10111010110100000010010001110000";
        ram[15] = "0b10111110000011100000100100110101";
        ram[16] = "0b10111100110010100010010101010011";
        ram[17] = "0b10111101101111100100000101001110";
        ram[18] = "0b10111101000000000101001111100011";
        ram[19] = "0b10111100010011110001110000110010";
        ram[20] = "0b00111100100110011000010010100001";
        ram[21] = "0b10111101100111000111011010001110";
        ram[22] = "0b10111101111111111101100000100111";
        ram[23] = "0b10111101111001010000100000101101";
        ram[24] = "0b00111101001001001110110111110110";
        ram[25] = "0b00111101001000111100011101010000";
        ram[26] = "0b00111110000110011000010111110000";
        ram[27] = "0b10111110000110101110110001001010";
        ram[28] = "0b00111011011001101110001000100010";
        ram[29] = "0b10111101011111110100001101000010";
        ram[30] = "0b00111100110110010011110001000111";
        ram[31] = "0b00111100111101110010000011001001";
        ram[32] = "0b10111101100010011011111100010110";
        ram[33] = "0b10111100110100000101111100101001";
        ram[34] = "0b00111110001000101110011110110100";
        ram[35] = "0b00111101110100010010000110101011";
        ram[36] = "0b10111100100111101010101110111101";
        ram[37] = "0b00111100101000000001001001011010";
        ram[38] = "0b00111110000110000111111001111100";
        ram[39] = "0b00111100101100111101000001111101";
        ram[40] = "0b10111101101001000111001101000111";
        ram[41] = "0b10111100110010111110111010000000";
        ram[42] = "0b10111110001101010110100000011111";
        ram[43] = "0b00111101101101010110011101010101";
        ram[44] = "0b10111101101100100000011011001000";
        ram[45] = "0b00111101010011010111100111010001";
        ram[46] = "0b00111110000010001011010110001001";
        ram[47] = "0b00111100100111011110010010000010";
        ram[48] = "0b00111100111011110101011001100101";
        ram[49] = "0b10111101101101111101000111111110";
        ram[50] = "0b10111101101111101010010101110010";
        ram[51] = "0b00111100100101111100110000111010";


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


SC_MODULE(L2_up_L1_WEIGHTS_76) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_76_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_76) {
meminst = new L2_up_L1_WEIGHTS_76_ram("L2_up_L1_WEIGHTS_76_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_76() {
    delete meminst;
}


};//endmodule
#endif
