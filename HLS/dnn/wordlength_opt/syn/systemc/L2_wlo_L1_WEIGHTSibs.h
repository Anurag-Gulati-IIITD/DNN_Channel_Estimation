// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSibs_H__
#define __L2_wlo_L1_WEIGHTSibs_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSibs_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSibs_ram) {
        ram[0] = "0b1010011011001111";
        ram[1] = "0b1010100100000001";
        ram[2] = "0b1011000000111101";
        ram[3] = "0b0011000001000101";
        ram[4] = "0b0010100000010101";
        ram[5] = "0b1011001100010001";
        ram[6] = "0b0010011110110001";
        ram[7] = "0b0011000101010011";
        ram[8] = "0b1010100000010010";
        ram[9] = "0b1010110100001001";
        ram[10] = "0b1011000001000011";
        ram[11] = "0b1010111100000110";
        ram[12] = "0b1001001111110000";
        ram[13] = "0b1010100101101011";
        ram[14] = "0b0010111010000100";
        ram[15] = "0b1010010011101011";
        ram[16] = "0b0001110011111011";
        ram[17] = "0b0010111011111110";
        ram[18] = "0b0010010001000010";
        ram[19] = "0b1001101010011111";
        ram[20] = "0b0010110010010011";
        ram[21] = "0b0010011110010111";
        ram[22] = "0b1010110110101101";
        ram[23] = "0b1010101011101001";
        ram[24] = "0b0010110011011000";
        ram[25] = "0b1010110110001001";
        ram[26] = "0b1010111110110110";
        ram[27] = "0b1010100010110001";
        ram[28] = "0b0010000101111101";
        ram[29] = "0b0011000011010001";
        ram[30] = "0b1010100000110111";
        ram[31] = "0b1010100000001010";
        ram[32] = "0b1010110001011000";
        ram[33] = "0b1010101011011011";
        ram[34] = "0b0010100011110100";
        ram[35] = "0b0011000000000111";
        ram[36] = "0b1010111000100011";
        ram[37] = "0b0001111111011011";
        ram[38] = "0b0010111111111001";
        ram[39] = "0b0010100110011000";
        ram[40] = "0b1010010000100000";
        ram[41] = "0b1010101111010011";
        ram[42] = "0b0010100100011010";
        ram[43] = "0b0001101011101001";
        ram[44] = "0b0010010110001110";
        ram[45] = "0b1010111001000101";
        ram[46] = "0b1010000110100001";
        ram[47] = "0b1010010010100110";
        ram[48] = "0b1001100111010000";
        ram[49] = "0b1010001101101111";
        ram[50] = "0b0010011111101100";
        ram[51] = "0b1010101101101100";


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


SC_MODULE(L2_wlo_L1_WEIGHTSibs) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSibs_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSibs) {
meminst = new L2_wlo_L1_WEIGHTSibs_ram("L2_wlo_L1_WEIGHTSibs_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSibs() {
    delete meminst;
}


};//endmodule
#endif
