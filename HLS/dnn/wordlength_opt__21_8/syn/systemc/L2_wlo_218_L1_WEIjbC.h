// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIjbC_H__
#define __L2_wlo_218_L1_WEIjbC_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIjbC_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIjbC_ram) {
        ram[0] = "0b1110111011001";
        ram[1] = "0b0100001111000";
        ram[2] = "0b0011000010001";
        ram[3] = "0b1111110111001";
        ram[4] = "0b0001000101000";
        ram[5] = "0b0010110111101";
        ram[6] = "0b0000010100010";
        ram[7] = "0b0000011100110";
        ram[8] = "0b1111011001001";
        ram[9] = "0b1110111011111";
        ram[10] = "0b1111001011000";
        ram[11] = "0b0011010011000";
        ram[12] = "0b0000110101001";
        ram[13] = "0b1111001011001";
        ram[14] = "0b0010110010111";
        ram[15] = "0b0001111000001";
        ram[16] = "0b0000000011100";
        ram[17] = "0b1101000001010";
        ram[18] = "0b1101111001110";
        ram[19] = "0b1111110110011";
        ram[20] = "0b0010011111011";
        ram[21] = "0b1110000111000";
        ram[22] = "0b1111010011011";
        ram[23] = "0b1101100111010";
        ram[24] = "0b0000111001011";
        ram[25] = "0b0000111101000";
        ram[26] = "0b1111000100111";
        ram[27] = "0b1111110110111";
        ram[28] = "0b1111111111110";
        ram[29] = "0b1110001100011";
        ram[30] = "0b1110001110001";
        ram[31] = "0b1110011111110";
        ram[32] = "0b1110111000101";
        ram[33] = "0b1111100111001";
        ram[34] = "0b1111001001001";
        ram[35] = "0b0000110000010";
        ram[36] = "0b1110111011010";
        ram[37] = "0b0000011111011";
        ram[38] = "0b1110110111101";
        ram[39] = "0b0001010001111";
        ram[40] = "0b1111011110001";
        ram[41] = "0b1111011101001";
        ram[42] = "0b0001010011111";
        ram[43] = "0b1110011110010";
        ram[44] = "0b1111000101011";
        ram[45] = "0b1101111010001";
        ram[46] = "0b0000001010011";
        ram[47] = "0b0000011111010";
        ram[48] = "0b0001011111110";
        ram[49] = "0b1110101100010";
        ram[50] = "0b0001000000001";
        ram[51] = "0b1101101000110";


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


SC_MODULE(L2_wlo_218_L1_WEIjbC) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIjbC_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIjbC) {
meminst = new L2_wlo_218_L1_WEIjbC_ram("L2_wlo_218_L1_WEIjbC_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIjbC() {
    delete meminst;
}


};//endmodule
#endif
