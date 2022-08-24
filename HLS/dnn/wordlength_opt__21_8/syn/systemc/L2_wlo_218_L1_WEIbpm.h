// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbpm_H__
#define __L2_wlo_218_L1_WEIbpm_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbpm_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIbpm_ram) {
        ram[0] = "0b111100000001";
        ram[1] = "0b100011110101";
        ram[2] = "0b000000110111";
        ram[3] = "0b110111010110";
        ram[4] = "0b000110111011";
        ram[5] = "0b000011101111";
        ram[6] = "0b111111011111";
        ram[7] = "0b000101110101";
        ram[8] = "0b001001100110";
        ram[9] = "0b101011100101";
        ram[10] = "0b111101110001";
        ram[11] = "0b001101100001";
        ram[12] = "0b001001100011";
        ram[13] = "0b001111111110";
        ram[14] = "0b000001110100";
        ram[15] = "0b000001001011";
        ram[16] = "0b001011001011";
        ram[17] = "0b000111111000";
        ram[18] = "0b000111100001";
        ram[19] = "0b111111011101";
        ram[20] = "0b001101011000";
        ram[21] = "0b000110100100";
        ram[22] = "0b000001001101";
        ram[23] = "0b010011110000";
        ram[24] = "0b111000101000";
        ram[25] = "0b000100001000";
        ram[26] = "0b110010111100";
        ram[27] = "0b111101111000";
        ram[28] = "0b001111110011";
        ram[29] = "0b000110110101";
        ram[30] = "0b111101111111";
        ram[31] = "0b000010010011";
        ram[32] = "0b111110110001";
        ram[33] = "0b110110100001";
        ram[34] = "0b001001001100";
        ram[35] = "0b110001110100";
        ram[36] = "0b111101010010";
        ram[37] = "0b001001010111";
        ram[38] = "0b000001001101";
        ram[39] = "0b000110100001";
        ram[40] = "0b000000011101";
        ram[41] = "0b111001000111";
        ram[42] = "0b011110000111";
        ram[43] = "0b000010101000";
        ram[44] = "0b000101010100";
        ram[45] = "0b101110011100";
        ram[46] = "0b001001110110";
        ram[47] = "0b110100000011";
        ram[48] = "0b001101101010";
        ram[49] = "0b000000011100";
        ram[50] = "0b110011011100";
        ram[51] = "0b111111001010";


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


SC_MODULE(L2_wlo_218_L1_WEIbpm) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbpm_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbpm) {
meminst = new L2_wlo_218_L1_WEIbpm_ram("L2_wlo_218_L1_WEIbpm_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbpm() {
    delete meminst;
}


};//endmodule
#endif
