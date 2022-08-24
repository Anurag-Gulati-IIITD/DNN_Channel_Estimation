// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbAo_H__
#define __L2_wlo_218_L1_WEIbAo_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbAo_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIbAo_ram) {
        ram[0] = "0b000011010000";
        ram[1] = "0b001011111010";
        ram[2] = "0b000101110100";
        ram[3] = "0b000001010000";
        ram[4] = "0b111111100000";
        ram[5] = "0b001001001101";
        ram[6] = "0b110010000111";
        ram[7] = "0b111111000110";
        ram[8] = "0b010100011001";
        ram[9] = "0b000100110000";
        ram[10] = "0b110011111111";
        ram[11] = "0b000010001110";
        ram[12] = "0b001001011001";
        ram[13] = "0b010101011110";
        ram[14] = "0b110100100110";
        ram[15] = "0b111001100010";
        ram[16] = "0b000000001110";
        ram[17] = "0b110101111100";
        ram[18] = "0b111100111100";
        ram[19] = "0b000101101000";
        ram[20] = "0b001010000011";
        ram[21] = "0b111101010111";
        ram[22] = "0b110011010011";
        ram[23] = "0b111010110001";
        ram[24] = "0b001000000001";
        ram[25] = "0b111100011000";
        ram[26] = "0b101000001100";
        ram[27] = "0b101010011110";
        ram[28] = "0b000000011011";
        ram[29] = "0b110101110101";
        ram[30] = "0b010010101001";
        ram[31] = "0b110111010111";
        ram[32] = "0b111011000100";
        ram[33] = "0b110011110111";
        ram[34] = "0b000100001111";
        ram[35] = "0b111111101100";
        ram[36] = "0b111101010000";
        ram[37] = "0b000110000110";
        ram[38] = "0b010011010111";
        ram[39] = "0b001110110110";
        ram[40] = "0b110111100001";
        ram[41] = "0b000000101010";
        ram[42] = "0b110101011110";
        ram[43] = "0b001100101111";
        ram[44] = "0b000101111010";
        ram[45] = "0b000001010001";
        ram[46] = "0b110011010011";
        ram[47] = "0b000001100110";
        ram[48] = "0b000001000111";
        ram[49] = "0b000101000101";
        ram[50] = "0b101101110000";
        ram[51] = "0b100111010001";


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


SC_MODULE(L2_wlo_218_L1_WEIbAo) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbAo_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbAo) {
meminst = new L2_wlo_218_L1_WEIbAo_ram("L2_wlo_218_L1_WEIbAo_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbAo() {
    delete meminst;
}


};//endmodule
#endif
