// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSNgs_H__
#define __L2_wlo_L1_WEIGHTSNgs_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSNgs_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSNgs_ram) {
        ram[0] = "0b0010011100101111";
        ram[1] = "0b0010111010111001";
        ram[2] = "0b0010100001001101";
        ram[3] = "0b0010010101101001";
        ram[4] = "0b0010110110100111";
        ram[5] = "0b1010100100000010";
        ram[6] = "0b1010100110100000";
        ram[7] = "0b0010101101001011";
        ram[8] = "0b1011000000011100";
        ram[9] = "0b1010111100001100";
        ram[10] = "0b0010111100111101";
        ram[11] = "0b1010101001010011";
        ram[12] = "0b0010011001110000";
        ram[13] = "0b0010111011110101";
        ram[14] = "0b1010111110110000";
        ram[15] = "0b0010101001001100";
        ram[16] = "0b0010101101000110";
        ram[17] = "0b1010110010000001";
        ram[18] = "0b0010010001110010";
        ram[19] = "0b0001110011000010";
        ram[20] = "0b0010100010110110";
        ram[21] = "0b0010011000111111";
        ram[22] = "0b1001111100101101";
        ram[23] = "0b1010110001001011";
        ram[24] = "0b0010010110000011";
        ram[25] = "0b1010000000001000";
        ram[26] = "0b1011001000001011";
        ram[27] = "0b0001101110110111";
        ram[28] = "0b0011010001000110";
        ram[29] = "0b1010010000110001";
        ram[30] = "0b0010111001010110";
        ram[31] = "0b0010001101000101";
        ram[32] = "0b1010010010101010";
        ram[33] = "0b1011000100011100";
        ram[34] = "0b0011000100101111";
        ram[35] = "0b1010110110100001";
        ram[36] = "0b0010101000101001";
        ram[37] = "0b1010011100001110";
        ram[38] = "0b0010110010110100";
        ram[39] = "0b0010011010101101";
        ram[40] = "0b0010110001101001";
        ram[41] = "0b1010111010101001";
        ram[42] = "0b0011000101011111";
        ram[43] = "0b0010010111110011";
        ram[44] = "0b0010100111111010";
        ram[45] = "0b0001011111000110";
        ram[46] = "0b0010111001011010";
        ram[47] = "0b0010110000001010";
        ram[48] = "0b1010101111111011";
        ram[49] = "0b1010111111101110";
        ram[50] = "0b0010110111010010";
        ram[51] = "0b0001111001100010";


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


SC_MODULE(L2_wlo_L1_WEIGHTSNgs) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSNgs_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSNgs) {
meminst = new L2_wlo_L1_WEIGHTSNgs_ram("L2_wlo_L1_WEIGHTSNgs_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSNgs() {
    delete meminst;
}


};//endmodule
#endif
