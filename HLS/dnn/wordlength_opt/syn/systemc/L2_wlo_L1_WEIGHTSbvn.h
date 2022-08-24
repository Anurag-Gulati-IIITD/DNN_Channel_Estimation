// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbvn_H__
#define __L2_wlo_L1_WEIGHTSbvn_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbvn_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbvn_ram) {
        ram[0] = "0b0010100011000000";
        ram[1] = "0b0011000010111110";
        ram[2] = "0b0010111111011001";
        ram[3] = "0b1010111011010110";
        ram[4] = "0b0010110011000101";
        ram[5] = "0b0011000010010100";
        ram[6] = "0b0010010100110001";
        ram[7] = "0b1010100001100101";
        ram[8] = "0b1011000110010010";
        ram[9] = "0b1011000000101010";
        ram[10] = "0b0010001001001111";
        ram[11] = "0b1010001110100111";
        ram[12] = "0b1010101001100101";
        ram[13] = "0b0010100110111001";
        ram[14] = "0b1010100100110001";
        ram[15] = "0b1011001010011000";
        ram[16] = "0b1010011100111110";
        ram[17] = "0b1010110110010111";
        ram[18] = "0b1010011111110011";
        ram[19] = "0b0010010000001001";
        ram[20] = "0b0001110011011110";
        ram[21] = "0b1001101000001111";
        ram[22] = "0b0010010000001101";
        ram[23] = "0b1011000001110101";
        ram[24] = "0b0010101000101111";
        ram[25] = "0b1010100000010011";
        ram[26] = "0b0011000110110011";
        ram[27] = "0b0010100000111100";
        ram[28] = "0b0010110100010010";
        ram[29] = "0b1011000011001011";
        ram[30] = "0b1010001011000110";
        ram[31] = "0b0010110111101110";
        ram[32] = "0b1010100101110001";
        ram[33] = "0b1011000000111011";
        ram[34] = "0b1001111111011010";
        ram[35] = "0b1010100101100111";
        ram[36] = "0b0010001011111011";
        ram[37] = "0b1010110010111001";
        ram[38] = "0b1010011101100010";
        ram[39] = "0b1010110011001010";
        ram[40] = "0b1010111100100110";
        ram[41] = "0b1010101111110111";
        ram[42] = "0b0011000100001000";
        ram[43] = "0b0011010000001101";
        ram[44] = "0b1010101100110101";
        ram[45] = "0b0010010001001011";
        ram[46] = "0b0010111100110011";
        ram[47] = "0b0010110001001100";
        ram[48] = "0b0010110010001101";
        ram[49] = "0b0010001101010011";
        ram[50] = "0b0011000011110111";
        ram[51] = "0b0010000100011100";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbvn) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbvn_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbvn) {
meminst = new L2_wlo_L1_WEIGHTSbvn_ram("L2_wlo_L1_WEIGHTSbvn_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbvn() {
    delete meminst;
}


};//endmodule
#endif
