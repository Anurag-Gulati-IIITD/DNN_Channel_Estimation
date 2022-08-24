// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbhl_H__
#define __L2_wlo_218_L1_WEIbhl_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbhl_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIbhl_ram) {
        ram[0] = "0b111111010011";
        ram[1] = "0b000001111110";
        ram[2] = "0b111010010101";
        ram[3] = "0b000010111111";
        ram[4] = "0b000000100101";
        ram[5] = "0b101010100101";
        ram[6] = "0b000110011010";
        ram[7] = "0b001001000101";
        ram[8] = "0b000101010000";
        ram[9] = "0b101101011010";
        ram[10] = "0b111100011111";
        ram[11] = "0b110111111011";
        ram[12] = "0b010000010110";
        ram[13] = "0b110011100010";
        ram[14] = "0b001001001000";
        ram[15] = "0b111001110100";
        ram[16] = "0b001001001111";
        ram[17] = "0b000101110101";
        ram[18] = "0b110101010001";
        ram[19] = "0b111100110111";
        ram[20] = "0b000101111011";
        ram[21] = "0b111001100001";
        ram[22] = "0b101011001010";
        ram[23] = "0b000001110010";
        ram[24] = "0b010000001111";
        ram[25] = "0b000101100000";
        ram[26] = "0b110101000110";
        ram[27] = "0b111111101111";
        ram[28] = "0b000000011000";
        ram[29] = "0b010110001111";
        ram[30] = "0b110101000011";
        ram[31] = "0b111011111100";
        ram[32] = "0b110101000100";
        ram[33] = "0b000001111000";
        ram[34] = "0b001011100100";
        ram[35] = "0b010011001011";
        ram[36] = "0b111111000111";
        ram[37] = "0b000010011011";
        ram[38] = "0b001010010010";
        ram[39] = "0b000000110010";
        ram[40] = "0b111011110011";
        ram[41] = "0b110110011100";
        ram[42] = "0b000100111000";
        ram[43] = "0b001111000111";
        ram[44] = "0b110100110010";
        ram[45] = "0b111110000110";
        ram[46] = "0b110101101010";
        ram[47] = "0b111110001011";
        ram[48] = "0b000100000101";
        ram[49] = "0b000001100001";
        ram[50] = "0b111010000001";
        ram[51] = "0b110001010111";


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


SC_MODULE(L2_wlo_218_L1_WEIbhl) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbhl_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbhl) {
meminst = new L2_wlo_218_L1_WEIbhl_ram("L2_wlo_218_L1_WEIbhl_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbhl() {
    delete meminst;
}


};//endmodule
#endif
