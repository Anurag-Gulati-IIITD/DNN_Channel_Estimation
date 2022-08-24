// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIncg_H__
#define __L2_wlo_218_L1_WEIncg_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIncg_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIncg_ram) {
        ram[0] = "0b110111001000";
        ram[1] = "0b101101010110";
        ram[2] = "0b110111000111";
        ram[3] = "0b111010001101";
        ram[4] = "0b111101101010";
        ram[5] = "0b110001010100";
        ram[6] = "0b000100001001";
        ram[7] = "0b000100100000";
        ram[8] = "0b010110111000";
        ram[9] = "0b111001111111";
        ram[10] = "0b010000111001";
        ram[11] = "0b000111001011";
        ram[12] = "0b110100110001";
        ram[13] = "0b110111011110";
        ram[14] = "0b110111001110";
        ram[15] = "0b100110010100";
        ram[16] = "0b001010001011";
        ram[17] = "0b111111001100";
        ram[18] = "0b000010100110";
        ram[19] = "0b111000101111";
        ram[20] = "0b000011010001";
        ram[21] = "0b111110111110";
        ram[22] = "0b000000101010";
        ram[23] = "0b010001101110";
        ram[24] = "0b000000011111";
        ram[25] = "0b000000100100";
        ram[26] = "0b001111000101";
        ram[27] = "0b000011101110";
        ram[28] = "0b110011000110";
        ram[29] = "0b001011110010";
        ram[30] = "0b001110000101";
        ram[31] = "0b111110001111";
        ram[32] = "0b111101001101";
        ram[33] = "0b000010001101";
        ram[34] = "0b000010110100";
        ram[35] = "0b111001101010";
        ram[36] = "0b000111111011";
        ram[37] = "0b101111101111";
        ram[38] = "0b110100100000";
        ram[39] = "0b110001001111";
        ram[40] = "0b000110000101";
        ram[41] = "0b000010110010";
        ram[42] = "0b000001001001";
        ram[43] = "0b010000100101";
        ram[44] = "0b111001001010";
        ram[45] = "0b000000000001";
        ram[46] = "0b001101110101";
        ram[47] = "0b110101110011";
        ram[48] = "0b111010110100";
        ram[49] = "0b110110101110";
        ram[50] = "0b100111110111";
        ram[51] = "0b001000110000";


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


SC_MODULE(L2_wlo_218_L1_WEIncg) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIncg_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIncg) {
meminst = new L2_wlo_218_L1_WEIncg_ram("L2_wlo_218_L1_WEIncg_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIncg() {
    delete meminst;
}


};//endmodule
#endif
