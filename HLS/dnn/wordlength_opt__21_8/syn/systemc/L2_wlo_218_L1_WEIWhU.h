// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIWhU_H__
#define __L2_wlo_218_L1_WEIWhU_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIWhU_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIWhU_ram) {
        ram[0] = "0b000101011110";
        ram[1] = "0b110110011010";
        ram[2] = "0b111001111101";
        ram[3] = "0b111100110000";
        ram[4] = "0b001100001110";
        ram[5] = "0b101100101000";
        ram[6] = "0b111110010010";
        ram[7] = "0b001000111000";
        ram[8] = "0b101010000110";
        ram[9] = "0b010001111010";
        ram[10] = "0b001010100011";
        ram[11] = "0b000111100111";
        ram[12] = "0b000011101100";
        ram[13] = "0b111110000011";
        ram[14] = "0b000010010100";
        ram[15] = "0b000110010001";
        ram[16] = "0b001110011000";
        ram[17] = "0b001010101010";
        ram[18] = "0b001000001000";
        ram[19] = "0b001001001101";
        ram[20] = "0b111110101000";
        ram[21] = "0b111101010111";
        ram[22] = "0b110011000010";
        ram[23] = "0b111011011101";
        ram[24] = "0b000011010011";
        ram[25] = "0b110111111100";
        ram[26] = "0b111000101011";
        ram[27] = "0b110001001100";
        ram[28] = "0b001000100111";
        ram[29] = "0b010111110100";
        ram[30] = "0b111100100010";
        ram[31] = "0b111101010011";
        ram[32] = "0b110101011010";
        ram[33] = "0b110100000101";
        ram[34] = "0b001010010111";
        ram[35] = "0b101010110100";
        ram[36] = "0b110001011000";
        ram[37] = "0b101101010010";
        ram[38] = "0b000010111000";
        ram[39] = "0b111110101010";
        ram[40] = "0b000001101011";
        ram[41] = "0b101111111110";
        ram[42] = "0b110010101100";
        ram[43] = "0b110100101100";
        ram[44] = "0b000110110111";
        ram[45] = "0b000011010010";
        ram[46] = "0b000010001011";
        ram[47] = "0b001011001011";
        ram[48] = "0b111100011110";
        ram[49] = "0b111111000101";
        ram[50] = "0b010011000001";
        ram[51] = "0b000010111010";


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


SC_MODULE(L2_wlo_218_L1_WEIWhU) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIWhU_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIWhU) {
meminst = new L2_wlo_218_L1_WEIWhU_ram("L2_wlo_218_L1_WEIWhU_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIWhU() {
    delete meminst;
}


};//endmodule
#endif
