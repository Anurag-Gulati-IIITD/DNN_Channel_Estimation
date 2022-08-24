// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_28_H__
#define __L2_up_L1_WEIGHTS_28_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_28_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_28_ram) {
        ram[0] = "0b10111101011110110100001111011001";
        ram[1] = "0b10111101101110111000101110101100";
        ram[2] = "0b10111101010111101101011111000111";
        ram[3] = "0b00111101101011001010001111101000";
        ram[4] = "0b10111101001101010000110100101000";
        ram[5] = "0b10111101101110000101111010000001";
        ram[6] = "0b10111101101001011110000010110101";
        ram[7] = "0b10111101110010000010000101101100";
        ram[8] = "0b10111101101111110001111000001000";
        ram[9] = "0b10111101011100010110100011111001";
        ram[10] = "0b10111101101011110110101001010001";
        ram[11] = "0b10111110000101101110010011000001";
        ram[12] = "0b10111101101010100111100110111100";
        ram[13] = "0b10111101000000100111100001001011";
        ram[14] = "0b00111101101111010000101011101110";
        ram[15] = "0b00111101101110110110010001011010";
        ram[16] = "0b10111101011001100111011000100001";
        ram[17] = "0b00111101100010001000000001010010";
        ram[18] = "0b00111100000111101000110001001000";
        ram[19] = "0b10111101001111111100101110010010";
        ram[20] = "0b10111101110000100111101001100011";
        ram[21] = "0b00111101010001000000010110110100";
        ram[22] = "0b10111101011100000011011111010110";
        ram[23] = "0b00111110000110110000001110011111";
        ram[24] = "0b10111100101001000011010101101001";
        ram[25] = "0b10111101010101110011111010101011";
        ram[26] = "0b00111101111101100101111001000110";
        ram[27] = "0b00111110010001101010010110010100";
        ram[28] = "0b10111101101101100001100110011000";
        ram[29] = "0b00111101000110111110010011001101";
        ram[30] = "0b10111101110101010110011001001001";
        ram[31] = "0b00111101000110011011010111101001";
        ram[32] = "0b00111101100001011001110100010011";
        ram[33] = "0b00111101110000100011010100101111";
        ram[34] = "0b10111101111100110001010111010111";
        ram[35] = "0b10111101111001110100011011001100";
        ram[36] = "0b00111101110000010011001111000010";
        ram[37] = "0b10111011111010110101111101011111";
        ram[38] = "0b10111110000010100110001001100111";
        ram[39] = "0b10111110000011010100101001011110";
        ram[40] = "0b00111100110110010000011111011001";
        ram[41] = "0b00111101000010011110101010011010";
        ram[42] = "0b00111101011111111101100000100111";
        ram[43] = "0b10111110001011101101100000001010";
        ram[44] = "0b10111101001111111110000010001011";
        ram[45] = "0b10111100000001101011000101100000";
        ram[46] = "0b10111101010001100110001111000111";
        ram[47] = "0b10111101001000001011101100101100";
        ram[48] = "0b00111100001010110001100100011110";
        ram[49] = "0b00111100110000001111010001010001";
        ram[50] = "0b00111101111110101011111110111010";
        ram[51] = "0b00111101100111000011110001011100";


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


SC_MODULE(L2_up_L1_WEIGHTS_28) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_28_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_28) {
meminst = new L2_up_L1_WEIGHTS_28_ram("L2_up_L1_WEIGHTS_28_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_28() {
    delete meminst;
}


};//endmodule
#endif
