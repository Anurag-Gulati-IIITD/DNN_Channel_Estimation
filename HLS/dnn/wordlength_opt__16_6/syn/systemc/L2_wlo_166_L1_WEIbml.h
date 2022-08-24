// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_166_L1_WEIbml_H__
#define __L2_wlo_166_L1_WEIbml_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_166_L1_WEIbml_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_166_L1_WEIbml_ram) {
        ram[0] = "0b110010001";
        ram[1] = "0b000111101";
        ram[2] = "0b110111101";
        ram[3] = "0b000001111";
        ram[4] = "0b001011010";
        ram[5] = "0b101000111";
        ram[6] = "0b111110100";
        ram[7] = "0b001100101";
        ram[8] = "0b111010011";
        ram[9] = "0b001011111";
        ram[10] = "0b101111000";
        ram[11] = "0b111000011";
        ram[12] = "0b111010000";
        ram[13] = "0b101101101";
        ram[14] = "0b000011001";
        ram[15] = "0b001110110";
        ram[16] = "0b000010001";
        ram[17] = "0b010101011";
        ram[18] = "0b001001011";
        ram[19] = "0b110100000";
        ram[20] = "0b111000100";
        ram[21] = "0b111101100";
        ram[22] = "0b101100000";
        ram[23] = "0b110001110";
        ram[24] = "0b110111110";
        ram[25] = "0b111101011";
        ram[26] = "0b001111110";
        ram[27] = "0b101011001";
        ram[28] = "0b110100111";
        ram[29] = "0b010111100";
        ram[30] = "0b000100010";
        ram[31] = "0b000111101";
        ram[32] = "0b111001111";
        ram[33] = "0b010011001";
        ram[34] = "0b110001110";
        ram[35] = "0b110010111";
        ram[36] = "0b000011111";
        ram[37] = "0b010001101";
        ram[38] = "0b011000100";
        ram[39] = "0b111011111";
        ram[40] = "0b000001010";
        ram[41] = "0b111110111";
        ram[42] = "0b110010111";
        ram[43] = "0b110011110";
        ram[44] = "0b111100100";
        ram[45] = "0b001000101";
        ram[46] = "0b111110100";
        ram[47] = "0b111101000";
        ram[48] = "0b110001110";
        ram[49] = "0b000111111";
        ram[50] = "0b000010100";
        ram[51] = "0b010011111";


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


SC_MODULE(L2_wlo_166_L1_WEIbml) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_166_L1_WEIbml_ram* meminst;


SC_CTOR(L2_wlo_166_L1_WEIbml) {
meminst = new L2_wlo_166_L1_WEIbml_ram("L2_wlo_166_L1_WEIbml_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_166_L1_WEIbml() {
    delete meminst;
}


};//endmodule
#endif
