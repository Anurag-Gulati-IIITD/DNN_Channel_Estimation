// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIxdS_H__
#define __L2_wlo_218_L1_WEIxdS_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIxdS_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIxdS_ram) {
        ram[0] = "0b111001111001";
        ram[1] = "0b011010101000";
        ram[2] = "0b001000011001";
        ram[3] = "0b001001101010";
        ram[4] = "0b110001000111";
        ram[5] = "0b010000101010";
        ram[6] = "0b111101100101";
        ram[7] = "0b110110101000";
        ram[8] = "0b100110100011";
        ram[9] = "0b010000110001";
        ram[10] = "0b001110101001";
        ram[11] = "0b111010011100";
        ram[12] = "0b101111010110";
        ram[13] = "0b111101110001";
        ram[14] = "0b000011000001";
        ram[15] = "0b000101111100";
        ram[16] = "0b111100100100";
        ram[17] = "0b110001110011";
        ram[18] = "0b000011101100";
        ram[19] = "0b110101101000";
        ram[20] = "0b111010011011";
        ram[21] = "0b110101111000";
        ram[22] = "0b111101110001";
        ram[23] = "0b100111010101";
        ram[24] = "0b000010010101";
        ram[25] = "0b111000101010";
        ram[26] = "0b001100001010";
        ram[27] = "0b001100101010";
        ram[28] = "0b101100011101";
        ram[29] = "0b101110101010";
        ram[30] = "0b110101111110";
        ram[31] = "0b010011010100";
        ram[32] = "0b010000100001";
        ram[33] = "0b001011101001";
        ram[34] = "0b110111110010";
        ram[35] = "0b000100111101";
        ram[36] = "0b000000100101";
        ram[37] = "0b110101001001";
        ram[38] = "0b111001110010";
        ram[39] = "0b110000001111";
        ram[40] = "0b000001100001";
        ram[41] = "0b011000011100";
        ram[42] = "0b100101010110";
        ram[43] = "0b111111010000";
        ram[44] = "0b000001101001";
        ram[45] = "0b010000100000";
        ram[46] = "0b110111110011";
        ram[47] = "0b000001110110";
        ram[48] = "0b110101100011";
        ram[49] = "0b000101010010";
        ram[50] = "0b010011100000";
        ram[51] = "0b010010010111";


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


SC_MODULE(L2_wlo_218_L1_WEIxdS) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIxdS_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIxdS) {
meminst = new L2_wlo_218_L1_WEIxdS_ram("L2_wlo_218_L1_WEIxdS_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIxdS() {
    delete meminst;
}


};//endmodule
#endif
