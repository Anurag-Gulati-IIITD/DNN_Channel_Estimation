// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIXh4_H__
#define __L2_wlo_218_L1_WEIXh4_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIXh4_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIXh4_ram) {
        ram[0] = "0b0000011100101";
        ram[1] = "0b0001101011100";
        ram[2] = "0b0000100010011";
        ram[3] = "0b0000010101101";
        ram[4] = "0b0001011010011";
        ram[5] = "0b1111010111111";
        ram[6] = "0b1111010011000";
        ram[7] = "0b0000111010010";
        ram[8] = "0b1101111100100";
        ram[9] = "0b1110001111010";
        ram[10] = "0b0001110011110";
        ram[11] = "0b1111001101011";
        ram[12] = "0b0000011001101";
        ram[13] = "0b0001101111010";
        ram[14] = "0b1110000101000";
        ram[15] = "0b0000110010010";
        ram[16] = "0b0000111010001";
        ram[17] = "0b1110110111111";
        ram[18] = "0b0000010001110";
        ram[19] = "0b0000000100110";
        ram[20] = "0b0000100101101";
        ram[21] = "0b0000011000111";
        ram[22] = "0b1111111000110";
        ram[23] = "0b1110111011010";
        ram[24] = "0b0000010110000";
        ram[25] = "0b1111110111111";
        ram[26] = "0b1100111110101";
        ram[27] = "0b0000000011110";
        ram[28] = "0b0100010001100";
        ram[29] = "0b1111101111001";
        ram[30] = "0b0001100101011";
        ram[31] = "0b0000001110100";
        ram[32] = "0b1111101101010";
        ram[33] = "0b1101011100011";
        ram[34] = "0b0010100101111";
        ram[35] = "0b1110100101111";
        ram[36] = "0b0000110001010";
        ram[37] = "0b1111100011110";
        ram[38] = "0b0001001011010";
        ram[39] = "0b0000011010101";
        ram[40] = "0b0001000110100";
        ram[41] = "0b1110010101011";
        ram[42] = "0b0010101011110";
        ram[43] = "0b0000010111110";
        ram[44] = "0b0000101111110";
        ram[45] = "0b0000000001111";
        ram[46] = "0b0001100101101";
        ram[47] = "0b0001000000101";
        ram[48] = "0b1111000000001";
        ram[49] = "0b1110000001001";
        ram[50] = "0b0001011101000";
        ram[51] = "0b0000000110011";


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


SC_MODULE(L2_wlo_218_L1_WEIXh4) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIXh4_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIXh4) {
meminst = new L2_wlo_218_L1_WEIXh4_ram("L2_wlo_218_L1_WEIXh4_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIXh4() {
    delete meminst;
}


};//endmodule
#endif
