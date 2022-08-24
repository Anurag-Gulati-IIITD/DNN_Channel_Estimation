// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTS3i2_H__
#define __L2_wlo_L1_WEIGHTS3i2_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTS3i2_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTS3i2_ram) {
        ram[0] = "0b1010110001110100";
        ram[1] = "0b0010010000011000";
        ram[2] = "0b1001110010110110";
        ram[3] = "0b1010100011111010";
        ram[4] = "0b1010010010011000";
        ram[5] = "0b0010111001101010";
        ram[6] = "0b0010011101101111";
        ram[7] = "0b1010111010100011";
        ram[8] = "0b0010011101100101";
        ram[9] = "0b0010100110110111";
        ram[10] = "0b0010001111010011";
        ram[11] = "0b0010110011011110";
        ram[12] = "0b1010110011001011";
        ram[13] = "0b0010110011111101";
        ram[14] = "0b1010111011101111";
        ram[15] = "0b1010011010000001";
        ram[16] = "0b0010110001001110";
        ram[17] = "0b0010010011010111";
        ram[18] = "0b1010100100010000";
        ram[19] = "0b0010101001100001";
        ram[20] = "0b1010100101100111";
        ram[21] = "0b1010110001000110";
        ram[22] = "0b0011000001001011";
        ram[23] = "0b1010100100011101";
        ram[24] = "0b1010100110011101";
        ram[25] = "0b1010001111011010";
        ram[26] = "0b0010010010111100";
        ram[27] = "0b0010110001101111";
        ram[28] = "0b0010111000001110";
        ram[29] = "0b1010101110011010";
        ram[30] = "0b0011000010110111";
        ram[31] = "0b0010111100001000";
        ram[32] = "0b1010110001001000";
        ram[33] = "0b1010110101101101";
        ram[34] = "0b0010100100010111";
        ram[35] = "0b1010111101001100";
        ram[36] = "0b1010110111101111";
        ram[37] = "0b0001111100111011";
        ram[38] = "0b1011000111100110";
        ram[39] = "0b1010100011010111";
        ram[40] = "0b0010101001000010";
        ram[41] = "0b1010111000111000";
        ram[42] = "0b1010101010010000";
        ram[43] = "0b1010101011001100";
        ram[44] = "0b1010110010001011";
        ram[45] = "0b0010100111101101";
        ram[46] = "0b0001010011101110";
        ram[47] = "0b1010011011111010";
        ram[48] = "0b1010101110111011";
        ram[49] = "0b1010110101011011";
        ram[50] = "0b1010011011000111";
        ram[51] = "0b0010111000111001";


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


SC_MODULE(L2_wlo_L1_WEIGHTS3i2) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTS3i2_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTS3i2) {
meminst = new L2_wlo_L1_WEIGHTS3i2_ram("L2_wlo_L1_WEIGHTS3i2_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTS3i2() {
    delete meminst;
}


};//endmodule
#endif
