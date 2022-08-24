// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSGfk_H__
#define __L2_wlo_L1_WEIGHTSGfk_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSGfk_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSGfk_ram) {
        ram[0] = "0b1010101001101110";
        ram[1] = "0b0010100010100011";
        ram[2] = "0b0010111111010010";
        ram[3] = "0b1010110100000111";
        ram[4] = "0b0011001001000001";
        ram[5] = "0b0010100011011110";
        ram[6] = "0b0010110001001000";
        ram[7] = "0b0010100101100011";
        ram[8] = "0b1011001100110001";
        ram[9] = "0b1010111111011010";
        ram[10] = "0b0010101101111110";
        ram[11] = "0b0001111101001001";
        ram[12] = "0b1010110011111110";
        ram[13] = "0b1010100001010010";
        ram[14] = "0b0011000100100011";
        ram[15] = "0b1010111101111010";
        ram[16] = "0b1010000001101110";
        ram[17] = "0b1010001000010101";
        ram[18] = "0b1010101111011010";
        ram[19] = "0b0010010001010100";
        ram[20] = "0b0010110101011101";
        ram[21] = "0b1010111000110010";
        ram[22] = "0b1010110011011011";
        ram[23] = "0b1010111000010000";
        ram[24] = "0b0010010001111011";
        ram[25] = "0b0001101100001011";
        ram[26] = "0b1010011010010011";
        ram[27] = "0b1010110001111001";
        ram[28] = "0b0010100011011101";
        ram[29] = "0b1010100110101111";
        ram[30] = "0b1010110001000000";
        ram[31] = "0b0010001011010001";
        ram[32] = "0b1010110101110101";
        ram[33] = "0b1010110110011010";
        ram[34] = "0b0010110000111111";
        ram[35] = "0b0010101100010011";
        ram[36] = "0b0010110010010011";
        ram[37] = "0b1011000010101100";
        ram[38] = "0b1010001000110010";
        ram[39] = "0b1010111111100100";
        ram[40] = "0b1010100011001101";
        ram[41] = "0b1010110101010110";
        ram[42] = "0b0011000000001000";
        ram[43] = "0b0010111011111111";
        ram[44] = "0b1010101001011101";
        ram[45] = "0b1010101000100001";
        ram[46] = "0b1010010011111100";
        ram[47] = "0b1010100000101000";
        ram[48] = "0b1010010101100101";
        ram[49] = "0b1010110000001010";
        ram[50] = "0b0011000111100000";
        ram[51] = "0b0010110110010100";


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


SC_MODULE(L2_wlo_L1_WEIGHTSGfk) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSGfk_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSGfk) {
meminst = new L2_wlo_L1_WEIGHTSGfk_ram("L2_wlo_L1_WEIGHTSGfk_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSGfk() {
    delete meminst;
}


};//endmodule
#endif
