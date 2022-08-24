// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSQgW_H__
#define __L2_wlo_L1_WEIGHTSQgW_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSQgW_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSQgW_ram) {
        ram[0] = "0b0010011000110101";
        ram[1] = "0b1010111011010000";
        ram[2] = "0b0011000011100100";
        ram[3] = "0b0010011101110101";
        ram[4] = "0b1010101101000101";
        ram[5] = "0b1010101111100011";
        ram[6] = "0b1010101100010010";
        ram[7] = "0b1010110001010000";
        ram[8] = "0b0011000000011110";
        ram[9] = "0b1010100111100001";
        ram[10] = "0b1010011100110011";
        ram[11] = "0b0010111011110110";
        ram[12] = "0b1010110011011001";
        ram[13] = "0b1011000011011100";
        ram[14] = "0b0010110101001101";
        ram[15] = "0b1010111111100000";
        ram[16] = "0b1010101100101001";
        ram[17] = "0b1010111001011000";
        ram[18] = "0b1010010011111010";
        ram[19] = "0b0010000001100010";
        ram[20] = "0b0001101100001100";
        ram[21] = "0b1010111100010101";
        ram[22] = "0b0010010100100100";
        ram[23] = "0b0010110101100010";
        ram[24] = "0b1001110010101101";
        ram[25] = "0b0010010111010001";
        ram[26] = "0b0010001110110100";
        ram[27] = "0b0010101001010001";
        ram[28] = "0b1010011110110110";
        ram[29] = "0b1010010000000001";
        ram[30] = "0b1011000101100100";
        ram[31] = "0b0010110011100110";
        ram[32] = "0b0010111111111011";
        ram[33] = "0b0010101100101000";
        ram[34] = "0b1010110110011111";
        ram[35] = "0b0011000110011001";
        ram[36] = "0b0010011011100111";
        ram[37] = "0b0010111110000011";
        ram[38] = "0b1010101001010000";
        ram[39] = "0b1010111101101010";
        ram[40] = "0b1010110110101011";
        ram[41] = "0b0010110001000000";
        ram[42] = "0b0010101011010110";
        ram[43] = "0b0010111111101010";
        ram[44] = "0b0010110111111010";
        ram[45] = "0b0010101101011110";
        ram[46] = "0b1010100101010011";
        ram[47] = "0b1010011110101110";
        ram[48] = "0b0010100100001111";
        ram[49] = "0b0010111111100110";
        ram[50] = "0b1010100111111001";
        ram[51] = "0b0011000011111010";


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


SC_MODULE(L2_wlo_L1_WEIGHTSQgW) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSQgW_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSQgW) {
meminst = new L2_wlo_L1_WEIGHTSQgW_ram("L2_wlo_L1_WEIGHTSQgW_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSQgW() {
    delete meminst;
}


};//endmodule
#endif
