// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSmb6_H__
#define __L2_wlo_L1_WEIGHTSmb6_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSmb6_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSmb6_ram) {
        ram[0] = "0b0010010111101101";
        ram[1] = "0b0010001111111100";
        ram[2] = "0b0010111110000000";
        ram[3] = "0b0010100100110000";
        ram[4] = "0b1011000101101110";
        ram[5] = "0b0011000110001010";
        ram[6] = "0b1010101100110000";
        ram[7] = "0b1011000100011010";
        ram[8] = "0b1010110011000101";
        ram[9] = "0b0011000001010110";
        ram[10] = "0b0010110100011000";
        ram[11] = "0b1010100110011010";
        ram[12] = "0b1010101101010010";
        ram[13] = "0b0010100001111100";
        ram[14] = "0b0010100001110001";
        ram[15] = "0b1010000101001010";
        ram[16] = "0b1010010100101100";
        ram[17] = "0b1010110010001011";
        ram[18] = "0b0010100010010111";
        ram[19] = "0b0010001000101110";
        ram[20] = "0b1010100011100001";
        ram[21] = "0b1010101011000000";
        ram[22] = "0b0011000010110010";
        ram[23] = "0b0010000011111011";
        ram[24] = "0b0010100101000111";
        ram[25] = "0b1010011000100010";
        ram[26] = "0b0010111010001111";
        ram[27] = "0b0011001000001001";
        ram[28] = "0b1010000011000001";
        ram[29] = "0b1011001101110111";
        ram[30] = "0b0010111001011101";
        ram[31] = "0b0010010100100101";
        ram[32] = "0b0010101110110101";
        ram[33] = "0b1010100111010001";
        ram[34] = "0b1010101100101000";
        ram[35] = "0b0010000110101110";
        ram[36] = "0b0010101110001011";
        ram[37] = "0b1011000011001111";
        ram[38] = "0b1011000111000111";
        ram[39] = "0b0010110000101110";
        ram[40] = "0b1010100111000101";
        ram[41] = "0b0011000000010000";
        ram[42] = "0b1010111000001110";
        ram[43] = "0b1010110100111001";
        ram[44] = "0b1010100001001011";
        ram[45] = "0b1010100100110001";
        ram[46] = "0b1010101100110110";
        ram[47] = "0b1010010111010101";
        ram[48] = "0b1000111010000101";
        ram[49] = "0b1010001101110110";
        ram[50] = "0b0010110110101000";
        ram[51] = "0b1010010111010001";


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


SC_MODULE(L2_wlo_L1_WEIGHTSmb6) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSmb6_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSmb6) {
meminst = new L2_wlo_L1_WEIGHTSmb6_ram("L2_wlo_L1_WEIGHTSmb6_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSmb6() {
    delete meminst;
}


};//endmodule
#endif
