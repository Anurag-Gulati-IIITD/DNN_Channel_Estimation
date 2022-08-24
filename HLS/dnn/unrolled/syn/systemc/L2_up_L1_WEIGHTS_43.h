// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_43_H__
#define __L2_up_L1_WEIGHTS_43_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_43_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_43_ram) {
        ram[0] = "0b00111100111001011110100010010010";
        ram[1] = "0b00111101110101110010110101011110";
        ram[2] = "0b00111101000010011001101011101001";
        ram[3] = "0b00111100101011010001001010001000";
        ram[4] = "0b00111101101101001101111100000101";
        ram[5] = "0b10111101001000000011010011110100";
        ram[6] = "0b10111101001100111111010000100011";
        ram[7] = "0b00111101011010010101100101100000";
        ram[8] = "0b10111110000000110111001001100000";
        ram[9] = "0b10111101111000010111001000100110";
        ram[10] = "0b00111101111001111010101011101111";
        ram[11] = "0b10111101010010100101100111000000";
        ram[12] = "0b00111100110011011111001001100111";
        ram[13] = "0b00111101110111101001101011110110";
        ram[14] = "0b10111101111101011111111101100001";
        ram[15] = "0b00111101010010010111101001101000";
        ram[16] = "0b00111101011010001100100010101100";
        ram[17] = "0b10111101100100000001110010010011";
        ram[18] = "0b00111100100011100011110011011010";
        ram[19] = "0b00111011100110000100010111011101";
        ram[20] = "0b00111101000101101100111110000101";
        ram[21] = "0b00111100110001111101111001010001";
        ram[22] = "0b10111011111001011001101011111010";
        ram[23] = "0b10111101100010010110110101001100";
        ram[24] = "0b00111100101100000101010100110010";
        ram[25] = "0b10111100000000010000111010001000";
        ram[26] = "0b10111110010000010101101100010100";
        ram[27] = "0b00111011011101101101111111000110";
        ram[28] = "0b00111110100010001100111001001111";
        ram[29] = "0b10111100100001100010110101000001";
        ram[30] = "0b00111101110010101100100111110011";
        ram[31] = "0b00111100011010001001101010001001";
        ram[32] = "0b10111100100101010100000000000011";
        ram[33] = "0b10111110001000111000011100010110";
        ram[34] = "0b00111110001001011110010000011101";
        ram[35] = "0b10111101101101000010001011001101";
        ram[36] = "0b00111101010001010010001011101010";
        ram[37] = "0b10111100111000011100111111111111";
        ram[38] = "0b00111101100101101000110101110110";
        ram[39] = "0b00111100110101011001110101010110";
        ram[40] = "0b00111101100011010010110010111111";
        ram[41] = "0b10111101110101010001101111010110";
        ram[42] = "0b00111110001010111101000100100100";
        ram[43] = "0b00111100101111100110110001001100";
        ram[44] = "0b00111101001111110100001101000010";
        ram[45] = "0b00111010111110001100011001010000";
        ram[46] = "0b00111101110010110100110001111111";
        ram[47] = "0b00111101100000010100001101111100";
        ram[48] = "0b10111101011111110110111000111111";
        ram[49] = "0b10111101111111011011111000111100";
        ram[50] = "0b00111101101110100011001000101011";
        ram[51] = "0b00111011110011000100011010010101";


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


SC_MODULE(L2_up_L1_WEIGHTS_43) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_43_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_43) {
meminst = new L2_up_L1_WEIGHTS_43_ram("L2_up_L1_WEIGHTS_43_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_43() {
    delete meminst;
}


};//endmodule
#endif
