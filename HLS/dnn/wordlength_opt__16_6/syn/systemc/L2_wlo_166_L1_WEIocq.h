// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_166_L1_WEIocq_H__
#define __L2_wlo_166_L1_WEIocq_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_166_L1_WEIocq_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_166_L1_WEIocq_ram) {
        ram[0] = "0b110111111";
        ram[1] = "0b110011010";
        ram[2] = "0b111000011";
        ram[3] = "0b110101001";
        ram[4] = "0b000000000";
        ram[5] = "0b111100110";
        ram[6] = "0b000110111";
        ram[7] = "0b111110100";
        ram[8] = "0b010101011";
        ram[9] = "0b000100001";
        ram[10] = "0b001110000";
        ram[11] = "0b000000110";
        ram[12] = "0b111001101";
        ram[13] = "0b000010000";
        ram[14] = "0b101101110";
        ram[15] = "0b000110001";
        ram[16] = "0b000010111";
        ram[17] = "0b001000010";
        ram[18] = "0b111110010";
        ram[19] = "0b000001001";
        ram[20] = "0b111010100";
        ram[21] = "0b111000100";
        ram[22] = "0b000011001";
        ram[23] = "0b001010011";
        ram[24] = "0b111000101";
        ram[25] = "0b111010000";
        ram[26] = "0b010011101";
        ram[27] = "0b010111100";
        ram[28] = "0b001110001";
        ram[29] = "0b001100001";
        ram[30] = "0b010000111";
        ram[31] = "0b001001010";
        ram[32] = "0b111110010";
        ram[33] = "0b111011110";
        ram[34] = "0b000011111";
        ram[35] = "0b101011000";
        ram[36] = "0b000010111";
        ram[37] = "0b111010011";
        ram[38] = "0b110001111";
        ram[39] = "0b111111111";
        ram[40] = "0b000001010";
        ram[41] = "0b111001101";
        ram[42] = "0b110111111";
        ram[43] = "0b001100001";
        ram[44] = "0b111011011";
        ram[45] = "0b001110001";
        ram[46] = "0b010011111";
        ram[47] = "0b111010010";
        ram[48] = "0b111001111";
        ram[49] = "0b110101111";
        ram[50] = "0b110011101";
        ram[51] = "0b000111011";


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


SC_MODULE(L2_wlo_166_L1_WEIocq) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_166_L1_WEIocq_ram* meminst;


SC_CTOR(L2_wlo_166_L1_WEIocq) {
meminst = new L2_wlo_166_L1_WEIocq_ram("L2_wlo_166_L1_WEIocq_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_166_L1_WEIocq() {
    delete meminst;
}


};//endmodule
#endif
