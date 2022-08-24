// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEILf8_H__
#define __L2_wlo_218_L1_WEILf8_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEILf8_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 13;
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


   SC_CTOR(L2_wlo_218_L1_WEILf8_ram) {
        ram[0] = "0b0000000010101";
        ram[1] = "0b0011100011010";
        ram[2] = "0b1111100110010";
        ram[3] = "0b1111010111101";
        ram[4] = "0b0000000011111";
        ram[5] = "0b1110101111011";
        ram[6] = "0b1111111100000";
        ram[7] = "0b0001000000010";
        ram[8] = "0b0001101101000";
        ram[9] = "0b0000111011110";
        ram[10] = "0b1101101001000";
        ram[11] = "0b0001000001010";
        ram[12] = "0b0010100110101";
        ram[13] = "0b1111110000101";
        ram[14] = "0b1010101110101";
        ram[15] = "0b1101110001011";
        ram[16] = "0b0010011111000";
        ram[17] = "0b0000001010111";
        ram[18] = "0b0001001100100";
        ram[19] = "0b1111110110001";
        ram[20] = "0b1111100101010";
        ram[21] = "0b1111101111001";
        ram[22] = "0b1110011010001";
        ram[23] = "0b1110111011110";
        ram[24] = "0b1111100111101";
        ram[25] = "0b0000010111000";
        ram[26] = "0b1100111000010";
        ram[27] = "0b1110010100000";
        ram[28] = "0b0000111001111";
        ram[29] = "0b0001000010010";
        ram[30] = "0b0100110111011";
        ram[31] = "0b1110101000000";
        ram[32] = "0b0000111010000";
        ram[33] = "0b1110101111000";
        ram[34] = "0b1110110000100";
        ram[35] = "0b1110001010111";
        ram[36] = "0b1111100101110";
        ram[37] = "0b0001001111001";
        ram[38] = "0b0000001001101";
        ram[39] = "0b0000111101001";
        ram[40] = "0b1111100111100";
        ram[41] = "0b0000000001011";
        ram[42] = "0b1111101010001";
        ram[43] = "0b0010011010001";
        ram[44] = "0b0001011011000";
        ram[45] = "0b1111111110101";
        ram[46] = "0b0000000111011";
        ram[47] = "0b1111110000100";
        ram[48] = "0b1111101110010";
        ram[49] = "0b0000101010100";
        ram[50] = "0b1111001110010";
        ram[51] = "0b1110001111100";


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


SC_MODULE(L2_wlo_218_L1_WEILf8) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEILf8_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEILf8) {
meminst = new L2_wlo_218_L1_WEILf8_ram("L2_wlo_218_L1_WEILf8_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEILf8() {
    delete meminst;
}


};//endmodule
#endif
