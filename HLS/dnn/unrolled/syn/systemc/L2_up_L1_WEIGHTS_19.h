// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_19_H__
#define __L2_up_L1_WEIGHTS_19_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_19_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_19_ram) {
        ram[0] = "0b00111100010101101010100111000101";
        ram[1] = "0b10111011000101101011101110011001";
        ram[2] = "0b10111101010111110000000010101100";
        ram[3] = "0b10111101000010100011000011011011";
        ram[4] = "0b00111101111011101100101001101000";
        ram[5] = "0b10111110010001110100011111011000";
        ram[6] = "0b00111101101111111010011001011001";
        ram[7] = "0b00111110010100011101001011100001";
        ram[8] = "0b00111101010100011100011111011110";
        ram[9] = "0b10111101011010001110100100101101";
        ram[10] = "0b10111110001101111111010101100010";
        ram[11] = "0b00111101100101100001110101000011";
        ram[12] = "0b10111100110000100011000011111101";
        ram[13] = "0b10111101110100111111011000111100";
        ram[14] = "0b00111100010000101011110101111111";
        ram[15] = "0b00111100000010001101001010100010";
        ram[16] = "0b00111100000001101000001100111100";
        ram[17] = "0b00111101100111110001101101101001";
        ram[18] = "0b00111011001010011100110111000100";
        ram[19] = "0b10111101101000101100000000011110";
        ram[20] = "0b10111100011001010111000100001001";
        ram[21] = "0b00111101101001000000110100001011";
        ram[22] = "0b10111101111100011001101101001110";
        ram[23] = "0b10111101110011000100111101111111";
        ram[24] = "0b00111010111000000010001000010100";
        ram[25] = "0b10111010100010011010000000100111";
        ram[26] = "0b00111101111110000000010001010011";
        ram[27] = "0b10111101111100000110001011010100";
        ram[28] = "0b10111011001000001111010011011000";
        ram[29] = "0b00111110000101010010001101110000";
        ram[30] = "0b00111101100001100001101011100111";
        ram[31] = "0b00111101000100010000101000010011";
        ram[32] = "0b10111101000101010000101110010101";
        ram[33] = "0b00111101100101001001000101101101";
        ram[34] = "0b00111100000000110111001011100111";
        ram[35] = "0b10111101100111010001000100111000";
        ram[36] = "0b00111011101000000001001001011010";
        ram[37] = "0b00111110011110101001101011000011";
        ram[38] = "0b00111101111000100110011011111101";
        ram[39] = "0b00111100000101101110110111101110";
        ram[40] = "0b10111011111100100011100010010111";
        ram[41] = "0b10111101100111100001101110001111";
        ram[42] = "0b00111100111101010010100101111000";
        ram[43] = "0b10111100101011001101110000000001";
        ram[44] = "0b00111101001000011011111000101011";
        ram[45] = "0b10111101010100001001000001110001";
        ram[46] = "0b00111100011110100001000110101001";
        ram[47] = "0b10111101011000000000001110101100";
        ram[48] = "0b00111101100111010111111011001100";
        ram[49] = "0b10111101000000001110001001111110";
        ram[50] = "0b10111101101001011010010101110110";
        ram[51] = "0b10111101001110101010011010001111";


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


SC_MODULE(L2_up_L1_WEIGHTS_19) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_19_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_19) {
meminst = new L2_up_L1_WEIGHTS_19_ram("L2_up_L1_WEIGHTS_19_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_19() {
    delete meminst;
}


};//endmodule
#endif
