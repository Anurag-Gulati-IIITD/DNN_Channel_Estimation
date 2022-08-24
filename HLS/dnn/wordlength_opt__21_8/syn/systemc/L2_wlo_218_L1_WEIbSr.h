// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbSr_H__
#define __L2_wlo_218_L1_WEIbSr_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbSr_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIbSr_ram) {
        ram[0] = "0b000101110000";
        ram[1] = "0b000100000010";
        ram[2] = "0b110011101110";
        ram[3] = "0b000001101111";
        ram[4] = "0b010001000100";
        ram[5] = "0b001111110000";
        ram[6] = "0b001100010110";
        ram[7] = "0b000000101101";
        ram[8] = "0b111001101100";
        ram[9] = "0b000010111001";
        ram[10] = "0b000010101001";
        ram[11] = "0b100111100001";
        ram[12] = "0b000011011001";
        ram[13] = "0b010110001110";
        ram[14] = "0b100110110100";
        ram[15] = "0b010100000011";
        ram[16] = "0b111111011000";
        ram[17] = "0b000101101111";
        ram[18] = "0b000011000000";
        ram[19] = "0b110111010111";
        ram[20] = "0b110010000010";
        ram[21] = "0b001001101011";
        ram[22] = "0b001001100110";
        ram[23] = "0b110011110000";
        ram[24] = "0b111000110100";
        ram[25] = "0b111100011110";
        ram[26] = "0b001101011001";
        ram[27] = "0b111100000111";
        ram[28] = "0b111110100101";
        ram[29] = "0b111011111100";
        ram[30] = "0b010101001010";
        ram[31] = "0b110010011100";
        ram[32] = "0b111101001011";
        ram[33] = "0b111110110011";
        ram[34] = "0b001011111110";
        ram[35] = "0b000001101111";
        ram[36] = "0b111111111010";
        ram[37] = "0b000100000010";
        ram[38] = "0b000001011101";
        ram[39] = "0b010110101010";
        ram[40] = "0b000010100110";
        ram[41] = "0b000000110010";
        ram[42] = "0b000010110011";
        ram[43] = "0b101001010111";
        ram[44] = "0b000001001101";
        ram[45] = "0b110111011000";
        ram[46] = "0b110111111011";
        ram[47] = "0b111011001010";
        ram[48] = "0b000111010010";
        ram[49] = "0b101111110100";
        ram[50] = "0b010011000100";
        ram[51] = "0b110001001001";


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


SC_MODULE(L2_wlo_218_L1_WEIbSr) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbSr_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbSr) {
meminst = new L2_wlo_218_L1_WEIbSr_ram("L2_wlo_218_L1_WEIbSr_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbSr() {
    delete meminst;
}


};//endmodule
#endif
