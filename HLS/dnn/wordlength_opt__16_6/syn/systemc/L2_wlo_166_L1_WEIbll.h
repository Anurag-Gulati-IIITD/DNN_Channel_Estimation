// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_166_L1_WEIbll_H__
#define __L2_wlo_166_L1_WEIbll_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_166_L1_WEIbll_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_166_L1_WEIbll_ram) {
        ram[0] = "0b000010011";
        ram[1] = "0b010000010";
        ram[2] = "0b001000101";
        ram[3] = "0b010100010";
        ram[4] = "0b110010100";
        ram[5] = "0b010100110";
        ram[6] = "0b111101011";
        ram[7] = "0b110101100";
        ram[8] = "0b100010001";
        ram[9] = "0b010101011";
        ram[10] = "0b111011011";
        ram[11] = "0b000010010";
        ram[12] = "0b111010001";
        ram[13] = "0b000011100";
        ram[14] = "0b111001100";
        ram[15] = "0b001100000";
        ram[16] = "0b000001001";
        ram[17] = "0b000011001";
        ram[18] = "0b111001011";
        ram[19] = "0b101101100";
        ram[20] = "0b110110111";
        ram[21] = "0b110110101";
        ram[22] = "0b001101010";
        ram[23] = "0b111011001";
        ram[24] = "0b110111111";
        ram[25] = "0b000000110";
        ram[26] = "0b001101110";
        ram[27] = "0b110111000";
        ram[28] = "0b110110011";
        ram[29] = "0b110100001";
        ram[30] = "0b000011011";
        ram[31] = "0b001001001";
        ram[32] = "0b010001001";
        ram[33] = "0b001000101";
        ram[34] = "0b111001011";
        ram[35] = "0b111011111";
        ram[36] = "0b000111011";
        ram[37] = "0b000010100";
        ram[38] = "0b001001111";
        ram[39] = "0b101101011";
        ram[40] = "0b000011101";
        ram[41] = "0b001001110";
        ram[42] = "0b110000110";
        ram[43] = "0b111001001";
        ram[44] = "0b111010011";
        ram[45] = "0b001010011";
        ram[46] = "0b110100000";
        ram[47] = "0b000000001";
        ram[48] = "0b110000100";
        ram[49] = "0b001101000";
        ram[50] = "0b001011101";
        ram[51] = "0b001001111";


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


SC_MODULE(L2_wlo_166_L1_WEIbll) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_166_L1_WEIbll_ram* meminst;


SC_CTOR(L2_wlo_166_L1_WEIbll) {
meminst = new L2_wlo_166_L1_WEIbll_ram("L2_wlo_166_L1_WEIbll_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_166_L1_WEIbll() {
    delete meminst;
}


};//endmodule
#endif
