// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSBew_H__
#define __L2_wlo_L1_WEIGHTSBew_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSBew_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSBew_ram) {
        ram[0] = "0b0001100101000100";
        ram[1] = "0b0011001100011010";
        ram[2] = "0b1010011001101111";
        ram[3] = "0b1010100100001010";
        ram[4] = "0b0001101111111100";
        ram[5] = "0b1010110100001000";
        ram[6] = "0b1001101111000110";
        ram[7] = "0b0010110000000101";
        ram[8] = "0b0010111011010000";
        ram[9] = "0b0010101101111001";
        ram[10] = "0b1011000010110111";
        ram[11] = "0b0010110000010110";
        ram[12] = "0b0011000100110101";
        ram[13] = "0b1010001110101000";
        ram[14] = "0b1011010101000101";
        ram[15] = "0b1011000001110101";
        ram[16] = "0b0011000011111001";
        ram[17] = "0b0010000101110011";
        ram[18] = "0b0010110011001010";
        ram[19] = "0b1010000011100100";
        ram[20] = "0b1010011010101100";
        ram[21] = "0b1010010000110100";
        ram[22] = "0b1010111001011101";
        ram[23] = "0b1010110001000010";
        ram[24] = "0b1010011000010011";
        ram[25] = "0b0010010111000011";
        ram[26] = "0b1011001000111110";
        ram[27] = "0b1010111010111110";
        ram[28] = "0b0010101100111100";
        ram[29] = "0b0010110000100110";
        ram[30] = "0b0011010011011110";
        ram[31] = "0b1010110101111111";
        ram[32] = "0b0010101101000001";
        ram[33] = "0b1010110100001111";
        ram[34] = "0b1010110011110111";
        ram[35] = "0b1010111101010001";
        ram[36] = "0b1010011010001100";
        ram[37] = "0b0010110011110100";
        ram[38] = "0b0010000011010110";
        ram[39] = "0b0010101110100100";
        ram[40] = "0b1010011000100000";
        ram[41] = "0b0001010110101111";
        ram[42] = "0b1010010101110110";
        ram[43] = "0b0011000011010010";
        ram[44] = "0b0010110110110001";
        ram[45] = "0b1001010101101101";
        ram[46] = "0b0001111101100100";
        ram[47] = "0b1010001110110110";
        ram[48] = "0b1010010001101111";
        ram[49] = "0b0010100101010011";
        ram[50] = "0b1010101000111000";
        ram[51] = "0b1010111100001000";


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


SC_MODULE(L2_wlo_L1_WEIGHTSBew) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSBew_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSBew) {
meminst = new L2_wlo_L1_WEIGHTSBew_ram("L2_wlo_L1_WEIGHTSBew_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSBew() {
    delete meminst;
}


};//endmodule
#endif
