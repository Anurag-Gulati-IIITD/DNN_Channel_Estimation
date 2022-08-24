// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSXh4_H__
#define __L2_wlo_L1_WEIGHTSXh4_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSXh4_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSXh4_ram) {
        ram[0] = "0b1010000001110111";
        ram[1] = "0b0011001010010111";
        ram[2] = "0b0011010000101010";
        ram[3] = "0b1011000101001000";
        ram[4] = "0b0010101011100101";
        ram[5] = "0b0010111010100010";
        ram[6] = "0b0011000010001010";
        ram[7] = "0b0010001010100010";
        ram[8] = "0b1010010100011011";
        ram[9] = "0b1010110011100010";
        ram[10] = "0b1010010100101101";
        ram[11] = "0b0011001100101011";
        ram[12] = "0b0010011100110000";
        ram[13] = "0b1011001000011101";
        ram[14] = "0b0011000001001100";
        ram[15] = "0b0010111001101001";
        ram[16] = "0b1010011001000001";
        ram[17] = "0b1011001011011111";
        ram[18] = "0b1010101110100001";
        ram[19] = "0b1010010000001110";
        ram[20] = "0b1010100011011101";
        ram[21] = "0b1010111001111001";
        ram[22] = "0b0010011100101000";
        ram[23] = "0b1011001010101011";
        ram[24] = "0b0010011111110100";
        ram[25] = "0b1010101010111011";
        ram[26] = "0b0010111100011110";
        ram[27] = "0b0011000101101111";
        ram[28] = "0b1010111110111011";
        ram[29] = "0b1011000000110010";
        ram[30] = "0b1010111011011111";
        ram[31] = "0b1010101111011100";
        ram[32] = "0b1010100111110110";
        ram[33] = "0b1001001111000010";
        ram[34] = "0b0010111100111010";
        ram[35] = "0b0011000100001000";
        ram[36] = "0b0010101000101010";
        ram[37] = "0b1010100111011110";
        ram[38] = "0b1011000100000000";
        ram[39] = "0b0010101011011011";
        ram[40] = "0b1010010111010010";
        ram[41] = "0b1010101010010110";
        ram[42] = "0b0010111110001000";
        ram[43] = "0b1010110100100010";
        ram[44] = "0b1010110001010010";
        ram[45] = "0b1011000000110011";
        ram[46] = "0b0010111111010000";
        ram[47] = "0b1010111100000100";
        ram[48] = "0b0010101000001011";
        ram[49] = "0b1010111111101010";
        ram[50] = "0b1010110100001110";
        ram[51] = "0b1010110100000010";


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


SC_MODULE(L2_wlo_L1_WEIGHTSXh4) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSXh4_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSXh4) {
meminst = new L2_wlo_L1_WEIGHTSXh4_ram("L2_wlo_L1_WEIGHTSXh4_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSXh4() {
    delete meminst;
}


};//endmodule
#endif
