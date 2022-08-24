// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTS4jc_H__
#define __L2_wlo_L1_WEIGHTS4jc_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTS4jc_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTS4jc_ram) {
        ram[0] = "0b0001110110100110";
        ram[1] = "0b0011001001100101";
        ram[2] = "0b0010110101110111";
        ram[3] = "0b1010110001110100";
        ram[4] = "0b0010110011110000";
        ram[5] = "0b0011000110110110";
        ram[6] = "0b1010100001001000";
        ram[7] = "0b1010101001110001";
        ram[8] = "0b1010110100001001";
        ram[9] = "0b0001110100000001";
        ram[10] = "0b1010101110101101";
        ram[11] = "0b0010111111101001";
        ram[12] = "0b1010000100110111";
        ram[13] = "0b0011000000010111";
        ram[14] = "0b0001100011010001";
        ram[15] = "0b0010110001011111";
        ram[16] = "0b0010100111001000";
        ram[17] = "0b1010100111111111";
        ram[18] = "0b0010100111010110";
        ram[19] = "0b0010100111110100";
        ram[20] = "0b1001100111100100";
        ram[21] = "0b1010011100011000";
        ram[22] = "0b0010010100011001";
        ram[23] = "0b1011000111011111";
        ram[24] = "0b1010010011101001";
        ram[25] = "0b0010010001011110";
        ram[26] = "0b1011000010101000";
        ram[27] = "0b0010010111110000";
        ram[28] = "0b0010110101111100";
        ram[29] = "0b1010110011101110";
        ram[30] = "0b1010100000111010";
        ram[31] = "0b0010100001101010";
        ram[32] = "0b0010011010100000";
        ram[33] = "0b1010111100010010";
        ram[34] = "0b0010101011111000";
        ram[35] = "0b1010110010010100";
        ram[36] = "0b1010110010110000";
        ram[37] = "0b0011000100011000";
        ram[38] = "0b1010100110010111";
        ram[39] = "0b1010111100111001";
        ram[40] = "0b0001110110101010";
        ram[41] = "0b1010110010111011";
        ram[42] = "0b1010101111101010";
        ram[43] = "0b1010110111111110";
        ram[44] = "0b0010010111100101";
        ram[45] = "0b1010100000001110";
        ram[46] = "0b0010100001000010";
        ram[47] = "0b1010011000011111";
        ram[48] = "0b0010000100111100";
        ram[49] = "0b0010110101001000";
        ram[50] = "0b0010111101011000";
        ram[51] = "0b0010111000000111";


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


SC_MODULE(L2_wlo_L1_WEIGHTS4jc) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTS4jc_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTS4jc) {
meminst = new L2_wlo_L1_WEIGHTS4jc_ram("L2_wlo_L1_WEIGHTS4jc_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTS4jc() {
    delete meminst;
}


};//endmodule
#endif
