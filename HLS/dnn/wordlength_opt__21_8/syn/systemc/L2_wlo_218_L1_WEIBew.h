// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIBew_H__
#define __L2_wlo_218_L1_WEIBew_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIBew_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIBew_ram) {
        ram[0] = "0b1111011001100";
        ram[1] = "0b1011011101010";
        ram[2] = "0b1111010100010";
        ram[3] = "0b0000110111001";
        ram[4] = "0b1111100000101";
        ram[5] = "0b0001011100010";
        ram[6] = "0b1111001101101";
        ram[7] = "0b1101110001011";
        ram[8] = "0b0001110111100";
        ram[9] = "0b1110011111111";
        ram[10] = "0b1110100100001";
        ram[11] = "0b1111111110011";
        ram[12] = "0b0000111001101";
        ram[13] = "0b0001100001011";
        ram[14] = "0b1111101010011";
        ram[15] = "0b0000011111110";
        ram[16] = "0b0000111101101";
        ram[17] = "0b0001001101110";
        ram[18] = "0b1111111110111";
        ram[19] = "0b0000100011000";
        ram[20] = "0b1110111000111";
        ram[21] = "0b0000100011001";
        ram[22] = "0b0001111100111";
        ram[23] = "0b0011110010000";
        ram[24] = "0b0000000101011";
        ram[25] = "0b1111011010110";
        ram[26] = "0b1111010001000";
        ram[27] = "0b0000000000000";
        ram[28] = "0b0001010010100";
        ram[29] = "0b1110010100000";
        ram[30] = "0b0000011011111";
        ram[31] = "0b1111100000011";
        ram[32] = "0b1111110111110";
        ram[33] = "0b1110011111011";
        ram[34] = "0b0001000010110";
        ram[35] = "0b1101001101011";
        ram[36] = "0b1110110010100";
        ram[37] = "0b0001010010001";
        ram[38] = "0b1111010001010";
        ram[39] = "0b0000011010001";
        ram[40] = "0b0001100011011";
        ram[41] = "0b0000000101001";
        ram[42] = "0b0000110000000";
        ram[43] = "0b1111011110101";
        ram[44] = "0b0001110011101";
        ram[45] = "0b1111000010000";
        ram[46] = "0b1111101000101";
        ram[47] = "0b1111101001110";
        ram[48] = "0b0010000110001";
        ram[49] = "0b1111011000001";
        ram[50] = "0b1110111110010";
        ram[51] = "0b1111000011010";


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


SC_MODULE(L2_wlo_218_L1_WEIBew) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIBew_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIBew) {
meminst = new L2_wlo_218_L1_WEIBew_ram("L2_wlo_218_L1_WEIBew_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIBew() {
    delete meminst;
}


};//endmodule
#endif
