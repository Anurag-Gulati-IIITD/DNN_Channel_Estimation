// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbDo_H__
#define __L2_wlo_L1_WEIGHTSbDo_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbDo_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbDo_ram) {
        ram[0] = "0b0010100100010100";
        ram[1] = "0b0010101010101101";
        ram[2] = "0b0010110111111000";
        ram[3] = "0b0010010011000000";
        ram[4] = "0b1010111101011101";
        ram[5] = "0b0011000010101010";
        ram[6] = "0b0010111000000001";
        ram[7] = "0b1010111100111100";
        ram[8] = "0b0010110011011010";
        ram[9] = "0b1011000011001101";
        ram[10] = "0b1010101110001100";
        ram[11] = "0b1010110111011000";
        ram[12] = "0b0001101101001110";
        ram[13] = "0b1010110010011011";
        ram[14] = "0b1011000101100011";
        ram[15] = "0b1011000001011011";
        ram[16] = "0b1010100101000001";
        ram[17] = "0b1010110101001000";
        ram[18] = "0b1010101110110101";
        ram[19] = "0b0010010011000101";
        ram[20] = "0b0010011111001111";
        ram[21] = "0b0001100101001101";
        ram[22] = "0b0010110011111001";
        ram[23] = "0b1010110100011110";
        ram[24] = "0b0010110001001001";
        ram[25] = "0b0010100010111100";
        ram[26] = "0b1010110010101100";
        ram[27] = "0b1010101101001000";
        ram[28] = "0b1010101100011110";
        ram[29] = "0b1011000010100001";
        ram[30] = "0b0010111101001001";
        ram[31] = "0b0010000101010100";
        ram[32] = "0b0010101111101101";
        ram[33] = "0b1010011110101110";
        ram[34] = "0b0010101010010110";
        ram[35] = "0b0011001101101111";
        ram[36] = "0b1010011011110001";
        ram[37] = "0b0010101100000101";
        ram[38] = "0b1010101001010101";
        ram[39] = "0b1010000111001110";
        ram[40] = "0b1010100010001000";
        ram[41] = "0b0011001000101000";
        ram[42] = "0b0011001010010010";
        ram[43] = "0b0011000011010110";
        ram[44] = "0b1010010001111010";
        ram[45] = "0b1010011011001011";
        ram[46] = "0b1010110010110101";
        ram[47] = "0b1010001010100110";
        ram[48] = "0b1010100001101100";
        ram[49] = "0b1010011101101110";
        ram[50] = "0b1010010001111110";
        ram[51] = "0b0010010110011000";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbDo) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbDo_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbDo) {
meminst = new L2_wlo_L1_WEIGHTSbDo_ram("L2_wlo_L1_WEIGHTSbDo_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbDo() {
    delete meminst;
}


};//endmodule
#endif
