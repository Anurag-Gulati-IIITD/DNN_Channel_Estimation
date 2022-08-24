// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEI0iy_H__
#define __L2_wlo_218_L1_WEI0iy_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEI0iy_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEI0iy_ram) {
        ram[0] = "0b000011000110";
        ram[1] = "0b110010011000";
        ram[2] = "0b010011100100";
        ram[3] = "0b000011101110";
        ram[4] = "0b111000101110";
        ram[5] = "0b111000000111";
        ram[6] = "0b111000111011";
        ram[7] = "0b110111011000";
        ram[8] = "0b010000011101";
        ram[9] = "0b111010000111";
        ram[10] = "0b111100011001";
        ram[11] = "0b001101111011";
        ram[12] = "0b110110010011";
        ram[13] = "0b101100100100";
        ram[14] = "0b001010100110";
        ram[15] = "0b110000010000";
        ram[16] = "0b111000110101";
        ram[17] = "0b110011010011";
        ram[18] = "0b111101100000";
        ram[19] = "0b000001000110";
        ram[20] = "0b000000011100";
        ram[21] = "0b110001110101";
        ram[22] = "0b000010100100";
        ram[23] = "0b001010110001";
        ram[24] = "0b111111011010";
        ram[25] = "0b000010111010";
        ram[26] = "0b000001111011";
        ram[27] = "0b000110010100";
        ram[28] = "0b111100001001";
        ram[29] = "0b111101111111";
        ram[30] = "0b101010011011";
        ram[31] = "0b001001110011";
        ram[32] = "0b001111111101";
        ram[33] = "0b000111001001";
        ram[34] = "0b110100110000";
        ram[35] = "0b010110011001";
        ram[36] = "0b000011011100";
        ram[37] = "0b001111000001";
        ram[38] = "0b111001101100";
        ram[39] = "0b110001001011";
        ram[40] = "0b110100101010";
        ram[41] = "0b001000011111";
        ram[42] = "0b000110110101";
        ram[43] = "0b001111110101";
        ram[44] = "0b001011111101";
        ram[45] = "0b000111010111";
        ram[46] = "0b111010101011";
        ram[47] = "0b111100001010";
        ram[48] = "0b000101000011";
        ram[49] = "0b001111110010";
        ram[50] = "0b111010000001";
        ram[51] = "0b010011111001";


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


SC_MODULE(L2_wlo_218_L1_WEI0iy) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEI0iy_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEI0iy) {
meminst = new L2_wlo_218_L1_WEI0iy_ram("L2_wlo_218_L1_WEI0iy_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEI0iy() {
    delete meminst;
}


};//endmodule
#endif
