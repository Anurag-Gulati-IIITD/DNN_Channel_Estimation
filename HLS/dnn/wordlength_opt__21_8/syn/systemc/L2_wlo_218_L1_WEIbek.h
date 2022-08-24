// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbek_H__
#define __L2_wlo_218_L1_WEIbek_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbek_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIbek_ram) {
        ram[0] = "0b000000101101";
        ram[1] = "0b011001100100";
        ram[2] = "0b001010111011";
        ram[3] = "0b110111000101";
        ram[4] = "0b001001110111";
        ram[5] = "0b010110110110";
        ram[6] = "0b111011101101";
        ram[7] = "0b111001100011";
        ram[8] = "0b110101111011";
        ram[9] = "0b000000101000";
        ram[10] = "0b111000010100";
        ram[11] = "0b001111110100";
        ram[12] = "0b111110101100";
        ram[13] = "0b010000010110";
        ram[14] = "0b000000010011";
        ram[15] = "0b001000101111";
        ram[16] = "0b000101110001";
        ram[17] = "0b111010000000";
        ram[18] = "0b000101110101";
        ram[19] = "0b000101111100";
        ram[20] = "0b111111101000";
        ram[21] = "0b111100011101";
        ram[22] = "0b000010100011";
        ram[23] = "0b101000100001";
        ram[24] = "0b111101100010";
        ram[25] = "0b000010001011";
        ram[26] = "0b101101011000";
        ram[27] = "0b000010111110";
        ram[28] = "0b001010111101";
        ram[29] = "0b110110001001";
        ram[30] = "0b111011110001";
        ram[31] = "0b000100011010";
        ram[32] = "0b000011010011";
        ram[33] = "0b110001110111";
        ram[34] = "0b000110111101";
        ram[35] = "0b110110110101";
        ram[36] = "0b110110101000";
        ram[37] = "0b010100011000";
        ram[38] = "0b111010011010";
        ram[39] = "0b110001100011";
        ram[40] = "0b000000101101";
        ram[41] = "0b110110100010";
        ram[42] = "0b111000000101";
        ram[43] = "0b110100000000";
        ram[44] = "0b000010111100";
        ram[45] = "0b111011111100";
        ram[46] = "0b000100010000";
        ram[47] = "0b111100111100";
        ram[48] = "0b000001010011";
        ram[49] = "0b001010100011";
        ram[50] = "0b001110101100";
        ram[51] = "0b001100000011";


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


SC_MODULE(L2_wlo_218_L1_WEIbek) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbek_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbek) {
meminst = new L2_wlo_218_L1_WEIbek_ram("L2_wlo_218_L1_WEIbek_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbek() {
    delete meminst;
}


};//endmodule
#endif
