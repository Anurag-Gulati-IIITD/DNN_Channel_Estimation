// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbEo_H__
#define __L2_wlo_L1_WEIGHTSbEo_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbEo_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbEo_ram) {
        ram[0] = "0b0010100110100110";
        ram[1] = "0b0010000111110111";
        ram[2] = "0b0010000000101010";
        ram[3] = "0b0011000000001001";
        ram[4] = "0b1010111110011000";
        ram[5] = "0b0010111100100001";
        ram[6] = "0b1010110101011110";
        ram[7] = "0b1001100000011011";
        ram[8] = "0b0010110000010101";
        ram[9] = "0b0010001101010110";
        ram[10] = "0b1010110110001101";
        ram[11] = "0b1010101100010000";
        ram[12] = "0b1010100110010100";
        ram[13] = "0b1010011101111101";
        ram[14] = "0b0010110101110111";
        ram[15] = "0b1010011001101011";
        ram[16] = "0b1010100100011101";
        ram[17] = "0b0001110110010011";
        ram[18] = "0b1010101001010011";
        ram[19] = "0b0010101010111001";
        ram[20] = "0b0010010000001100";
        ram[21] = "0b1010111100111110";
        ram[22] = "0b0010100101000000";
        ram[23] = "0b0010100110011100";
        ram[24] = "0b0010110000000011";
        ram[25] = "0b1010110100011001";
        ram[26] = "0b0010100000011000";
        ram[27] = "0b0010101110111011";
        ram[28] = "0b1010110111000010";
        ram[29] = "0b0001111010101110";
        ram[30] = "0b1010110101000011";
        ram[31] = "0b0010111111111110";
        ram[32] = "0b0010110001100111";
        ram[33] = "0b0010110011100101";
        ram[34] = "0b1011001010010100";
        ram[35] = "0b0011000101000000";
        ram[36] = "0b0010110110101101";
        ram[37] = "0b0010100010001100";
        ram[38] = "0b1011000001010111";
        ram[39] = "0b1010011101100000";
        ram[40] = "0b0010010010100010";
        ram[41] = "0b0011000011010011";
        ram[42] = "0b0010101010111010";
        ram[43] = "0b0011000101101100";
        ram[44] = "0b1010001110000001";
        ram[45] = "0b0010000011011100";
        ram[46] = "0b0010010001001001";
        ram[47] = "0b0010011101011011";
        ram[48] = "0b0010000010100111";
        ram[49] = "0b0011001011010110";
        ram[50] = "0b1010100000111001";
        ram[51] = "0b0010111011001011";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbEo) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbEo_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbEo) {
meminst = new L2_wlo_L1_WEIGHTSbEo_ram("L2_wlo_L1_WEIGHTSbEo_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbEo() {
    delete meminst;
}


};//endmodule
#endif
