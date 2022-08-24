// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEINgs_H__
#define __L2_wlo_218_L1_WEINgs_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEINgs_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEINgs_ram) {
        ram[0] = "0b1111101011010";
        ram[1] = "0b1110110101101";
        ram[2] = "0b1111011110000";
        ram[3] = "0b0001000001101";
        ram[4] = "0b1110101001001";
        ram[5] = "0b1110111100111";
        ram[6] = "0b1111011011010";
        ram[7] = "0b0000101000101";
        ram[8] = "0b0001101000000";
        ram[9] = "0b0010100101001";
        ram[10] = "0b0000010011011";
        ram[11] = "0b0000001010111";
        ram[12] = "0b0001100110010";
        ram[13] = "0b0010000001110";
        ram[14] = "0b0000101101001";
        ram[15] = "0b0011100001100";
        ram[16] = "0b0000000110100";
        ram[17] = "0b1111011110100";
        ram[18] = "0b0000001001000";
        ram[19] = "0b0000010001000";
        ram[20] = "0b0000111101111";
        ram[21] = "0b0000110110101";
        ram[22] = "0b1111011010001";
        ram[23] = "0b0001110110100";
        ram[24] = "0b1111101110010";
        ram[25] = "0b1111110101010";
        ram[26] = "0b1011111010010";
        ram[27] = "0b0000010111000";
        ram[28] = "0b1111011001010";
        ram[29] = "0b0000000010101";
        ram[30] = "0b0000100111011";
        ram[31] = "0b1111011001011";
        ram[32] = "0b0001101111111";
        ram[33] = "0b1111010001010";
        ram[34] = "0b0000010000011";
        ram[35] = "0b0011010111001";
        ram[36] = "0b1111111111000";
        ram[37] = "0b0001001010011";
        ram[38] = "0b0000001110100";
        ram[39] = "0b0010001011011";
        ram[40] = "0b0001100001000";
        ram[41] = "0b0000100001111";
        ram[42] = "0b1101010000101";
        ram[43] = "0b1100011000010";
        ram[44] = "0b1111110100011";
        ram[45] = "0b0000001111110";
        ram[46] = "0b1110010100010";
        ram[47] = "0b1111001101100";
        ram[48] = "0b0000000011111";
        ram[49] = "0b1111011000011";
        ram[50] = "0b1110101000010";
        ram[51] = "0b1101101011100";


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


SC_MODULE(L2_wlo_218_L1_WEINgs) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEINgs_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEINgs) {
meminst = new L2_wlo_218_L1_WEINgs_ram("L2_wlo_218_L1_WEINgs_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEINgs() {
    delete meminst;
}


};//endmodule
#endif
