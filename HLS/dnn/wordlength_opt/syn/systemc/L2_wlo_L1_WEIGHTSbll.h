// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbll_H__
#define __L2_wlo_L1_WEIGHTSbll_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbll_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbll_ram) {
        ram[0] = "0b0010011011101111";
        ram[1] = "0b1010111000001010";
        ram[2] = "0b0010110101100001";
        ram[3] = "0b1010011101110101";
        ram[4] = "0b0011000000100101";
        ram[5] = "0b0011010100101101";
        ram[6] = "0b0010011111010111";
        ram[7] = "0b0001110111111011";
        ram[8] = "0b0011001000011111";
        ram[9] = "0b0010101110011111";
        ram[10] = "0b1011000110101101";
        ram[11] = "0b1001001000000011";
        ram[12] = "0b1010101000110001";
        ram[13] = "0b0010100101111101";
        ram[14] = "0b0010011001111010";
        ram[15] = "0b1010100111010100";
        ram[16] = "0b0010110010001011";
        ram[17] = "0b1010011110110100";
        ram[18] = "0b1001110110101010";
        ram[19] = "0b0001010101010000";
        ram[20] = "0b1010110011000010";
        ram[21] = "0b1001101000110100";
        ram[22] = "0b0000101101101000";
        ram[23] = "0b0010111100011001";
        ram[24] = "0b1010010101100101";
        ram[25] = "0b1010101011001110";
        ram[26] = "0b0010111101000101";
        ram[27] = "0b1010101110001001";
        ram[28] = "0b1010000101001111";
        ram[29] = "0b1011010000011110";
        ram[30] = "0b0010100110011110";
        ram[31] = "0b0010110110100110";
        ram[32] = "0b1010110100110010";
        ram[33] = "0b0010100011011101";
        ram[34] = "0b0010101010100101";
        ram[35] = "0b0010010000111101";
        ram[36] = "0b1010100110001111";
        ram[37] = "0b0011001001001101";
        ram[38] = "0b0011000001000101";
        ram[39] = "0b1010111011111010";
        ram[40] = "0b1010101110010001";
        ram[41] = "0b1010100000001111";
        ram[42] = "0b1010010001110110";
        ram[43] = "0b0010100111101001";
        ram[44] = "0b1010101001010001";
        ram[45] = "0b1010101001110111";
        ram[46] = "0b0010111000100101";
        ram[47] = "0b1010101000111010";
        ram[48] = "0b0010100001100101";
        ram[49] = "0b1011000010001000";
        ram[50] = "0b1010111101100110";
        ram[51] = "0b1010000001101010";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbll) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbll_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbll) {
meminst = new L2_wlo_L1_WEIGHTSbll_ram("L2_wlo_L1_WEIGHTSbll_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbll() {
    delete meminst;
}


};//endmodule
#endif
