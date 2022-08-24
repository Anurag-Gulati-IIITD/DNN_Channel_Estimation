// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIocq_H__
#define __L2_wlo_218_L1_WEIocq_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIocq_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIocq_ram) {
        ram[0] = "0b110111111101";
        ram[1] = "0b110011010101";
        ram[2] = "0b111000011110";
        ram[3] = "0b110101001011";
        ram[4] = "0b000000000100";
        ram[5] = "0b111100110001";
        ram[6] = "0b000110111101";
        ram[7] = "0b111110100100";
        ram[8] = "0b010101011110";
        ram[9] = "0b000100001101";
        ram[10] = "0b001110000011";
        ram[11] = "0b000000110001";
        ram[12] = "0b111001101011";
        ram[13] = "0b000010000101";
        ram[14] = "0b101101110011";
        ram[15] = "0b000110001001";
        ram[16] = "0b000010111001";
        ram[17] = "0b001000010010";
        ram[18] = "0b111110010010";
        ram[19] = "0b000001001110";
        ram[20] = "0b111010100001";
        ram[21] = "0b111000100001";
        ram[22] = "0b000011001111";
        ram[23] = "0b001010011111";
        ram[24] = "0b111000101001";
        ram[25] = "0b111010000100";
        ram[26] = "0b010011101000";
        ram[27] = "0b010111100011";
        ram[28] = "0b001110001001";
        ram[29] = "0b001100001101";
        ram[30] = "0b010000111100";
        ram[31] = "0b001001010100";
        ram[32] = "0b111110010011";
        ram[33] = "0b111011110001";
        ram[34] = "0b000011111001";
        ram[35] = "0b101011000110";
        ram[36] = "0b000010111001";
        ram[37] = "0b111010011010";
        ram[38] = "0b110001111001";
        ram[39] = "0b111111111011";
        ram[40] = "0b000001010010";
        ram[41] = "0b111001101011";
        ram[42] = "0b110111111000";
        ram[43] = "0b001100001010";
        ram[44] = "0b111011011110";
        ram[45] = "0b001110001110";
        ram[46] = "0b010011111001";
        ram[47] = "0b111010010011";
        ram[48] = "0b111001111010";
        ram[49] = "0b110101111100";
        ram[50] = "0b110011101101";
        ram[51] = "0b000111011001";


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


SC_MODULE(L2_wlo_218_L1_WEIocq) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIocq_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIocq) {
meminst = new L2_wlo_218_L1_WEIocq_ram("L2_wlo_218_L1_WEIocq_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIocq() {
    delete meminst;
}


};//endmodule
#endif
