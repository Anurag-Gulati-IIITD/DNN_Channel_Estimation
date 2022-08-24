// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_73_H__
#define __L2_up_L1_WEIGHTS_73_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_73_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_73_ram) {
        ram[0] = "0b00111100000111110000111001001110";
        ram[1] = "0b00111101110110101111011111010011";
        ram[2] = "0b10111101000101010010111100111100";
        ram[3] = "0b00111101001100010111100010110011";
        ram[4] = "0b10111101111111001011001001010011";
        ram[5] = "0b10111010101110010011010001101010";
        ram[6] = "0b10111101101010101111010101110111";
        ram[7] = "0b10111100000100100001100010011100";
        ram[8] = "0b10111110001100101001110111000111";
        ram[9] = "0b00111100100100110001010001000100";
        ram[10] = "0b00111101110001111010100111100011";
        ram[11] = "0b10111010100100110101001100101110";
        ram[12] = "0b00111101100111010100110110000011";
        ram[13] = "0b00111011101111011100101011010001";
        ram[14] = "0b00111101101010110010110100001010";
        ram[15] = "0b00111101010010001000100100111011";
        ram[16] = "0b10111101011100101001101000011100";
        ram[17] = "0b10111011101011010000110000111101";
        ram[18] = "0b10111101011001010011100101110101";
        ram[19] = "0b00111101100011011000000000011011";
        ram[20] = "0b00111100011100001101010000010011";
        ram[21] = "0b10111100000111111111110101100001";
        ram[22] = "0b00111110000010100111000101011000";
        ram[23] = "0b10111101000010111000001010000000";
        ram[24] = "0b00111100101011101000110000000101";
        ram[25] = "0b10111100110100000100100000010111";
        ram[26] = "0b10111110000111001110111001011011";
        ram[27] = "0b00111110100000000111000101100001";
        ram[28] = "0b00111100110110110110110000110111";
        ram[29] = "0b00111101000001100110101100011110";
        ram[30] = "0b00111101100011000001101000000101";
        ram[31] = "0b10111101100011010000001101010011";
        ram[32] = "0b00111100011101001010010101011001";
        ram[33] = "0b00111100011100000011010010110001";
        ram[34] = "0b10111110000010101101110110011100";
        ram[35] = "0b00111101111010100111001101110001";
        ram[36] = "0b10111101010011100000001000100001";
        ram[37] = "0b10111110011001101101000010010001";
        ram[38] = "0b10111101111101001100011101101101";
        ram[39] = "0b10111100111111001001010101111101";
        ram[40] = "0b00111100010110100000100111001100";
        ram[41] = "0b00111101100001101100001110111001";
        ram[42] = "0b00111101011011011010011101101110";
        ram[43] = "0b10111101110000100100001101010111";
        ram[44] = "0b00111101111011000001111101000011";
        ram[45] = "0b00111101000111110000100100001111";
        ram[46] = "0b10111101011000110000111111010000";
        ram[47] = "0b10111100000111001110110100001011";
        ram[48] = "0b10111101101110011010101011100111";
        ram[49] = "0b00111110000100110111011110011111";
        ram[50] = "0b00111101110101101001001010110100";
        ram[51] = "0b10111110000110000110011010100001";


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


SC_MODULE(L2_up_L1_WEIGHTS_73) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_73_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_73) {
meminst = new L2_up_L1_WEIGHTS_73_ram("L2_up_L1_WEIGHTS_73_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_73() {
    delete meminst;
}


};//endmodule
#endif
