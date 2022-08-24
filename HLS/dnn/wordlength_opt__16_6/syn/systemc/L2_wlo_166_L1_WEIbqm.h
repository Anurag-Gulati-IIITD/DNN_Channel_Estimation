// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_166_L1_WEIbqm_H__
#define __L2_wlo_166_L1_WEIbqm_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_166_L1_WEIbqm_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_166_L1_WEIbqm_ram) {
        ram[0] = "0b000111001";
        ram[1] = "0b101100100";
        ram[2] = "0b111010011";
        ram[3] = "0b001010000";
        ram[4] = "0b110010000";
        ram[5] = "0b011100000";
        ram[6] = "0b111001100";
        ram[7] = "0b101001110";
        ram[8] = "0b111010011";
        ram[9] = "0b110110000";
        ram[10] = "0b001000010";
        ram[11] = "0b001100001";
        ram[12] = "0b010000010";
        ram[13] = "0b001100010";
        ram[14] = "0b111001101";
        ram[15] = "0b000011111";
        ram[16] = "0b111001010";
        ram[17] = "0b111100110";
        ram[18] = "0b111111000";
        ram[19] = "0b000001110";
        ram[20] = "0b001000011";
        ram[21] = "0b111100100";
        ram[22] = "0b011101111";
        ram[23] = "0b010101010";
        ram[24] = "0b111010010";
        ram[25] = "0b110111101";
        ram[26] = "0b100111101";
        ram[27] = "0b010000100";
        ram[28] = "0b000110101";
        ram[29] = "0b101111111";
        ram[30] = "0b000101101";
        ram[31] = "0b111001101";
        ram[32] = "0b001101101";
        ram[33] = "0b110010010";
        ram[34] = "0b111001000";
        ram[35] = "0b000100001";
        ram[36] = "0b111011001";
        ram[37] = "0b000011011";
        ram[38] = "0b110010110";
        ram[39] = "0b001100010";
        ram[40] = "0b001000010";
        ram[41] = "0b001011010";
        ram[42] = "0b111111101";
        ram[43] = "0b111011110";
        ram[44] = "0b000000101";
        ram[45] = "0b111101001";
        ram[46] = "0b110101110";
        ram[47] = "0b111111111";
        ram[48] = "0b001000111";
        ram[49] = "0b010010100";
        ram[50] = "0b000100001";
        ram[51] = "0b110100101";


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


SC_MODULE(L2_wlo_166_L1_WEIbqm) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_166_L1_WEIbqm_ram* meminst;


SC_CTOR(L2_wlo_166_L1_WEIbqm) {
meminst = new L2_wlo_166_L1_WEIbqm_ram("L2_wlo_166_L1_WEIbqm_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_166_L1_WEIbqm() {
    delete meminst;
}


};//endmodule
#endif
