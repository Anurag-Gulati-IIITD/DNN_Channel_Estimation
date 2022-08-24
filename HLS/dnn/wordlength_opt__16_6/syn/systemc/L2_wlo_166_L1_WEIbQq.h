// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_166_L1_WEIbQq_H__
#define __L2_wlo_166_L1_WEIbQq_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_166_L1_WEIbQq_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 10;
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


   SC_CTOR(L2_wlo_166_L1_WEIbQq_ram) {
        ram[0] = "0b1110101101";
        ram[1] = "0b1101111110";
        ram[2] = "0b0001000000";
        ram[3] = "0b1111111101";
        ram[4] = "0b0001100010";
        ram[5] = "0b1111101111";
        ram[6] = "0b1111110110";
        ram[7] = "0b0000100100";
        ram[8] = "0b1111111101";
        ram[9] = "0b0100011110";
        ram[10] = "0b1111111000";
        ram[11] = "0b0000111010";
        ram[12] = "0b1110111100";
        ram[13] = "0b0010000111";
        ram[14] = "0b0011000011";
        ram[15] = "0b1110110110";
        ram[16] = "0b1111010001";
        ram[17] = "0b1110011101";
        ram[18] = "0b0000010110";
        ram[19] = "0b0000010010";
        ram[20] = "0b0000111010";
        ram[21] = "0b0000000011";
        ram[22] = "0b1110100111";
        ram[23] = "0b0010101111";
        ram[24] = "0b0000101001";
        ram[25] = "0b0000000010";
        ram[26] = "0b0001001100";
        ram[27] = "0b0001000110";
        ram[28] = "0b0000101101";
        ram[29] = "0b1110011101";
        ram[30] = "0b1101001111";
        ram[31] = "0b1111111110";
        ram[32] = "0b1110101110";
        ram[33] = "0b1111110110";
        ram[34] = "0b1110011010";
        ram[35] = "0b1110000110";
        ram[36] = "0b0000011001";
        ram[37] = "0b0001100000";
        ram[38] = "0b1111100001";
        ram[39] = "0b0000100010";
        ram[40] = "0b1110101111";
        ram[41] = "0b1110010100";
        ram[42] = "0b1101000100";
        ram[43] = "0b0010001101";
        ram[44] = "0b1111101100";
        ram[45] = "0b1110011110";
        ram[46] = "0b1111001110";
        ram[47] = "0b0000001000";
        ram[48] = "0b0001110001";
        ram[49] = "0b0000100011";
        ram[50] = "0b0000001100";
        ram[51] = "0b1111111100";


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


SC_MODULE(L2_wlo_166_L1_WEIbQq) {


static const unsigned DataWidth = 10;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_166_L1_WEIbQq_ram* meminst;


SC_CTOR(L2_wlo_166_L1_WEIbQq) {
meminst = new L2_wlo_166_L1_WEIbQq_ram("L2_wlo_166_L1_WEIbQq_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_166_L1_WEIbQq() {
    delete meminst;
}


};//endmodule
#endif
