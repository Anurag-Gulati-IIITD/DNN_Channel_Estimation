// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEI4jc_H__
#define __L2_wlo_218_L1_WEI4jc_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEI4jc_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEI4jc_ram) {
        ram[0] = "0b1111110110111";
        ram[1] = "0b0001100111100";
        ram[2] = "0b1111010010011";
        ram[3] = "0b0000110100110";
        ram[4] = "0b1111011000111";
        ram[5] = "0b0000110010110";
        ram[6] = "0b0001011111100";
        ram[7] = "0b1111011101011";
        ram[8] = "0b1111000101101";
        ram[9] = "0b1110110101111";
        ram[10] = "0b1110110011001";
        ram[11] = "0b1011101100000";
        ram[12] = "0b0001000110110";
        ram[13] = "0b1111110000111";
        ram[14] = "0b1100100000001";
        ram[15] = "0b0010000110100";
        ram[16] = "0b1110111011101";
        ram[17] = "0b0000111000001";
        ram[18] = "0b1111100010010";
        ram[19] = "0b1101111000000";
        ram[20] = "0b1111011000010";
        ram[21] = "0b0000101111110";
        ram[22] = "0b0000011110100";
        ram[23] = "0b1111100111000";
        ram[24] = "0b1111110000001";
        ram[25] = "0b0000100000001";
        ram[26] = "0b0011011010100";
        ram[27] = "0b0000110111111";
        ram[28] = "0b1110010000011";
        ram[29] = "0b1101001111110";
        ram[30] = "0b0011100100110";
        ram[31] = "0b1110101010101";
        ram[32] = "0b1110111001011";
        ram[33] = "0b0010011011110";
        ram[34] = "0b0000011000010";
        ram[35] = "0b0001010011010";
        ram[36] = "0b0000100111010";
        ram[37] = "0b0000001100100";
        ram[38] = "0b1111000111110";
        ram[39] = "0b0001010001001";
        ram[40] = "0b1111101010010";
        ram[41] = "0b0000101011000";
        ram[42] = "0b0000101100001";
        ram[43] = "0b1101001000011";
        ram[44] = "0b1110101111110";
        ram[45] = "0b1110111111111";
        ram[46] = "0b0000111101111";
        ram[47] = "0b0000111000010";
        ram[48] = "0b1111111000011";
        ram[49] = "0b1101010001111";
        ram[50] = "0b0000101100010";
        ram[51] = "0b1110011110110";


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


SC_MODULE(L2_wlo_218_L1_WEI4jc) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEI4jc_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEI4jc) {
meminst = new L2_wlo_218_L1_WEI4jc_ram("L2_wlo_218_L1_WEI4jc_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEI4jc() {
    delete meminst;
}


};//endmodule
#endif
