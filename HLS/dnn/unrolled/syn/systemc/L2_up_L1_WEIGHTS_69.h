// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_69_H__
#define __L2_up_L1_WEIGHTS_69_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_69_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_69_ram) {
        ram[0] = "0b10111101100001000011111111100110";
        ram[1] = "0b00111101100001010011111100111010";
        ram[2] = "0b10111110000101101011011101100111";
        ram[3] = "0b00111101101000100011010010101000";
        ram[4] = "0b00111101101011000000110011101001";
        ram[5] = "0b10111110100111100100111111011011";
        ram[6] = "0b10111101100011111011001100110001";
        ram[7] = "0b00111110001110011001111101011110";
        ram[8] = "0b00111100000001110100100001011110";
        ram[9] = "0b00111101100011001000011000000101";
        ram[10] = "0b10111101110101110111111110101110";
        ram[11] = "0b10111100111001100011101001011100";
        ram[12] = "0b10111101100010100110010111001111";
        ram[13] = "0b10111101110110000111101111011101";
        ram[14] = "0b00111011110001110000100001101000";
        ram[15] = "0b00111101100011100010001010100011";
        ram[16] = "0b00111011010011011010011011100111";
        ram[17] = "0b00111101100001100110101100011110";
        ram[18] = "0b00111101000000101000111001010000";
        ram[19] = "0b10111011101000011111000010000000";
        ram[20] = "0b10111101100101100111001010111001";
        ram[21] = "0b00111101001111110001110110000010";
        ram[22] = "0b10111101110011111011000100011000";
        ram[23] = "0b00111100000001110111011010000001";
        ram[24] = "0b10111110000100101111101001010001";
        ram[25] = "0b00111101011011001010101010111001";
        ram[26] = "0b00111101001110001101101101001001";
        ram[27] = "0b10111110100000101110001000110011";
        ram[28] = "0b10111101101011001110000010111001";
        ram[29] = "0b00111110000100111010001100100011";
        ram[30] = "0b00111101001000000011101100111111";
        ram[31] = "0b00111101100001100110111011001010";
        ram[32] = "0b10111100111101011001010001101100";
        ram[33] = "0b00111101010010010100011100000110";
        ram[34] = "0b10111101011000001110000011101011";
        ram[35] = "0b10111101100011101001010111111011";
        ram[36] = "0b10111001111111101100110111010001";
        ram[37] = "0b00111110000100010000010100011000";
        ram[38] = "0b00111110000101011001111100101100";
        ram[39] = "0b10111101010010000000111110011001";
        ram[40] = "0b00111101100110010001101100111111";
        ram[41] = "0b10111101100110101000101001000000";
        ram[42] = "0b00111101110010000110111100000101";
        ram[43] = "0b10111101110111000011000001001101";
        ram[44] = "0b00111101001101000001000110000000";
        ram[45] = "0b00111100110000000000001100100101";
        ram[46] = "0b10111011111000101111101111100011";
        ram[47] = "0b00111100001010000001100110001111";
        ram[48] = "0b10111011100101111111101001011101";
        ram[49] = "0b00111011111110101000101101001100";
        ram[50] = "0b00111100110011110001100000000001";
        ram[51] = "0b00111101010100100001111011100110";


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


SC_MODULE(L2_up_L1_WEIGHTS_69) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_69_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_69) {
meminst = new L2_up_L1_WEIGHTS_69_ram("L2_up_L1_WEIGHTS_69_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_69() {
    delete meminst;
}


};//endmodule
#endif
