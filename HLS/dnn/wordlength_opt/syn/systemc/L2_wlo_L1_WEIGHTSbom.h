// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbom_H__
#define __L2_wlo_L1_WEIGHTSbom_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbom_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbom_ram) {
        ram[0] = "0b1010100101100110";
        ram[1] = "0b0010111100101111";
        ram[2] = "0b1010110101001001";
        ram[3] = "0b1010110010100010";
        ram[4] = "0b0010110011100110";
        ram[5] = "0b1011010101100010";
        ram[6] = "0b1010101011111100";
        ram[7] = "0b1010000101100100";
        ram[8] = "0b1010111100001110";
        ram[9] = "0b1010110011001110";
        ram[10] = "0b0011000100001011";
        ram[11] = "0b0010100011100001";
        ram[12] = "0b0010111001101001";
        ram[13] = "0b1010110000110001";
        ram[14] = "0b1010100010111110";
        ram[15] = "0b1010110111011101";
        ram[16] = "0b0010101110011111";
        ram[17] = "0b0010001011000101";
        ram[18] = "0b0010011101111101";
        ram[19] = "0b1010001100010011";
        ram[20] = "0b0010011100010100";
        ram[21] = "0b0010011100001110";
        ram[22] = "0b1000111101101100";
        ram[23] = "0b1011000000101111";
        ram[24] = "0b1010111000011011";
        ram[25] = "0b1010010010000000";
        ram[26] = "0b1010110001100010";
        ram[27] = "0b0011000011100010";
        ram[28] = "0b0010111001100001";
        ram[29] = "0b0011010010001100";
        ram[30] = "0b0001100100101010";
        ram[31] = "0b1010010011001000";
        ram[32] = "0b0010000000100010";
        ram[33] = "0b1010010010101000";
        ram[34] = "0b0001100110110101";
        ram[35] = "0b1011001101001111";
        ram[36] = "0b1010011101110100";
        ram[37] = "0b1010110111101001";
        ram[38] = "0b1010110010011101";
        ram[39] = "0b0010000000111110";
        ram[40] = "0b0010101001111010";
        ram[41] = "0b1010111011010000";
        ram[42] = "0b0010110011110000";
        ram[43] = "0b0011000010011000";
        ram[44] = "0b0010111000101101";
        ram[45] = "0b1010011101011001";
        ram[46] = "0b0010111111010010";
        ram[47] = "0b1001110101011101";
        ram[48] = "0b1001100010000100";
        ram[49] = "0b0010110110100000";
        ram[50] = "0b0011000001011001";
        ram[51] = "0b1010110001100011";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbom) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbom_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbom) {
meminst = new L2_wlo_L1_WEIGHTSbom_ram("L2_wlo_L1_WEIGHTSbom_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbom() {
    delete meminst;
}


};//endmodule
#endif
