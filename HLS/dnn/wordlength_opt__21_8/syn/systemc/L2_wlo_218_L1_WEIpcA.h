// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIpcA_H__
#define __L2_wlo_218_L1_WEIpcA_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIpcA_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIpcA_ram) {
        ram[0] = "0b000111010100";
        ram[1] = "0b000010010101";
        ram[2] = "0b000101001101";
        ram[3] = "0b110111000011";
        ram[4] = "0b111110010000";
        ram[5] = "0b010100111100";
        ram[6] = "0b000101101000";
        ram[7] = "0b101110101100";
        ram[8] = "0b111010111001";
        ram[9] = "0b000111111111";
        ram[10] = "0b111000111110";
        ram[11] = "0b001010111001";
        ram[12] = "0b110101101010";
        ram[13] = "0b011000100100";
        ram[14] = "0b110011110100";
        ram[15] = "0b000110010111";
        ram[16] = "0b001001101110";
        ram[17] = "0b111101110110";
        ram[18] = "0b000001100111";
        ram[19] = "0b000100111101";
        ram[20] = "0b111111100011";
        ram[21] = "0b111011001101";
        ram[22] = "0b010111010001";
        ram[23] = "0b111011100011";
        ram[24] = "0b111001110010";
        ram[25] = "0b000010010011";
        ram[26] = "0b111100100111";
        ram[27] = "0b000101111001";
        ram[28] = "0b010001010110";
        ram[29] = "0b101001101110";
        ram[30] = "0b011001010001";
        ram[31] = "0b001001000000";
        ram[32] = "0b110111100000";
        ram[33] = "0b110010001011";
        ram[34] = "0b000110110010";
        ram[35] = "0b100111001101";
        ram[36] = "0b110110101101";
        ram[37] = "0b001101010100";
        ram[38] = "0b101101101101";
        ram[39] = "0b111001111001";
        ram[40] = "0b000110011101";
        ram[41] = "0b111111111111";
        ram[42] = "0b110100111010";
        ram[43] = "0b111111111101";
        ram[44] = "0b000011000001";
        ram[45] = "0b000111001110";
        ram[46] = "0b001100001001";
        ram[47] = "0b000000010101";
        ram[48] = "0b110110100011";
        ram[49] = "0b111001011110";
        ram[50] = "0b000001010010";
        ram[51] = "0b001000001000";


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


SC_MODULE(L2_wlo_218_L1_WEIpcA) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIpcA_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIpcA) {
meminst = new L2_wlo_218_L1_WEIpcA_ram("L2_wlo_218_L1_WEIpcA_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIpcA() {
    delete meminst;
}


};//endmodule
#endif
