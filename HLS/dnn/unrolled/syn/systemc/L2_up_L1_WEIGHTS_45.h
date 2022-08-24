// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_45_H__
#define __L2_up_L1_WEIGHTS_45_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_45_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_45_ram) {
        ram[0] = "0b10111100111101101001011001011111";
        ram[1] = "0b00111101111000100011010000100010";
        ram[2] = "0b00111101100000010111110010100010";
        ram[3] = "0b00111101100111011000111110010011";
        ram[4] = "0b10111110100000111010100011100111";
        ram[5] = "0b10111101011001111010011101000100";
        ram[6] = "0b10111101110100000011111000100001";
        ram[7] = "0b10111101111111101011000011111011";
        ram[8] = "0b00111110000111000000000011011010";
        ram[9] = "0b10111110000100111001010100111110";
        ram[10] = "0b10111101111011010011110011111111";
        ram[11] = "0b00111100111001100110000000011100";
        ram[12] = "0b10111101001100010100000000010100";
        ram[13] = "0b10111101100000000001011010001011";
        ram[14] = "0b10111101110100111100110001001011";
        ram[15] = "0b10111101010001100011011010110001";
        ram[16] = "0b10111101011111011100010010000111";
        ram[17] = "0b10111100101011110001110010111001";
        ram[18] = "0b00111101010011000000011010011110";
        ram[19] = "0b00111011000110010110101101110110";
        ram[20] = "0b00111101100010011100011101111010";
        ram[21] = "0b10111100110001101101001111111010";
        ram[22] = "0b00111100101000000011000111001111";
        ram[23] = "0b10111101011110110101000001101110";
        ram[24] = "0b10111101010000100011101101111001";
        ram[25] = "0b10111100011011110000011010110011";
        ram[26] = "0b10111110000100111011110010010000";
        ram[27] = "0b10111100000100111101100101100110";
        ram[28] = "0b10111101101010100111000011010010";
        ram[29] = "0b10111100100111001000010000110000";
        ram[30] = "0b00111101101100001110010101100000";
        ram[31] = "0b00111100111111111010101000000100";
        ram[32] = "0b00111110000011111000010010001000";
        ram[33] = "0b00111101111000110000010001000111";
        ram[34] = "0b10111101001001110111011100001000";
        ram[35] = "0b00111101111010000100000101101000";
        ram[36] = "0b00111100111000000110110110010100";
        ram[37] = "0b00111101100101101110110001011011";
        ram[38] = "0b00111101000100010101011110101100";
        ram[39] = "0b10111101100111101001110000000010";
        ram[40] = "0b00111101011111010000010010100011";
        ram[41] = "0b00111110001100001001001100010000";
        ram[42] = "0b00111110001000000011011001000100";
        ram[43] = "0b10111100001110111001000001100100";
        ram[44] = "0b00111010111111110011001001111011";
        ram[45] = "0b00111100111111001100000110000111";
        ram[46] = "0b10111101111100001101001100000111";
        ram[47] = "0b00111100011010000000101111101101";
        ram[48] = "0b10111101001111010011111001001111";
        ram[49] = "0b10111011100000011001000010001110";
        ram[50] = "0b10111101001011101101110111001110";
        ram[51] = "0b00111101100000000011100000011001";


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


SC_MODULE(L2_up_L1_WEIGHTS_45) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_45_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_45) {
meminst = new L2_up_L1_WEIGHTS_45_ram("L2_up_L1_WEIGHTS_45_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_45() {
    delete meminst;
}


};//endmodule
#endif
