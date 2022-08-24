// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_38_H__
#define __L2_up_L1_WEIGHTS_38_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_38_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_38_ram) {
        ram[0] = "0b10111101000011010000111111101001";
        ram[1] = "0b00111110001110000111101001001010";
        ram[2] = "0b00111100001111101100001001001000";
        ram[3] = "0b10111100101100010001000111110001";
        ram[4] = "0b10111101110011000000101101010110";
        ram[5] = "0b00111101001110010100100101100010";
        ram[6] = "0b00111100100011010100101110101101";
        ram[7] = "0b10111100110101100000100001001010";
        ram[8] = "0b00111101100010110000110100001111";
        ram[9] = "0b10111101000000111011100100101000";
        ram[10] = "0b10111101101000011010001111110100";
        ram[11] = "0b10111101110101110010001011100010";
        ram[12] = "0b00111101000011100000110110101010";
        ram[13] = "0b00111101011110011000101101110010";
        ram[14] = "0b10111110000011111000101010001111";
        ram[15] = "0b10111110000011011010110110111000";
        ram[16] = "0b10111101010010110000011011000100";
        ram[17] = "0b10111100110000111001010110000001";
        ram[18] = "0b10111101000001011110011011111111";
        ram[19] = "0b10111101100001111100110100000011";
        ram[20] = "0b10111101110100000010101111000111";
        ram[21] = "0b10111101100011000100111001110010";
        ram[22] = "0b00111101111111111100100011110011";
        ram[23] = "0b10111110000010100001111100001000";
        ram[24] = "0b00111100101110110101100111011110";
        ram[25] = "0b10111101011010101110100111101110";
        ram[26] = "0b00111101111100110101110100100101";
        ram[27] = "0b10111100101100001100010001011001";
        ram[28] = "0b10111101100010000010010110011110";
        ram[29] = "0b10111101101010001010100110111101";
        ram[30] = "0b00111101110010110110011000110000";
        ram[31] = "0b10111100100110010000010010110100";
        ram[32] = "0b00111011110001010010101001000001";
        ram[33] = "0b00111101100110101100100000011101";
        ram[34] = "0b10111101110011001011010110111011";
        ram[35] = "0b00111101101111000010001100110001";
        ram[36] = "0b10111011101010110100111110100101";
        ram[37] = "0b00111110001110111001011000101001";
        ram[38] = "0b10111100101011111101100101110111";
        ram[39] = "0b00111110000100011001000001001011";
        ram[40] = "0b10111100101011010000111001010110";
        ram[41] = "0b10111100001000100010101100111001";
        ram[42] = "0b10111101000011001010001011011011";
        ram[43] = "0b00111110001101110100100100101000";
        ram[44] = "0b10111100010000100001100111101011";
        ram[45] = "0b10111101101110111001100001000010";
        ram[46] = "0b10111100101111011010010100010010";
        ram[47] = "0b10111101000110111111001001101111";
        ram[48] = "0b10111101100001000000100101011111";
        ram[49] = "0b00111101110100110001011101101010";
        ram[50] = "0b10111101111001110010000100001100";
        ram[51] = "0b10111100100000101100010011010110";


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


SC_MODULE(L2_up_L1_WEIGHTS_38) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_38_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_38) {
meminst = new L2_up_L1_WEIGHTS_38_ram("L2_up_L1_WEIGHTS_38_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_38() {
    delete meminst;
}


};//endmodule
#endif
