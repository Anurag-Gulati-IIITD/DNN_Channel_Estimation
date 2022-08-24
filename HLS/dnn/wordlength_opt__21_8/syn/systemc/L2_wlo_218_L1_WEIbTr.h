// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbTr_H__
#define __L2_wlo_218_L1_WEIbTr_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbTr_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIbTr_ram) {
        ram[0] = "0b0000111110001";
        ram[1] = "0b0000010100000";
        ram[2] = "0b1110010111000";
        ram[3] = "0b0000001100010";
        ram[4] = "0b1110010100101";
        ram[5] = "0b1111101011011";
        ram[6] = "0b0000011100101";
        ram[7] = "0b1111010010100";
        ram[8] = "0b1110011001111";
        ram[9] = "0b1100111011001";
        ram[10] = "0b0000011111010";
        ram[11] = "0b1101010001000";
        ram[12] = "0b0001011100011";
        ram[13] = "0b1101010111010";
        ram[14] = "0b1110000111110";
        ram[15] = "0b0100000111111";
        ram[16] = "0b1110100110011";
        ram[17] = "0b0010010010111";
        ram[18] = "0b0000111111011";
        ram[19] = "0b1110000101100";
        ram[20] = "0b1101000010101";
        ram[21] = "0b0000110001101";
        ram[22] = "0b0000110000000";
        ram[23] = "0b1110000000000";
        ram[24] = "0b1101001011110";
        ram[25] = "0b1111011001001";
        ram[26] = "0b0010000001111";
        ram[27] = "0b0000011110100";
        ram[28] = "0b1111111101010";
        ram[29] = "0b0001100011001";
        ram[30] = "0b0001101001011";
        ram[31] = "0b1101100000110";
        ram[32] = "0b0010010011001";
        ram[33] = "0b0001101011100";
        ram[34] = "0b0001101110100";
        ram[35] = "0b1101110010101";
        ram[36] = "0b1111110101110";
        ram[37] = "0b0000000111100";
        ram[38] = "0b1110111011111";
        ram[39] = "0b0011111011100";
        ram[40] = "0b0000110101001";
        ram[41] = "0b0001111000010";
        ram[42] = "0b0011101111011";
        ram[43] = "0b1100110110110";
        ram[44] = "0b0000010011101";
        ram[45] = "0b1111111100000";
        ram[46] = "0b0000010110010";
        ram[47] = "0b0000000001100";
        ram[48] = "0b1111101111011";
        ram[49] = "0b1111001101001";
        ram[50] = "0b0000101110100";
        ram[51] = "0b1101110000000";


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


SC_MODULE(L2_wlo_218_L1_WEIbTr) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbTr_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbTr) {
meminst = new L2_wlo_218_L1_WEIbTr_ram("L2_wlo_218_L1_WEIbTr_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbTr() {
    delete meminst;
}


};//endmodule
#endif
