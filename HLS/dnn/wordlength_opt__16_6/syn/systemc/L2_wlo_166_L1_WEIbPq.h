// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_166_L1_WEIbPq_H__
#define __L2_wlo_166_L1_WEIbPq_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_166_L1_WEIbPq_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 9;
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


   SC_CTOR(L2_wlo_166_L1_WEIbPq_ram) {
        ram[0] = "0b111101101";
        ram[1] = "0b101111001";
        ram[2] = "0b000110101";
        ram[3] = "0b111110011";
        ram[4] = "0b111111000";
        ram[5] = "0b111001101";
        ram[6] = "0b000001000";
        ram[7] = "0b000100101";
        ram[8] = "0b001101101";
        ram[9] = "0b010101001";
        ram[10] = "0b111011001";
        ram[11] = "0b001011001";
        ram[12] = "0b110011001";
        ram[13] = "0b101011001";
        ram[14] = "0b001101010";
        ram[15] = "0b111100000";
        ram[16] = "0b111110110";
        ram[17] = "0b101111100";
        ram[18] = "0b110110110";
        ram[19] = "0b000001001";
        ram[20] = "0b001000000";
        ram[21] = "0b000000000";
        ram[22] = "0b111101001";
        ram[23] = "0b000011100";
        ram[24] = "0b000000000";
        ram[25] = "0b000000000";
        ram[26] = "0b000011010";
        ram[27] = "0b000100000";
        ram[28] = "0b101010010";
        ram[29] = "0b000001101";
        ram[30] = "0b110011101";
        ram[31] = "0b001110100";
        ram[32] = "0b111001111";
        ram[33] = "0b001110110";
        ram[34] = "0b000000101";
        ram[35] = "0b001110011";
        ram[36] = "0b111111110";
        ram[37] = "0b000101101";
        ram[38] = "0b111100000";
        ram[39] = "0b110000110";
        ram[40] = "0b111111110";
        ram[41] = "0b000010100";
        ram[42] = "0b101100101";
        ram[43] = "0b111100100";
        ram[44] = "0b111101100";
        ram[45] = "0b111000101";
        ram[46] = "0b111111001";
        ram[47] = "0b111101101";
        ram[48] = "0b000101010";
        ram[49] = "0b001001000";
        ram[50] = "0b101101100";
        ram[51] = "0b000100110";


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


SC_MODULE(L2_wlo_166_L1_WEIbPq) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_166_L1_WEIbPq_ram* meminst;


SC_CTOR(L2_wlo_166_L1_WEIbPq) {
meminst = new L2_wlo_166_L1_WEIbPq_ram("L2_wlo_166_L1_WEIbPq_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_166_L1_WEIbPq() {
    delete meminst;
}


};//endmodule
#endif
