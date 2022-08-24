// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbnm_H__
#define __L2_wlo_L1_WEIGHTSbnm_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbnm_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbnm_ram) {
        ram[0] = "0b0010011110010100";
        ram[1] = "0b1010111000111011";
        ram[2] = "0b1011000001101110";
        ram[3] = "0b1010001101010110";
        ram[4] = "0b0010010001001011";
        ram[5] = "0b1011001011001100";
        ram[6] = "0b1010111110000011";
        ram[7] = "0b1010110000000001";
        ram[8] = "0b1011000111011000";
        ram[9] = "0b1010111011100110";
        ram[10] = "0b0010100100101010";
        ram[11] = "0b1010111000101011";
        ram[12] = "0b1010110010011111";
        ram[13] = "0b1011000111111000";
        ram[14] = "0b0010100001110001";
        ram[15] = "0b0010010001100010";
        ram[16] = "0b0010101000010000";
        ram[17] = "0b0010110111000010";
        ram[18] = "0b1010000111111100";
        ram[19] = "0b1010110011011010";
        ram[20] = "0b1010110000000001";
        ram[21] = "0b0010101101100011";
        ram[22] = "0b0010101110011010";
        ram[23] = "0b0001111011100101";
        ram[24] = "0b1010111000110111";
        ram[25] = "0b0010010110100111";
        ram[26] = "0b0001001011000000";
        ram[27] = "0b0011001001001000";
        ram[28] = "0b1010100101111000";
        ram[29] = "0b0011001010011101";
        ram[30] = "0b1010110001101000";
        ram[31] = "0b0010000000111100";
        ram[32] = "0b1010100011001110";
        ram[33] = "0b0010100111010011";
        ram[34] = "0b1010110100101111";
        ram[35] = "0b1010111001101000";
        ram[36] = "0b1010100001011010";
        ram[37] = "0b0010010111111101";
        ram[38] = "0b1011001110000111";
        ram[39] = "0b0010101101010110";
        ram[40] = "0b0010111100000111";
        ram[41] = "0b0010101100111110";
        ram[42] = "0b0011000110001011";
        ram[43] = "0b0010010001111111";
        ram[44] = "0b1010100001000111";
        ram[45] = "0b0010110000110011";
        ram[46] = "0b0010110000111100";
        ram[47] = "0b0010111111110010";
        ram[48] = "0b1010100011000100";
        ram[49] = "0b0011000001100110";
        ram[50] = "0b0011000110010111";
        ram[51] = "0b1010110010110101";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbnm) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbnm_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbnm) {
meminst = new L2_wlo_L1_WEIGHTSbnm_ram("L2_wlo_L1_WEIGHTSbnm_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbnm() {
    delete meminst;
}


};//endmodule
#endif
