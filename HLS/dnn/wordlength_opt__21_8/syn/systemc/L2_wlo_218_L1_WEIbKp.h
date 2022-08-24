// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbKp_H__
#define __L2_wlo_218_L1_WEIbKp_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbKp_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 13;
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


   SC_CTOR(L2_wlo_218_L1_WEIbKp_ram) {
        ram[0] = "0b0000111001100";
        ram[1] = "0b1111110101010";
        ram[2] = "0b1110010011001";
        ram[3] = "0b1111101011101";
        ram[4] = "0b0001001000011";
        ram[5] = "0b1101110001010";
        ram[6] = "0b0000000010011";
        ram[7] = "0b1111110100101";
        ram[8] = "0b1110001100101";
        ram[9] = "0b0001101110111";
        ram[10] = "0b0000110111001";
        ram[11] = "0b0001111111010";
        ram[12] = "0b0000000110111";
        ram[13] = "0b0000111111000";
        ram[14] = "0b0001011101110";
        ram[15] = "0b0000110010001";
        ram[16] = "0b0000110100111";
        ram[17] = "0b0000000001010";
        ram[18] = "0b1111010000110";
        ram[19] = "0b0000110111011";
        ram[20] = "0b0001000111101";
        ram[21] = "0b0000010000101";
        ram[22] = "0b1110100011111";
        ram[23] = "0b0001101000010";
        ram[24] = "0b0000000100111";
        ram[25] = "0b0000011110100";
        ram[26] = "0b1101101110111";
        ram[27] = "0b1111101001001";
        ram[28] = "0b0000011010011";
        ram[29] = "0b0001010111111";
        ram[30] = "0b1111011010011";
        ram[31] = "0b0000000101110";
        ram[32] = "0b0000100101000";
        ram[33] = "0b1100111111010";
        ram[34] = "0b0000101010111";
        ram[35] = "0b1011001111100";
        ram[36] = "0b1110000110100";
        ram[37] = "0b1101001110110";
        ram[38] = "0b0000100101100";
        ram[39] = "0b1110010110110";
        ram[40] = "0b0000101011011";
        ram[41] = "0b1110001110111";
        ram[42] = "0b0000001110011";
        ram[43] = "0b1110111110110";
        ram[44] = "0b0000101011000";
        ram[45] = "0b1111100000101";
        ram[46] = "0b1111011000000";
        ram[47] = "0b0001110010100";
        ram[48] = "0b1111100110100";
        ram[49] = "0b1111001000110";
        ram[50] = "0b0000100010010";
        ram[51] = "0b0000111110101";


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


SC_MODULE(L2_wlo_218_L1_WEIbKp) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbKp_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbKp) {
meminst = new L2_wlo_218_L1_WEIbKp_ram("L2_wlo_218_L1_WEIbKp_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbKp() {
    delete meminst;
}


};//endmodule
#endif
