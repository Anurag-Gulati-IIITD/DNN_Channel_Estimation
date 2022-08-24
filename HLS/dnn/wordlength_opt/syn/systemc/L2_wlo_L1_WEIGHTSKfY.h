// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSKfY_H__
#define __L2_wlo_L1_WEIGHTSKfY_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSKfY_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSKfY_ram) {
        ram[0] = "0b0001010000110001";
        ram[1] = "0b1011000010101111";
        ram[2] = "0b1010111111000101";
        ram[3] = "0b1001111000010001";
        ram[4] = "0b1010101100100000";
        ram[5] = "0b1011000001101101";
        ram[6] = "0b1010010010101010";
        ram[7] = "0b0010101011110011";
        ram[8] = "0b0010110100010001";
        ram[9] = "0b0011000110001110";
        ram[10] = "0b1010110001001010";
        ram[11] = "0b0010010011011011";
        ram[12] = "0b0010110000100111";
        ram[13] = "0b1010111011101010";
        ram[14] = "0b0011000010100111";
        ram[15] = "0b0010110111010010";
        ram[16] = "0b1010111111110011";
        ram[17] = "0b0010110110001110";
        ram[18] = "0b0010110100110010";
        ram[19] = "0b1010110010101100";
        ram[20] = "0b1010011010100011";
        ram[21] = "0b1010010001111010";
        ram[22] = "0b1010100101001101";
        ram[23] = "0b0010111001001000";
        ram[24] = "0b1010001111001001";
        ram[25] = "0b1010100111010011";
        ram[26] = "0b0011001011011110";
        ram[27] = "0b0010100000010011";
        ram[28] = "0b1010111001000100";
        ram[29] = "0b0011000011100100";
        ram[30] = "0b1011001000101100";
        ram[31] = "0b0001001100100101";
        ram[32] = "0b0010100110100110";
        ram[33] = "0b0011000101000101";
        ram[34] = "0b1010111001110101";
        ram[35] = "0b1010111111101100";
        ram[36] = "0b0010110011010001";
        ram[37] = "0b0010111101110010";
        ram[38] = "0b1010110000011100";
        ram[39] = "0b0010110110001011";
        ram[40] = "0b0010100100110101";
        ram[41] = "0b0010111011110110";
        ram[42] = "0b1011000011110010";
        ram[43] = "0b1010111110000111";
        ram[44] = "0b1010011010111110";
        ram[45] = "0b0010000111101000";
        ram[46] = "0b1010010100000010";
        ram[47] = "0b0010000011100010";
        ram[48] = "0b0010100101000110";
        ram[49] = "0b0011000000110101";
        ram[50] = "0b1011000000101100";
        ram[51] = "0b1010110010001101";


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


SC_MODULE(L2_wlo_L1_WEIGHTSKfY) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSKfY_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSKfY) {
meminst = new L2_wlo_L1_WEIGHTSKfY_ram("L2_wlo_L1_WEIGHTSKfY_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSKfY() {
    delete meminst;
}


};//endmodule
#endif
