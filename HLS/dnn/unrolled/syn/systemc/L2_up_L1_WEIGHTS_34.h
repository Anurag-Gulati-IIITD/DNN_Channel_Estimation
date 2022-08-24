// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_34_H__
#define __L2_up_L1_WEIGHTS_34_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_34_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_34_ram) {
        ram[0] = "0b10111101010110010100000001111001";
        ram[1] = "0b10111110011100111001010110000001";
        ram[2] = "0b00111101011111101110100000001000";
        ram[3] = "0b00111101110011010110011101110111";
        ram[4] = "0b10111101001101101101100001101111";
        ram[5] = "0b10111101001010000001001000111000";
        ram[6] = "0b00111101110100000011100011100011";
        ram[7] = "0b00111101110010100001000111101101";
        ram[8] = "0b00111011100001110001000111011000";
        ram[9] = "0b10111011011111010001100110011100";
        ram[10] = "0b00111101111111010110100101001101";
        ram[11] = "0b00111011001001001100000111101100";
        ram[12] = "0b00111101010110100100100010110110";
        ram[13] = "0b10111101101010110100111010011000";
        ram[14] = "0b00111101001111001011001111100101";
        ram[15] = "0b00111110001101110001011001001100";
        ram[16] = "0b10111011111001001111101110011000";
        ram[17] = "0b10111011100100011000010111001111";
        ram[18] = "0b10111101010000011011000000000011";
        ram[19] = "0b00111101001011110111100011111111";
        ram[20] = "0b00111101100000010100101011010011";
        ram[21] = "0b10111100011101001100011011100111";
        ram[22] = "0b10111101010000000010001010011010";
        ram[23] = "0b00111110001101111010001100010010";
        ram[24] = "0b00111110000000001001101000100100";
        ram[25] = "0b10111010100011001110011100000100";
        ram[26] = "0b10111101111001000010111010011001";
        ram[27] = "0b10111011111101001011111010000011";
        ram[28] = "0b10111101000000110010000100011101";
        ram[29] = "0b00111101101000000001000111010011";
        ram[30] = "0b10111110001101011110111111101001";
        ram[31] = "0b00111101111001100010101010100010";
        ram[32] = "0b00111011100110010111001111011010";
        ram[33] = "0b00111101000111111000010111010111";
        ram[34] = "0b00111101010010100000010011010001";
        ram[35] = "0b00111110001001010111010100111010";
        ram[36] = "0b10111100101101011000001010011001";
        ram[37] = "0b10111101101111101110011011111011";
        ram[38] = "0b10111101111001011100111101101000";
        ram[39] = "0b10111101100111101000010101110111";
        ram[40] = "0b10111100101001000000110110010001";
        ram[41] = "0b00111101100000011000010001111111";
        ram[42] = "0b10111101010100000001111100110010";
        ram[43] = "0b10111110010111100011010110000011";
        ram[44] = "0b00111101000101011001010011110010";
        ram[45] = "0b10111100001000001000001110011001";
        ram[46] = "0b10111101110000111101000011000000";
        ram[47] = "0b00111101110101001110000100011110";
        ram[48] = "0b10111101110101000100011011111010";
        ram[49] = "0b10111101101100011010100001101001";
        ram[50] = "0b10111101010001001010010000001001";
        ram[51] = "0b00111101100100010000111001000101";


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


SC_MODULE(L2_up_L1_WEIGHTS_34) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_34_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_34) {
meminst = new L2_up_L1_WEIGHTS_34_ram("L2_up_L1_WEIGHTS_34_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_34() {
    delete meminst;
}


};//endmodule
#endif
