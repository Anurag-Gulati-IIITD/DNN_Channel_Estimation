// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbPq_H__
#define __L2_wlo_218_L1_WEIbPq_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbPq_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 12;
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


   SC_CTOR(L2_wlo_218_L1_WEIbPq_ram) {
        ram[0] = "0b111101101101";
        ram[1] = "0b101111001101";
        ram[2] = "0b000110101100";
        ram[3] = "0b111110011000";
        ram[4] = "0b111111000010";
        ram[5] = "0b111001101101";
        ram[6] = "0b000001000011";
        ram[7] = "0b000100101100";
        ram[8] = "0b001101101101";
        ram[9] = "0b010101001111";
        ram[10] = "0b111011001111";
        ram[11] = "0b001011001101";
        ram[12] = "0b110011001000";
        ram[13] = "0b101011001010";
        ram[14] = "0b001101010110";
        ram[15] = "0b111100000001";
        ram[16] = "0b111110110010";
        ram[17] = "0b101111100000";
        ram[18] = "0b110110110110";
        ram[19] = "0b000001001001";
        ram[20] = "0b001000000100";
        ram[21] = "0b000000000100";
        ram[22] = "0b111101001110";
        ram[23] = "0b000011100000";
        ram[24] = "0b000000000000";
        ram[25] = "0b000000000011";
        ram[26] = "0b000011010101";
        ram[27] = "0b000100000010";
        ram[28] = "0b101010010100";
        ram[29] = "0b000001101111";
        ram[30] = "0b110011101111";
        ram[31] = "0b001110100101";
        ram[32] = "0b111001111111";
        ram[33] = "0b001110110010";
        ram[34] = "0b000000101011";
        ram[35] = "0b001110011111";
        ram[36] = "0b111111110011";
        ram[37] = "0b000101101000";
        ram[38] = "0b111100000001";
        ram[39] = "0b110000110011";
        ram[40] = "0b111111110000";
        ram[41] = "0b000010100100";
        ram[42] = "0b101100101010";
        ram[43] = "0b111100100000";
        ram[44] = "0b111101100100";
        ram[45] = "0b111000101011";
        ram[46] = "0b111111001000";
        ram[47] = "0b111101101011";
        ram[48] = "0b000101010101";
        ram[49] = "0b001001000110";
        ram[50] = "0b101101100001";
        ram[51] = "0b000100110101";


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


SC_MODULE(L2_wlo_218_L1_WEIbPq) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbPq_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbPq) {
meminst = new L2_wlo_218_L1_WEIbPq_ram("L2_wlo_218_L1_WEIbPq_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbPq() {
    delete meminst;
}


};//endmodule
#endif
