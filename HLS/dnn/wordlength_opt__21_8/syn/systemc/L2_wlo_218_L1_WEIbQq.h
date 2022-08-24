// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbQq_H__
#define __L2_wlo_218_L1_WEIbQq_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbQq_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIbQq_ram) {
        ram[0] = "0b1110101101000";
        ram[1] = "0b1101111110011";
        ram[2] = "0b0001000000010";
        ram[3] = "0b1111111101000";
        ram[4] = "0b0001100010100";
        ram[5] = "0b1111101111011";
        ram[6] = "0b1111110110100";
        ram[7] = "0b0000100100010";
        ram[8] = "0b1111111101010";
        ram[9] = "0b0100011110010";
        ram[10] = "0b1111111000011";
        ram[11] = "0b0000111010010";
        ram[12] = "0b1110111100111";
        ram[13] = "0b0010000111100";
        ram[14] = "0b0011000011100";
        ram[15] = "0b1110110110100";
        ram[16] = "0b1111010001111";
        ram[17] = "0b1110011101101";
        ram[18] = "0b0000010110100";
        ram[19] = "0b0000010010000";
        ram[20] = "0b0000111010110";
        ram[21] = "0b0000000011101";
        ram[22] = "0b1110100111100";
        ram[23] = "0b0010101111101";
        ram[24] = "0b0000101001011";
        ram[25] = "0b0000000010100";
        ram[26] = "0b0001001100000";
        ram[27] = "0b0001000110011";
        ram[28] = "0b0000101101010";
        ram[29] = "0b1110011101011";
        ram[30] = "0b1101001111011";
        ram[31] = "0b1111111110011";
        ram[32] = "0b1110101110100";
        ram[33] = "0b1111110110101";
        ram[34] = "0b1110011010011";
        ram[35] = "0b1110000110001";
        ram[36] = "0b0000011001001";
        ram[37] = "0b0001100000110";
        ram[38] = "0b1111100001101";
        ram[39] = "0b0000100010101";
        ram[40] = "0b1110101111011";
        ram[41] = "0b1110010100010";
        ram[42] = "0b1101000100010";
        ram[43] = "0b0010001101101";
        ram[44] = "0b1111101100001";
        ram[45] = "0b1110011110110";
        ram[46] = "0b1111001110001";
        ram[47] = "0b0000001000000";
        ram[48] = "0b0001110001000";
        ram[49] = "0b0000100011001";
        ram[50] = "0b0000001100000";
        ram[51] = "0b1111111100101";


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


SC_MODULE(L2_wlo_218_L1_WEIbQq) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbQq_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbQq) {
meminst = new L2_wlo_218_L1_WEIbQq_ram("L2_wlo_218_L1_WEIbQq_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbQq() {
    delete meminst;
}


};//endmodule
#endif
