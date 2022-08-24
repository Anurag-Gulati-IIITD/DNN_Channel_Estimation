// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_166_L1_WEIHfu_H__
#define __L2_wlo_166_L1_WEIHfu_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_166_L1_WEIHfu_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_166_L1_WEIHfu_ram) {
        ram[0] = "0b000111111";
        ram[1] = "0b101001000";
        ram[2] = "0b000010101";
        ram[3] = "0b000000100";
        ram[4] = "0b111000100";
        ram[5] = "0b000110000";
        ram[6] = "0b000111011";
        ram[7] = "0b000001011";
        ram[8] = "0b110101110";
        ram[9] = "0b111001011";
        ram[10] = "0b110011101";
        ram[11] = "0b100110111";
        ram[12] = "0b110110101";
        ram[13] = "0b001111110";
        ram[14] = "0b000111111";
        ram[15] = "0b010011110";
        ram[16] = "0b110101000";
        ram[17] = "0b000010101";
        ram[18] = "0b000011111";
        ram[19] = "0b110111001";
        ram[20] = "0b110001000";
        ram[21] = "0b110010011";
        ram[22] = "0b000100101";
        ram[23] = "0b011000111";
        ram[24] = "0b000111000";
        ram[25] = "0b111110011";
        ram[26] = "0b010100000";
        ram[27] = "0b111011110";
        ram[28] = "0b111000111";
        ram[29] = "0b110111011";
        ram[30] = "0b110011100";
        ram[31] = "0b111010111";
        ram[32] = "0b000101011";
        ram[33] = "0b000111011";
        ram[34] = "0b010000010";
        ram[35] = "0b111110000";
        ram[36] = "0b000010001";
        ram[37] = "0b010110010";
        ram[38] = "0b111101000";
        ram[39] = "0b110011000";
        ram[40] = "0b111010111";
        ram[41] = "0b000110000";
        ram[42] = "0b111100001";
        ram[43] = "0b100011100";
        ram[44] = "0b111101011";
        ram[45] = "0b110110000";
        ram[46] = "0b110110100";
        ram[47] = "0b111111111";
        ram[48] = "0b111111011";
        ram[49] = "0b111010110";
        ram[50] = "0b111000001";
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


SC_MODULE(L2_wlo_166_L1_WEIHfu) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_166_L1_WEIHfu_ram* meminst;


SC_CTOR(L2_wlo_166_L1_WEIHfu) {
meminst = new L2_wlo_166_L1_WEIHfu_ram("L2_wlo_166_L1_WEIHfu_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_166_L1_WEIHfu() {
    delete meminst;
}


};//endmodule
#endif
