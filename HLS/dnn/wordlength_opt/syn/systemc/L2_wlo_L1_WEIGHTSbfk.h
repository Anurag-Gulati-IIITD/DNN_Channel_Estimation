// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbfk_H__
#define __L2_wlo_L1_WEIGHTSbfk_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbfk_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbfk_ram) {
        ram[0] = "0b1010011111110001";
        ram[1] = "0b1011001100001010";
        ram[2] = "0b0001111011111111";
        ram[3] = "0b1010110001010011";
        ram[4] = "0b0010101011101100";
        ram[5] = "0b0010011101111100";
        ram[6] = "0b1001110000010111";
        ram[7] = "0b0010100111010110";
        ram[8] = "0b0010110011001110";
        ram[9] = "0b1011000100011010";
        ram[10] = "0b1010010001110011";
        ram[11] = "0b0010111011000011";
        ram[12] = "0b0010110011000111";
        ram[13] = "0b0010111111111100";
        ram[14] = "0b0010001101001011";
        ram[15] = "0b0010000010111000";
        ram[16] = "0b0010110110010110";
        ram[17] = "0b0010101111100011";
        ram[18] = "0b0010101110000110";
        ram[19] = "0b1001110001011000";
        ram[20] = "0b0010111010110001";
        ram[21] = "0b0010101010010010";
        ram[22] = "0b0010000011011111";
        ram[23] = "0b0011000011110001";
        ram[24] = "0b1010101101011111";
        ram[25] = "0b0010100000100001";
        ram[26] = "0b1010111010000111";
        ram[27] = "0b1010010000111001";
        ram[28] = "0b0010111111100111";
        ram[29] = "0b0010101011010101";
        ram[30] = "0b1010010000000001";
        ram[31] = "0b0010010010011000";
        ram[32] = "0b1010000011100100";
        ram[33] = "0b1010110010111101";
        ram[34] = "0b0010110010011000";
        ram[35] = "0b1010111100010111";
        ram[36] = "0b1010010101101011";
        ram[37] = "0b0010110010110000";
        ram[38] = "0b0010000011010001";
        ram[39] = "0b0010101010000111";
        ram[40] = "0b0001101101011011";
        ram[41] = "0b1010101011100100";
        ram[42] = "0b0011001110000111";
        ram[43] = "0b0010010101000110";
        ram[44] = "0b0010100101010010";
        ram[45] = "0b1011000001100011";
        ram[46] = "0b0010110011101101";
        ram[47] = "0b1010110111111001";
        ram[48] = "0b0010111011010101";
        ram[49] = "0b0001101100010010";
        ram[50] = "0b1010111001000111";
        ram[51] = "0b1001111010111110";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbfk) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbfk_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbfk) {
meminst = new L2_wlo_L1_WEIGHTSbfk_ram("L2_wlo_L1_WEIGHTSbfk_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbfk() {
    delete meminst;
}


};//endmodule
#endif
