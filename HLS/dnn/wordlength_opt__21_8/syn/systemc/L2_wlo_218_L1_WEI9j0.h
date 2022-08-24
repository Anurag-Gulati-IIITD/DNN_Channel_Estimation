// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEI9j0_H__
#define __L2_wlo_218_L1_WEI9j0_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEI9j0_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEI9j0_ram) {
        ram[0] = "0b0000100101001";
        ram[1] = "0b1111001011111";
        ram[2] = "0b0001111101110";
        ram[3] = "0b0000101110000";
        ram[4] = "0b1101001111010";
        ram[5] = "0b0001101100011";
        ram[6] = "0b0000000010001";
        ram[7] = "0b1111110010111";
        ram[8] = "0b1110001011001";
        ram[9] = "0b0000100101100";
        ram[10] = "0b0001010110100";
        ram[11] = "0b0001000110111";
        ram[12] = "0b0000000110110";
        ram[13] = "0b0000000110111";
        ram[14] = "0b0011000100110";
        ram[15] = "0b1110010101000";
        ram[16] = "0b1110101111100";
        ram[17] = "0b1110100101000";
        ram[18] = "0b1111110111101";
        ram[19] = "0b0000100101101";
        ram[20] = "0b0000001011000";
        ram[21] = "0b1111100110000";
        ram[22] = "0b0001100101110";
        ram[23] = "0b0000111000011";
        ram[24] = "0b0001011000110";
        ram[25] = "0b0000101001011";
        ram[26] = "0b0010001111111";
        ram[27] = "0b1010100010000";
        ram[28] = "0b1111110001011";
        ram[29] = "0b1110100001010";
        ram[30] = "0b1110100010001";
        ram[31] = "0b1101110010010";
        ram[32] = "0b0000100110110";
        ram[33] = "0b0000100000011";
        ram[34] = "0b1111100100011";
        ram[35] = "0b0000000010011";
        ram[36] = "0b0000101110001";
        ram[37] = "0b1110110111011";
        ram[38] = "0b0100011001001";
        ram[39] = "0b0010000000100";
        ram[40] = "0b0000000011001";
        ram[41] = "0b0010011110110";
        ram[42] = "0b1110110000001";
        ram[43] = "0b0010101010110";
        ram[44] = "0b1110101011011";
        ram[45] = "0b1111000101100";
        ram[46] = "0b1111111000110";
        ram[47] = "0b1110110001100";
        ram[48] = "0b1111101101111";
        ram[49] = "0b0000101010010";
        ram[50] = "0b0001110101111";
        ram[51] = "0b1111000111110";


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


SC_MODULE(L2_wlo_218_L1_WEI9j0) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEI9j0_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEI9j0) {
meminst = new L2_wlo_218_L1_WEI9j0_ram("L2_wlo_218_L1_WEI9j0_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEI9j0() {
    delete meminst;
}


};//endmodule
#endif
