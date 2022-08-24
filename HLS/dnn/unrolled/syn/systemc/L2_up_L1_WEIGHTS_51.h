// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_51_H__
#define __L2_up_L1_WEIGHTS_51_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_51_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_51_ram) {
        ram[0] = "0b10111101110101010111100010100011";
        ram[1] = "0b00111110000111001011000011000000";
        ram[2] = "0b10111110001001001001000001100000";
        ram[3] = "0b10111101101010010000110011010100";
        ram[4] = "0b10111101111010000001101100100010";
        ram[5] = "0b10111110001101100011011010110001";
        ram[6] = "0b00111101101100111100100100100101";
        ram[7] = "0b00111101011111000111100100101101";
        ram[8] = "0b00111101100000010000111110010101";
        ram[9] = "0b10111110011010000110001101111100";
        ram[10] = "0b00111101101100101111010011001111";
        ram[11] = "0b10111100101000010010100101000101";
        ram[12] = "0b00111101111000100001111100101010";
        ram[13] = "0b10111110011100000001100101101110";
        ram[14] = "0b10111110000110011011110011111101";
        ram[15] = "0b00111110010011111011101110010101";
        ram[16] = "0b10111101110011100001111101111101";
        ram[17] = "0b00111101111001111000011000111100";
        ram[18] = "0b00111101001100111010111111111011";
        ram[19] = "0b10111110000010111101011110110010";
        ram[20] = "0b10111101110100001100101110110000";
        ram[21] = "0b00111101101111000000011011100010";
        ram[22] = "0b10111101000001000101111111100001";
        ram[23] = "0b10111110001010011000100010010000";
        ram[24] = "0b10111100110100010101001001101110";
        ram[25] = "0b10111100110011111010110011100110";
        ram[26] = "0b00111110101001100101100011100110";
        ram[27] = "0b00111101101101000100110000111000";
        ram[28] = "0b10111110010101111100110100000011";
        ram[29] = "0b00111101100101011101100010010101";
        ram[30] = "0b00111110000110001101100000100011";
        ram[31] = "0b10111110001110000010000000011101";
        ram[32] = "0b00111110000011100000110110101010";
        ram[33] = "0b00111110000100111100110110011010";
        ram[34] = "0b00111101010100111011010010110011";
        ram[35] = "0b10111011101111110100110010110010";
        ram[36] = "0b00111010110100111000110011011010";
        ram[37] = "0b10111101011001101001100010111011";
        ram[38] = "0b10111100010011101100110010000001";
        ram[39] = "0b00111110100111101101001010001001";
        ram[40] = "0b00111101000111010111010001001111";
        ram[41] = "0b00111101111111101110100000001000";
        ram[42] = "0b00111110100100101110101100111110";
        ram[43] = "0b10111110011011110001001111001111";
        ram[44] = "0b10111101001111001100000110000111";
        ram[45] = "0b00111101111001011101011010111111";
        ram[46] = "0b00111100000001011111010010100001";
        ram[47] = "0b10111101100010101010110010010111";
        ram[48] = "0b00111100001110110011110010000010";
        ram[49] = "0b10111101000001010110011100010010";
        ram[50] = "0b10111101010001010101011101011000";
        ram[51] = "0b10111110010100010101011011100010";


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


SC_MODULE(L2_up_L1_WEIGHTS_51) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_51_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_51) {
meminst = new L2_up_L1_WEIGHTS_51_ram("L2_up_L1_WEIGHTS_51_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_51() {
    delete meminst;
}


};//endmodule
#endif
