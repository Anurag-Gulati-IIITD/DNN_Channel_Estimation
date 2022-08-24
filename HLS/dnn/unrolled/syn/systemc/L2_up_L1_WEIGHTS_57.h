// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_up_L1_WEIGHTS_57_H__
#define __L2_up_L1_WEIGHTS_57_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_up_L1_WEIGHTS_57_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_up_L1_WEIGHTS_57_ram) {
        ram[0] = "0b00111100011100000001101110000110";
        ram[1] = "0b10111110000010000000000010101000";
        ram[2] = "0b10111101110101110000110011011101";
        ram[3] = "0b10111100111000001101101010100001";
        ram[4] = "0b10111100001110010101111001011011";
        ram[5] = "0b10111110000110101111111101101101";
        ram[6] = "0b00111001100001101011110111110101";
        ram[7] = "0b00111100101101010001110111101111";
        ram[8] = "0b00111101101110011011101010100001";
        ram[9] = "0b00111101100011010010100010001101";
        ram[10] = "0b00111101010101110101100011100010";
        ram[11] = "0b10111110000111000001000111100100";
        ram[12] = "0b10111101000101101001101000001011";
        ram[13] = "0b10111100100000110001111100000100";
        ram[14] = "0b10111101001000010011111101001011";
        ram[15] = "0b10111110000100111010001110101001";
        ram[16] = "0b10111100110010001010000101011010";
        ram[17] = "0b00111110010111101110100001001011";
        ram[18] = "0b00111101011010001010000111100000";
        ram[19] = "0b10111101011100000011110000001000";
        ram[20] = "0b00111011000011000011111100111110";
        ram[21] = "0b00111101101100000100111101101110";
        ram[22] = "0b10111101111100110100011010011001";
        ram[23] = "0b00111110001111010001011011111101";
        ram[24] = "0b10111101101001111011000000101101";
        ram[25] = "0b00111100011111011001101110100010";
        ram[26] = "0b00111101001011100101110011010101";
        ram[27] = "0b00111101100101101110001101110001";
        ram[28] = "0b00111100101000000011100000011001";
        ram[29] = "0b00111110010011010100101101101010";
        ram[30] = "0b00111100000111101000100000010110";
        ram[31] = "0b00111100111010010100011010000000";
        ram[32] = "0b00111011000001001110100000110010";
        ram[33] = "0b10111100010111110101110011110010";
        ram[34] = "0b00111101100110001001100100111001";
        ram[35] = "0b10111110000100011000001011101101";
        ram[36] = "0b10111011001111100110000111010000";
        ram[37] = "0b00111011110010110010000011111011";
        ram[38] = "0b10111100100010000000110110000000";
        ram[39] = "0b10111101101011101100010010100100";
        ram[40] = "0b00111101110001010011010000110111";
        ram[41] = "0b10111100101000001110010000010001";
        ram[42] = "0b10111101100111010000000001110001";
        ram[43] = "0b00111101111110100000101001010010";
        ram[44] = "0b10111100111010000111110100101100";
        ram[45] = "0b10111100001101100001111111100010";
        ram[46] = "0b00111101001110000110111101001000";
        ram[47] = "0b00111101000000101001100111011001";
        ram[48] = "0b10111101110101001001011100110001";
        ram[49] = "0b00111100101000101101010100010111";
        ram[50] = "0b10111101101001101011011010011110";
        ram[51] = "0b00111101111011000110011000001010";


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


SC_MODULE(L2_up_L1_WEIGHTS_57) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_up_L1_WEIGHTS_57_ram* meminst;


SC_CTOR(L2_up_L1_WEIGHTS_57) {
meminst = new L2_up_L1_WEIGHTS_57_ram("L2_up_L1_WEIGHTS_57_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_up_L1_WEIGHTS_57() {
    delete meminst;
}


};//endmodule
#endif
