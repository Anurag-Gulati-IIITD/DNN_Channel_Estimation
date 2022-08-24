// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSIfE_H__
#define __L2_wlo_L1_WEIGHTSIfE_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSIfE_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSIfE_ram) {
        ram[0] = "0b1010100001101000";
        ram[1] = "0b0011000111000100";
        ram[2] = "0b0010000111110110";
        ram[3] = "0b1010010110001001";
        ram[4] = "0b1010111001100000";
        ram[5] = "0b0010100111001010";
        ram[6] = "0b0010010001101010";
        ram[7] = "0b1010011010110000";
        ram[8] = "0b0010110001011000";
        ram[9] = "0b1010100000011110";
        ram[10] = "0b1010110100001101";
        ram[11] = "0b1010111010111001";
        ram[12] = "0b0010100001110000";
        ram[13] = "0b0010101111001100";
        ram[14] = "0b1011000001111100";
        ram[15] = "0b1011000001101101";
        ram[16] = "0b1010101001011000";
        ram[17] = "0b1010011000011101";
        ram[18] = "0b1010100000101111";
        ram[19] = "0b1010110000111110";
        ram[20] = "0b1010111010000001";
        ram[21] = "0b1010110001100010";
        ram[22] = "0b0010111111111110";
        ram[23] = "0b1011000001010001";
        ram[24] = "0b0010010111011011";
        ram[25] = "0b1010101101010111";
        ram[26] = "0b0010111110011011";
        ram[27] = "0b1010010110000110";
        ram[28] = "0b1010110001000001";
        ram[29] = "0b1010110101000101";
        ram[30] = "0b0010111001011011";
        ram[31] = "0b1010010011001000";
        ram[32] = "0b0001111000101001";
        ram[33] = "0b0010110011010110";
        ram[34] = "0b1010111001100110";
        ram[35] = "0b0010110111100001";
        ram[36] = "0b1001110101011010";
        ram[37] = "0b0011000111011101";
        ram[38] = "0b1010010101111111";
        ram[39] = "0b0011000010001101";
        ram[40] = "0b1010010101101000";
        ram[41] = "0b1010000100010001";
        ram[42] = "0b1010100001100101";
        ram[43] = "0b0011000110111010";
        ram[44] = "0b1010001000010001";
        ram[45] = "0b1010110111011101";
        ram[46] = "0b1010010111101101";
        ram[47] = "0b1010100011100000";
        ram[48] = "0b1010110000100000";
        ram[49] = "0b0010111010011001";
        ram[50] = "0b1010111100111001";
        ram[51] = "0b1010010000010110";


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


SC_MODULE(L2_wlo_L1_WEIGHTSIfE) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSIfE_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSIfE) {
meminst = new L2_wlo_L1_WEIGHTSIfE_ram("L2_wlo_L1_WEIGHTSIfE_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSIfE() {
    delete meminst;
}


};//endmodule
#endif
