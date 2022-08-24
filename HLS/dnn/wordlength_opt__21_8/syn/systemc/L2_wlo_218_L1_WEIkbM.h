// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIkbM_H__
#define __L2_wlo_218_L1_WEIkbM_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIkbM_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIkbM_ram) {
        ram[0] = "0b1111101101111";
        ram[1] = "0b0001111010011";
        ram[2] = "0b0010111101111";
        ram[3] = "0b1111100011110";
        ram[4] = "0b1110111010101";
        ram[5] = "0b0100111010110";
        ram[6] = "0b0001001011101";
        ram[7] = "0b1111001011011";
        ram[8] = "0b1110101000010";
        ram[9] = "0b0000000010100";
        ram[10] = "0b1111001000101";
        ram[11] = "0b0010001010010";
        ram[12] = "0b0001110010100";
        ram[13] = "0b0000001100110";
        ram[14] = "0b0010000110010";
        ram[15] = "0b1110111001110";
        ram[16] = "0b0000011001001";
        ram[17] = "0b1100101010001";
        ram[18] = "0b1111111101011";
        ram[19] = "0b0001011010010";
        ram[20] = "0b1111100110010";
        ram[21] = "0b1101011001100";
        ram[22] = "0b0000101001001";
        ram[23] = "0b1110110000000";
        ram[24] = "0b0000001010000";
        ram[25] = "0b0000100011000";
        ram[26] = "0b0010100001001";
        ram[27] = "0b1110111000110";
        ram[28] = "0b1110100011010";
        ram[29] = "0b1100010110011";
        ram[30] = "0b1100101100110";
        ram[31] = "0b1110101110101";
        ram[32] = "0b0000110011001";
        ram[33] = "0b0000011001111";
        ram[34] = "0b0001000010111";
        ram[35] = "0b0010000010101";
        ram[36] = "0b0000100010000";
        ram[37] = "0b0010100001000";
        ram[38] = "0b0001011100010";
        ram[39] = "0b0000011100010";
        ram[40] = "0b1110101001110";
        ram[41] = "0b0000011101001";
        ram[42] = "0b0000101011000";
        ram[43] = "0b0000011110010";
        ram[44] = "0b1110101010001";
        ram[45] = "0b1110000101010";
        ram[46] = "0b0000000010011";
        ram[47] = "0b0000000101111";
        ram[48] = "0b0001001011001";
        ram[49] = "0b0000100010100";
        ram[50] = "0b0010101000010";
        ram[51] = "0b1101100101101";


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


SC_MODULE(L2_wlo_218_L1_WEIkbM) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIkbM_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIkbM) {
meminst = new L2_wlo_218_L1_WEIkbM_ram("L2_wlo_218_L1_WEIkbM_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIkbM() {
    delete meminst;
}


};//endmodule
#endif
