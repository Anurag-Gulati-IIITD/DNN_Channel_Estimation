// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_166_L1_WEIg8j_H__
#define __L2_wlo_166_L1_WEIg8j_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_166_L1_WEIg8j_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 10;
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


   SC_CTOR(L2_wlo_166_L1_WEIg8j_ram) {
        ram[0] = "0b0000001111";
        ram[1] = "0b1110000110";
        ram[2] = "0b1100100010";
        ram[3] = "0b0001011001";
        ram[4] = "0b0001101001";
        ram[5] = "0b1011111000";
        ram[6] = "0b1101101001";
        ram[7] = "0b0001000111";
        ram[8] = "0b0000001110";
        ram[9] = "0b0000001110";
        ram[10] = "0b1111010111";
        ram[11] = "0b1011111100";
        ram[12] = "0b1110111001";
        ram[13] = "0b0001100001";
        ram[14] = "0b1101001110";
        ram[15] = "0b1110101000";
        ram[16] = "0b0000100101";
        ram[17] = "0b0001111101";
        ram[18] = "0b1110111100";
        ram[19] = "0b1110110010";
        ram[20] = "0b0000001001";
        ram[21] = "0b0010010101";
        ram[22] = "0b1111101011";
        ram[23] = "0b0010010001";
        ram[24] = "0b0000011100";
        ram[25] = "0b0000100000";
        ram[26] = "0b1100001001";
        ram[27] = "0b0000110111";
        ram[28] = "0b0001111100";
        ram[29] = "0b0001111010";
        ram[30] = "0b0011110000";
        ram[31] = "0b0001111100";
        ram[32] = "0b0000010011";
        ram[33] = "0b1101111001";
        ram[34] = "0b1111001010";
        ram[35] = "0b0010100001";
        ram[36] = "0b1111011101";
        ram[37] = "0b1111010011";
        ram[38] = "0b1110001011";
        ram[39] = "0b1101100110";
        ram[40] = "0b0000101000";
        ram[41] = "0b1111000110";
        ram[42] = "0b1111000000";
        ram[43] = "0b0000110100";
        ram[44] = "0b0010001001";
        ram[45] = "0b0001100110";
        ram[46] = "0b1101101101";
        ram[47] = "0b1111001110";
        ram[48] = "0b1110101001";
        ram[49] = "0b0001100111";
        ram[50] = "0b1111011001";
        ram[51] = "0b0001011010";


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


SC_MODULE(L2_wlo_166_L1_WEIg8j) {


static const unsigned DataWidth = 10;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_166_L1_WEIg8j_ram* meminst;


SC_CTOR(L2_wlo_166_L1_WEIg8j) {
meminst = new L2_wlo_166_L1_WEIg8j_ram("L2_wlo_166_L1_WEIg8j_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_166_L1_WEIg8j() {
    delete meminst;
}


};//endmodule
#endif
