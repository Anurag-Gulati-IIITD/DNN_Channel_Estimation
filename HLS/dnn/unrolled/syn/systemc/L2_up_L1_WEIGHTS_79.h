// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_79_H__
#define __L2_up_L1_WEIGHTS_79_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_79_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_79_ram) {
        ram[0] = "0b00111100111100100111101110110011";
        ram[1] = "0b10111101110001110110100001011010";
        ram[2] = "0b10111110000011011011001111000000";
        ram[3] = "0b10111100011010101100100001100000";
        ram[4] = "0b00111100100010010110011110001000";
        ram[5] = "0b10111110010110010111100010010010";
        ram[6] = "0b10111101111100000101000110000111";
        ram[7] = "0b10111101100000000001110011010110";
        ram[8] = "0b10111110001110110000011011000100";
        ram[9] = "0b10111101110111001100110000000011";
        ram[10] = "0b00111101001001010100001111110010";
        ram[11] = "0b10111101110001010110110011010111";
        ram[12] = "0b10111101100100111110100110100111";
        ram[13] = "0b10111110001111110000110101000001";
        ram[14] = "0b00111101000011100010100011101101";
        ram[15] = "0b00111100100011000011110100100101";
        ram[16] = "0b00111101010000011111101001110110";
        ram[17] = "0b00111101101110000100011011101001";
        ram[18] = "0b10111100001111110111001001110001";
        ram[19] = "0b10111101100110110011011111001010";
        ram[20] = "0b10111101100000000001101000110111";
        ram[21] = "0b00111101011011000101011011010110";
        ram[22] = "0b00111101011100110011101110010111";
        ram[23] = "0b00111011110111001001100000011100";
        ram[24] = "0b10111101110001101101111110000011";
        ram[25] = "0b00111100101101001110100110000001";
        ram[26] = "0b00111010010110000000000110110100";
        ram[27] = "0b00111110010010010000001010011011";
        ram[28] = "0b10111101001011110000000101110101";
        ram[29] = "0b00111110010100111010111110111000";
        ram[30] = "0b10111101100011001111010110110010";
        ram[31] = "0b00111100000001110111011010000001";
        ram[32] = "0b10111101000110011011100000000010";
        ram[33] = "0b00111101001110100101111101000010";
        ram[34] = "0b10111101101001011101111000010110";
        ram[35] = "0b10111101110011001111010110110010";
        ram[36] = "0b10111101000010110011011100000000";
        ram[37] = "0b00111100101111111010100011111000";
        ram[38] = "0b10111110011100001110000101110010";
        ram[39] = "0b00111101011010101100101110000110";
        ram[40] = "0b00111101111000001110110001110100";
        ram[41] = "0b00111101011001111011010011100101";
        ram[42] = "0b00111110001100010110111000110111";
        ram[43] = "0b00111100100011111110011010010010";
        ram[44] = "0b10111101000010001101001110101110";
        ram[45] = "0b00111101100001100101011110111000";
        ram[46] = "0b00111101100001111000011011000010";
        ram[47] = "0b00111101111111100011101100000100";
        ram[48] = "0b10111101000110000111011100100101";
        ram[49] = "0b00111110000011001100010111111100";
        ram[50] = "0b00111110001100101110010101011000";
        ram[51] = "0b10111101100101101010101101011000";


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


SC_MODULE(L2_up_L1_WEIGHTS_79) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_79_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_79) {
meminst = new L2_up_L1_WEIGHTS_79_ram("L2_up_L1_WEIGHTS_79_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_79() {
    delete meminst;
}


};//endmodule
#endif
