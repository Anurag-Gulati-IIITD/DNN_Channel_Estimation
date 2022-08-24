// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_166_L1_WEIbgk_H__
#define __L2_wlo_166_L1_WEIbgk_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_166_L1_WEIbgk_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_166_L1_WEIbgk_ram) {
        ram[0] = "0b001001010";
        ram[1] = "0b111100010";
        ram[2] = "0b000011111";
        ram[3] = "0b010011011";
        ram[4] = "0b110101110";
        ram[5] = "0b101101110";
        ram[6] = "0b110011111";
        ram[7] = "0b000001111";
        ram[8] = "0b101011010";
        ram[9] = "0b110100100";
        ram[10] = "0b101100001";
        ram[11] = "0b100011110";
        ram[12] = "0b000101010";
        ram[13] = "0b111101000";
        ram[14] = "0b000110000";
        ram[15] = "0b000011111";
        ram[16] = "0b111111110";
        ram[17] = "0b111100001";
        ram[18] = "0b111111101";
        ram[19] = "0b111110110";
        ram[20] = "0b110110010";
        ram[21] = "0b000011111";
        ram[22] = "0b110000100";
        ram[23] = "0b000000111";
        ram[24] = "0b111001000";
        ram[25] = "0b001000101";
        ram[26] = "0b110110011";
        ram[27] = "0b101011101";
        ram[28] = "0b110111011";
        ram[29] = "0b001101111";
        ram[30] = "0b110111111";
        ram[31] = "0b110010010";
        ram[32] = "0b110111010";
        ram[33] = "0b111001010";
        ram[34] = "0b111011001";
        ram[35] = "0b011000111";
        ram[36] = "0b111111100";
        ram[37] = "0b001011001";
        ram[38] = "0b001100011";
        ram[39] = "0b000011011";
        ram[40] = "0b001000011";
        ram[41] = "0b000011110";
        ram[42] = "0b001101001";
        ram[43] = "0b000011001";
        ram[44] = "0b001110011";
        ram[45] = "0b110011111";
        ram[46] = "0b110000110";
        ram[47] = "0b001010010";
        ram[48] = "0b111001110";
        ram[49] = "0b001011101";
        ram[50] = "0b001111000";
        ram[51] = "0b110101001";


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


SC_MODULE(L2_wlo_166_L1_WEIbgk) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_166_L1_WEIbgk_ram* meminst;


SC_CTOR(L2_wlo_166_L1_WEIbgk) {
meminst = new L2_wlo_166_L1_WEIbgk_ram("L2_wlo_166_L1_WEIbgk_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_166_L1_WEIbgk() {
    delete meminst;
}


};//endmodule
#endif
