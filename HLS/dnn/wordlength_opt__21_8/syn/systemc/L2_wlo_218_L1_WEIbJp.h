// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbJp_H__
#define __L2_wlo_218_L1_WEIbJp_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbJp_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIbJp_ram) {
        ram[0] = "0b110101001010";
        ram[1] = "0b110011001010";
        ram[2] = "0b111010101100";
        ram[3] = "0b111100011101";
        ram[4] = "0b000011100000";
        ram[5] = "0b100010110001";
        ram[6] = "0b000000011011";
        ram[7] = "0b001000110001";
        ram[8] = "0b001101010010";
        ram[9] = "0b001000110111";
        ram[10] = "0b001001110110";
        ram[11] = "0b000110000010";
        ram[12] = "0b001010111010";
        ram[13] = "0b110110111011";
        ram[14] = "0b001000011001";
        ram[15] = "0b010101111110";
        ram[16] = "0b000101110110";
        ram[17] = "0b001001110110";
        ram[18] = "0b000010010000";
        ram[19] = "0b110110111101";
        ram[20] = "0b111011010010";
        ram[21] = "0b001010110110";
        ram[22] = "0b101100001001";
        ram[23] = "0b001111111110";
        ram[24] = "0b111001101101";
        ram[25] = "0b110101111011";
        ram[26] = "0b111011100011";
        ram[27] = "0b111110111011";
        ram[28] = "0b111111110101";
        ram[29] = "0b010011111000";
        ram[30] = "0b110110100010";
        ram[31] = "0b000011011110";
        ram[32] = "0b000100001111";
        ram[33] = "0b000011001100";
        ram[34] = "0b000100100010";
        ram[35] = "0b111100000100";
        ram[36] = "0b110111010100";
        ram[37] = "0b111100001000";
        ram[38] = "0b110111111110";
        ram[39] = "0b000111100001";
        ram[40] = "0b000110011000";
        ram[41] = "0b000000001100";
        ram[42] = "0b101101111100";
        ram[43] = "0b101111000101";
        ram[44] = "0b001001101100";
        ram[45] = "0b000101100000";
        ram[46] = "0b111011110110";
        ram[47] = "0b111101010000";
        ram[48] = "0b111000000111";
        ram[49] = "0b111101010110";
        ram[50] = "0b111100011100";
        ram[51] = "0b110110110100";


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


SC_MODULE(L2_wlo_218_L1_WEIbJp) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbJp_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbJp) {
meminst = new L2_wlo_218_L1_WEIbJp_ram("L2_wlo_218_L1_WEIbJp_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbJp() {
    delete meminst;
}


};//endmodule
#endif
