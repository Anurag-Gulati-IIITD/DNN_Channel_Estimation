// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_fYi_H__
#define __L2_up_L1_WEIGHTS_fYi_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_fYi_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_fYi_ram) {
        ram[0] = "0b00111101011110001000110110110000";
        ram[1] = "0b00111100101000000010101110000100";
        ram[2] = "0b10111101110100011111101000110011";
        ram[3] = "0b00111100010001000000100011011001";
        ram[4] = "0b10111101110101101001110110110110";
        ram[5] = "0b10111100101001000111000000100010";
        ram[6] = "0b00111100111001010011101010000010";
        ram[7] = "0b10111101001101011010001100011010";
        ram[8] = "0b10111101110011000011011001010100";
        ram[9] = "0b10111110010001001100011001100001";
        ram[10] = "0b00111100111110100000001011111011";
        ram[11] = "0b10111110001011101111101010100100";
        ram[12] = "0b00111101101110001110000110010011";
        ram[13] = "0b10111110001010001010001000100011";
        ram[14] = "0b10111101111100000101111000011100";
        ram[15] = "0b00111110100000111111101101111010";
        ram[16] = "0b10111101101100110000011110101111";
        ram[17] = "0b00111110000100101110001010111001";
        ram[18] = "0b00111101011111011110101101010011";
        ram[19] = "0b10111101111101001100100100000000";
        ram[20] = "0b10111110001111010101010110100100";
        ram[21] = "0b00111101010001101011011010011110";
        ram[22] = "0b00111101010000000100010000101000";
        ram[23] = "0b10111101111111111111101000111100";
        ram[24] = "0b10111110001101000010011001111000";
        ram[25] = "0b10111101000110110010100000001111";
        ram[26] = "0b00111110000000011110101000110110";
        ram[27] = "0b00111100111101000011111010010110";
        ram[28] = "0b10111011001010110100111110100101";
        ram[29] = "0b00111101110001100100010011011000";
        ram[30] = "0b00111101110100101100101111101010";
        ram[31] = "0b10111110000111110011011011110000";
        ram[32] = "0b00111110000100110010110011101001";
        ram[33] = "0b00111101110101110011010100111011";
        ram[34] = "0b00111101110111010001101000100010";
        ram[35] = "0b10111110000011010101111111011101";
        ram[36] = "0b10111100001000100101000011111000";
        ram[37] = "0b00111011111100100100000011111011";
        ram[38] = "0b10111101100010000010111000000010";
        ram[39] = "0b00111110011110111000011010110001";
        ram[40] = "0b00111101010101001110010111010110";
        ram[41] = "0b00111101111100001010110011000001";
        ram[42] = "0b00111110011011110110110101110110";
        ram[43] = "0b10111110010010010010001111100110";
        ram[44] = "0b00111100100111011010100111001010";
        ram[45] = "0b10111011011110000001111010001010";
        ram[46] = "0b00111100101100101001001111010001";
        ram[47] = "0b00111010110010111111001010110010";
        ram[48] = "0b10111100100001001010101101100000";
        ram[49] = "0b10111101010010110010111110101001";
        ram[50] = "0b00111101001110100110010110001100";
        ram[51] = "0b10111110000011111111011111100000";


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


SC_MODULE(L2_up_L1_WEIGHTS_fYi) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_fYi_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_fYi) {
meminst = new L2_up_L1_WEIGHTS_fYi_ram("L2_up_L1_WEIGHTS_fYi_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_fYi() {
    delete meminst;
}


};//endmodule
#endif
