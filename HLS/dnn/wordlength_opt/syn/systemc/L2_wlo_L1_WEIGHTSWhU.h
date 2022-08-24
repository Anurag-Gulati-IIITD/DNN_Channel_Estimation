// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSWhU_H__
#define __L2_wlo_L1_WEIGHTSWhU_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSWhU_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSWhU_ram) {
        ram[0] = "0b0010100111111100";
        ram[1] = "0b0011000100001001";
        ram[2] = "0b0010110001110000";
        ram[3] = "0b1010111011100001";
        ram[4] = "0b0011000011010100";
        ram[5] = "0b1010110010000001";
        ram[6] = "0b0010010011111010";
        ram[7] = "0b1010101100110010";
        ram[8] = "0b0011001011101000";
        ram[9] = "0b1010101110011011";
        ram[10] = "0b0001000011110001";
        ram[11] = "0b1010100011010010";
        ram[12] = "0b0010111101010011";
        ram[13] = "0b1011001100111000";
        ram[14] = "0b1010100001000111";
        ram[15] = "0b0011001010001111";
        ram[16] = "0b0001101110101011";
        ram[17] = "0b0010001111101110";
        ram[18] = "0b1010101110011111";
        ram[19] = "0b0010101101010110";
        ram[20] = "0b0010100000001110";
        ram[21] = "0b1010100001110101";
        ram[22] = "0b0010100000011111";
        ram[23] = "0b1011000001101000";
        ram[24] = "0b0010100000011001";
        ram[25] = "0b1001111000110011";
        ram[26] = "0b0010101100111111";
        ram[27] = "0b0011010000011110";
        ram[28] = "0b1010111000100000";
        ram[29] = "0b0010101011001000";
        ram[30] = "0b1010000101111101";
        ram[31] = "0b1010110011100101";
        ram[32] = "0b1011000011110011";
        ram[33] = "0b0010110111101100";
        ram[34] = "0b0010101000001000";
        ram[35] = "0b0011001100110101";
        ram[36] = "0b0010101000011000";
        ram[37] = "0b1010100010100110";
        ram[38] = "0b1011011000011100";
        ram[39] = "0b0010100011110100";
        ram[40] = "0b0010000111110110";
        ram[41] = "0b1010100011001100";
        ram[42] = "0b0010110101000011";
        ram[43] = "0b1011000101111001";
        ram[44] = "0b1010011100111111";
        ram[45] = "0b0010011100100110";
        ram[46] = "0b0010000101010100";
        ram[47] = "0b1010100010110010";
        ram[48] = "0b0010110001001010";
        ram[49] = "0b1010011100011110";
        ram[50] = "0b1011000000011000";
        ram[51] = "0b1001110011101101";


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


SC_MODULE(L2_wlo_L1_WEIGHTSWhU) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSWhU_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSWhU) {
meminst = new L2_wlo_L1_WEIGHTSWhU_ram("L2_wlo_L1_WEIGHTSWhU_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSWhU() {
    delete meminst;
}


};//endmodule
#endif
