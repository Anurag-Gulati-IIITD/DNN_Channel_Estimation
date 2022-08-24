// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_166_L1_WEIrcU_H__
#define __L2_wlo_166_L1_WEIrcU_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_166_L1_WEIrcU_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_166_L1_WEIrcU_ram) {
        ram[0] = "0b001001100";
        ram[1] = "0b001110010";
        ram[2] = "0b111010011";
        ram[3] = "0b010101010";
        ram[4] = "0b111101001";
        ram[5] = "0b111011100";
        ram[6] = "0b101110100";
        ram[7] = "0b000110111";
        ram[8] = "0b100010100";
        ram[9] = "0b110101010";
        ram[10] = "0b101100111";
        ram[11] = "0b101111100";
        ram[12] = "0b111100001";
        ram[13] = "0b001001010";
        ram[14] = "0b000101000";
        ram[15] = "0b001001101";
        ram[16] = "0b111001100";
        ram[17] = "0b001001101";
        ram[18] = "0b000100011";
        ram[19] = "0b000010101";
        ram[20] = "0b110101000";
        ram[21] = "0b000010001";
        ram[22] = "0b000100011";
        ram[23] = "0b110010110";
        ram[24] = "0b110110001";
        ram[25] = "0b000110110";
        ram[26] = "0b100011101";
        ram[27] = "0b101001011";
        ram[28] = "0b000100000";
        ram[29] = "0b010000111";
        ram[30] = "0b110011111";
        ram[31] = "0b000110111";
        ram[32] = "0b000010100";
        ram[33] = "0b111000011";
        ram[34] = "0b101111100";
        ram[35] = "0b111001100";
        ram[36] = "0b000110101";
        ram[37] = "0b011000011";
        ram[38] = "0b000110100";
        ram[39] = "0b111110110";
        ram[40] = "0b000110000";
        ram[41] = "0b111101010";
        ram[42] = "0b111100111";
        ram[43] = "0b110001001";
        ram[44] = "0b000110001";
        ram[45] = "0b000010011";
        ram[46] = "0b110001111";
        ram[47] = "0b000110101";
        ram[48] = "0b000100110";
        ram[49] = "0b001011001";
        ram[50] = "0b010001011";
        ram[51] = "0b111110111";


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


SC_MODULE(L2_wlo_166_L1_WEIrcU) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_166_L1_WEIrcU_ram* meminst;


SC_CTOR(L2_wlo_166_L1_WEIrcU) {
meminst = new L2_wlo_166_L1_WEIrcU_ram("L2_wlo_166_L1_WEIrcU_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_166_L1_WEIrcU() {
    delete meminst;
}


};//endmodule
#endif
