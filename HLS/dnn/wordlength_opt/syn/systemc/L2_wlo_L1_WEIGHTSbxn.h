// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbxn_H__
#define __L2_wlo_L1_WEIGHTSbxn_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbxn_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbxn_ram) {
        ram[0] = "0b0010110111000001";
        ram[1] = "0b0010010111101000";
        ram[2] = "0b1010111111110100";
        ram[3] = "0b0010101000000100";
        ram[4] = "0b1011000001111100";
        ram[5] = "0b0010110000111000";
        ram[6] = "0b0010110001110101";
        ram[7] = "0b1010110111110000";
        ram[8] = "0b0011001000010000";
        ram[9] = "0b0010111110111000";
        ram[10] = "0b1011001011101010";
        ram[11] = "0b1010111110101001";
        ram[12] = "0b0010111001011010";
        ram[13] = "0b0010011001001011";
        ram[14] = "0b1010110001011001";
        ram[15] = "0b1010011000100001";
        ram[16] = "0b1010110110011001";
        ram[17] = "0b0010110011100100";
        ram[18] = "0b1010100110000111";
        ram[19] = "0b1010011110010011";
        ram[20] = "0b1010100100011011";
        ram[21] = "0b0010111000100000";
        ram[22] = "0b0010110001100000";
        ram[23] = "0b0010110000010000";
        ram[24] = "0b1010101010111101";
        ram[25] = "0b1010010001000001";
        ram[26] = "0b0010101111011110";
        ram[27] = "0b0010011000110110";
        ram[28] = "0b1010101011100100";
        ram[29] = "0b1010110011110010";
        ram[30] = "0b0011000110010010";
        ram[31] = "0b1011000001111111";
        ram[32] = "0b0011000001000001";
        ram[33] = "0b0010010110010000";
        ram[34] = "0b1010110001100111";
        ram[35] = "0b1010010011000100";
        ram[36] = "0b0010110110000111";
        ram[37] = "0b0010111100110001";
        ram[38] = "0b0010110011000110";
        ram[39] = "0b0010111101100010";
        ram[40] = "0b0010110100000101";
        ram[41] = "0b0011000000111001";
        ram[42] = "0b1010010110011001";
        ram[43] = "0b1010010011011011";
        ram[44] = "0b0010000000111001";
        ram[45] = "0b1010100100010011";
        ram[46] = "0b1001110110000111";
        ram[47] = "0b1010010010101101";
        ram[48] = "0b0010011011000111";
        ram[49] = "0b0011000001111100";
        ram[50] = "0b1010111011001110";
        ram[51] = "0b1010111110101001";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbxn) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbxn_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbxn) {
meminst = new L2_wlo_L1_WEIGHTSbxn_ram("L2_wlo_L1_WEIGHTSbxn_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbxn() {
    delete meminst;
}


};//endmodule
#endif
