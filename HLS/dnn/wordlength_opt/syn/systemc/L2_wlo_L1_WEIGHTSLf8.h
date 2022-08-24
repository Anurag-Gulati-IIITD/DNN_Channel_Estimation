// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSLf8_H__
#define __L2_wlo_L1_WEIGHTSLf8_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSLf8_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSLf8_ram) {
        ram[0] = "0b1010100000100011";
        ram[1] = "0b0010001001010110";
        ram[2] = "0b1010111011110101";
        ram[3] = "0b1010111100010011";
        ram[4] = "0b1010010011000111";
        ram[5] = "0b1011000110011101";
        ram[6] = "0b1010100001101110";
        ram[7] = "0b0011000010111110";
        ram[8] = "0b0010110110010011";
        ram[9] = "0b0011000000100000";
        ram[10] = "0b0001111001111000";
        ram[11] = "0b0010010000000100";
        ram[12] = "0b0001010101010101";
        ram[13] = "0b1010111101010101";
        ram[14] = "0b0010111000111000";
        ram[15] = "0b0011000010011000";
        ram[16] = "0b0010101101011111";
        ram[17] = "0b0010110101010110";
        ram[18] = "0b0010110111001010";
        ram[19] = "0b1001111000010101";
        ram[20] = "0b1010011111001100";
        ram[21] = "0b0010110001001101";
        ram[22] = "0b1010111011000011";
        ram[23] = "0b0010110101011111";
        ram[24] = "0b1010110011010001";
        ram[25] = "0b1001110101010001";
        ram[26] = "0b0010110011101100";
        ram[27] = "0b0010111010101110";
        ram[28] = "0b0010101101000011";
        ram[29] = "0b0011000011010111";
        ram[30] = "0b1011000100111001";
        ram[31] = "0b1010100101110101";
        ram[32] = "0b0010010001100010";
        ram[33] = "0b0001111000010001";
        ram[34] = "0b0010110011111001";
        ram[35] = "0b1011000100010110";
        ram[36] = "0b1010100101100111";
        ram[37] = "0b1010111100111101";
        ram[38] = "0b1010110000101000";
        ram[39] = "0b0010110000011010";
        ram[40] = "0b0010011111011110";
        ram[41] = "0b1010101111011110";
        ram[42] = "0b1010111010010111";
        ram[43] = "0b1011000001001110";
        ram[44] = "0b0010100101111110";
        ram[45] = "0b0010101100110011";
        ram[46] = "0b0010110100100100";
        ram[47] = "0b0010010011001101";
        ram[48] = "0b0010011011001100";
        ram[49] = "0b1010110100110011";
        ram[50] = "0b0010101110000001";
        ram[51] = "0b1010110000001000";


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


SC_MODULE(L2_wlo_L1_WEIGHTSLf8) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSLf8_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSLf8) {
meminst = new L2_wlo_L1_WEIGHTSLf8_ram("L2_wlo_L1_WEIGHTSLf8_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSLf8() {
    delete meminst;
}


};//endmodule
#endif
