// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_166_L1_WEIbfk_H__
#define __L2_wlo_166_L1_WEIbfk_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_166_L1_WEIbfk_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 10;
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


   SC_CTOR(L2_wlo_166_L1_WEIbfk_ram) {
        ram[0] = "0b0000110010";
        ram[1] = "0b0001100000";
        ram[2] = "0b0000000000";
        ram[3] = "0b0010101111";
        ram[4] = "0b1110111000";
        ram[5] = "0b0000001010";
        ram[6] = "0b1101010000";
        ram[7] = "0b1110101111";
        ram[8] = "0b1100100101";
        ram[9] = "0b0000001111";
        ram[10] = "0b1101110011";
        ram[11] = "0b1111110101";
        ram[12] = "0b0001011001";
        ram[13] = "0b0010110011";
        ram[14] = "0b1111101010";
        ram[15] = "0b0010111000";
        ram[16] = "0b0000001011";
        ram[17] = "0b0000110111";
        ram[18] = "0b0000010010";
        ram[19] = "0b0000011000";
        ram[20] = "0b0000100000";
        ram[21] = "0b0001010000";
        ram[22] = "0b0000110011";
        ram[23] = "0b1100101100";
        ram[24] = "0b1111001010";
        ram[25] = "0b1111101100";
        ram[26] = "0b1100111011";
        ram[27] = "0b1110100111";
        ram[28] = "0b0000110000";
        ram[29] = "0b1111110101";
        ram[30] = "0b1111001101";
        ram[31] = "0b0000001000";
        ram[32] = "0b0000110000";
        ram[33] = "0b1111111100";
        ram[34] = "0b1101000010";
        ram[35] = "0b1111100100";
        ram[36] = "0b0000110101";
        ram[37] = "0b0010111100";
        ram[38] = "0b0001101101";
        ram[39] = "0b0000010001";
        ram[40] = "0b0000011111";
        ram[41] = "0b0000001111";
        ram[42] = "0b1110111010";
        ram[43] = "0b1101010101";
        ram[44] = "0b0001100110";
        ram[45] = "0b0000001010";
        ram[46] = "0b1110011101";
        ram[47] = "0b0000000100";
        ram[48] = "0b1111010011";
        ram[49] = "0b0011001110";
        ram[50] = "0b0100001101";
        ram[51] = "0b1111110000";


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


SC_MODULE(L2_wlo_166_L1_WEIbfk) {


static const unsigned DataWidth = 10;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_166_L1_WEIbfk_ram* meminst;


SC_CTOR(L2_wlo_166_L1_WEIbfk) {
meminst = new L2_wlo_166_L1_WEIbfk_ram("L2_wlo_166_L1_WEIbfk_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_166_L1_WEIbfk() {
    delete meminst;
}


};//endmodule
#endif
