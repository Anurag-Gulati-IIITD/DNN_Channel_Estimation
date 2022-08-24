// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_62_H__
#define __L2_up_L1_WEIGHTS_62_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_62_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_62_ram) {
        ram[0] = "0b00111101100101011111100000001010";
        ram[1] = "0b10111100111010001001011001010111";
        ram[2] = "0b00111100111110101010001001011110";
        ram[3] = "0b00111110000110110001101110111101";
        ram[4] = "0b10111101101000100100001011010000";
        ram[5] = "0b10111110000100010001100001111110";
        ram[6] = "0b10111101110000001011110010111110";
        ram[7] = "0b00111100011111100101110010010010";
        ram[8] = "0b10111110001001010111111111111010";
        ram[9] = "0b10111101101101110001001010100001";
        ram[10] = "0b10111110000111100101111000100100";
        ram[11] = "0b10111110011000011001101101001110";
        ram[12] = "0b00111101001010101110000110001011";
        ram[13] = "0b10111100101111010001010001011110";
        ram[14] = "0b00111101010000110001110011101011";
        ram[15] = "0b00111100111110100000011100101101";
        ram[16] = "0b10111010110001101011010010000101";
        ram[17] = "0b10111100111101011110001000000100";
        ram[18] = "0b10111011001111101010010011101100";
        ram[19] = "0b10111100000101011000100101101010";
        ram[20] = "0b10111101100110101100101010111100";
        ram[21] = "0b00111100111110010110000110000000";
        ram[22] = "0b10111101111101101001000000010101";
        ram[23] = "0b00111011111100011000100001101110";
        ram[24] = "0b10111101010111010010100011010000";
        ram[25] = "0b00111101100010110111010001011000";
        ram[26] = "0b10111101100110011010000101110111";
        ram[27] = "0b10111110001000101001110111000111";
        ram[28] = "0b10111101100010011111101101100001";
        ram[29] = "0b00111101110111110010100110010001";
        ram[30] = "0b10111101100000010110110101101110";
        ram[31] = "0b10111101110110110100101000100011";
        ram[32] = "0b10111101100010111010001110000111";
        ram[33] = "0b10111101010101111110010101100100";
        ram[34] = "0b10111101000110011101101010011101";
        ram[35] = "0b00111110010001110111100000010100";
        ram[36] = "0b10111011010010010100001011010101";
        ram[37] = "0b00111101101100101001101100101000";
        ram[38] = "0b00111101110001100010010011011101";
        ram[39] = "0b00111100110110001111001011100000";
        ram[40] = "0b00111101100001101000111111010010";
        ram[41] = "0b00111100111100100110101011101100";
        ram[42] = "0b00111101110100110100010110001101";
        ram[43] = "0b00111100110010111000000101110011";
        ram[44] = "0b00111101111001111110000111111100";
        ram[45] = "0b10111101110000010110011010011101";
        ram[46] = "0b10111101111100100101101010101011";
        ram[47] = "0b00111101101001011001101011111010";
        ram[48] = "0b10111101010001100000110111001100";
        ram[49] = "0b00111101101110101101110000001010";
        ram[50] = "0b00111101111100001111111100010001";
        ram[51] = "0b10111101101011001010001111101000";


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


SC_MODULE(L2_up_L1_WEIGHTS_62) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_62_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_62) {
meminst = new L2_up_L1_WEIGHTS_62_ram("L2_up_L1_WEIGHTS_62_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_62() {
    delete meminst;
}


};//endmodule
#endif
