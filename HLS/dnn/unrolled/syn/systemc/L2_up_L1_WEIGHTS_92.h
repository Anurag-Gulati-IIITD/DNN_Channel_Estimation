// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_92_H__
#define __L2_up_L1_WEIGHTS_92_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_92_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_92_ram) {
        ram[0] = "0b00111101011001100011011000101010";
        ram[1] = "0b10111100001010110110110100000001";
        ram[2] = "0b10111101110110011001010101101000";
        ram[3] = "0b10111100101000101000001101001101";
        ram[4] = "0b00111101100100001100011101111110";
        ram[5] = "0b10111110000011101010101110111101";
        ram[6] = "0b00111011000110111000010001010101";
        ram[7] = "0b10111100001101010010100001101011";
        ram[8] = "0b10111101111001101000101110100000";
        ram[9] = "0b00111101110111011111100101111011";
        ram[10] = "0b00111101010111001100101101111101";
        ram[11] = "0b00111101111111101000000010111111";
        ram[12] = "0b00111011110111001000011101010101";
        ram[13] = "0b00111101011111000011000011010011";
        ram[14] = "0b00111101101110111010011101110110";
        ram[15] = "0b00111101010010001000101001001000";
        ram[16] = "0b00111101010100111110111001011111";
        ram[17] = "0b00111010101000100100010001100011";
        ram[18] = "0b10111101001111001100011111010010";
        ram[19] = "0b00111101010111011010100010111101";
        ram[20] = "0b00111101100011110110000001011011";
        ram[21] = "0b00111100100001010110111001101001";
        ram[22] = "0b10111101101110000010101100011111";
        ram[23] = "0b00111101110100001010010111110000";
        ram[24] = "0b00111011100111001100101101111101";
        ram[25] = "0b00111100111101001110001000101010";
        ram[26] = "0b10111110000100010000111010001000";
        ram[27] = "0b10111100101101101100010110001111";
        ram[28] = "0b00111100110100111111111000011001";
        ram[29] = "0b00111101101011111101110100100011";
        ram[30] = "0b10111101000101100110001001111000";
        ram[31] = "0b00111011101110100101101000000100";
        ram[32] = "0b00111101000101000010101100110000";
        ram[33] = "0b10111110010000001011110100000001";
        ram[34] = "0b00111101001010111010111000000100";
        ram[35] = "0b10111110100110000011101110000010";
        ram[36] = "0b10111101111100101110101101011111";
        ram[37] = "0b10111110001100010011101110011111";
        ram[38] = "0b00111101000101100001100100010001";
        ram[39] = "0b10111101110100100111000110111101";
        ram[40] = "0b00111101001011011011010000000011";
        ram[41] = "0b10111101111000100011100001010100";
        ram[42] = "0b00111100011001101111001011101001";
        ram[43] = "0b10111101100000100101101011101110";
        ram[44] = "0b00111101001011000000011000011000";
        ram[45] = "0b10111100111110100001101000001101";
        ram[46] = "0b10111101000111111000101000001001";
        ram[47] = "0b00111101111001010000001111111011";
        ram[48] = "0b10111100110010111010010100011010";
        ram[49] = "0b10111101010111001000010100111100";
        ram[50] = "0b00111101000010010010111011101000";
        ram[51] = "0b00111101011110101100101000110110";


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


SC_MODULE(L2_up_L1_WEIGHTS_92) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_92_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_92) {
meminst = new L2_up_L1_WEIGHTS_92_ram("L2_up_L1_WEIGHTS_92_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_92() {
    delete meminst;
}


};//endmodule
#endif
