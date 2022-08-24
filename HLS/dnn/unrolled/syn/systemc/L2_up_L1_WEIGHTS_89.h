// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_89_H__
#define __L2_up_L1_WEIGHTS_89_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_89_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_89_ram) {
        ram[0] = "0b00111101101110000001101001011000";
        ram[1] = "0b00111100101111010000101111111010";
        ram[2] = "0b10111101111111100111111010100110";
        ram[3] = "0b00111101010000000111010101110001";
        ram[4] = "0b10111110000011111000000011011100";
        ram[5] = "0b00111101100001101111111011111000";
        ram[6] = "0b00111101100011101001110011001011";
        ram[7] = "0b10111101101111100000000101011000";
        ram[8] = "0b00111110010000011111011011001011";
        ram[9] = "0b00111101111101101111000110011001";
        ram[10] = "0b10111110010111010100101011100100";
        ram[11] = "0b10111101111101010001000111100000";
        ram[12] = "0b00111101110010110011110101001011";
        ram[13] = "0b00111100110010010101100111100110";
        ram[14] = "0b10111101100010110010101111111110";
        ram[15] = "0b10111100110001000010111010011001";
        ram[16] = "0b10111101101100110010000101100000";
        ram[17] = "0b00111101100111001000100111110100";
        ram[18] = "0b10111101001100001110000110110101";
        ram[19] = "0b10111100111100100110110100000101";
        ram[20] = "0b10111101001000110101100100110110";
        ram[21] = "0b00111101110000111111011110001100";
        ram[22] = "0b00111101100011000000110011101001";
        ram[23] = "0b00111101100000011111101110000011";
        ram[24] = "0b10111101010101111001011011000000";
        ram[25] = "0b10111100100010000001001111001011";
        ram[26] = "0b00111101011110111011001011111111";
        ram[27] = "0b00111100110001101100011101100101";
        ram[28] = "0b10111101010111001000100101101110";
        ram[29] = "0b10111101100111100100111001101010";
        ram[30] = "0b00111110001100100100010001100011";
        ram[31] = "0b10111110000011111101011110100001";
        ram[32] = "0b00111110000010000010000100101001";
        ram[33] = "0b00111100101100011111111011101011";
        ram[34] = "0b10111101100011001101010010101010";
        ram[35] = "0b10111100100110000111111001111100";
        ram[36] = "0b00111101101100001101111010001111";
        ram[37] = "0b00111101111001100010001111010001";
        ram[38] = "0b00111101100110001100010010111101";
        ram[39] = "0b00111101111011000011100011110011";
        ram[40] = "0b00111101101000001001001011001101";
        ram[41] = "0b00111110000001110001010000110100";
        ram[42] = "0b10111100101100110010111100000001";
        ram[43] = "0b10111100100110110110110101000100";
        ram[44] = "0b00111100000001110010101100000010";
        ram[45] = "0b10111101001000100101110010000001";
        ram[46] = "0b10111011101100001110000110110101";
        ram[47] = "0b10111100100101011010001010010100";
        ram[48] = "0b00111100110110001110110010010110";
        ram[49] = "0b00111110000011110111011001100000";
        ram[50] = "0b10111101110110011100000011101100";
        ram[51] = "0b10111101111101010010010111001100";


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


SC_MODULE(L2_up_L1_WEIGHTS_89) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_89_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_89) {
meminst = new L2_up_L1_WEIGHTS_89_ram("L2_up_L1_WEIGHTS_89_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_89() {
    delete meminst;
}


};//endmodule
#endif
