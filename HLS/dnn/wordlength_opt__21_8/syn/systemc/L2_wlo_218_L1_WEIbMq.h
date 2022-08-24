// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbMq_H__
#define __L2_wlo_218_L1_WEIbMq_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbMq_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 13;
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


   SC_CTOR(L2_wlo_218_L1_WEIbMq_ram) {
        ram[0] = "0b0001001101001";
        ram[1] = "0b0001101110110";
        ram[2] = "0b0000100011101";
        ram[3] = "0b1110110000110";
        ram[4] = "0b1110110000010";
        ram[5] = "0b0001011010010";
        ram[6] = "0b1111111000011";
        ram[7] = "0b1110010001011";
        ram[8] = "0b1111000100011";
        ram[9] = "0b1101000000000";
        ram[10] = "0b0001001101111";
        ram[11] = "0b1111111110011";
        ram[12] = "0b0000111100111";
        ram[13] = "0b0010011010110";
        ram[14] = "0b1011111010101";
        ram[15] = "0b1111001111001";
        ram[16] = "0b0000010001011";
        ram[17] = "0b1110101010101";
        ram[18] = "0b1111010110011";
        ram[19] = "0b0001100101011";
        ram[20] = "0b0000101000110";
        ram[21] = "0b1111100000101";
        ram[22] = "0b0001011011000";
        ram[23] = "0b1101110100110";
        ram[24] = "0b0000101011011";
        ram[25] = "0b1111001111100";
        ram[26] = "0b1100101011110";
        ram[27] = "0b1111011101101";
        ram[28] = "0b0000101101100";
        ram[29] = "0b1110111111111";
        ram[30] = "0b0011011000011";
        ram[31] = "0b0001001000000";
        ram[32] = "0b1111111001111";
        ram[33] = "0b1110101011101";
        ram[34] = "0b0001111001101";
        ram[35] = "0b0000011010010";
        ram[36] = "0b0000001110101";
        ram[37] = "0b1111100001000";
        ram[38] = "0b1111111101011";
        ram[39] = "0b1110101011110";
        ram[40] = "0b1111101110010";
        ram[41] = "0b0001011101110";
        ram[42] = "0b0010010011011";
        ram[43] = "0b0000100101111";
        ram[44] = "0b0001100011100";
        ram[45] = "0b0001010110110";
        ram[46] = "0b0000000001111";
        ram[47] = "0b1111000111101";
        ram[48] = "0b1111101110110";
        ram[49] = "0b1101101000110";
        ram[50] = "0b0001010110111";
        ram[51] = "0b1111010000001";


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


SC_MODULE(L2_wlo_218_L1_WEIbMq) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbMq_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbMq) {
meminst = new L2_wlo_218_L1_WEIbMq_ram("L2_wlo_218_L1_WEIbMq_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbMq() {
    delete meminst;
}


};//endmodule
#endif
