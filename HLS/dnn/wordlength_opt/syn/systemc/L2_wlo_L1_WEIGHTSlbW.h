// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSlbW_H__
#define __L2_wlo_L1_WEIGHTSlbW_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSlbW_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 16;
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


   SC_CTOR(L2_wlo_L1_WEIGHTSlbW_ram) {
        ram[0] = "0b0010101001001100";
        ram[1] = "0b1011000000100011";
        ram[2] = "0b0010111011000000";
        ram[3] = "0b1010110010011110";
        ram[4] = "0b1001110011001101";
        ram[5] = "0b0011001101001100";
        ram[6] = "0b0011000001011001";
        ram[7] = "0b1010111101100101";
        ram[8] = "0b1010011010011100";
        ram[9] = "0b1001110010111101";
        ram[10] = "0b0011001000011110";
        ram[11] = "0b0010110111100001";
        ram[12] = "0b1010100101000011";
        ram[13] = "0b0010111111001011";
        ram[14] = "0b1010101101000110";
        ram[15] = "0b1010101011000001";
        ram[16] = "0b1010101000000110";
        ram[17] = "0b1010100001111000";
        ram[18] = "0b0010010011001011";
        ram[19] = "0b0010010100101100";
        ram[20] = "0b0001110011101011";
        ram[21] = "0b1000111100100001";
        ram[22] = "0b0010111010100100";
        ram[23] = "0b0010100011001111";
        ram[24] = "0b0010111000011000";
        ram[25] = "0b0010100110100110";
        ram[26] = "0b0010101001001111";
        ram[27] = "0b0011000101001101";
        ram[28] = "0b0010000011011000";
        ram[29] = "0b1011000111111001";
        ram[30] = "0b1010000011010101";
        ram[31] = "0b1010111100001100";
        ram[32] = "0b1001100011000001";
        ram[33] = "0b1010110000001000";
        ram[34] = "0b0011000001010110";
        ram[35] = "0b0010111001011010";
        ram[36] = "0b0010101010111100";
        ram[37] = "0b1010111000000111";
        ram[38] = "0b1011001101110001";
        ram[39] = "0b0010011010100001";
        ram[40] = "0b1010101011010011";
        ram[41] = "0b0010101110001011";
        ram[42] = "0b1010010111001000";
        ram[43] = "0b0010100011011001";
        ram[44] = "0b1001101001010101";
        ram[45] = "0b0010000100100011";
        ram[46] = "0b0010011000000111";
        ram[47] = "0b1010110000100111";
        ram[48] = "0b1010100100011100";
        ram[49] = "0b0010010101111011";
        ram[50] = "0b0010001100010000";
        ram[51] = "0b1010101111101001";


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


SC_MODULE(L2_wlo_L1_WEIGHTSlbW) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSlbW_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSlbW) {
meminst = new L2_wlo_L1_WEIGHTSlbW_ram("L2_wlo_L1_WEIGHTSlbW_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSlbW() {
    delete meminst;
}


};//endmodule
#endif
