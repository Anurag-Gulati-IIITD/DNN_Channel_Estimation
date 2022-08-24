// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_166_L1_WEIsc4_H__
#define __L2_wlo_166_L1_WEIsc4_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_166_L1_WEIsc4_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_166_L1_WEIsc4_ram) {
        ram[0] = "0b111100100";
        ram[1] = "0b111010111";
        ram[2] = "0b101111000";
        ram[3] = "0b010001000";
        ram[4] = "0b000100000";
        ram[5] = "0b100011101";
        ram[6] = "0b000011110";
        ram[7] = "0b010101010";
        ram[8] = "0b111011111";
        ram[9] = "0b110101111";
        ram[10] = "0b101110111";
        ram[11] = "0b110001111";
        ram[12] = "0b111111111";
        ram[13] = "0b111010100";
        ram[14] = "0b001101000";
        ram[15] = "0b111101100";
        ram[16] = "0b000000100";
        ram[17] = "0b001101111";
        ram[18] = "0b000010001";
        ram[19] = "0b111111100";
        ram[20] = "0b001001001";
        ram[21] = "0b000011110";
        ram[22] = "0b110100101";
        ram[23] = "0b111001000";
        ram[24] = "0b001001101";
        ram[25] = "0b110100111";
        ram[26] = "0b110000100";
        ram[27] = "0b111011010";
        ram[28] = "0b000001010";
        ram[29] = "0b010011010";
        ram[30] = "0b111011110";
        ram[31] = "0b111011111";
        ram[32] = "0b110111010";
        ram[33] = "0b111001001";
        ram[34] = "0b000100111";
        ram[35] = "0b010000000";
        ram[36] = "0b110011101";
        ram[37] = "0b000000111";
        ram[38] = "0b001111111";
        ram[39] = "0b000101100";
        ram[40] = "0b111101111";
        ram[41] = "0b111000001";
        ram[42] = "0b000101000";
        ram[43] = "0b000000011";
        ram[44] = "0b000010110";
        ram[45] = "0b110011011";
        ram[46] = "0b111110100";
        ram[47] = "0b111101101";
        ram[48] = "0b111111101";
        ram[49] = "0b111110001";
        ram[50] = "0b000011111";
        ram[51] = "0b111000100";


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


SC_MODULE(L2_wlo_166_L1_WEIsc4) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_166_L1_WEIsc4_ram* meminst;


SC_CTOR(L2_wlo_166_L1_WEIsc4) {
meminst = new L2_wlo_166_L1_WEIsc4_ram("L2_wlo_166_L1_WEIsc4_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_166_L1_WEIsc4() {
    delete meminst;
}


};//endmodule
#endif
