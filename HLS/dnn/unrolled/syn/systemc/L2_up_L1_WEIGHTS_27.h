// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_27_H__
#define __L2_up_L1_WEIGHTS_27_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_27_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_27_ram) {
        ram[0] = "0b00111101011111110011110011110111";
        ram[1] = "0b10111110001101110111111100101000";
        ram[2] = "0b00111100101011111111011011010011";
        ram[3] = "0b00111011100100001010101110110100";
        ram[4] = "0b10111101011011000111001100100110";
        ram[5] = "0b00111101010000011101101100000001";
        ram[6] = "0b00111101011011100101111111111010";
        ram[7] = "0b00111100001111101000001101011110";
        ram[8] = "0b10111101101000101101111000000001";
        ram[9] = "0b10111101010100001011110110001000";
        ram[10] = "0b10111101110001000110010010011001";
        ram[11] = "0b10111110010010000110001011110110";
        ram[12] = "0b10111101100101000100110101000100";
        ram[13] = "0b00111101111111001001101111000111";
        ram[14] = "0b00111101011111100011111000101001";
        ram[15] = "0b00111110000111101111010010011101";
        ram[16] = "0b10111101101011110111010101010011";
        ram[17] = "0b00111100101011001111010100101100";
        ram[18] = "0b00111100111110111101010010001101";
        ram[19] = "0b10111101100011011011011110101110";
        ram[20] = "0b10111101111011100100011111011100";
        ram[21] = "0b10111101110110011001100010001101";
        ram[22] = "0b00111101000101010010100111111110";
        ram[23] = "0b00111110010001110011100111110011";
        ram[24] = "0b00111101011000111010010010110101";
        ram[25] = "0b10111100010000010101110100101101";
        ram[26] = "0b00111110001000001101101110101101";
        ram[27] = "0b10111101000001001101111111001110";
        ram[28] = "0b10111101011000001000011010111110";
        ram[29] = "0b10111101100010001011011101011111";
        ram[30] = "0b10111101110001101101101101010001";
        ram[31] = "0b10111101001000000010110110011101";
        ram[32] = "0b00111101001011100000100111111111";
        ram[33] = "0b00111101011011110010110110000000";
        ram[34] = "0b00111110000000100011001010010000";
        ram[35] = "0b10111100011100101000010000010110";
        ram[36] = "0b00111100100010111001110111000011";
        ram[37] = "0b00111110001100101111011111110101";
        ram[38] = "0b10111100101110011100111110011010";
        ram[39] = "0b10111101110011110100100111001111";
        ram[40] = "0b10111101001000011001011001010011";
        ram[41] = "0b00111101010000001011001101001110";
        ram[42] = "0b10111100111101100110000111110010";
        ram[43] = "0b10111110011000110101100110111100";
        ram[44] = "0b10111100101001011011111110101101";
        ram[45] = "0b10111101100111110111110011101110";
        ram[46] = "0b10111101100101100110010000001010";
        ram[47] = "0b10111001010111110101100011000001";
        ram[48] = "0b10111011100111101110010001011100";
        ram[49] = "0b10111101001001010010001001100100";
        ram[50] = "0b10111101011110100100010100001011";
        ram[51] = "0b00111101011011010001111100011101";


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


SC_MODULE(L2_up_L1_WEIGHTS_27) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_27_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_27) {
meminst = new L2_up_L1_WEIGHTS_27_ram("L2_up_L1_WEIGHTS_27_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_27() {
    delete meminst;
}


};//endmodule
#endif
