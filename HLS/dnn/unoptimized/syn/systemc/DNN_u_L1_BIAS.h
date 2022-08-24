// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __DNN_u_L1_BIAS_H__
#define __DNN_u_L1_BIAS_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct DNN_u_L1_BIAS_ram : public sc_core::sc_module {

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


   SC_CTOR(DNN_u_L1_BIAS_ram) {
        ram[0] = "0b10111110100000111110110110010110";
        ram[1] = "0b00111100001100110111110010011010";
        ram[2] = "0b10111110110110101010100110110101";
        ram[3] = "0b10111111001011001011110100010010";
        ram[4] = "0b10111011010001111110001010000010";
        ram[5] = "0b10111110101101011011101111100000";
        ram[6] = "0b10111100100100000110101010110001";
        ram[7] = "0b00111101001101110110110101010101";
        ram[8] = "0b10111100001110111111100101000000";
        ram[9] = "0b10111100001011100101101111001000";
        ram[10] = "0b00111101100001000011101000100001";
        ram[11] = "0b00111111010100000010010001001111";
        ram[12] = "0b00111100100011101110100011010001";
        ram[13] = "0b00111111000011000110000001010111";
        ram[14] = "0b00111011110111010110000101110000";
        ram[15] = "0b10111101010110111111001101111100";
        ram[16] = "0b10111100110101100011001000111100";
        ram[17] = "0b10111110111101110001000110110110";
        ram[18] = "0b10111101111100000100101010110110";
        ram[19] = "0b10111110100001001000101010011100";
        ram[20] = "0b10111110101001000101100011101111";
        ram[21] = "0b10111110110110111111100101100010";
        ram[22] = "0b10111101001110100110101111010111";
        ram[23] = "0b10111100001100011010101100001000";
        ram[24] = "0b10111110011000010110101101010101";
        ram[25] = "0b10111101100100011011001111110010";
        ram[26] = "0b00111101111010001101111000101011";
        ram[27] = "0b10111100000000111000011111011111";
        ram[28] = "0b10111110100110000100010001101011";
        ram[29] = "0b00111110100111000100100010101110";
        ram[30] = "0b10111011110110011101011101110111";
        ram[31] = "0b10111100101001110101011010000110";
        ram[32] = "0b10111011000111100000000111011110";
        ram[33] = "0b10111110101000111011000011000100";
        ram[34] = "0b10111101000000111101110111011011";
        ram[35] = "0b00111110111010011001011100011100";
        ram[36] = "0b10111110010101100000101100101101";
        ram[37] = "0b10111101100000111110101101111101";
        ram[38] = "0b00111011111101111110110000110101";
        ram[39] = "0b00111100110101100110000001011111";
        ram[40] = "0b10111110100000100111000010110000";
        ram[41] = "0b00111011110000000001011000000101";
        ram[42] = "0b00111100001100011001101001000001";
        ram[43] = "0b00111101011001000100001100001011";
        ram[44] = "0b10111110001100010011011110110000";
        ram[45] = "0b00111101000000100011010000100010";
        ram[46] = "0b10111111001010101111110100000000";
        ram[47] = "0b10111110110110100100010011001000";
        ram[48] = "0b10111101000000100111101101110000";
        ram[49] = "0b00111101000100010100100011111110";
        ram[50] = "0b00111100001101101001110110110110";
        ram[51] = "0b10111100101111010010100101010110";


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


SC_MODULE(DNN_u_L1_BIAS) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


DNN_u_L1_BIAS_ram* meminst;


SC_CTOR(DNN_u_L1_BIAS) {
meminst = new DNN_u_L1_BIAS_ram("DNN_u_L1_BIAS_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~DNN_u_L1_BIAS() {
    delete meminst;
}


};//endmodule
#endif
