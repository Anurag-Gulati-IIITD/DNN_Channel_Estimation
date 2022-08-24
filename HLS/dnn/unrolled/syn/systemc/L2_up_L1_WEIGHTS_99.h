// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_99_H__
#define __L2_up_L1_WEIGHTS_99_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_99_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_99_ram) {
        ram[0] = "0b10111100110011000000101111011101";
        ram[1] = "0b00111010111010000110010000000010";
        ram[2] = "0b10111100101100110110110111101100";
        ram[3] = "0b10111101100111011011001100111001";
        ram[4] = "0b00111110100001101111101001100001";
        ram[5] = "0b00111101101010111010000111110101";
        ram[6] = "0b00111100000100000011011001000100";
        ram[7] = "0b00111101111001101001000001011000";
        ram[8] = "0b10111101110011000110001111110001";
        ram[9] = "0b00111110001011001000011100010010";
        ram[10] = "0b00111101010001110000100001101000";
        ram[11] = "0b10111100110011001001101001111000";
        ram[12] = "0b00111101010101100111100110001001";
        ram[13] = "0b00111101111010011011000001101000";
        ram[14] = "0b10111101001011001110100010010110";
        ram[15] = "0b00111101101010001001101000000010";
        ram[16] = "0b00111101100110010100110010001000";
        ram[17] = "0b00111101011110001100100101110101";
        ram[18] = "0b10111101011111111101100100110100";
        ram[19] = "0b10111101100101101000101111100011";
        ram[20] = "0b00111001000001110100010000101100";
        ram[21] = "0b10111101010101000110010111101001";
        ram[22] = "0b10111101100101000111000001100101";
        ram[23] = "0b10111101100111010011101110110000";
        ram[24] = "0b10111100001101000110111111011111";
        ram[25] = "0b10111001111001001001011011101110";
        ram[26] = "0b00111101100100100110110001111111";
        ram[27] = "0b00111101010000110111011100011000";
        ram[28] = "0b00111101101010011110101100100000";
        ram[29] = "0b10111101110000000010100101101011";
        ram[30] = "0b10111011001011010111100101001010";
        ram[31] = "0b00111100100110011010000111111101";
        ram[32] = "0b10111101111010100001011100101011";
        ram[33] = "0b10111101110010010010111001100010";
        ram[34] = "0b00111110000101110101101111000100";
        ram[35] = "0b00111100000001010011011111100011";
        ram[36] = "0b00111101000111001001110001001110";
        ram[37] = "0b10111100010110001001110011100101";
        ram[38] = "0b10111011110000100101000001110010";
        ram[39] = "0b00111101111001110111110111011000";
        ram[40] = "0b10111100111111100010110001010110";
        ram[41] = "0b10111110100111111010001010101101";
        ram[42] = "0b10111110001111010101010101100001";
        ram[43] = "0b10111101101000101111010110011001";
        ram[44] = "0b00111100010000011100011000001001";
        ram[45] = "0b10111101100000101111111010000010";
        ram[46] = "0b00111101111010111011010101011011";
        ram[47] = "0b10111100101100000001111010101100";
        ram[48] = "0b00111101111000100011111010011111";
        ram[49] = "0b10111101001100110110010001111100";
        ram[50] = "0b00111110000111011101011100100011";
        ram[51] = "0b10111101000110001010010101001000";


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


SC_MODULE(L2_up_L1_WEIGHTS_99) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_99_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_99) {
meminst = new L2_up_L1_WEIGHTS_99_ram("L2_up_L1_WEIGHTS_99_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_99() {
    delete meminst;
}


};//endmodule
#endif
