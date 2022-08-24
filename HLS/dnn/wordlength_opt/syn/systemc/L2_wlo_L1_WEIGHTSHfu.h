// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSHfu_H__
#define __L2_wlo_L1_WEIGHTSHfu_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSHfu_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSHfu_ram) {
        ram[0] = "0b1010110001101001";
        ram[1] = "0b0010101011101100";
        ram[2] = "0b0010010101011001";
        ram[3] = "0b1010100011011000";
        ram[4] = "0b0010111110101011";
        ram[5] = "0b0011001000010110";
        ram[6] = "0b0010010000000101";
        ram[7] = "0b1010011101011100";
        ram[8] = "0b1010111110000100";
        ram[9] = "0b1010110011100011";
        ram[10] = "0b1010000111100011";
        ram[11] = "0b0010010111001010";
        ram[12] = "0b0001110110000111";
        ram[13] = "0b0010111101110110";
        ram[14] = "0b1010110101111111";
        ram[15] = "0b1011010000001110";
        ram[16] = "0b0010110110011101";
        ram[17] = "0b1010111100001101";
        ram[18] = "0b0010000001111101";
        ram[19] = "0b0001100111101011";
        ram[20] = "0b0010111000010111";
        ram[21] = "0b1010111110010000";
        ram[22] = "0b0010100000111001";
        ram[23] = "0b1011000010111011";
        ram[24] = "0b0011000010100110";
        ram[25] = "0b0010101010110101";
        ram[26] = "0b0010110011111111";
        ram[27] = "0b1010011001001101";
        ram[28] = "0b0010101000100011";
        ram[29] = "0b1011001100010010";
        ram[30] = "0b0010110000100100";
        ram[31] = "0b0010011010010010";
        ram[32] = "0b1000111001001111";
        ram[33] = "0b1010010010011101";
        ram[34] = "0b1010100101000011";
        ram[35] = "0b0010100101110000";
        ram[36] = "0b0010100010000001";
        ram[37] = "0b0010111001100111";
        ram[38] = "0b0010100101101001";
        ram[39] = "0b1010001111010011";
        ram[40] = "0b1010111100001001";
        ram[41] = "0b1000111110011110";
        ram[42] = "0b0010111111000011";
        ram[43] = "0b0011010001011111";
        ram[44] = "0b1010110011001111";
        ram[45] = "0b0010001111100101";
        ram[46] = "0b0010101100001011";
        ram[47] = "0b0010011101111101";
        ram[48] = "0b0010100111100101";
        ram[49] = "0b1001101010101010";
        ram[50] = "0b0010111100010001";
        ram[51] = "0b0010011111010110";


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


SC_MODULE(L2_wlo_L1_WEIGHTSHfu) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSHfu_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSHfu) {
meminst = new L2_wlo_L1_WEIGHTSHfu_ram("L2_wlo_L1_WEIGHTSHfu_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSHfu() {
    delete meminst;
}


};//endmodule
#endif
