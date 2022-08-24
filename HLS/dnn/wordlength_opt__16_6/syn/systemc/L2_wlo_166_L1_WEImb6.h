// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_166_L1_WEImb6_H__
#define __L2_wlo_166_L1_WEImb6_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_166_L1_WEImb6_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_166_L1_WEImb6_ram) {
        ram[0] = "0b000011010";
        ram[1] = "0b110100000";
        ram[2] = "0b110111000";
        ram[3] = "0b111110001";
        ram[4] = "0b111000111";
        ram[5] = "0b110000010";
        ram[6] = "0b000101100";
        ram[7] = "0b001110111";
        ram[8] = "0b110100011";
        ram[9] = "0b110111111";
        ram[10] = "0b001111100";
        ram[11] = "0b100110011";
        ram[12] = "0b000010110";
        ram[13] = "0b111000001";
        ram[14] = "0b000101110";
        ram[15] = "0b101101011";
        ram[16] = "0b111010000";
        ram[17] = "0b010001100";
        ram[18] = "0b111100010";
        ram[19] = "0b111000100";
        ram[20] = "0b111001010";
        ram[21] = "0b000010000";
        ram[22] = "0b101110000";
        ram[23] = "0b001110111";
        ram[24] = "0b111101011";
        ram[25] = "0b111001011";
        ram[26] = "0b010010001";
        ram[27] = "0b100011000";
        ram[28] = "0b111000110";
        ram[29] = "0b001011010";
        ram[30] = "0b111011010";
        ram[31] = "0b111101011";
        ram[32] = "0b000110000";
        ram[33] = "0b000010001";
        ram[34] = "0b111011000";
        ram[35] = "0b000011110";
        ram[36] = "0b000001001";
        ram[37] = "0b111010110";
        ram[38] = "0b010000110";
        ram[39] = "0b000110010";
        ram[40] = "0b111100010";
        ram[41] = "0b001101000";
        ram[42] = "0b111111111";
        ram[43] = "0b010000010";
        ram[44] = "0b111100111";
        ram[45] = "0b010000111";
        ram[46] = "0b111001111";
        ram[47] = "0b001000000";
        ram[48] = "0b111000011";
        ram[49] = "0b111110011";
        ram[50] = "0b000001101";
        ram[51] = "0b110011001";


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


SC_MODULE(L2_wlo_166_L1_WEImb6) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_166_L1_WEImb6_ram* meminst;


SC_CTOR(L2_wlo_166_L1_WEImb6) {
meminst = new L2_wlo_166_L1_WEImb6_ram("L2_wlo_166_L1_WEImb6_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_166_L1_WEImb6() {
    delete meminst;
}


};//endmodule
#endif
