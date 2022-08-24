// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSocq_H__
#define __L2_wlo_L1_WEIGHTSocq_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSocq_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSocq_ram) {
        ram[0] = "0b1010101100101101";
        ram[1] = "0b0010111100011101";
        ram[2] = "0b1010101000110100";
        ram[3] = "0b1010100101101001";
        ram[4] = "0b1010100101011010";
        ram[5] = "0b1011000011000110";
        ram[6] = "0b0010101001100000";
        ram[7] = "0b0010110100001100";
        ram[8] = "0b1001111101101010";
        ram[9] = "0b0010110001001111";
        ram[10] = "0b1010111111001000";
        ram[11] = "0b1010011000100111";
        ram[12] = "0b1011000101100100";
        ram[13] = "0b1011000100111111";
        ram[14] = "0b0010011010010001";
        ram[15] = "0b0010101001000011";
        ram[16] = "0b1010111011001011";
        ram[17] = "0b1010100000110010";
        ram[18] = "0b1010101010101001";
        ram[19] = "0b1010101000000100";
        ram[20] = "0b0001110000001111";
        ram[21] = "0b0010100101101000";
        ram[22] = "0b1010100101100101";
        ram[23] = "0b1010110001000101";
        ram[24] = "0b0010101011010010";
        ram[25] = "0b1010011000000011";
        ram[26] = "0b0011001001111011";
        ram[27] = "0b1010110011000101";
        ram[28] = "0b1010110000100001";
        ram[29] = "0b0010110010110110";
        ram[30] = "0b1010010111001100";
        ram[31] = "0b0010011011001101";
        ram[32] = "0b1010101011001101";
        ram[33] = "0b0010110000010001";
        ram[34] = "0b0010000101011011";
        ram[35] = "0b1010110011101000";
        ram[36] = "0b0010110000011010";
        ram[37] = "0b0010110011011011";
        ram[38] = "0b0010110111011001";
        ram[39] = "0b1010111110111110";
        ram[40] = "0b1010100010110110";
        ram[41] = "0b0010010110000100";
        ram[42] = "0b1010001100100100";
        ram[43] = "0b1010010011111011";
        ram[44] = "0b1010010100110101";
        ram[45] = "0b0010000110001001";
        ram[46] = "0b1010110100100110";
        ram[47] = "0b1010001011011111";
        ram[48] = "0b1010110011001111";
        ram[49] = "0b0010111000100011";
        ram[50] = "0b0010110000110000";
        ram[51] = "0b0011000001101100";


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


SC_MODULE(L2_wlo_L1_WEIGHTSocq) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSocq_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSocq) {
meminst = new L2_wlo_L1_WEIGHTSocq_ram("L2_wlo_L1_WEIGHTSocq_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSocq() {
    delete meminst;
}


};//endmodule
#endif
