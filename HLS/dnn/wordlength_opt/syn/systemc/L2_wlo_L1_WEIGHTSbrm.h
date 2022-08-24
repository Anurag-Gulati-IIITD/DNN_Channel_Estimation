// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbrm_H__
#define __L2_wlo_L1_WEIGHTSbrm_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbrm_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbrm_ram) {
        ram[0] = "0b0010011000110000";
        ram[1] = "0b1010110000101011";
        ram[2] = "0b1001111000001000";
        ram[3] = "0b0010110101100111";
        ram[4] = "0b1010111011110110";
        ram[5] = "0b1010010100110011";
        ram[6] = "0b0010011011110000";
        ram[7] = "0b0010100011010100";
        ram[8] = "0b0011001000011101";
        ram[9] = "0b0010000110001111";
        ram[10] = "0b1010010010000010";
        ram[11] = "0b1010011001000101";
        ram[12] = "0b0010111101011001";
        ram[13] = "0b0010110111100100";
        ram[14] = "0b1010011000000110";
        ram[15] = "0b0011000010111010";
        ram[16] = "0b1010001001110100";
        ram[17] = "0b1010000111001001";
        ram[18] = "0b1010111110010011";
        ram[19] = "0b0010111000010101";
        ram[20] = "0b0010110111000010";
        ram[21] = "0b1010100010001101";
        ram[22] = "0b1010110010110111";
        ram[23] = "0b0010101101110010";
        ram[24] = "0b0001110101001110";
        ram[25] = "0b0010101010100010";
        ram[26] = "0b1011000101111010";
        ram[27] = "0b1010111111111001";
        ram[28] = "0b0010101000101000";
        ram[29] = "0b1010011101011000";
        ram[30] = "0b0010100000011001";
        ram[31] = "0b1010100110011001";
        ram[32] = "0b1010001011011110";
        ram[33] = "0b0010101011100101";
        ram[34] = "0b0010110101110010";
        ram[35] = "0b0011001111101101";
        ram[36] = "0b1010101101100001";
        ram[37] = "0b1010001101111100";
        ram[38] = "0b0011000010100001";
        ram[39] = "0b1010000000010011";
        ram[40] = "0b0010011011001111";
        ram[41] = "0b0010110001000000";
        ram[42] = "0b1010010011010100";
        ram[43] = "0b1011000111111110";
        ram[44] = "0b0010000111011101";
        ram[45] = "0b1010011000010001";
        ram[46] = "0b1001110100110110";
        ram[47] = "0b1010000111100011";
        ram[48] = "0b1010101111111001";
        ram[49] = "0b1011000001110000";
        ram[50] = "0b1011001111101100";
        ram[51] = "0b1010110100001011";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbrm) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbrm_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbrm) {
meminst = new L2_wlo_L1_WEIGHTSbrm_ram("L2_wlo_L1_WEIGHTSbrm_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbrm() {
    delete meminst;
}


};//endmodule
#endif
