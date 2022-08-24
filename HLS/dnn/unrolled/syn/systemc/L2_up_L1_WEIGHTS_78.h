// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_78_H__
#define __L2_up_L1_WEIGHTS_78_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_78_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_78_ram) {
        ram[0] = "0b10111101011111100010001011100110";
        ram[1] = "0b10111110000010010101111000011000";
        ram[2] = "0b10111110000101111011000100111010";
        ram[3] = "0b00111101110100010011111010000001";
        ram[4] = "0b10111101110100010001100000111011";
        ram[5] = "0b10111100101111000010110110101110";
        ram[6] = "0b10111011000000011011001000011100";
        ram[7] = "0b10111101101100111000011100010110";
        ram[8] = "0b10111101110010100110101010000111";
        ram[9] = "0b10111101001000111110011111010001";
        ram[10] = "0b10111101101101011101111011011111";
        ram[11] = "0b10111110010101001000111100010001";
        ram[12] = "0b10111100001110000111101111011101";
        ram[13] = "0b00111101101010100010010101010011";
        ram[14] = "0b00111101101011000101101100001000";
        ram[15] = "0b00111110001000101010001011000010";
        ram[16] = "0b10111011101010100011101011010010";
        ram[17] = "0b00111101100000001101100000000010";
        ram[18] = "0b00111101001110110100000010110011";
        ram[19] = "0b10111101111001010110110101011101";
        ram[20] = "0b10111101100110111000101100100110";
        ram[21] = "0b00111101001110000100101010010100";
        ram[22] = "0b00111110000110001010101011001001";
        ram[23] = "0b00111110001010010001110001001100";
        ram[24] = "0b10111101011000110110001110110010";
        ram[25] = "0b10111101100011010110110100111011";
        ram[26] = "0b00111110010110000011101101100000";
        ram[27] = "0b00111110001011001011001111100101";
        ram[28] = "0b00111101000100011101011110011001";
        ram[29] = "0b10111100011000000101000000110111";
        ram[30] = "0b10111100110011111100101001000011";
        ram[31] = "0b00111100100100001111110101111110";
        ram[32] = "0b00111101100101101111101110001111";
        ram[33] = "0b00111100111111001011111101101110";
        ram[34] = "0b10111101100010001001110000011011";
        ram[35] = "0b10111110010001101010101111011110";
        ram[36] = "0b00111100111100011110110100011000";
        ram[37] = "0b00111110000001000100000111111111";
        ram[38] = "0b10111110000000011011100010101010";
        ram[39] = "0b10111101110000001010000011110101";
        ram[40] = "0b00111101100101011001100110101010";
        ram[41] = "0b00111101111010001111011111011011";
        ram[42] = "0b00111101101011010001111010010111";
        ram[43] = "0b10111101101100101001000100110010";
        ram[44] = "0b00111101101101000110011011110101";
        ram[45] = "0b10111101111000111101010001101011";
        ram[46] = "0b10111101111001101010000100011111";
        ram[47] = "0b00111100011100101001110101000001";
        ram[48] = "0b00111100110001101111110111101011";
        ram[49] = "0b00111101011001100010011101111100";
        ram[50] = "0b00111101100001100011010000010001";
        ram[51] = "0b00111101011000110010011111101110";


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


SC_MODULE(L2_up_L1_WEIGHTS_78) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_78_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_78) {
meminst = new L2_up_L1_WEIGHTS_78_ram("L2_up_L1_WEIGHTS_78_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_78() {
    delete meminst;
}


};//endmodule
#endif
