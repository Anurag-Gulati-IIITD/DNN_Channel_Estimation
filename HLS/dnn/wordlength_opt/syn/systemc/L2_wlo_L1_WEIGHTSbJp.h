// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbJp_H__
#define __L2_wlo_L1_WEIGHTSbJp_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbJp_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbJp_ram) {
        ram[0] = "0b0010101111000100";
        ram[1] = "0b0010010100000001";
        ram[2] = "0b1010111010010000";
        ram[3] = "0b0010001000100000";
        ram[4] = "0b1010111010110101";
        ram[5] = "0b1010010100100100";
        ram[6] = "0b0010011100101010";
        ram[7] = "0b1010100110101101";
        ram[8] = "0b1010111001100010";
        ram[9] = "0b1011001000100110";
        ram[10] = "0b0010011111010000";
        ram[11] = "0b1011000101111000";
        ram[12] = "0b0010110111000111";
        ram[13] = "0b1011000101000101";
        ram[14] = "0b1010111110000011";
        ram[15] = "0b0011010000100000";
        ram[16] = "0b1010110110011000";
        ram[17] = "0b0011000010010111";
        ram[18] = "0b0010101111101111";
        ram[19] = "0b1010111110100110";
        ram[20] = "0b1011000111101011";
        ram[21] = "0b0010101000110110";
        ram[22] = "0b0010101000000010";
        ram[23] = "0b1011000000000000";
        ram[24] = "0b1011000110100001";
        ram[25] = "0b1010100011011001";
        ram[26] = "0b0011000000001111";
        ram[27] = "0b0010011110100010";
        ram[28] = "0b1001100101011010";
        ram[29] = "0b0010111000110010";
        ram[30] = "0b0010111010010110";
        ram[31] = "0b1011000011111010";
        ram[32] = "0b0011000010011001";
        ram[33] = "0b0010111010111010";
        ram[34] = "0b0010111011101001";
        ram[35] = "0b1011000001101011";
        ram[36] = "0b1010000100010011";
        ram[37] = "0b0001111110010010";
        ram[38] = "0b1010110001000001";
        ram[39] = "0b0011001111011100";
        ram[40] = "0b0010101010100111";
        ram[41] = "0b0010111110000101";
        ram[42] = "0b0011001101111011";
        ram[43] = "0b1011001001001001";
        ram[44] = "0b0010010011101101";
        ram[45] = "0b1001101111000001";
        ram[46] = "0b0010010110010101";
        ram[47] = "0b0001011001100000";
        ram[48] = "0b1010010000100101";
        ram[49] = "0b1010101001011001";
        ram[50] = "0b0010100111010011";
        ram[51] = "0b1011000010000000";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbJp) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbJp_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbJp) {
meminst = new L2_wlo_L1_WEIGHTSbJp_ram("L2_wlo_L1_WEIGHTSbJp_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbJp() {
    delete meminst;
}


};//endmodule
#endif
