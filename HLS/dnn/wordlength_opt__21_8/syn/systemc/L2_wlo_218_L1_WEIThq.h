// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIThq_H__
#define __L2_wlo_218_L1_WEIThq_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIThq_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIThq_ram) {
        ram[0] = "0b001100111010";
        ram[1] = "0b111110010000";
        ram[2] = "0b110100110111";
        ram[3] = "0b001011100110";
        ram[4] = "0b101011010100";
        ram[5] = "0b111101101010";
        ram[6] = "0b110111100110";
        ram[7] = "0b111110000001";
        ram[8] = "0b001100001011";
        ram[9] = "0b001111101101";
        ram[10] = "0b100100101011";
        ram[11] = "0b101111010111";
        ram[12] = "0b001011110011";
        ram[13] = "0b111011000101";
        ram[14] = "0b110110101100";
        ram[15] = "0b111111101011";
        ram[16] = "0b110101011101";
        ram[17] = "0b000100100000";
        ram[18] = "0b000000100010";
        ram[19] = "0b101011111011";
        ram[20] = "0b110100000110";
        ram[21] = "0b001001110100";
        ram[22] = "0b001010111110";
        ram[23] = "0b000000000001";
        ram[24] = "0b111001110001";
        ram[25] = "0b000010000101";
        ram[26] = "0b010111110010";
        ram[27] = "0b000110001000";
        ram[28] = "0b110011100001";
        ram[29] = "0b000001010001";
        ram[30] = "0b000010000101";
        ram[31] = "0b111011011111";
        ram[32] = "0b000001000100";
        ram[33] = "0b010110100111";
        ram[34] = "0b101011101100";
        ram[35] = "0b001001101001";
        ram[36] = "0b111110110101";
        ram[37] = "0b010101011000";
        ram[38] = "0b110110110000";
        ram[39] = "0b000110000010";
        ram[40] = "0b000011110100";
        ram[41] = "0b001011000111";
        ram[42] = "0b101010001101";
        ram[43] = "0b111011001000";
        ram[44] = "0b001001000101";
        ram[45] = "0b111101111000";
        ram[46] = "0b110010001101";
        ram[47] = "0b000000111000";
        ram[48] = "0b000111101101";
        ram[49] = "0b001111011100";
        ram[50] = "0b101011101000";
        ram[51] = "0b111100110111";


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


SC_MODULE(L2_wlo_218_L1_WEIThq) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIThq_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIThq) {
meminst = new L2_wlo_218_L1_WEIThq_ram("L2_wlo_218_L1_WEIThq_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIThq() {
    delete meminst;
}


};//endmodule
#endif
