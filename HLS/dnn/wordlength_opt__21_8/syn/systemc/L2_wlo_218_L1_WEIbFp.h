// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbFp_H__
#define __L2_wlo_218_L1_WEIbFp_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbFp_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIbFp_ram) {
        ram[0] = "0b0000100110000";
        ram[1] = "0b0010010111101";
        ram[2] = "0b0001111101100";
        ram[3] = "0b1110010010101";
        ram[4] = "0b0001001100010";
        ram[5] = "0b0010010010011";
        ram[6] = "0b0000010100110";
        ram[7] = "0b1111011100110";
        ram[8] = "0b1101001101101";
        ram[9] = "0b1101111010101";
        ram[10] = "0b0000001100100";
        ram[11] = "0b1111110000101";
        ram[12] = "0b1111001100110";
        ram[13] = "0b0000101101110";
        ram[14] = "0b1111010110011";
        ram[15] = "0b1100101100111";
        ram[16] = "0b1111100011000";
        ram[17] = "0b1110100110100";
        ram[18] = "0b1111100000001";
        ram[19] = "0b0000010000001";
        ram[20] = "0b0000000100110";
        ram[21] = "0b1111111100111";
        ram[22] = "0b0000010000001";
        ram[23] = "0b1101110001010";
        ram[24] = "0b0000110001011";
        ram[25] = "0b1111011111011";
        ram[26] = "0b0010110110010";
        ram[27] = "0b0000100001111";
        ram[28] = "0b0001010001001";
        ram[29] = "0b1101100110100";
        ram[30] = "0b1111110010011";
        ram[31] = "0b0001011110111";
        ram[32] = "0b1111010100011";
        ram[33] = "0b1101111000101";
        ram[34] = "0b1111111000001";
        ram[35] = "0b1111010100110";
        ram[36] = "0b0000001101111";
        ram[37] = "0b1110110100011";
        ram[38] = "0b1111100010011";
        ram[39] = "0b1110110011010";
        ram[40] = "0b1110001101101";
        ram[41] = "0b1111000000010";
        ram[42] = "0b0010100000111";
        ram[43] = "0b0100000011010";
        ram[44] = "0b1111000110010";
        ram[45] = "0b0000010001001";
        ram[46] = "0b0001110011001";
        ram[47] = "0b0001000100110";
        ram[48] = "0b0001001000110";
        ram[49] = "0b0000001110101";
        ram[50] = "0b0010011110111";
        ram[51] = "0b0000001010001";


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


SC_MODULE(L2_wlo_218_L1_WEIbFp) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbFp_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbFp) {
meminst = new L2_wlo_218_L1_WEIbFp_ram("L2_wlo_218_L1_WEIbFp_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbFp() {
    delete meminst;
}


};//endmodule
#endif
