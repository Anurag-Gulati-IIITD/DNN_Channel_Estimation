// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTS2iS_H__
#define __L2_wlo_L1_WEIGHTS2iS_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTS2iS_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTS2iS_ram) {
        ram[0] = "0b1010111001100101";
        ram[1] = "0b1010110101010000";
        ram[2] = "0b1010111010000101";
        ram[3] = "0b1011000011100110";
        ram[4] = "0b0010100110110001";
        ram[5] = "0b1010111011111101";
        ram[6] = "0b0010100010011111";
        ram[7] = "0b0010100011100001";
        ram[8] = "0b0011000001010111";
        ram[9] = "0b1010110101010110";
        ram[10] = "0b0010110111110001";
        ram[11] = "0b0010100110001000";
        ram[12] = "0b1010111001011111";
        ram[13] = "0b1010110110011001";
        ram[14] = "0b1010111001000000";
        ram[15] = "0b1010110011010001";
        ram[16] = "0b0010110001011111";
        ram[17] = "0b0011000101010001";
        ram[18] = "0b0010110100101001";
        ram[19] = "0b1010100000100000";
        ram[20] = "0b1010110001101100";
        ram[21] = "0b0010101101000111";
        ram[22] = "0b1010101101100100";
        ram[23] = "0b0010110010100111";
        ram[24] = "0b1010110001100010";
        ram[25] = "0b1010110011000001";
        ram[26] = "0b0010011111111000";
        ram[27] = "0b0010110110001010";
        ram[28] = "0b0010001100000110";
        ram[29] = "0b0011001000111110";
        ram[30] = "0b0010110011000000";
        ram[31] = "0b0010110101000011";
        ram[32] = "0b1010111111011100";
        ram[33] = "0b1010101001011001";
        ram[34] = "0b1010010100000010";
        ram[35] = "0b1011000001001110";
        ram[36] = "0b0010100000101101";
        ram[37] = "0b1011000010011100";
        ram[38] = "0b1011000111010010";
        ram[39] = "0b1010111100110101";
        ram[40] = "0b0010100101001010";
        ram[41] = "0b1011000101001111";
        ram[42] = "0b0010100000110000";
        ram[43] = "0b0010110101000100";
        ram[44] = "0b1001110011001101";
        ram[45] = "0b1010100001110100";
        ram[46] = "0b0011000010111110";
        ram[47] = "0b0010011010011011";
        ram[48] = "0b1010010100111111";
        ram[49] = "0b1010110000010010";
        ram[50] = "0b1011000011101100";
        ram[51] = "0b0010101011101000";


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


SC_MODULE(L2_wlo_L1_WEIGHTS2iS) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTS2iS_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTS2iS) {
meminst = new L2_wlo_L1_WEIGHTS2iS_ram("L2_wlo_L1_WEIGHTS2iS_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTS2iS() {
    delete meminst;
}


};//endmodule
#endif
