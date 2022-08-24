// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbjl_H__
#define __L2_wlo_218_L1_WEIbjl_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbjl_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIbjl_ram) {
        ram[0] = "0b000010011010";
        ram[1] = "0b110010101010";
        ram[2] = "0b001111011001";
        ram[3] = "0b110101001000";
        ram[4] = "0b111111000010";
        ram[5] = "0b011010100000";
        ram[6] = "0b001011011000";
        ram[7] = "0b110111110111";
        ram[8] = "0b001011000011";
        ram[9] = "0b000011011110";
        ram[10] = "0b001011111101";
        ram[11] = "0b000101001110";
        ram[12] = "0b111100100111";
        ram[13] = "0b010001110000";
        ram[14] = "0b110101111001";
        ram[15] = "0b110101010111";
        ram[16] = "0b111110011010";
        ram[17] = "0b110011110110";
        ram[18] = "0b111110001011";
        ram[19] = "0b001001011110";
        ram[20] = "0b000010101000";
        ram[21] = "0b111101000100";
        ram[22] = "0b000110101000";
        ram[23] = "0b001000010101";
        ram[24] = "0b000011100110";
        ram[25] = "0b001001001101";
        ram[26] = "0b010011110001";
        ram[27] = "0b001110100100";
        ram[28] = "0b111110011010";
        ram[29] = "0b100101011010";
        ram[30] = "0b000001110001";
        ram[31] = "0b110110111111";
        ram[32] = "0b000110001100";
        ram[33] = "0b111111000000";
        ram[34] = "0b000110100101";
        ram[35] = "0b001000001101";
        ram[36] = "0b111111101011";
        ram[37] = "0b101111010011";
        ram[38] = "0b110000111101";
        ram[39] = "0b111111001000";
        ram[40] = "0b110111110000";
        ram[41] = "0b000001011000";
        ram[42] = "0b111100111001";
        ram[43] = "0b010001111100";
        ram[44] = "0b110100110111";
        ram[45] = "0b110100001100";
        ram[46] = "0b001101011111";
        ram[47] = "0b111001101001";
        ram[48] = "0b110111110010";
        ram[49] = "0b101000101110";
        ram[50] = "0b110100111111";
        ram[51] = "0b000110111110";


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


SC_MODULE(L2_wlo_218_L1_WEIbjl) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbjl_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbjl) {
meminst = new L2_wlo_218_L1_WEIbjl_ram("L2_wlo_218_L1_WEIbjl_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbjl() {
    delete meminst;
}


};//endmodule
#endif
