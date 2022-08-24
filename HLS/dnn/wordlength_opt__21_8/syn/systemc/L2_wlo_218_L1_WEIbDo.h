// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbDo_H__
#define __L2_wlo_218_L1_WEIbDo_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbDo_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIbDo_ram) {
        ram[0] = "0b1111111110000";
        ram[1] = "0b1110111110101";
        ram[2] = "0b1111111000101";
        ram[3] = "0b0000010011000";
        ram[4] = "0b0001001001101";
        ram[5] = "0b1110011101000";
        ram[6] = "0b1111111110101";
        ram[7] = "0b1111111101010";
        ram[8] = "0b1111111101101";
        ram[9] = "0b1110000111011";
        ram[10] = "0b0011000010011";
        ram[11] = "0b1101110111111";
        ram[12] = "0b1111011010010";
        ram[13] = "0b1110001000011";
        ram[14] = "0b0100001010010";
        ram[15] = "0b0001110010000";
        ram[16] = "0b1111101101001";
        ram[17] = "0b1110001111010";
        ram[18] = "0b1110111001101";
        ram[19] = "0b0000110101110";
        ram[20] = "0b0000010110001";
        ram[21] = "0b0000100010100";
        ram[22] = "0b1110100100010";
        ram[23] = "0b0010101101101";
        ram[24] = "0b0000000001010";
        ram[25] = "0b0000001011100";
        ram[26] = "0b1111001110100";
        ram[27] = "0b0001010100101";
        ram[28] = "0b1110110011001";
        ram[29] = "0b1111100111011";
        ram[30] = "0b1101010101111";
        ram[31] = "0b0001100100001";
        ram[32] = "0b1110101110110";
        ram[33] = "0b0000000000100";
        ram[34] = "0b0010001111010";
        ram[35] = "0b0011001011110";
        ram[36] = "0b0000001110000";
        ram[37] = "0b1110000101001";
        ram[38] = "0b0000010111100";
        ram[39] = "0b1110101001100";
        ram[40] = "0b1111100100000";
        ram[41] = "0b0000001010111";
        ram[42] = "0b0001011110000";
        ram[43] = "0b1110011110000";
        ram[44] = "0b1111010110011";
        ram[45] = "0b0000100011010";
        ram[46] = "0b0000001011110";
        ram[47] = "0b0000101001000";
        ram[48] = "0b1111101101110";
        ram[49] = "0b1101111100011";
        ram[50] = "0b0001111101111";
        ram[51] = "0b0010011011010";


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


SC_MODULE(L2_wlo_218_L1_WEIbDo) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbDo_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbDo) {
meminst = new L2_wlo_218_L1_WEIbDo_ram("L2_wlo_218_L1_WEIbDo_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbDo() {
    delete meminst;
}


};//endmodule
#endif
