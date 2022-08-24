// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_94_H__
#define __L2_up_L1_WEIGHTS_94_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_94_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_94_ram) {
        ram[0] = "0b00111101100110100100101011001111";
        ram[1] = "0b00111101110111011010011110110001";
        ram[2] = "0b00111101000011101000101001110010";
        ram[3] = "0b10111101100111100100101010111110";
        ram[4] = "0b10111101100111110110011011101000";
        ram[5] = "0b00111101101101001001011110110111";
        ram[6] = "0b10111011111100100111101110110011";
        ram[7] = "0b10111101110111010010000001101101";
        ram[8] = "0b10111101011011100011000011001011";
        ram[9] = "0b10111110001111111110101011000100";
        ram[10] = "0b00111101100110111100001000110011";
        ram[11] = "0b10111010110011001101110110010100";
        ram[12] = "0b00111101011100111100111001100100";
        ram[13] = "0b00111110000110101100101011111111";
        ram[14] = "0b10111110100000101010010010011000";
        ram[15] = "0b10111101010000110011001111111101";
        ram[16] = "0b00111100100010110110100101010101";
        ram[17] = "0b10111101101010101010001010100001";
        ram[18] = "0b10111101001001100111111010000100";
        ram[19] = "0b00111101110010101111011110010000";
        ram[20] = "0b00111101001000110010010011001000";
        ram[21] = "0b10111100111110100011000100011111";
        ram[22] = "0b00111101101101100010101011100101";
        ram[23] = "0b10111110000010110010100101011111";
        ram[24] = "0b00111101001011011001101011011000";
        ram[25] = "0b10111101010000011101111100110011";
        ram[26] = "0b10111110010101000011111101100000";
        ram[27] = "0b10111101000010010101010110110100";
        ram[28] = "0b00111101001101100000111100011011";
        ram[29] = "0b10111101100000000001000001000001";
        ram[30] = "0b00111110010110000111110100101100";
        ram[31] = "0b00111101100100000010100010100010";
        ram[32] = "0b10111011110000111101101010110110";
        ram[33] = "0b10111101101010001011111010110110";
        ram[34] = "0b00111101111100110100100000101100";
        ram[35] = "0b00111100110100100111101000100000";
        ram[36] = "0b00111100011010110011100110011111";
        ram[37] = "0b10111100111101110001010000110100";
        ram[38] = "0b10111011001001001000111110010111";
        ram[39] = "0b10111101101010000111010101001111";
        ram[40] = "0b10111100100011010001100101011001";
        ram[41] = "0b00111101101110111000101110101100";
        ram[42] = "0b00111110000100110110010001111100";
        ram[43] = "0b00111101000101111011100001001110";
        ram[44] = "0b00111101110001110000001000011101";
        ram[45] = "0b00111101101011011001110011110001";
        ram[46] = "0b00111010111110111010100010000010";
        ram[47] = "0b10111101011000010000010010010010";
        ram[48] = "0b10111100100010010001100111110000";
        ram[49] = "0b10111110000101110010111110111010";
        ram[50] = "0b00111101101011011111011100011111";
        ram[51] = "0b10111101001111110011011110111001";


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


SC_MODULE(L2_up_L1_WEIGHTS_94) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_94_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_94) {
meminst = new L2_up_L1_WEIGHTS_94_ram("L2_up_L1_WEIGHTS_94_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_94() {
    delete meminst;
}


};//endmodule
#endif
