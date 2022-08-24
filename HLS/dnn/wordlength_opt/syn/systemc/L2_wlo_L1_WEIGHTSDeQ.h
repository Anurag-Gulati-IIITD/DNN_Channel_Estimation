// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSDeQ_H__
#define __L2_wlo_L1_WEIGHTSDeQ_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSDeQ_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSDeQ_ram) {
        ram[0] = "0b1010010100101111";
        ram[1] = "0b1010110010100101";
        ram[2] = "0b1010100000111110";
        ram[3] = "0b0010110000011100";
        ram[4] = "0b1010110101101110";
        ram[5] = "0b1010110000110000";
        ram[6] = "0b1010100010010111";
        ram[7] = "0b0010100100010111";
        ram[8] = "0b0010111010000001";
        ram[9] = "0b0011000100101001";
        ram[10] = "0b0010010011011100";
        ram[11] = "0b0010000101110111";
        ram[12] = "0b0010111001100110";
        ram[13] = "0b0011000000001111";
        ram[14] = "0b0010100110100110";
        ram[15] = "0b0011001100001101";
        ram[16] = "0b0001111010000110";
        ram[17] = "0b1010100000101101";
        ram[18] = "0b0010000010000000";
        ram[19] = "0b0010010001000011";
        ram[20] = "0b0010101110111110";
        ram[21] = "0b0010101011010110";
        ram[22] = "0b1010100010111010";
        ram[23] = "0b0010111101101001";
        ram[24] = "0b1010010001101001";
        ram[25] = "0b1010000101011011";
        ram[26] = "0b1011010000010111";
        ram[27] = "0b0010010111001000";
        ram[28] = "0b1010100011010111";
        ram[29] = "0b0001100101001100";
        ram[30] = "0b0010100011101100";
        ram[31] = "0b1010100011010010";
        ram[32] = "0b0010111011111111";
        ram[33] = "0b1010100111010100";
        ram[34] = "0b0010010000011000";
        ram[35] = "0b0011001010111010";
        ram[36] = "0b1001001111101000";
        ram[37] = "0b0010110010101000";
        ram[38] = "0b0010001101001010";
        ram[39] = "0b0011000001011011";
        ram[40] = "0b0010111000010000";
        ram[41] = "0b0010100000111101";
        ram[42] = "0b1011000101111010";
        ram[43] = "0b1011001100111110";
        ram[44] = "0b1010000111000100";
        ram[45] = "0b0010001111100110";
        ram[46] = "0b1010111010111100";
        ram[47] = "0b1010101001001101";
        ram[48] = "0b0001101111011110";
        ram[49] = "0b1010100011110001";
        ram[50] = "0b1010110101111011";
        ram[51] = "0b1011000010100011";


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


SC_MODULE(L2_wlo_L1_WEIGHTSDeQ) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSDeQ_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSDeQ) {
meminst = new L2_wlo_L1_WEIGHTSDeQ_ram("L2_wlo_L1_WEIGHTSDeQ_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSDeQ() {
    delete meminst;
}


};//endmodule
#endif
