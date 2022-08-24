// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_87_H__
#define __L2_up_L1_WEIGHTS_87_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_87_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_87_ram) {
        ram[0] = "0b00111101000110000000010011011010";
        ram[1] = "0b00111110000101111011000111000000";
        ram[2] = "0b00111101111110110010000000110010";
        ram[3] = "0b10111101110110101011001100100101";
        ram[4] = "0b00111101100110001001111110000100";
        ram[5] = "0b00111110000100100111100111011101";
        ram[6] = "0b00111100101001100010110010111010";
        ram[7] = "0b10111101000011001010110001001011";
        ram[8] = "0b10111110001100100100000011111011";
        ram[9] = "0b10111110000001010100010111001000";
        ram[10] = "0b00111100010010011101010110100010";
        ram[11] = "0b10111100011101001110100001110101";
        ram[12] = "0b10111101010011001010101000110010";
        ram[13] = "0b00111101001101110010000111010101";
        ram[14] = "0b10111101001001100010010101100011";
        ram[15] = "0b10111110010100110000101010010001";
        ram[16] = "0b10111100111001111100100011010010";
        ram[17] = "0b10111101101100101110010110011011";
        ram[18] = "0b10111100111111100110000011000100";
        ram[19] = "0b00111100100000010001101100011110";
        ram[20] = "0b00111011100110111011011010101010";
        ram[21] = "0b10111011010000011101101100000001";
        ram[22] = "0b00111100100000011001000010001110";
        ram[23] = "0b10111110000011101010101110111101";
        ram[24] = "0b00111101010001011110101000100101";
        ram[25] = "0b10111101000000100101011010111101";
        ram[26] = "0b00111110001101100101111101010010";
        ram[27] = "0b00111101000001111000101001101110";
        ram[28] = "0b00111101101000100100100110100001";
        ram[29] = "0b10111110000110010110111100100010";
        ram[30] = "0b10111100010110001011101001000001";
        ram[31] = "0b00111101101111011100000101100001";
        ram[32] = "0b10111101001011100010000100010000";
        ram[33] = "0b10111110000001110101101100111110";
        ram[34] = "0b10111011111110110011001100010010";
        ram[35] = "0b10111101001011001101110000000001";
        ram[36] = "0b00111100010111110110100110001000";
        ram[37] = "0b10111101100101110001011111011111";
        ram[38] = "0b10111100111011000011011101100001";
        ram[39] = "0b10111101100110010100110000000001";
        ram[40] = "0b10111101111001001011011001100011";
        ram[41] = "0b10111101011111101110000010110001";
        ram[42] = "0b00111110001000001111000011101001";
        ram[43] = "0b00111110100000011010111010010010";
        ram[44] = "0b10111101011001101001001101111101";
        ram[45] = "0b00111100100010010110111111101011";
        ram[46] = "0b00111101111001100110001101000001";
        ram[47] = "0b00111101100010011000101110110101";
        ram[48] = "0b00111101100100011001011100011100";
        ram[49] = "0b00111100011010100101111110000101";
        ram[50] = "0b00111110000111101110110101000110";
        ram[51] = "0b00111100001000111000011101011001";


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


SC_MODULE(L2_up_L1_WEIGHTS_87) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_87_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_87) {
meminst = new L2_up_L1_WEIGHTS_87_ram("L2_up_L1_WEIGHTS_87_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_87() {
    delete meminst;
}


};//endmodule
#endif
