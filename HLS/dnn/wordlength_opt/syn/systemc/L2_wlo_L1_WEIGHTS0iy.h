// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTS0iy_H__
#define __L2_wlo_L1_WEIGHTS0iy_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTS0iy_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTS0iy_ram) {
        ram[0] = "0b1010001000110010";
        ram[1] = "0b1010111111010010";
        ram[2] = "0b1010101101110100";
        ram[3] = "0b0010111110000000";
        ram[4] = "0b1010110111011010";
        ram[5] = "0b1010100111111010";
        ram[6] = "0b1010100101001010";
        ram[7] = "0b0010100010011111";
        ram[8] = "0b1011000010110100";
        ram[9] = "0b0010111111011100";
        ram[10] = "0b0010110101001011";
        ram[11] = "0b1011000011101000";
        ram[12] = "0b1010010000100101";
        ram[13] = "0b0011000010001111";
        ram[14] = "0b1010010000110101";
        ram[15] = "0b1011000011110111";
        ram[16] = "0b1010100110011001";
        ram[17] = "0b0010111101000110";
        ram[18] = "0b0010010011111110";
        ram[19] = "0b1010110110110011";
        ram[20] = "0b1010110001101001";
        ram[21] = "0b1010001011001100";
        ram[22] = "0b1010110100010110";
        ram[23] = "0b0011000011110011";
        ram[24] = "0b1010110000111100";
        ram[25] = "0b1010110011011000";
        ram[26] = "0b0010111001011011";
        ram[27] = "0b1011001111101010";
        ram[28] = "0b0000111111010001";
        ram[29] = "0b0010110110111010";
        ram[30] = "0b1010100001110000";
        ram[31] = "0b1010101001001001";
        ram[32] = "0b0010110111000000";
        ram[33] = "0b1001111011111000";
        ram[34] = "0b1010101100111111";
        ram[35] = "0b0010011100100010";
        ram[36] = "0b1010100010011100";
        ram[37] = "0b1010111000101110";
        ram[38] = "0b0011000011010010";
        ram[39] = "0b0001111111111011";
        ram[40] = "0b0010001000010111";
        ram[41] = "0b0010110111111110";
        ram[42] = "0b1010010011111101";
        ram[43] = "0b0011000110111110";
        ram[44] = "0b1010010010110001";
        ram[45] = "0b0010101011011000";
        ram[46] = "0b1010101100101100";
        ram[47] = "0b0010000101001001";
        ram[48] = "0b0001111011111001";
        ram[49] = "0b0010101110010100";
        ram[50] = "0b0011000110001000";
        ram[51] = "0b1010001101100100";


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


SC_MODULE(L2_wlo_L1_WEIGHTS0iy) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTS0iy_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTS0iy) {
meminst = new L2_wlo_L1_WEIGHTS0iy_ram("L2_wlo_L1_WEIGHTS0iy_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTS0iy() {
    delete meminst;
}


};//endmodule
#endif
