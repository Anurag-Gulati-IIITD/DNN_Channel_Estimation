// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIg8j_H__
#define __L2_wlo_218_L1_WEIg8j_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIg8j_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIg8j_ram) {
        ram[0] = "0b0000001111111";
        ram[1] = "0b1110000110111";
        ram[2] = "0b1100100010011";
        ram[3] = "0b0001011001100";
        ram[4] = "0b0001101001111";
        ram[5] = "0b1011111000110";
        ram[6] = "0b1101101001111";
        ram[7] = "0b0001000111100";
        ram[8] = "0b0000001110001";
        ram[9] = "0b0000001110010";
        ram[10] = "0b1111010111000";
        ram[11] = "0b1011111100110";
        ram[12] = "0b1110111001000";
        ram[13] = "0b0001100001101";
        ram[14] = "0b1101001110110";
        ram[15] = "0b1110101000011";
        ram[16] = "0b0000100101101";
        ram[17] = "0b0001111101000";
        ram[18] = "0b1110111100000";
        ram[19] = "0b1110110010111";
        ram[20] = "0b0000001001011";
        ram[21] = "0b0010010101101";
        ram[22] = "0b1111101011111";
        ram[23] = "0b0010010001011";
        ram[24] = "0b0000011100000";
        ram[25] = "0b0000100000000";
        ram[26] = "0b1100001001011";
        ram[27] = "0b0000110111000";
        ram[28] = "0b0001111100101";
        ram[29] = "0b0001111010000";
        ram[30] = "0b0011110000100";
        ram[31] = "0b0001111100011";
        ram[32] = "0b0000010011011";
        ram[33] = "0b1101111001010";
        ram[34] = "0b1111001010001";
        ram[35] = "0b0010100001111";
        ram[36] = "0b1111011101111";
        ram[37] = "0b1111010011001";
        ram[38] = "0b1110001011000";
        ram[39] = "0b1101100110110";
        ram[40] = "0b0000101000000";
        ram[41] = "0b1111000110100";
        ram[42] = "0b1111000000110";
        ram[43] = "0b0000110100011";
        ram[44] = "0b0010001001111";
        ram[45] = "0b0001100110011";
        ram[46] = "0b1101101101110";
        ram[47] = "0b1111001110010";
        ram[48] = "0b1110101001001";
        ram[49] = "0b0001100111111";
        ram[50] = "0b1111011001111";
        ram[51] = "0b0001011010011";


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


SC_MODULE(L2_wlo_218_L1_WEIg8j) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIg8j_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIg8j) {
meminst = new L2_wlo_218_L1_WEIg8j_ram("L2_wlo_218_L1_WEIg8j_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIg8j() {
    delete meminst;
}


};//endmodule
#endif
