// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSUhA_H__
#define __L2_wlo_L1_WEIGHTSUhA_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSUhA_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSUhA_ram) {
        ram[0] = "0b1010000010000000";
        ram[1] = "0b0010111001111001";
        ram[2] = "0b1010100110110000";
        ram[3] = "0b0010101010011011";
        ram[4] = "0b1010100011100000";
        ram[5] = "0b0010101001011001";
        ram[6] = "0b0010110111111000";
        ram[7] = "0b1010100001010000";
        ram[8] = "0b1010101101001001";
        ram[9] = "0b1010110010100001";
        ram[10] = "0b1010110011001100";
        ram[11] = "0b1011010001010000";
        ram[12] = "0b0010110001101101";
        ram[13] = "0b1010001110000111";
        ram[14] = "0b1011001011111111";
        ram[15] = "0b0011000000110100";
        ram[16] = "0b1010110001000101";
        ram[17] = "0b0010101100000110";
        ram[18] = "0b1010011101101100";
        ram[19] = "0b1011000001000000";
        ram[20] = "0b1010100011110111";
        ram[21] = "0b0010100111111000";
        ram[22] = "0b0010011110100101";
        ram[23] = "0b1010011000111101";
        ram[24] = "0b1010001111100111";
        ram[25] = "0b0010100000000111";
        ram[26] = "0b0011001011010101";
        ram[27] = "0b0010101100000000";
        ram[28] = "0b1010111011111010";
        ram[29] = "0b1011000110000001";
        ram[30] = "0b0011001100100110";
        ram[31] = "0b1010110101010101";
        ram[32] = "0b1010110001101001";
        ram[33] = "0b0011000011011110";
        ram[34] = "0b0010011000010101";
        ram[35] = "0b0010110100110101";
        ram[36] = "0b0010100011101100";
        ram[37] = "0b0010001001000001";
        ram[38] = "0b1010101100001000";
        ram[39] = "0b0010110100010011";
        ram[40] = "0b1010010101101011";
        ram[41] = "0b0010100101100010";
        ram[42] = "0b0010100110000110";
        ram[43] = "0b1011000110111100";
        ram[44] = "0b1010110100000011";
        ram[45] = "0b1010110000000001";
        ram[46] = "0b0010101111000000";
        ram[47] = "0b0010101100001001";
        ram[48] = "0b1001111110011110";
        ram[49] = "0b1011000101110001";
        ram[50] = "0b0010100110001011";
        ram[51] = "0b1010111000010100";


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


SC_MODULE(L2_wlo_L1_WEIGHTSUhA) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSUhA_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSUhA) {
meminst = new L2_wlo_L1_WEIGHTSUhA_ram("L2_wlo_L1_WEIGHTSUhA_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSUhA() {
    delete meminst;
}


};//endmodule
#endif
