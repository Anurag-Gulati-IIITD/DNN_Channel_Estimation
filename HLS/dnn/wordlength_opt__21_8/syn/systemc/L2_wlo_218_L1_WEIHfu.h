// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIHfu_H__
#define __L2_wlo_218_L1_WEIHfu_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIHfu_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIHfu_ram) {
        ram[0] = "0b000111111110";
        ram[1] = "0b101001000100";
        ram[2] = "0b000010101111";
        ram[3] = "0b000000100100";
        ram[4] = "0b111000100111";
        ram[5] = "0b000110000011";
        ram[6] = "0b000111011100";
        ram[7] = "0b000001011111";
        ram[8] = "0b110101110100";
        ram[9] = "0b111001011110";
        ram[10] = "0b110011101110";
        ram[11] = "0b100110111100";
        ram[12] = "0b110110101110";
        ram[13] = "0b001111110010";
        ram[14] = "0b000111111100";
        ram[15] = "0b010011110111";
        ram[16] = "0b110101000010";
        ram[17] = "0b000010101100";
        ram[18] = "0b000011111011";
        ram[19] = "0b110111001001";
        ram[20] = "0b110001000110";
        ram[21] = "0b110010011001";
        ram[22] = "0b000100101010";
        ram[23] = "0b011000111001";
        ram[24] = "0b000111000111";
        ram[25] = "0b111110011111";
        ram[26] = "0b010100000110";
        ram[27] = "0b111011110110";
        ram[28] = "0b111000111110";
        ram[29] = "0b110111011101";
        ram[30] = "0b110011100100";
        ram[31] = "0b111010111111";
        ram[32] = "0b000101011100";
        ram[33] = "0b000111011110";
        ram[34] = "0b010000010001";
        ram[35] = "0b111110000110";
        ram[36] = "0b000010001011";
        ram[37] = "0b010110010111";
        ram[38] = "0b111101000110";
        ram[39] = "0b110011000010";
        ram[40] = "0b111010111100";
        ram[41] = "0b000110000001";
        ram[42] = "0b111100001001";
        ram[43] = "0b100011100101";
        ram[44] = "0b111101011010";
        ram[45] = "0b110110000010";
        ram[46] = "0b110110100110";
        ram[47] = "0b111111111110";
        ram[48] = "0b111111011000";
        ram[49] = "0b111010110101";
        ram[50] = "0b111000001011";
        ram[51] = "0b000111011010";


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


SC_MODULE(L2_wlo_218_L1_WEIHfu) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIHfu_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIHfu) {
meminst = new L2_wlo_218_L1_WEIHfu_ram("L2_wlo_218_L1_WEIHfu_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIHfu() {
    delete meminst;
}


};//endmodule
#endif
