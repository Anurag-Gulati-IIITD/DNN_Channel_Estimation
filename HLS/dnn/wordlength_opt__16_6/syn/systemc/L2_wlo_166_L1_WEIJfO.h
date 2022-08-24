// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_166_L1_WEIJfO_H__
#define __L2_wlo_166_L1_WEIJfO_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_166_L1_WEIJfO_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_166_L1_WEIJfO_ram) {
        ram[0] = "0b000010001";
        ram[1] = "0b001011101";
        ram[2] = "0b111111000";
        ram[3] = "0b111111111";
        ram[4] = "0b000011101";
        ram[5] = "0b110010111";
        ram[6] = "0b000101100";
        ram[7] = "0b111110010";
        ram[8] = "0b100111100";
        ram[9] = "0b110010001";
        ram[10] = "0b111110011";
        ram[11] = "0b000011001";
        ram[12] = "0b111010100";
        ram[13] = "0b110101010";
        ram[14] = "0b001010000";
        ram[15] = "0b110101010";
        ram[16] = "0b000011111";
        ram[17] = "0b001001010";
        ram[18] = "0b000010111";
        ram[19] = "0b111001111";
        ram[20] = "0b111001011";
        ram[21] = "0b000011000";
        ram[22] = "0b111111000";
        ram[23] = "0b000111011";
        ram[24] = "0b000001001";
        ram[25] = "0b000110010";
        ram[26] = "0b010100001";
        ram[27] = "0b010001111";
        ram[28] = "0b110101111";
        ram[29] = "0b001011000";
        ram[30] = "0b110000101";
        ram[31] = "0b111001001";
        ram[32] = "0b000101110";
        ram[33] = "0b111101100";
        ram[34] = "0b111000100";
        ram[35] = "0b100010111";
        ram[36] = "0b111010101";
        ram[37] = "0b111101011";
        ram[38] = "0b100101010";
        ram[39] = "0b111101110";
        ram[40] = "0b001000110";
        ram[41] = "0b111111101";
        ram[42] = "0b001111000";
        ram[43] = "0b001001011";
        ram[44] = "0b111010001";
        ram[45] = "0b000010101";
        ram[46] = "0b111110011";
        ram[47] = "0b000111001";
        ram[48] = "0b111111001";
        ram[49] = "0b001011001";
        ram[50] = "0b010000100";
        ram[51] = "0b000101000";


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


SC_MODULE(L2_wlo_166_L1_WEIJfO) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_166_L1_WEIJfO_ram* meminst;


SC_CTOR(L2_wlo_166_L1_WEIJfO) {
meminst = new L2_wlo_166_L1_WEIJfO_ram("L2_wlo_166_L1_WEIJfO_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_166_L1_WEIJfO() {
    delete meminst;
}


};//endmodule
#endif
