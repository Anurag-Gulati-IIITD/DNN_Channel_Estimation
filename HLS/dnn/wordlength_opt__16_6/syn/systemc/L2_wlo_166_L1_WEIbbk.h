// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_166_L1_WEIbbk_H__
#define __L2_wlo_166_L1_WEIbbk_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_166_L1_WEIbbk_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_166_L1_WEIbbk_ram) {
        ram[0] = "0b000001111";
        ram[1] = "0b101110111";
        ram[2] = "0b110010100";
        ram[3] = "0b111100011";
        ram[4] = "0b111110100";
        ram[5] = "0b101100101";
        ram[6] = "0b000000000";
        ram[7] = "0b000010110";
        ram[8] = "0b001011100";
        ram[9] = "0b001000110";
        ram[10] = "0b000110101";
        ram[11] = "0b101100011";
        ram[12] = "0b111011010";
        ram[13] = "0b111101111";
        ram[14] = "0b111010111";
        ram[15] = "0b101101100";
        ram[16] = "0b111100110";
        ram[17] = "0b011011110";
        ram[18] = "0b000111010";
        ram[19] = "0b111000011";
        ram[20] = "0b000000010";
        ram[21] = "0b001011000";
        ram[22] = "0b110000110";
        ram[23] = "0b010111101";
        ram[24] = "0b110101100";
        ram[25] = "0b000001111";
        ram[26] = "0b000101011";
        ram[27] = "0b001001011";
        ram[28] = "0b000010100";
        ram[29] = "0b011001101";
        ram[30] = "0b000001001";
        ram[31] = "0b000011101";
        ram[32] = "0b000000010";
        ram[33] = "0b111110010";
        ram[34] = "0b001001100";
        ram[35] = "0b101101110";
        ram[36] = "0b111111101";
        ram[37] = "0b000000110";
        ram[38] = "0b111101110";
        ram[39] = "0b110101000";
        ram[40] = "0b001100010";
        ram[41] = "0b111101011";
        ram[42] = "0b110110001";
        ram[43] = "0b001111101";
        ram[44] = "0b111100010";
        ram[45] = "0b111110100";
        ram[46] = "0b000101110";
        ram[47] = "0b000100000";
        ram[48] = "0b110010101";
        ram[49] = "0b000010100";
        ram[50] = "0b110101100";
        ram[51] = "0b001110110";


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


SC_MODULE(L2_wlo_166_L1_WEIbbk) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_166_L1_WEIbbk_ram* meminst;


SC_CTOR(L2_wlo_166_L1_WEIbbk) {
meminst = new L2_wlo_166_L1_WEIbbk_ram("L2_wlo_166_L1_WEIbbk_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_166_L1_WEIbbk() {
    delete meminst;
}


};//endmodule
#endif
