// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_166_L1_WEIbAo_H__
#define __L2_wlo_166_L1_WEIbAo_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_166_L1_WEIbAo_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_166_L1_WEIbAo_ram) {
        ram[0] = "0b000011010";
        ram[1] = "0b001011111";
        ram[2] = "0b000101110";
        ram[3] = "0b000001010";
        ram[4] = "0b111111100";
        ram[5] = "0b001001001";
        ram[6] = "0b110010000";
        ram[7] = "0b111111000";
        ram[8] = "0b010100011";
        ram[9] = "0b000100110";
        ram[10] = "0b110011111";
        ram[11] = "0b000010001";
        ram[12] = "0b001001011";
        ram[13] = "0b010101011";
        ram[14] = "0b110100100";
        ram[15] = "0b111001100";
        ram[16] = "0b000000001";
        ram[17] = "0b110101111";
        ram[18] = "0b111100111";
        ram[19] = "0b000101101";
        ram[20] = "0b001010000";
        ram[21] = "0b111101010";
        ram[22] = "0b110011010";
        ram[23] = "0b111010110";
        ram[24] = "0b001000000";
        ram[25] = "0b111100011";
        ram[26] = "0b101000001";
        ram[27] = "0b101010011";
        ram[28] = "0b000000011";
        ram[29] = "0b110101110";
        ram[30] = "0b010010101";
        ram[31] = "0b110111010";
        ram[32] = "0b111011000";
        ram[33] = "0b110011110";
        ram[34] = "0b000100001";
        ram[35] = "0b111111101";
        ram[36] = "0b111101010";
        ram[37] = "0b000110000";
        ram[38] = "0b010011010";
        ram[39] = "0b001110110";
        ram[40] = "0b110111100";
        ram[41] = "0b000000101";
        ram[42] = "0b110101011";
        ram[43] = "0b001100101";
        ram[44] = "0b000101111";
        ram[45] = "0b000001010";
        ram[46] = "0b110011010";
        ram[47] = "0b000001100";
        ram[48] = "0b000001000";
        ram[49] = "0b000101000";
        ram[50] = "0b101101110";
        ram[51] = "0b100111010";


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


SC_MODULE(L2_wlo_166_L1_WEIbAo) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_166_L1_WEIbAo_ram* meminst;


SC_CTOR(L2_wlo_166_L1_WEIbAo) {
meminst = new L2_wlo_166_L1_WEIbAo_ram("L2_wlo_166_L1_WEIbAo_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_166_L1_WEIbAo() {
    delete meminst;
}


};//endmodule
#endif
