// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTS_3_H__
#define __L2_wlo_L1_WEIGHTS_3_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTS_3_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTS_3_ram) {
        ram[0] = "0b1010110001001101";
        ram[1] = "0b0011010000111100";
        ram[2] = "0b0011001000010001";
        ram[3] = "0b1010000001100101";
        ram[4] = "0b0010110001010010";
        ram[5] = "0b0011000110111110";
        ram[6] = "0b0010010100010110";
        ram[7] = "0b0010011100110101";
        ram[8] = "0b1010100011011011";
        ram[9] = "0b1010110001000010";
        ram[10] = "0b1010101010011101";
        ram[11] = "0b0011001010011000";
        ram[12] = "0b0010101010100101";
        ram[13] = "0b1010101010011011";
        ram[14] = "0b0011000110011000";
        ram[15] = "0b0010111110000011";
        ram[16] = "0b0001101100111101";
        ram[17] = "0b1011000111110110";
        ram[18] = "0b1011000000110001";
        ram[19] = "0b1010000011000001";
        ram[20] = "0b0011000011111100";
        ram[21] = "0b1010111110001111";
        ram[22] = "0b1010100110010011";
        ram[23] = "0b1011000011000110";
        ram[24] = "0b0010101100101111";
        ram[25] = "0b0010101110100011";
        ram[26] = "0b1010101101100001";
        ram[27] = "0b1010000010001111";
        ram[28] = "0b1000100010011111";
        ram[29] = "0b1010111100111000";
        ram[30] = "0b1010111100011101";
        ram[31] = "0b1010111000000100";
        ram[32] = "0b1010110001110101";
        ram[33] = "0b1010011000110110";
        ram[34] = "0b1010101011011100";
        ram[35] = "0b0010101000001011";
        ram[36] = "0b1010110001001011";
        ram[37] = "0b0010011111011100";
        ram[38] = "0b1010110010000110";
        ram[39] = "0b0010110100011111";
        ram[40] = "0b1010100000111011";
        ram[41] = "0b1010100001011011";
        ram[42] = "0b0010110100111110";
        ram[43] = "0b1010111000011011";
        ram[44] = "0b1010101101010001";
        ram[45] = "0b1011000000101111";
        ram[46] = "0b0010000100110100";
        ram[47] = "0b0010011111010001";
        ram[48] = "0b0010110111111110";
        ram[49] = "0b1010110100111011";
        ram[50] = "0b0010110000000010";
        ram[51] = "0b1011000010111001";


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


SC_MODULE(L2_wlo_L1_WEIGHTS_3) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTS_3_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTS_3) {
meminst = new L2_wlo_L1_WEIGHTS_3_ram("L2_wlo_L1_WEIGHTS_3_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTS_3() {
    delete meminst;
}


};//endmodule
#endif
