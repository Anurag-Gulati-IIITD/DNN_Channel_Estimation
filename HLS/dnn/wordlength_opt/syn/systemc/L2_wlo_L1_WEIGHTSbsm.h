// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbsm_H__
#define __L2_wlo_L1_WEIGHTSbsm_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbsm_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbsm_ram) {
        ram[0] = "0b0010100010101110";
        ram[1] = "0b1010111100011111";
        ram[2] = "0b0010101000001011";
        ram[3] = "0b0011001000101101";
        ram[4] = "0b1010110011110010";
        ram[5] = "0b0010101101000001";
        ram[6] = "0b0010101011011001";
        ram[7] = "0b0010010101110011";
        ram[8] = "0b0010101000000010";
        ram[9] = "0b0010100100010101";
        ram[10] = "0b0001111001000101";
        ram[11] = "0b0010100000101001";
        ram[12] = "0b1010000100011010";
        ram[13] = "0b1010000111000111";
        ram[14] = "0b0010101100100100";
        ram[15] = "0b0011010000111000";
        ram[16] = "0b1010111001000110";
        ram[17] = "0b1010101101000001";
        ram[18] = "0b1010110100010110";
        ram[19] = "0b1010110010001101";
        ram[20] = "0b1010101001001111";
        ram[21] = "0b0010010011001101";
        ram[22] = "0b0001111001100010";
        ram[23] = "0b0010110001010111";
        ram[24] = "0b0010111011000110";
        ram[25] = "0b0010011011111001";
        ram[26] = "0b1010010010001100";
        ram[27] = "0b0001011001101010";
        ram[28] = "0b1010011011101001";
        ram[29] = "0b1010010111001000";
        ram[30] = "0b1010101111001010";
        ram[31] = "0b0010010011100110";
        ram[32] = "0b0010110101110011";
        ram[33] = "0b0010100101100111";
        ram[34] = "0b0010101010110001";
        ram[35] = "0b0010110000001101";
        ram[36] = "0b0010110111001011";
        ram[37] = "0b1010100110011000";
        ram[38] = "0b1010010001100100";
        ram[39] = "0b1010110010111001";
        ram[40] = "0b1010100000111101";
        ram[41] = "0b0010111001001100";
        ram[42] = "0b1001011001000101";
        ram[43] = "0b1011001101101011";
        ram[44] = "0b0010011000000110";
        ram[45] = "0b1010010101111110";
        ram[46] = "0b1010111010101001";
        ram[47] = "0b1010001001111001";
        ram[48] = "0b0010101011010011";
        ram[49] = "0b0001111100001111";
        ram[50] = "0b1010110000010111";
        ram[51] = "0b1010010110001101";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbsm) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbsm_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbsm) {
meminst = new L2_wlo_L1_WEIGHTSbsm_ram("L2_wlo_L1_WEIGHTSbsm_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbsm() {
    delete meminst;
}


};//endmodule
#endif