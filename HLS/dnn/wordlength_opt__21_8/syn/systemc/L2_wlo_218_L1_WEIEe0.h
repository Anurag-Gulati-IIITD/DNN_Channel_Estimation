// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIEe0_H__
#define __L2_wlo_218_L1_WEIEe0_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIEe0_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIEe0_ram) {
        ram[0] = "0b0000101010111";
        ram[1] = "0b0010001110011";
        ram[2] = "0b0000111101011";
        ram[3] = "0b0000011100001";
        ram[4] = "0b1111111110110";
        ram[5] = "0b1110000111100";
        ram[6] = "0b1110010010100";
        ram[7] = "0b1111100110110";
        ram[8] = "0b1110100010110";
        ram[9] = "0b0010001011010";
        ram[10] = "0b0010000111100";
        ram[11] = "0b1111110101100";
        ram[12] = "0b0000111111011";
        ram[13] = "0b1110000100011";
        ram[14] = "0b1111101111001";
        ram[15] = "0b1111001110110";
        ram[16] = "0b0000110010111";
        ram[17] = "0b1111011101010";
        ram[18] = "0b1111010001110";
        ram[19] = "0b0000011100010";
        ram[20] = "0b0001000101010";
        ram[21] = "0b1111110111000";
        ram[22] = "0b1111011010101";
        ram[23] = "0b1011101001101";
        ram[24] = "0b0000001001100";
        ram[25] = "0b1111000000111";
        ram[26] = "0b1110001011111";
        ram[27] = "0b0010111111000";
        ram[28] = "0b0001010000100";
        ram[29] = "0b0001010000101";
        ram[30] = "0b1111111000001";
        ram[31] = "0b1111010110110";
        ram[32] = "0b1111010101110";
        ram[33] = "0b1111101010101";
        ram[34] = "0b1110010011101";
        ram[35] = "0b0000110011001";
        ram[36] = "0b0000111001010";
        ram[37] = "0b1110001101000";
        ram[38] = "0b1111010110000";
        ram[39] = "0b1111111101101";
        ram[40] = "0b0000011010111";
        ram[41] = "0b0000001010111";
        ram[42] = "0b1110100000110";
        ram[43] = "0b0001000011000";
        ram[44] = "0b0000110010000";
        ram[45] = "0b0001010110111";
        ram[46] = "0b0000010011001";
        ram[47] = "0b1111110101110";
        ram[48] = "0b1101100110100";
        ram[49] = "0b0001011111101";
        ram[50] = "0b0010010001101";
        ram[51] = "0b1111001100010";


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


SC_MODULE(L2_wlo_218_L1_WEIEe0) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIEe0_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIEe0) {
meminst = new L2_wlo_218_L1_WEIEe0_ram("L2_wlo_218_L1_WEIEe0_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIEe0() {
    delete meminst;
}


};//endmodule
#endif
