// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_166_L1_WEICeG_H__
#define __L2_wlo_166_L1_WEICeG_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_166_L1_WEICeG_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_166_L1_WEICeG_ram) {
        ram[0] = "0b111011110";
        ram[1] = "0b101000111";
        ram[2] = "0b111011101";
        ram[3] = "0b010010111";
        ram[4] = "0b110111011";
        ram[5] = "0b001011110";
        ram[6] = "0b110110001";
        ram[7] = "0b101100011";
        ram[8] = "0b111001001";
        ram[9] = "0b110100100";
        ram[10] = "0b110110111";
        ram[11] = "0b000000110";
        ram[12] = "0b000010001";
        ram[13] = "0b010010111";
        ram[14] = "0b001110011";
        ram[15] = "0b000010100";
        ram[16] = "0b000111000";
        ram[17] = "0b000110100";
        ram[18] = "0b110111011";
        ram[19] = "0b111011011";
        ram[20] = "0b111001010";
        ram[21] = "0b001100010";
        ram[22] = "0b010100001";
        ram[23] = "0b011101001";
        ram[24] = "0b111001010";
        ram[25] = "0b001010101";
        ram[26] = "0b101001000";
        ram[27] = "0b010011011";
        ram[28] = "0b001100000";
        ram[29] = "0b101001111";
        ram[30] = "0b111000001";
        ram[31] = "0b000101101";
        ram[32] = "0b001100001";
        ram[33] = "0b000001100";
        ram[34] = "0b110101100";
        ram[35] = "0b000011011";
        ram[36] = "0b000011010";
        ram[37] = "0b111011001";
        ram[38] = "0b101010010";
        ram[39] = "0b001001000";
        ram[40] = "0b001000101";
        ram[41] = "0b001101110";
        ram[42] = "0b001000110";
        ram[43] = "0b101110110";
        ram[44] = "0b000110110";
        ram[45] = "0b111111010";
        ram[46] = "0b101100101";
        ram[47] = "0b111110100";
        ram[48] = "0b111011111";
        ram[49] = "0b111110101";
        ram[50] = "0b111101111";
        ram[51] = "0b111101001";


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


SC_MODULE(L2_wlo_166_L1_WEICeG) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_166_L1_WEICeG_ram* meminst;


SC_CTOR(L2_wlo_166_L1_WEICeG) {
meminst = new L2_wlo_166_L1_WEICeG_ram("L2_wlo_166_L1_WEICeG_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_166_L1_WEICeG() {
    delete meminst;
}


};//endmodule
#endif
