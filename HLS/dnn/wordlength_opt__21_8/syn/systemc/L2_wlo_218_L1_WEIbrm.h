// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbrm_H__
#define __L2_wlo_218_L1_WEIbrm_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbrm_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIbrm_ram) {
        ram[0] = "0b0000001001111";
        ram[1] = "0b0001101101011";
        ram[2] = "0b1111011010101";
        ram[3] = "0b0000101100010";
        ram[4] = "0b1110000001101";
        ram[5] = "0b1111111110100";
        ram[6] = "0b1110101010100";
        ram[7] = "0b1111110110110";
        ram[8] = "0b1101001101011";
        ram[9] = "0b0000010010011";
        ram[10] = "0b0001100011110";
        ram[11] = "0b1111111110110";
        ram[12] = "0b0001001110101";
        ram[13] = "0b0000000101111";
        ram[14] = "0b0001010101100";
        ram[15] = "0b0000110010001";
        ram[16] = "0b1111000011010";
        ram[17] = "0b1111111010100";
        ram[18] = "0b1111000110101";
        ram[19] = "0b0001000110110";
        ram[20] = "0b0000001111000";
        ram[21] = "0b1111110110000";
        ram[22] = "0b0010001010011";
        ram[23] = "0b1111011101000";
        ram[24] = "0b0000010101110";
        ram[25] = "0b1111100101111";
        ram[26] = "0b1101100011000";
        ram[27] = "0b0100000000111";
        ram[28] = "0b0000011011011";
        ram[29] = "0b0000100001100";
        ram[30] = "0b0001000110000";
        ram[31] = "0b1110111001011";
        ram[32] = "0b0000001111010";
        ram[33] = "0b0000001111000";
        ram[34] = "0b1101110101001";
        ram[35] = "0b0001110101001";
        ram[36] = "0b1111001100011";
        ram[37] = "0b1100011001001";
        ram[38] = "0b1110000101100";
        ram[39] = "0b1111100000011";
        ram[40] = "0b0000001101101";
        ram[41] = "0b0001000011011";
        ram[42] = "0b0000111011011";
        ram[43] = "0b1110011110110";
        ram[44] = "0b0001110110000";
        ram[45] = "0b0000100111110";
        ram[46] = "0b1111000111001";
        ram[47] = "0b1111110110001";
        ram[48] = "0b1110100011001";
        ram[49] = "0b0010010011011";
        ram[50] = "0b0001101011010";
        ram[51] = "0b1101100111100";


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


SC_MODULE(L2_wlo_218_L1_WEIbrm) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbrm_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbrm) {
meminst = new L2_wlo_218_L1_WEIbrm_ram("L2_wlo_218_L1_WEIbrm_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbrm() {
    delete meminst;
}


};//endmodule
#endif
