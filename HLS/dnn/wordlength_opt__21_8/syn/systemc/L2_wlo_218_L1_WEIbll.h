// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbll_H__
#define __L2_wlo_218_L1_WEIbll_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbll_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIbll_ram) {
        ram[0] = "0b000010011001";
        ram[1] = "0b010000010010";
        ram[2] = "0b001000101111";
        ram[3] = "0b010100010101";
        ram[4] = "0b110010100111";
        ram[5] = "0b010100110100";
        ram[6] = "0b111101011110";
        ram[7] = "0b110101100100";
        ram[8] = "0b100010001110";
        ram[9] = "0b010101011000";
        ram[10] = "0b111011011011";
        ram[11] = "0b000010010111";
        ram[12] = "0b111010001111";
        ram[13] = "0b000011100111";
        ram[14] = "0b111001100011";
        ram[15] = "0b001100000010";
        ram[16] = "0b000001001000";
        ram[17] = "0b000011001010";
        ram[18] = "0b111001011100";
        ram[19] = "0b101101100010";
        ram[20] = "0b110110111001";
        ram[21] = "0b110110101111";
        ram[22] = "0b001101010111";
        ram[23] = "0b111011001010";
        ram[24] = "0b110111111100";
        ram[25] = "0b000000110110";
        ram[26] = "0b001101110101";
        ram[27] = "0b110111000011";
        ram[28] = "0b110110011101";
        ram[29] = "0b110100001001";
        ram[30] = "0b000011011010";
        ram[31] = "0b001001001100";
        ram[32] = "0b010001001111";
        ram[33] = "0b001000101001";
        ram[34] = "0b111001011011";
        ram[35] = "0b111011111010";
        ram[36] = "0b000111011111";
        ram[37] = "0b000010100100";
        ram[38] = "0b001001111100";
        ram[39] = "0b101101011000";
        ram[40] = "0b000011101010";
        ram[41] = "0b001001110001";
        ram[42] = "0b110000110110";
        ram[43] = "0b111001001110";
        ram[44] = "0b111010011101";
        ram[45] = "0b001010011011";
        ram[46] = "0b110100000011";
        ram[47] = "0b000000001000";
        ram[48] = "0b110000100000";
        ram[49] = "0b001101000000";
        ram[50] = "0b001011101110";
        ram[51] = "0b001001111110";


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


SC_MODULE(L2_wlo_218_L1_WEIbll) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbll_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbll) {
meminst = new L2_wlo_218_L1_WEIbll_ram("L2_wlo_218_L1_WEIbll_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbll() {
    delete meminst;
}


};//endmodule
#endif
