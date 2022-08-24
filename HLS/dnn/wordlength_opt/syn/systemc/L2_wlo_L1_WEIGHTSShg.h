// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSShg_H__
#define __L2_wlo_L1_WEIGHTSShg_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSShg_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSShg_ram) {
        ram[0] = "0b1010000001111110";
        ram[1] = "0b1010111011000101";
        ram[2] = "0b0010110110010101";
        ram[3] = "0b1010010000011010";
        ram[4] = "0b0011000110111010";
        ram[5] = "0b0011000110111101";
        ram[6] = "0b0010111011110100";
        ram[7] = "0b0010100000111100";
        ram[8] = "0b1010111010001111";
        ram[9] = "0b0011010000110010";
        ram[10] = "0b0010100011001000";
        ram[11] = "0b1010001010000011";
        ram[12] = "0b1010110001001000";
        ram[13] = "0b0010111111001101";
        ram[14] = "0b0010110111000001";
        ram[15] = "0b1010110000000100";
        ram[16] = "0b0001110100110000";
        ram[17] = "0b1011000110010001";
        ram[18] = "0b0010011111011000";
        ram[19] = "0b0010110000000101";
        ram[20] = "0b0010011111001110";
        ram[21] = "0b1010101110010100";
        ram[22] = "0b1010000110000101";
        ram[23] = "0b0010110110111011";
        ram[24] = "0b0010110100111000";
        ram[25] = "0b1010101101101010";
        ram[26] = "0b0010110110001011";
        ram[27] = "0b0010110001000010";
        ram[28] = "0b0010110010001011";
        ram[29] = "0b1011001000001000";
        ram[30] = "0b1010100011001111";
        ram[31] = "0b0010100000101111";
        ram[32] = "0b1011000000101010";
        ram[33] = "0b1010111101111001";
        ram[34] = "0b1010101101001011";
        ram[35] = "0b0010100011110010";
        ram[36] = "0b0001111010001101";
        ram[37] = "0b0010100011011010";
        ram[38] = "0b0001111110110100";
        ram[39] = "0b1010101111000000";
        ram[40] = "0b1010101101001100";
        ram[41] = "0b1010111110010000";
        ram[42] = "0b1011010000100110";
        ram[43] = "0b0011000010101111";
        ram[44] = "0b0000110001011100";
        ram[45] = "0b1010111100000011";
        ram[46] = "0b0010110100000001";
        ram[47] = "0b1010010001110010";
        ram[48] = "0b0011000001001000";
        ram[49] = "0b0001100010101001";
        ram[50] = "0b0010101100010011";
        ram[51] = "0b0010110100110101";


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


SC_MODULE(L2_wlo_L1_WEIGHTSShg) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSShg_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSShg) {
meminst = new L2_wlo_L1_WEIGHTSShg_ram("L2_wlo_L1_WEIGHTSShg_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSShg() {
    delete meminst;
}


};//endmodule
#endif
