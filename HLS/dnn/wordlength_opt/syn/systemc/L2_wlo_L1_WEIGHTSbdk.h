// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbdk_H__
#define __L2_wlo_L1_WEIGHTSbdk_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbdk_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbdk_ram) {
        ram[0] = "0b1010110000100010";
        ram[1] = "0b0010110000101010";
        ram[2] = "0b1011000010110110";
        ram[3] = "0b0010110100010010";
        ram[4] = "0b0010110101100000";
        ram[5] = "0b1011010011110010";
        ram[6] = "0b1010110001111110";
        ram[7] = "0b0011000111001101";
        ram[8] = "0b0010000000111010";
        ram[9] = "0b0010110001100100";
        ram[10] = "0b1010111010111100";
        ram[11] = "0b1010011100110010";
        ram[12] = "0b1010110001010011";
        ram[13] = "0b1010111011000100";
        ram[14] = "0b0001111000111000";
        ram[15] = "0b0010110001110001";
        ram[16] = "0b0001101001101101";
        ram[17] = "0b0010110000110011";
        ram[18] = "0b0010100000010100";
        ram[19] = "0b1001110100010000";
        ram[20] = "0b1010110010110100";
        ram[21] = "0b0010100111111001";
        ram[22] = "0b1010111001111110";
        ram[23] = "0b0010000000111100";
        ram[24] = "0b1011000010011000";
        ram[25] = "0b0010101101100101";
        ram[26] = "0b0010100111000111";
        ram[27] = "0b1011010000010111";
        ram[28] = "0b1010110101100111";
        ram[29] = "0b0011000010011101";
        ram[30] = "0b0010100100000010";
        ram[31] = "0b0010110000110011";
        ram[32] = "0b1010011110101101";
        ram[33] = "0b0010101001001010";
        ram[34] = "0b1010101100000111";
        ram[35] = "0b1010110001110101";
        ram[36] = "0b1000111111110110";
        ram[37] = "0b0011000010001000";
        ram[38] = "0b0011000010101101";
        ram[39] = "0b1010101001000000";
        ram[40] = "0b0010110011001001";
        ram[41] = "0b1010110011010100";
        ram[42] = "0b0010111001000011";
        ram[43] = "0b1010111011100010";
        ram[44] = "0b0010100110100001";
        ram[45] = "0b0010011000000000";
        ram[46] = "0b1001111100011000";
        ram[47] = "0b0010000101000001";
        ram[48] = "0b1001110011000000";
        ram[49] = "0b0001111111010100";
        ram[50] = "0b0010011001111001";
        ram[51] = "0b0010101010010001";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbdk) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbdk_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbdk) {
meminst = new L2_wlo_L1_WEIGHTSbdk_ram("L2_wlo_L1_WEIGHTSbdk_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbdk() {
    delete meminst;
}


};//endmodule
#endif
