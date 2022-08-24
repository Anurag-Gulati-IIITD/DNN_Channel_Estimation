// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbkl_H__
#define __L2_wlo_218_L1_WEIbkl_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbkl_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIbkl_ram) {
        ram[0] = "0b1111100101011";
        ram[1] = "0b0000010000111";
        ram[2] = "0b0010101010100";
        ram[3] = "0b0000101110011";
        ram[4] = "0b1101110100000";
        ram[5] = "0b0011111010101";
        ram[6] = "0b0001011001010";
        ram[7] = "0b1011100101101";
        ram[8] = "0b1111110111110";
        ram[9] = "0b0010110001010";
        ram[10] = "0b0000001001001";
        ram[11] = "0b1110111100101";
        ram[12] = "0b1110100101001";
        ram[13] = "0b0001010010000";
        ram[14] = "0b0000001101010";
        ram[15] = "0b1111000011101";
        ram[16] = "0b0000110111101";
        ram[17] = "0b1101100011001";
        ram[18] = "0b1111111000111";
        ram[19] = "0b1111011110001";
        ram[20] = "0b1110100000011";
        ram[21] = "0b1111101101101";
        ram[22] = "0b0010100011110";
        ram[23] = "0b1110111101010";
        ram[24] = "0b0000001100110";
        ram[25] = "0b0001001011110";
        ram[26] = "0b0010010010010";
        ram[27] = "0b0010101101010";
        ram[28] = "0b1111110001001";
        ram[29] = "0b1010100110110";
        ram[30] = "0b1111110101010";
        ram[31] = "0b0001110001011";
        ram[32] = "0b0001001000000";
        ram[33] = "0b1111100100010";
        ram[34] = "0b0000111000000";
        ram[35] = "0b1111010110000";
        ram[36] = "0b0001011111100";
        ram[37] = "0b1110001101010";
        ram[38] = "0b1110101000100";
        ram[39] = "0b1110001001101";
        ram[40] = "0b1111100011010";
        ram[41] = "0b0010100000011";
        ram[42] = "0b1100100010011";
        ram[43] = "0b1111101010001";
        ram[44] = "0b1111000111111";
        ram[45] = "0b0001100011011";
        ram[46] = "0b1111011011010";
        ram[47] = "0b1110101011010";
        ram[48] = "0b1110110010001";
        ram[49] = "0b1111101110011";
        ram[50] = "0b0001111111100";
        ram[51] = "0b0001100111101";


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


SC_MODULE(L2_wlo_218_L1_WEIbkl) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbkl_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbkl) {
meminst = new L2_wlo_218_L1_WEIbkl_ram("L2_wlo_218_L1_WEIbkl_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbkl() {
    delete meminst;
}


};//endmodule
#endif
