// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_55_H__
#define __L2_up_L1_WEIGHTS_55_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_55_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_55_ram) {
        ram[0] = "0b00111101000101001001111110010101";
        ram[1] = "0b10111101010100000100101100111100";
        ram[2] = "0b00111101111110111001001100000011";
        ram[3] = "0b00111101001110000100111011000110";
        ram[4] = "0b10111110001100001010001111010111";
        ram[5] = "0b00111101110110001111000111010100";
        ram[6] = "0b00111011000010001101011011010100";
        ram[7] = "0b10111100010100000010010001110000";
        ram[8] = "0b10111101111010011001011100111110";
        ram[9] = "0b00111101000101100000011100111110";
        ram[10] = "0b00111101101011010001011000110011";
        ram[11] = "0b00111101100011011111011100011111";
        ram[12] = "0b00111011110110010100100011011100";
        ram[13] = "0b00111011110111000101110101100100";
        ram[14] = "0b00111110010001001100101101011100";
        ram[15] = "0b10111101110101011101110101001100";
        ram[16] = "0b10111101101000001101100000000010";
        ram[17] = "0b10111101101101011100000110000011";
        ram[18] = "0b10111100000001000111111101010110";
        ram[19] = "0b00111101000101101100111110000101";
        ram[20] = "0b00111100001100010100111011000010";
        ram[21] = "0b10111100110011111011001100110001";
        ram[22] = "0b00111101110010111001001000111010";
        ram[23] = "0b00111101011000011001111010110110";
        ram[24] = "0b00111101101100011001001001100100";
        ram[25] = "0b00111101001001011000111001100101";
        ram[26] = "0b00111110000011111110110011011101";
        ram[27] = "0b10111110101011101111011010110110";
        ram[28] = "0b10111100011010010001110010001111";
        ram[29] = "0b10111101101111010110011110111010";
        ram[30] = "0b10111101101110111011000011100110";
        ram[31] = "0b10111110000011011011000101100100";
        ram[32] = "0b00111101000110110010001011010001";
        ram[33] = "0b00111101000000011100111101111000";
        ram[34] = "0b10111100110111000110000110010101";
        ram[35] = "0b00111011000111110001111100010101";
        ram[36] = "0b00111101001110001110010111000101";
        ram[37] = "0b10111101100100010011100000110111";
        ram[38] = "0b00111110100011001001101011011101";
        ram[39] = "0b00111110000000001000011001111011";
        ram[40] = "0b00111011010010100001110011101111";
        ram[41] = "0b00111110000111101101011000110100";
        ram[42] = "0b10111101100111111000110010101000";
        ram[43] = "0b00111110001010101101001110100110";
        ram[44] = "0b10111101101010010001000110001100";
        ram[45] = "0b10111101011010011011101011100100";
        ram[46] = "0b10111011111001111110011000101110";
        ram[47] = "0b10111101100111001100111110101111";
        ram[48] = "0b10111100100100001010011110000011";
        ram[49] = "0b00111101001010010011111000011101";
        ram[50] = "0b00111101111010111111000000010011";
        ram[51] = "0b10111101011000001000100111100011";


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


SC_MODULE(L2_up_L1_WEIGHTS_55) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_55_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_55) {
meminst = new L2_up_L1_WEIGHTS_55_ram("L2_up_L1_WEIGHTS_55_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_55() {
    delete meminst;
}


};//endmodule
#endif
