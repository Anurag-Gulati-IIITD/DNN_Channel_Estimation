// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSsc4_H__
#define __L2_wlo_L1_WEIGHTSsc4_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSsc4_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSsc4_ram) {
        ram[0] = "0b1010100000111100";
        ram[1] = "0b1011000111000000";
        ram[2] = "0b1010100001000010";
        ram[3] = "0b0011000010111111";
        ram[4] = "0b1010110001001000";
        ram[5] = "0b0010110111101101";
        ram[6] = "0b1010110011101100";
        ram[7] = "0b1011000011100001";
        ram[8] = "0b1010101011000110";
        ram[9] = "0b1010110110110100";
        ram[10] = "0b1010110010000001";
        ram[11] = "0b0001111000000110";
        ram[12] = "0b0010010001010010";
        ram[13] = "0b0011000010111001";
        ram[14] = "0b0010111100111111";
        ram[15] = "0b0010010100110010";
        ram[16] = "0b0010101100001000";
        ram[17] = "0b0010101010010100";
        ram[18] = "0b1010110001001000";
        ram[19] = "0b1010100010010111";
        ram[20] = "0b1010101010100110";
        ram[21] = "0b0010111000100111";
        ram[22] = "0b0011000100001011";
        ram[23] = "0b0011001101001110";
        ram[24] = "0b1010101010101100";
        ram[25] = "0b0010110101010111";
        ram[26] = "0b1011000110111101";
        ram[27] = "0b0011000011011001";
        ram[28] = "0b0010111000001010";
        ram[29] = "0b1011000110000010";
        ram[30] = "0b1010101111010001";
        ram[31] = "0b0010100110100011";
        ram[32] = "0b0010111000011010";
        ram[33] = "0b0010001001001010";
        ram[34] = "0b1010110100111010";
        ram[35] = "0b0010011011101101";
        ram[36] = "0b0010011010111101";
        ram[37] = "0b1010100011000001";
        ram[38] = "0b1011000101101010";
        ram[39] = "0b0010110010000101";
        ram[40] = "0b0010110001011111";
        ram[41] = "0b0010111011101010";
        ram[42] = "0b0010110001101000";
        ram[43] = "0b1011000001010000";
        ram[44] = "0b0010101011011010";
        ram[45] = "0b1001110101111001";
        ram[46] = "0b1011000011011000";
        ram[47] = "0b1010000111101010";
        ram[48] = "0b1010100000011001";
        ram[49] = "0b1010000101011001";
        ram[50] = "0b1010010000011110";
        ram[51] = "0b1010010110100001";


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


SC_MODULE(L2_wlo_L1_WEIGHTSsc4) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSsc4_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSsc4) {
meminst = new L2_wlo_L1_WEIGHTSsc4_ram("L2_wlo_L1_WEIGHTSsc4_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSsc4() {
    delete meminst;
}


};//endmodule
#endif
