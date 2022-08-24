// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_81_H__
#define __L2_up_L1_WEIGHTS_81_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_81_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_81_ram) {
        ram[0] = "0b10111101011001010111111110110111";
        ram[1] = "0b00111110011011101000011101001101";
        ram[2] = "0b00111101000100111111111000011001";
        ram[3] = "0b00111101001110000100001000110001";
        ram[4] = "0b00111101011101101111000110011001";
        ram[5] = "0b10111101111001101001100000110101";
        ram[6] = "0b10111101111000101101000111110010";
        ram[7] = "0b00111100110000111010010000101111";
        ram[8] = "0b10111010110100001010101010101000";
        ram[9] = "0b00111100011100101100111110010110";
        ram[10] = "0b10111101100010111010010010010100";
        ram[11] = "0b00111110001011000000100000110001";
        ram[12] = "0b00111101110111010010100001001010";
        ram[13] = "0b10111101000010101111001111100100";
        ram[14] = "0b10111110001011010000000010110100";
        ram[15] = "0b10111110010111111001111101000101";
        ram[16] = "0b00111101000111011110011110100111";
        ram[17] = "0b00111101111101010101000111010111";
        ram[18] = "0b10111101010000110110111010110101";
        ram[19] = "0b00111101100001111100001100001101";
        ram[20] = "0b00111101000000010111111111000111";
        ram[21] = "0b00111101001011011001010110011010";
        ram[22] = "0b10111100100111011010011110110001";
        ram[23] = "0b10111110010011111001100010110111";
        ram[24] = "0b10111101010110001011000111011101";
        ram[25] = "0b10111101001010001011001110110011";
        ram[26] = "0b10111101101111011010011000011110";
        ram[27] = "0b10111101001011110011000110110001";
        ram[28] = "0b00111100101111110110101000001110";
        ram[29] = "0b00111101011000000010100001011111";
        ram[30] = "0b00111110010011110000100100001111";
        ram[31] = "0b10111101001110010100010000100100";
        ram[32] = "0b00111101101110101111010010101110";
        ram[33] = "0b10111100100011110111101110011110";
        ram[34] = "0b10111101100010100011100100111111";
        ram[35] = "0b10111110001100011111010100111000";
        ram[36] = "0b10111101010100101110011000100001";
        ram[37] = "0b00111100111011101100100111100010";
        ram[38] = "0b00111101100000110000001000101110";
        ram[39] = "0b10111101001001111100000101111011";
        ram[40] = "0b00111101000011011101110101101110";
        ram[41] = "0b10111101100000111110011111010001";
        ram[42] = "0b10111110000000011010000011001111";
        ram[43] = "0b00111110010100011001110110101010";
        ram[44] = "0b00111101011000001110101001011011";
        ram[45] = "0b00111101011010000111001010110000";
        ram[46] = "0b00111101001100000101110110010110";
        ram[47] = "0b00111101010111011110001101110110";
        ram[48] = "0b10111101100101111101100011001111";
        ram[49] = "0b00111110000101010011011110100000";
        ram[50] = "0b10111101010110001111100100101011";
        ram[51] = "0b10111101011101011010001100011010";


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


SC_MODULE(L2_up_L1_WEIGHTS_81) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_81_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_81) {
meminst = new L2_up_L1_WEIGHTS_81_ram("L2_up_L1_WEIGHTS_81_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_81() {
    delete meminst;
}


};//endmodule
#endif
