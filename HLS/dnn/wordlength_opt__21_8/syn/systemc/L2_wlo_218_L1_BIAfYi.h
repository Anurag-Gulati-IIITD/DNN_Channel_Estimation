// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_BIAfYi_H__
#define __L2_wlo_218_L1_BIAfYi_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_BIAfYi_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 14;
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


   SC_CTOR(L2_wlo_218_L1_BIAfYi_ram) {
        ram[0] = "0b11011111000001";
        ram[1] = "0b00000001011001";
        ram[2] = "0b11001001010101";
        ram[3] = "0b10101001101000";
        ram[4] = "0b11111111100111";
        ram[5] = "0b11010010100100";
        ram[6] = "0b11111101101111";
        ram[7] = "0b00000101101110";
        ram[8] = "0b11111110100010";
        ram[9] = "0b11111110101000";
        ram[10] = "0b00001000010000";
        ram[11] = "0b01101000000100";
        ram[12] = "0b00000010001110";
        ram[13] = "0b01000110001100";
        ram[14] = "0b00000000110111";
        ram[15] = "0b11111001001000";
        ram[16] = "0b11111100101001";
        ram[17] = "0b11000010001110";
        ram[18] = "0b11110000111110";
        ram[19] = "0b11011110110111";
        ram[20] = "0b11010110111010";
        ram[21] = "0b11001001000000";
        ram[22] = "0b11111010001011";
        ram[23] = "0b11111110100111";
        ram[24] = "0b11100011110100";
        ram[25] = "0b11110110111001";
        ram[26] = "0b00001110100011";
        ram[27] = "0b11111110111110";
        ram[28] = "0b11011001111011";
        ram[29] = "0b00100111000100";
        ram[30] = "0b11111111001001";
        ram[31] = "0b11111101011000";
        ram[32] = "0b11111111101100";
        ram[33] = "0b11010111000100";
        ram[34] = "0b11111011111000";
        ram[35] = "0b00111010011001";
        ram[36] = "0b11100101001111";
        ram[37] = "0b11110111110000";
        ram[38] = "0b00000000111101";
        ram[39] = "0b00000011010110";
        ram[40] = "0b11011111011000";
        ram[41] = "0b00000000110000";
        ram[42] = "0b00000001011000";
        ram[43] = "0b00000111001000";
        ram[44] = "0b11101001110110";
        ram[45] = "0b00000100000100";
        ram[46] = "0b10101010100000";
        ram[47] = "0b11001001011011";
        ram[48] = "0b11111011111011";
        ram[49] = "0b00000100100010";
        ram[50] = "0b00000001011011";
        ram[51] = "0b11111101000010";


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


SC_MODULE(L2_wlo_218_L1_BIAfYi) {


static const unsigned DataWidth = 14;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_BIAfYi_ram* meminst;


SC_CTOR(L2_wlo_218_L1_BIAfYi) {
meminst = new L2_wlo_218_L1_BIAfYi_ram("L2_wlo_218_L1_BIAfYi_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_BIAfYi() {
    delete meminst;
}


};//endmodule
#endif
