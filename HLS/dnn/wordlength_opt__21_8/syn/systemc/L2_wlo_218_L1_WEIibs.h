// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIibs_H__
#define __L2_wlo_218_L1_WEIibs_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIibs_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIibs_ram) {
        ram[0] = "0b1110111111010";
        ram[1] = "0b0011100001100";
        ram[2] = "0b1111000000110";
        ram[3] = "0b1111000000100";
        ram[4] = "0b0010101111000";
        ram[5] = "0b1110101001101";
        ram[6] = "0b1111000111101";
        ram[7] = "0b1111100011100";
        ram[8] = "0b0000111011011";
        ram[9] = "0b1110000011011";
        ram[10] = "0b1111101110000";
        ram[11] = "0b0001100111001";
        ram[12] = "0b1111111101110";
        ram[13] = "0b1101010001100";
        ram[14] = "0b1110111010010";
        ram[15] = "0b0010011110011";
        ram[16] = "0b1111010111110";
        ram[17] = "0b1111110100111";
        ram[18] = "0b1111110010010";
        ram[19] = "0b0000100101000";
        ram[20] = "0b0001001000110";
        ram[21] = "0b1111010010101";
        ram[22] = "0b1111000010001";
        ram[23] = "0b1011100111000";
        ram[24] = "0b0001101000100";
        ram[25] = "0b1111101001000";
        ram[26] = "0b1110011110100";
        ram[27] = "0b0101011001101";
        ram[28] = "0b1111100111100";
        ram[29] = "0b0001000111110";
        ram[30] = "0b0001110011100";
        ram[31] = "0b1111001111110";
        ram[32] = "0b1110101101100";
        ram[33] = "0b0000000110000";
        ram[34] = "0b0001001100000";
        ram[35] = "0b0011010101101";
        ram[36] = "0b0001001110010";
        ram[37] = "0b0000100100101";
        ram[38] = "0b1011111101101";
        ram[39] = "0b1111001110111";
        ram[40] = "0b0000011101110";
        ram[41] = "0b1110110110101";
        ram[42] = "0b0001000100001";
        ram[43] = "0b1100011100000";
        ram[44] = "0b1111010011001";
        ram[45] = "0b1111001110101";
        ram[46] = "0b0000011010001";
        ram[47] = "0b1111001000011";
        ram[48] = "0b0001000110101";
        ram[49] = "0b0000000011111";
        ram[50] = "0b1110000011010";
        ram[51] = "0b1111101011001";


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


SC_MODULE(L2_wlo_218_L1_WEIibs) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIibs_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIibs) {
meminst = new L2_wlo_218_L1_WEIibs_ram("L2_wlo_218_L1_WEIibs_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIibs() {
    delete meminst;
}


};//endmodule
#endif
