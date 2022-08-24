// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTS6jw_H__
#define __L2_wlo_L1_WEIGHTS6jw_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTS6jw_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTS6jw_ram) {
        ram[0] = "0b0010110010110000";
        ram[1] = "0b1010011101000101";
        ram[2] = "0b0010011111010101";
        ram[3] = "0b0011000011011001";
        ram[4] = "0b1010110100010010";
        ram[5] = "0b1011000010001001";
        ram[6] = "0b1010111000000110";
        ram[7] = "0b0010001111110011";
        ram[8] = "0b1011000100101100";
        ram[9] = "0b1010110110111001";
        ram[10] = "0b1011000011110011";
        ram[11] = "0b1011001100001101";
        ram[12] = "0b0010100101010111";
        ram[13] = "0b1010010111101001";
        ram[14] = "0b0010101000011001";
        ram[15] = "0b0010011111010000";
        ram[16] = "0b1001011000110110";
        ram[17] = "0b1010011110101111";
        ram[18] = "0b1001100111110101";
        ram[19] = "0b1010000010101100";
        ram[20] = "0b1010110011010110";
        ram[21] = "0b0010011111001011";
        ram[22] = "0b1010111110110101";
        ram[23] = "0b0001111110001100";
        ram[24] = "0b1010101011101001";
        ram[25] = "0b0010110001011100";
        ram[26] = "0b1010110011001101";
        ram[27] = "0b1011000100010101";
        ram[28] = "0b1010110001010000";
        ram[29] = "0b0010111011111001";
        ram[30] = "0b1010110000001011";
        ram[31] = "0b1010111011011010";
        ram[32] = "0b1010110001011101";
        ram[33] = "0b1010101010111111";
        ram[34] = "0b1010100011001111";
        ram[35] = "0b0011001000111100";
        ram[36] = "0b1001101001001010";
        ram[37] = "0b0010110110010101";
        ram[38] = "0b0010111000110001";
        ram[39] = "0b0010011011001000";
        ram[40] = "0b0010110000110100";
        ram[41] = "0b0010011110010011";
        ram[42] = "0b0010111010011010";
        ram[43] = "0b0010011001011100";
        ram[44] = "0b0010111100111111";
        ram[45] = "0b1010111000001011";
        ram[46] = "0b1010111110010011";
        ram[47] = "0b0010110100101101";
        ram[48] = "0b1010101000110000";
        ram[49] = "0b0010110111010111";
        ram[50] = "0b0010111110001000";
        ram[51] = "0b1010110101100101";


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


SC_MODULE(L2_wlo_L1_WEIGHTS6jw) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTS6jw_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTS6jw) {
meminst = new L2_wlo_L1_WEIGHTS6jw_ram("L2_wlo_L1_WEIGHTS6jw_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTS6jw() {
    delete meminst;
}


};//endmodule
#endif
