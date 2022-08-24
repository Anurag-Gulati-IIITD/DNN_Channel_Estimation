// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_166_L1_WEIbzo_H__
#define __L2_wlo_166_L1_WEIbzo_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_166_L1_WEIbzo_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_166_L1_WEIbzo_ram) {
        ram[0] = "0b111000110";
        ram[1] = "0b011101110";
        ram[2] = "0b000100100";
        ram[3] = "0b000101110";
        ram[4] = "0b000111101";
        ram[5] = "0b110001100";
        ram[6] = "0b110001110";
        ram[7] = "0b000011000";
        ram[8] = "0b111111110";
        ram[9] = "0b000001111";
        ram[10] = "0b110111010";
        ram[11] = "0b010101100";
        ram[12] = "0b001101110";
        ram[13] = "0b111011101";
        ram[14] = "0b101010010";
        ram[15] = "0b100100000";
        ram[16] = "0b000100111";
        ram[17] = "0b001111010";
        ram[18] = "0b111001111";
        ram[19] = "0b001000011";
        ram[20] = "0b000100000";
        ram[21] = "0b000101011";
        ram[22] = "0b111101100";
        ram[23] = "0b100110000";
        ram[24] = "0b111001001";
        ram[25] = "0b111010101";
        ram[26] = "0b110100001";
        ram[27] = "0b111010100";
        ram[28] = "0b000010111";
        ram[29] = "0b000111000";
        ram[30] = "0b011001111";
        ram[31] = "0b111010001";
        ram[32] = "0b001011101";
        ram[33] = "0b111101110";
        ram[34] = "0b110111010";
        ram[35] = "0b101001110";
        ram[36] = "0b111001011";
        ram[37] = "0b000011101";
        ram[38] = "0b001000001";
        ram[39] = "0b111010110";
        ram[40] = "0b000100011";
        ram[41] = "0b110111110";
        ram[42] = "0b101111110";
        ram[43] = "0b011010001";
        ram[44] = "0b000111000";
        ram[45] = "0b000111010";
        ram[46] = "0b000101100";
        ram[47] = "0b000110111";
        ram[48] = "0b110110100";
        ram[49] = "0b010010101";
        ram[50] = "0b111001001";
        ram[51] = "0b111000010";


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


SC_MODULE(L2_wlo_166_L1_WEIbzo) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_166_L1_WEIbzo_ram* meminst;


SC_CTOR(L2_wlo_166_L1_WEIbzo) {
meminst = new L2_wlo_166_L1_WEIbzo_ram("L2_wlo_166_L1_WEIbzo_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_166_L1_WEIbzo() {
    delete meminst;
}


};//endmodule
#endif
