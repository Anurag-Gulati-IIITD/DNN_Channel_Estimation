// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_67_H__
#define __L2_up_L1_WEIGHTS_67_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_67_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_67_ram) {
        ram[0] = "0b00111100100110010110101101110110";
        ram[1] = "0b00111110000000100101100001001111";
        ram[2] = "0b00111101100010111111010101010001";
        ram[3] = "0b00111110001000101010011001101110";
        ram[4] = "0b10111101110101100000001000000000";
        ram[5] = "0b00111110001001101000010100010010";
        ram[6] = "0b10111100101000010000101111101001";
        ram[7] = "0b10111101101001101101101101010001";
        ram[8] = "0b10111110011011100010010001111001";
        ram[9] = "0b00111110001010110001100000010001";
        ram[10] = "0b10111101000100100100010010100110";
        ram[11] = "0b00111100100101111100111001010011";
        ram[12] = "0b10111101001110000111000101100001";
        ram[13] = "0b00111100111001110011011000000101";
        ram[14] = "0b10111101010011100010111000101100";
        ram[15] = "0b00111101110000001010010110101101";
        ram[16] = "0b00111100000100011000000110011101";
        ram[17] = "0b00111100110010100101010110001111";
        ram[18] = "0b10111101010100011100000110010100";
        ram[19] = "0b10111110000100111010101010111101";
        ram[20] = "0b10111101100100011011011110011110";
        ram[21] = "0b10111101100101000001000110000000";
        ram[22] = "0b00111101110101011101110011000110";
        ram[23] = "0b10111101000110101010110001010100";
        ram[24] = "0b10111101100000001111101110101001";
        ram[25] = "0b00111011110110100010001011110111";
        ram[26] = "0b00111101110111010101000000100010";
        ram[27] = "0b10111101100011110001011001101110";
        ram[28] = "0b10111101100110001001111001110111";
        ram[29] = "0b10111101101111011010001101111111";
        ram[30] = "0b00111100110110100111100011110010";
        ram[31] = "0b00111101100100110011010101001100";
        ram[32] = "0b00111110000010011111001001111000";
        ram[33] = "0b00111101100010100101100111000000";
        ram[34] = "0b10111101010100100010100101100011";
        ram[35] = "0b10111101000000101000000010101110";
        ram[36] = "0b00111101011011111000001001101111";
        ram[37] = "0b00111100101001001111110010100100";
        ram[38] = "0b00111101100111110010100100001011";
        ram[39] = "0b10111110000101001110010010000110";
        ram[40] = "0b00111100111010101011001101101000";
        ram[41] = "0b00111101100111000100010000111001";
        ram[42] = "0b10111101111100100111101100101101";
        ram[43] = "0b10111101010110001100011011010110";
        ram[44] = "0b10111101001100010000010001001111";
        ram[45] = "0b00111101101001101111001011101001";
        ram[46] = "0b10111101101111110000011001110000";
        ram[47] = "0b00111010100011000110000011001100";
        ram[48] = "0b10111101111101111100100100010101";
        ram[49] = "0b00111101110100000010100110101110";
        ram[50] = "0b00111101101110111000111011010010";
        ram[51] = "0b00111101100111111000000010011001";


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


SC_MODULE(L2_up_L1_WEIGHTS_67) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_67_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_67) {
meminst = new L2_up_L1_WEIGHTS_67_ram("L2_up_L1_WEIGHTS_67_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_67() {
    delete meminst;
}


};//endmodule
#endif
