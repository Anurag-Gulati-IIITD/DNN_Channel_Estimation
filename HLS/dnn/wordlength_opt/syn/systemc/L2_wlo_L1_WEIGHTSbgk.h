// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbgk_H__
#define __L2_wlo_L1_WEIGHTSbgk_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbgk_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbgk_ram) {
        ram[0] = "0b0010101100101001";
        ram[1] = "0b1011000011011110";
        ram[2] = "0b1010100110010101";
        ram[3] = "0b0010110100000001";
        ram[4] = "0b1010111011110100";
        ram[5] = "0b0011001100000100";
        ram[6] = "0b1010101001100011";
        ram[7] = "0b1011000110001110";
        ram[8] = "0b1010100110011000";
        ram[9] = "0b1010110011111010";
        ram[10] = "0b0010110000101000";
        ram[11] = "0b0010111000010111";
        ram[12] = "0b0011000000010010";
        ram[13] = "0b0010111000100010";
        ram[14] = "0b1010101001001011";
        ram[15] = "0b0010011111001011";
        ram[16] = "0b1010101010101101";
        ram[17] = "0b1010011001100000";
        ram[18] = "0b1001111100001000";
        ram[19] = "0b0010001100011011";
        ram[20] = "0b0010110000111110";
        ram[21] = "0b1010011011100010";
        ram[22] = "0b0011001101111011";
        ram[23] = "0b0011000101010001";
        ram[24] = "0b1010100110100110";
        ram[25] = "0b1010110000101100";
        ram[26] = "0b1011001000010101";
        ram[27] = "0b0011000000100111";
        ram[28] = "0b0010101010110010";
        ram[29] = "0b1011000000000101";
        ram[30] = "0b0010100110110001";
        ram[31] = "0b1010101001001001";
        ram[32] = "0b0010111011011000";
        ram[33] = "0b1010111011010110";
        ram[34] = "0b1010101011111000";
        ram[35] = "0b0010100000111001";
        ram[36] = "0b1010100011001000";
        ram[37] = "0b0010011011110101";
        ram[38] = "0b1010111010011101";
        ram[39] = "0b0010111000100011";
        ram[40] = "0b0010110000101011";
        ram[41] = "0b0010110110101000";
        ram[42] = "0b1001100000110011";
        ram[43] = "0b1010100000100110";
        ram[44] = "0b0001110100000100";
        ram[45] = "0b1010010110010111";
        ram[46] = "0b1010110100010111";
        ram[47] = "0b1000101101001111";
        ram[48] = "0b0010110001111111";
        ram[49] = "0b0011000010100110";
        ram[50] = "0b0010100000100111";
        ram[51] = "0b1010110110101101";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbgk) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbgk_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbgk) {
meminst = new L2_wlo_L1_WEIGHTSbgk_ram("L2_wlo_L1_WEIGHTSbgk_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbgk() {
    delete meminst;
}


};//endmodule
#endif
