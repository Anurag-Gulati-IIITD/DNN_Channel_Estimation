// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_166_L1_WEIbLp_H__
#define __L2_wlo_166_L1_WEIbLp_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_166_L1_WEIbLp_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 9;
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


   SC_CTOR(L2_wlo_166_L1_WEIbLp_ram) {
        ram[0] = "0b110110101";
        ram[1] = "0b001100110";
        ram[2] = "0b000010100";
        ram[3] = "0b110100001";
        ram[4] = "0b001100111";
        ram[5] = "0b000100100";
        ram[6] = "0b000000010";
        ram[7] = "0b111101111";
        ram[8] = "0b101000000";
        ram[9] = "0b111011010";
        ram[10] = "0b011000011";
        ram[11] = "0b111100011";
        ram[12] = "0b001000010";
        ram[13] = "0b001110010";
        ram[14] = "0b110111011";
        ram[15] = "0b000101111";
        ram[16] = "0b001011001";
        ram[17] = "0b111001001";
        ram[18] = "0b110011100";
        ram[19] = "0b001011100";
        ram[20] = "0b001010010";
        ram[21] = "0b110011111";
        ram[22] = "0b000000010";
        ram[23] = "0b111001011";
        ram[24] = "0b111110010";
        ram[25] = "0b111010000";
        ram[26] = "0b101100110";
        ram[27] = "0b110101011";
        ram[28] = "0b011000001";
        ram[29] = "0b111001110";
        ram[30] = "0b000100011";
        ram[31] = "0b000010111";
        ram[32] = "0b110110001";
        ram[33] = "0b100100111";
        ram[34] = "0b001001101";
        ram[35] = "0b110001000";
        ram[36] = "0b000000111";
        ram[37] = "0b110101000";
        ram[38] = "0b001000000";
        ram[39] = "0b110111100";
        ram[40] = "0b111100101";
        ram[41] = "0b101001111";
        ram[42] = "0b001010101";
        ram[43] = "0b111001011";
        ram[44] = "0b001111111";
        ram[45] = "0b001000001";
        ram[46] = "0b111100101";
        ram[47] = "0b000110111";
        ram[48] = "0b000011100";
        ram[49] = "0b111101111";
        ram[50] = "0b010110100";
        ram[51] = "0b000000100";


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


SC_MODULE(L2_wlo_166_L1_WEIbLp) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_166_L1_WEIbLp_ram* meminst;


SC_CTOR(L2_wlo_166_L1_WEIbLp) {
meminst = new L2_wlo_166_L1_WEIbLp_ram("L2_wlo_166_L1_WEIbLp_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_166_L1_WEIbLp() {
    delete meminst;
}


};//endmodule
#endif
