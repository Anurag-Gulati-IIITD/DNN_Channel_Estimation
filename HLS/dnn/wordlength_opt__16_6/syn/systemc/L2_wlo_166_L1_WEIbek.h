// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_166_L1_WEIbek_H__
#define __L2_wlo_166_L1_WEIbek_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_166_L1_WEIbek_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_166_L1_WEIbek_ram) {
        ram[0] = "0b000000101";
        ram[1] = "0b011001100";
        ram[2] = "0b001010111";
        ram[3] = "0b110111000";
        ram[4] = "0b001001110";
        ram[5] = "0b010110110";
        ram[6] = "0b111011101";
        ram[7] = "0b111001100";
        ram[8] = "0b110101111";
        ram[9] = "0b000000101";
        ram[10] = "0b111000010";
        ram[11] = "0b001111110";
        ram[12] = "0b111110101";
        ram[13] = "0b010000010";
        ram[14] = "0b000000010";
        ram[15] = "0b001000101";
        ram[16] = "0b000101110";
        ram[17] = "0b111010000";
        ram[18] = "0b000101110";
        ram[19] = "0b000101111";
        ram[20] = "0b111111101";
        ram[21] = "0b111100011";
        ram[22] = "0b000010100";
        ram[23] = "0b101000100";
        ram[24] = "0b111101100";
        ram[25] = "0b000010001";
        ram[26] = "0b101101011";
        ram[27] = "0b000010111";
        ram[28] = "0b001010111";
        ram[29] = "0b110110001";
        ram[30] = "0b111011110";
        ram[31] = "0b000100011";
        ram[32] = "0b000011010";
        ram[33] = "0b110001110";
        ram[34] = "0b000110111";
        ram[35] = "0b110110110";
        ram[36] = "0b110110101";
        ram[37] = "0b010100011";
        ram[38] = "0b111010011";
        ram[39] = "0b110001100";
        ram[40] = "0b000000101";
        ram[41] = "0b110110100";
        ram[42] = "0b111000000";
        ram[43] = "0b110100000";
        ram[44] = "0b000010111";
        ram[45] = "0b111011111";
        ram[46] = "0b000100010";
        ram[47] = "0b111100111";
        ram[48] = "0b000001010";
        ram[49] = "0b001010100";
        ram[50] = "0b001110101";
        ram[51] = "0b001100000";


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


SC_MODULE(L2_wlo_166_L1_WEIbek) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_166_L1_WEIbek_ram* meminst;


SC_CTOR(L2_wlo_166_L1_WEIbek) {
meminst = new L2_wlo_166_L1_WEIbek_ram("L2_wlo_166_L1_WEIbek_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_166_L1_WEIbek() {
    delete meminst;
}


};//endmodule
#endif
