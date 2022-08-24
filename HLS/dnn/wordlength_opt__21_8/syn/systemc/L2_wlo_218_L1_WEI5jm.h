// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEI5jm_H__
#define __L2_wlo_218_L1_WEI5jm_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEI5jm_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEI5jm_ram) {
        ram[0] = "0b1110010101010";
        ram[1] = "0b0010011100101";
        ram[2] = "0b1101011011011";
        ram[3] = "0b1110101011011";
        ram[4] = "0b1110001011111";
        ram[5] = "0b1101001001110";
        ram[6] = "0b0001011001111";
        ram[7] = "0b0000111111000";
        ram[8] = "0b0001000000100";
        ram[9] = "0b1100010111100";
        ram[10] = "0b0001011001011";
        ram[11] = "0b1111101011110";
        ram[12] = "0b0001110001000";
        ram[13] = "0b1100001111111";
        ram[14] = "0b1101100110010";
        ram[15] = "0b0011001111101";
        ram[16] = "0b1110011000111";
        ram[17] = "0b0001110011110";
        ram[18] = "0b0000101100111";
        ram[19] = "0b1101110100001";
        ram[20] = "0b1110010111100";
        ram[21] = "0b0001011110000";
        ram[22] = "0b1111011110111";
        ram[23] = "0b1101010110011";
        ram[24] = "0b1111100101110";
        ram[25] = "0b1111100110000";
        ram[26] = "0b0101001100101";
        ram[27] = "0b0001011010001";
        ram[28] = "0b1100101000001";
        ram[29] = "0b0001001010111";
        ram[30] = "0b0010011000110";
        ram[31] = "0b1101000111110";
        ram[32] = "0b0010001110000";
        ram[33] = "0b0010010011110";
        ram[34] = "0b0000110100111";
        ram[35] = "0b1111111010000";
        ram[36] = "0b0000000001101";
        ram[37] = "0b1111000110010";
        ram[38] = "0b1111110011000";
        ram[39] = "0b0100111101101";
        ram[40] = "0b0000100111010";
        ram[41] = "0b0001111111011";
        ram[42] = "0b0100100101110";
        ram[43] = "0b1100010000111";
        ram[44] = "0b1111010000110";
        ram[45] = "0b0001110010111";
        ram[46] = "0b0000001000010";
        ram[47] = "0b1110111010101";
        ram[48] = "0b0000001011101";
        ram[49] = "0b1111011110101";
        ram[50] = "0b1111001110101";
        ram[51] = "0b1100101110101";


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


SC_MODULE(L2_wlo_218_L1_WEI5jm) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEI5jm_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEI5jm) {
meminst = new L2_wlo_218_L1_WEI5jm_ram("L2_wlo_218_L1_WEI5jm_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEI5jm() {
    delete meminst;
}


};//endmodule
#endif
