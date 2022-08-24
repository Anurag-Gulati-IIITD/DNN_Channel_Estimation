// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIudo_H__
#define __L2_wlo_218_L1_WEIudo_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIudo_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIudo_ram) {
        ram[0] = "0b111001011110";
        ram[1] = "0b111000001110";
        ram[2] = "0b001001110100";
        ram[3] = "0b110001101001";
        ram[4] = "0b001111000010";
        ram[5] = "0b001111010000";
        ram[6] = "0b000010100010";
        ram[7] = "0b000001110111";
        ram[8] = "0b010100011001";
        ram[9] = "0b101111110011";
        ram[10] = "0b010101001100";
        ram[11] = "0b010100011000";
        ram[12] = "0b000111100110";
        ram[13] = "0b110111001001";
        ram[14] = "0b000011100000";
        ram[15] = "0b110111110110";
        ram[16] = "0b000011101010";
        ram[17] = "0b111010100111";
        ram[18] = "0b110111001111";
        ram[19] = "0b001011111101";
        ram[20] = "0b001111000001";
        ram[21] = "0b101011100111";
        ram[22] = "0b000100110110";
        ram[23] = "0b001110101101";
        ram[24] = "0b001101111100";
        ram[25] = "0b000011111001";
        ram[26] = "0b111101110110";
        ram[27] = "0b000101100111";
        ram[28] = "0b001001110111";
        ram[29] = "0b101101100100";
        ram[30] = "0b000110010000";
        ram[31] = "0b111011101101";
        ram[32] = "0b111110110011";
        ram[33] = "0b111011011101";
        ram[34] = "0b001001111110";
        ram[35] = "0b000110000100";
        ram[36] = "0b000000000000";
        ram[37] = "0b101111111000";
        ram[38] = "0b110001111001";
        ram[39] = "0b010101000101";
        ram[40] = "0b110010100111";
        ram[41] = "0b101111110101";
        ram[42] = "0b000111110100";
        ram[43] = "0b010010100101";
        ram[44] = "0b000010011111";
        ram[45] = "0b110110101100";
        ram[46] = "0b010011000111";
        ram[47] = "0b110101101000";
        ram[48] = "0b000111001110";
        ram[49] = "0b100110010101";
        ram[50] = "0b101000001111";
        ram[51] = "0b111111101011";


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


SC_MODULE(L2_wlo_218_L1_WEIudo) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIudo_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIudo) {
meminst = new L2_wlo_218_L1_WEIudo_ram("L2_wlo_218_L1_WEIudo_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIudo() {
    delete meminst;
}


};//endmodule
#endif
