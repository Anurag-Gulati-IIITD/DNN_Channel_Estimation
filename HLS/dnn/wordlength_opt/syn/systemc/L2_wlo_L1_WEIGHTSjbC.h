// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSjbC_H__
#define __L2_wlo_L1_WEIGHTSjbC_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSjbC_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSjbC_ram) {
        ram[0] = "0b1010101011111001";
        ram[1] = "0b1010111110001001";
        ram[2] = "0b0010000011011101";
        ram[3] = "0b1010110110010111";
        ram[4] = "0b0011000101111100";
        ram[5] = "0b1011000011101010";
        ram[6] = "0b0001110100000101";
        ram[7] = "0b0011000010000000";
        ram[8] = "0b0011000100001111";
        ram[9] = "0b1010111001000110";
        ram[10] = "0b0010101001001001";
        ram[11] = "0b0010011100010100";
        ram[12] = "0b0010111101101001";
        ram[13] = "0b1010101100001110";
        ram[14] = "0b0010111011001011";
        ram[15] = "0b1010110000110101";
        ram[16] = "0b0010010010110001";
        ram[17] = "0b0010111001001001";
        ram[18] = "0b1010110100101010";
        ram[19] = "0b0010101110111101";
        ram[20] = "0b0010110100100110";
        ram[21] = "0b1010000001100001";
        ram[22] = "0b1011000110100010";
        ram[23] = "0b0010111111101011";
        ram[24] = "0b1010011100011100";
        ram[25] = "0b1010011100000101";
        ram[26] = "0b1011000011111111";
        ram[27] = "0b1010110110000011";
        ram[28] = "0b0010010001101101";
        ram[29] = "0b0010110110001011";
        ram[30] = "0b0010100000010111";
        ram[31] = "0b1010010010010101";
        ram[32] = "0b1011000011000101";
        ram[33] = "0b0001110000010100";
        ram[34] = "0b0010101000011100";
        ram[35] = "0b0010101111010101";
        ram[36] = "0b0010000001101100";
        ram[37] = "0b0010001100001011";
        ram[38] = "0b1010001110001001";
        ram[39] = "0b0010110100100000";
        ram[40] = "0b1001111001011110";
        ram[41] = "0b1010110010111001";
        ram[42] = "0b0011000000011001";
        ram[43] = "0b0010101001000110";
        ram[44] = "0b1010110100000111";
        ram[45] = "0b1010111000110111";
        ram[46] = "0b0010111110011100";
        ram[47] = "0b1010101110010111";
        ram[48] = "0b0010101001101010";
        ram[49] = "0b1010101111110000";
        ram[50] = "0b1011000001001101";
        ram[51] = "0b1010111111110010";


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


SC_MODULE(L2_wlo_L1_WEIGHTSjbC) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSjbC_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSjbC) {
meminst = new L2_wlo_L1_WEIGHTSjbC_ram("L2_wlo_L1_WEIGHTSjbC_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSjbC() {
    delete meminst;
}


};//endmodule
#endif
