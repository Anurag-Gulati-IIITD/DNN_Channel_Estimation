// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_eOg_H__
#define __L2_up_L1_WEIGHTS_eOg_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_eOg_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_eOg_ram) {
        ram[0] = "0b00111101001110000101101101011011";
        ram[1] = "0b00111101000000010011011101101101";
        ram[2] = "0b10111101110001000110101011100100";
        ram[3] = "0b00111100010111100101100011100110";
        ram[4] = "0b00111110000010001001110010100010";
        ram[5] = "0b00111101111111000000001100110110";
        ram[6] = "0b00111101110001011011100011011100";
        ram[7] = "0b00111011101101100100100111010100";
        ram[8] = "0b10111101010010011101110011111001";
        ram[9] = "0b00111100101110010101010111111000";
        ram[10] = "0b00111100101010010111010110110000";
        ram[11] = "0b10111110010000111101100100100011";
        ram[12] = "0b00111100110110010100101011110101";
        ram[13] = "0b00111110001100011101010000110000";
        ram[14] = "0b10111110010010010110011000111000";
        ram[15] = "0b00111110001000000111110101001110";
        ram[16] = "0b10111011100111111000110000100010";
        ram[17] = "0b00111101001101111100000100110111";
        ram[18] = "0b00111100110000000011101111000101";
        ram[19] = "0b10111101100010100001110011101111";
        ram[20] = "0b10111101110111110110101100011010";
        ram[21] = "0b00111101100110101101001000010011";
        ram[22] = "0b00111101100110011000010000011011";
        ram[23] = "0b10111101110000111100100111101111";
        ram[24] = "0b10111101011001011110111011011101";
        ram[25] = "0b10111100111000011001000100010101";
        ram[26] = "0b00111101110101100110111000000001";
        ram[27] = "0b10111100111110000010111101010001";
        ram[28] = "0b10111100001101000100101000011111";
        ram[29] = "0b10111101000000011000011000010010";
        ram[30] = "0b00111110001010010100001000001011";
        ram[31] = "0b10111101110110001110000000000001";
        ram[32] = "0b10111100101101001011101101011110";
        ram[33] = "0b10111100000110011111111001000011";
        ram[34] = "0b00111101101111111011101001000101";
        ram[35] = "0b00111100010111110100110000101011";
        ram[36] = "0b10111010001110001000110010100100";
        ram[37] = "0b00111101000000010011001000101111";
        ram[38] = "0b00111100001110111000001111001111";
        ram[39] = "0b00111110001101010100001111110010";
        ram[40] = "0b00111100101001101010000000010010";
        ram[41] = "0b00111011110010111010111110010110";
        ram[42] = "0b00111100101100110010110011101001";
        ram[43] = "0b10111110001101010000001101110101";
        ram[44] = "0b00111100000110100011110100101110";
        ram[45] = "0b10111101100010011101011110111010";
        ram[46] = "0b10111101100000010011110010101100";
        ram[47] = "0b10111101000110101000000101010110";
        ram[48] = "0b00111101011010010001010000101011";
        ram[49] = "0b10111110000000010110101101010101";
        ram[50] = "0b00111110000110001001110000011011";
        ram[51] = "0b10111101111011011000010011010011";


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


SC_MODULE(L2_up_L1_WEIGHTS_eOg) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_eOg_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_eOg) {
meminst = new L2_up_L1_WEIGHTS_eOg_ram("L2_up_L1_WEIGHTS_eOg_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_eOg() {
    delete meminst;
}


};//endmodule
#endif
