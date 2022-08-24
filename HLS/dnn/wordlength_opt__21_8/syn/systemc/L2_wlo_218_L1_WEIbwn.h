// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbwn_H__
#define __L2_wlo_218_L1_WEIbwn_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbwn_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIbwn_ram) {
        ram[0] = "0b111000000011";
        ram[1] = "0b101110110101";
        ram[2] = "0b101101000010";
        ram[3] = "0b001101000100";
        ram[4] = "0b110010111011";
        ram[5] = "0b111101000011";
        ram[6] = "0b111111101111";
        ram[7] = "0b110100110001";
        ram[8] = "0b110011010110";
        ram[9] = "0b111010111000";
        ram[10] = "0b110100101000";
        ram[11] = "0b100101011011";
        ram[12] = "0b111110100011";
        ram[13] = "0b001010101000";
        ram[14] = "0b001010110001";
        ram[15] = "0b010100010101";
        ram[16] = "0b111111010101";
        ram[17] = "0b001000000011";
        ram[18] = "0b000101110110";
        ram[19] = "0b110001101010";
        ram[20] = "0b110110010001";
        ram[21] = "0b000101110000";
        ram[22] = "0b010011000101";
        ram[23] = "0b010101001000";
        ram[24] = "0b111000111001";
        ram[25] = "0b110111001010";
        ram[26] = "0b011011000001";
        ram[27] = "0b010101100101";
        ram[28] = "0b000100100011";
        ram[29] = "0b111110001111";
        ram[30] = "0b111100110000";
        ram[31] = "0b000010010000";
        ram[32] = "0b001001011011";
        ram[33] = "0b000011111100";
        ram[34] = "0b110111011101";
        ram[35] = "0b100111001010";
        ram[36] = "0b000011110001";
        ram[37] = "0b010000100010";
        ram[38] = "0b101111110010";
        ram[39] = "0b110011111101";
        ram[40] = "0b001001010110";
        ram[41] = "0b001110100011";
        ram[42] = "0b001010110100";
        ram[43] = "0b110100110101";
        ram[44] = "0b001011010001";
        ram[45] = "0b110001110000";
        ram[46] = "0b110001100101";
        ram[47] = "0b000001111001";
        ram[48] = "0b000011000110";
        ram[49] = "0b000111001100";
        ram[50] = "0b001000011000";
        ram[51] = "0b000111000110";


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


SC_MODULE(L2_wlo_218_L1_WEIbwn) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbwn_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbwn) {
meminst = new L2_wlo_218_L1_WEIbwn_ram("L2_wlo_218_L1_WEIbwn_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbwn() {
    delete meminst;
}


};//endmodule
#endif
