// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_166_L1_WEIvdy_H__
#define __L2_wlo_166_L1_WEIvdy_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_166_L1_WEIvdy_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_166_L1_WEIvdy_ram) {
        ram[0] = "0b000110010";
        ram[1] = "0b101111011";
        ram[2] = "0b001101100";
        ram[3] = "0b110110110";
        ram[4] = "0b111111011";
        ram[5] = "0b011101001";
        ram[6] = "0b010001011";
        ram[7] = "0b110001001";
        ram[8] = "0b111100101";
        ram[9] = "0b111111011";
        ram[10] = "0b011000011";
        ram[11] = "0b001011110";
        ram[12] = "0b111010101";
        ram[13] = "0b001111100";
        ram[14] = "0b111000101";
        ram[15] = "0b111001001";
        ram[16] = "0b111001111";
        ram[17] = "0b111011100";
        ram[18] = "0b000010011";
        ram[19] = "0b000010100";
        ram[20] = "0b000000100";
        ram[21] = "0b111111111";
        ram[22] = "0b001101010";
        ram[23] = "0b000100110";
        ram[24] = "0b001100001";
        ram[25] = "0b000101101";
        ram[26] = "0b000110010";
        ram[27] = "0b010101001";
        ram[28] = "0b000001001";
        ram[29] = "0b101000000";
        ram[30] = "0b111110110";
        ram[31] = "0b110001111";
        ram[32] = "0b111111101";
        ram[33] = "0b110111111";
        ram[34] = "0b010001010";
        ram[35] = "0b001100101";
        ram[36] = "0b000110101";
        ram[37] = "0b110011111";
        ram[38] = "0b100010001";
        ram[39] = "0b000011010";
        ram[40] = "0b111001001";
        ram[41] = "0b000111100";
        ram[42] = "0b111101000";
        ram[43] = "0b000100110";
        ram[44] = "0b111111100";
        ram[45] = "0b000001010";
        ram[46] = "0b000011000";
        ram[47] = "0b110111101";
        ram[48] = "0b111010111";
        ram[49] = "0b000010101";
        ram[50] = "0b000001110";
        ram[51] = "0b111000000";


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


SC_MODULE(L2_wlo_166_L1_WEIvdy) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_166_L1_WEIvdy_ram* meminst;


SC_CTOR(L2_wlo_166_L1_WEIvdy) {
meminst = new L2_wlo_166_L1_WEIvdy_ram("L2_wlo_166_L1_WEIvdy_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_166_L1_WEIvdy() {
    delete meminst;
}


};//endmodule
#endif
