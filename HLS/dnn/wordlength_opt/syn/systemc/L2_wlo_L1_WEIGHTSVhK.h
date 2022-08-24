// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSVhK_H__
#define __L2_wlo_L1_WEIGHTSVhK_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSVhK_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSVhK_ram) {
        ram[0] = "0b1010111010101100";
        ram[1] = "0b0011000011100110";
        ram[2] = "0b1011000100100101";
        ram[3] = "0b1010110101001000";
        ram[4] = "0b1010111101000001";
        ram[5] = "0b1011000110110010";
        ram[6] = "0b0010110110011110";
        ram[7] = "0b0010101111100100";
        ram[8] = "0b0010110000001000";
        ram[9] = "0b1011001101000011";
        ram[10] = "0b0010110110011000";
        ram[11] = "0b1010010100001001";
        ram[12] = "0b0010111100010001";
        ram[13] = "0b1011001110000001";
        ram[14] = "0b1011000011001110";
        ram[15] = "0b0011001001111110";
        ram[16] = "0b1010111001110001";
        ram[17] = "0b0010111100111100";
        ram[18] = "0b0010100110011101";
        ram[19] = "0b1011000001011111";
        ram[20] = "0b1010111010000110";
        ram[21] = "0b0010110111100000";
        ram[22] = "0b1010100000100011";
        ram[23] = "0b1011000101001100";
        ram[24] = "0b1010011010001011";
        ram[25] = "0b1010011001111101";
        ram[26] = "0b0011010100110011";
        ram[27] = "0b0010110110100010";
        ram[28] = "0b1011001010111110";
        ram[29] = "0b0010110010101111";
        ram[30] = "0b0011000011000111";
        ram[31] = "0b1011000111000001";
        ram[32] = "0b0011000001110000";
        ram[33] = "0b0011000010011110";
        ram[34] = "0b0010101010011110";
        ram[35] = "0b1001110111111010";
        ram[36] = "0b0001011010011100";
        ram[37] = "0b1010101100110101";
        ram[38] = "0b1010001001110110";
        ram[39] = "0b0011010011110111";
        ram[40] = "0b0010100011101100";
        ram[41] = "0b0010111111110111";
        ram[42] = "0b0011010010010111";
        ram[43] = "0b1011001101111001";
        ram[44] = "0b1010100111100110";
        ram[45] = "0b0010111100101111";
        ram[46] = "0b0010000000110000";
        ram[47] = "0b1010110001010101";
        ram[48] = "0b0010000111011010";
        ram[49] = "0b1010100000101011";
        ram[50] = "0b1010101000101011";
        ram[51] = "0b1011001010001011";


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


SC_MODULE(L2_wlo_L1_WEIGHTSVhK) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSVhK_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSVhK) {
meminst = new L2_wlo_L1_WEIGHTSVhK_ram("L2_wlo_L1_WEIGHTSVhK_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSVhK() {
    delete meminst;
}


};//endmodule
#endif
