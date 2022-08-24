// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_166_L1_WEIWhU_H__
#define __L2_wlo_166_L1_WEIWhU_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_166_L1_WEIWhU_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_166_L1_WEIWhU_ram) {
        ram[0] = "0b000101011";
        ram[1] = "0b110110011";
        ram[2] = "0b111001111";
        ram[3] = "0b111100110";
        ram[4] = "0b001100001";
        ram[5] = "0b101100101";
        ram[6] = "0b111110010";
        ram[7] = "0b001000111";
        ram[8] = "0b101010000";
        ram[9] = "0b010001111";
        ram[10] = "0b001010100";
        ram[11] = "0b000111100";
        ram[12] = "0b000011101";
        ram[13] = "0b111110000";
        ram[14] = "0b000010010";
        ram[15] = "0b000110010";
        ram[16] = "0b001110011";
        ram[17] = "0b001010101";
        ram[18] = "0b001000001";
        ram[19] = "0b001001001";
        ram[20] = "0b111110101";
        ram[21] = "0b111101010";
        ram[22] = "0b110011000";
        ram[23] = "0b111011011";
        ram[24] = "0b000011010";
        ram[25] = "0b110111111";
        ram[26] = "0b111000101";
        ram[27] = "0b110001001";
        ram[28] = "0b001000100";
        ram[29] = "0b010111110";
        ram[30] = "0b111100100";
        ram[31] = "0b111101010";
        ram[32] = "0b110101011";
        ram[33] = "0b110100000";
        ram[34] = "0b001010010";
        ram[35] = "0b101010110";
        ram[36] = "0b110001011";
        ram[37] = "0b101101010";
        ram[38] = "0b000010111";
        ram[39] = "0b111110101";
        ram[40] = "0b000001101";
        ram[41] = "0b101111111";
        ram[42] = "0b110010101";
        ram[43] = "0b110100101";
        ram[44] = "0b000110110";
        ram[45] = "0b000011010";
        ram[46] = "0b000010001";
        ram[47] = "0b001011001";
        ram[48] = "0b111100011";
        ram[49] = "0b111111000";
        ram[50] = "0b010011000";
        ram[51] = "0b000010111";


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


SC_MODULE(L2_wlo_166_L1_WEIWhU) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_166_L1_WEIWhU_ram* meminst;


SC_CTOR(L2_wlo_166_L1_WEIWhU) {
meminst = new L2_wlo_166_L1_WEIWhU_ram("L2_wlo_166_L1_WEIWhU_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_166_L1_WEIWhU() {
    delete meminst;
}


};//endmodule
#endif
