// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSudo_H__
#define __L2_wlo_L1_WEIGHTSudo_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSudo_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 16;
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


   SC_CTOR(L2_wlo_L1_WEIGHTSudo_ram) {
        ram[0] = "0b0010100101011111";
        ram[1] = "0b0011000001110100";
        ram[2] = "0b0010101110101110";
        ram[3] = "0b0010011100001000";
        ram[4] = "0b1001010011011101";
        ram[5] = "0b1010111110000110";
        ram[6] = "0b1010111011010111";
        ram[7] = "0b1010011001001010";
        ram[8] = "0b1010110111010011";
        ram[9] = "0b0011000001011010";
        ram[10] = "0b0011000000111100";
        ram[11] = "0b1010000100111011";
        ram[12] = "0b0010101111101111";
        ram[13] = "0b1010111110111001";
        ram[14] = "0b1010010000110000";
        ram[15] = "0b1010101000100110";
        ram[16] = "0b0010101001011100";
        ram[17] = "0b1010100001010110";
        ram[18] = "0b1010100111001000";
        ram[19] = "0b0010011100010000";
        ram[20] = "0b0010110001010101";
        ram[21] = "0b1010000001111010";
        ram[22] = "0b1010100010101100";
        ram[23] = "0b1011010001011001";
        ram[24] = "0b0010000011001010";
        ram[25] = "0b1010101111100011";
        ram[26] = "0b1010111101000001";
        ram[27] = "0b0011000111111000";
        ram[28] = "0b0010110100001001";
        ram[29] = "0b0010110100001011";
        ram[30] = "0b1001111111010010";
        ram[31] = "0b1010100100100101";
        ram[32] = "0b1010100101001000";
        ram[33] = "0b1010010101010010";
        ram[34] = "0b1010111011000110";
        ram[35] = "0b0010101001101000";
        ram[36] = "0b0010101100101011";
        ram[37] = "0b1010111100101111";
        ram[38] = "0b1010100100111101";
        ram[39] = "0b1001100010010111";
        ram[40] = "0b0010011010111010";
        ram[41] = "0b0010000101111010";
        ram[42] = "0b1010110111110010";
        ram[43] = "0b0010110000110001";
        ram[44] = "0b0010101001000011";
        ram[45] = "0b0010110101101111";
        ram[46] = "0b0010010011001011";
        ram[47] = "0b1010000100010101";
        ram[48] = "0b1011000011001011";
        ram[49] = "0b0010110111111011";
        ram[50] = "0b0011000010001101";
        ram[51] = "0b1010101001110111";


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


SC_MODULE(L2_wlo_L1_WEIGHTSudo) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSudo_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSudo) {
meminst = new L2_wlo_L1_WEIGHTSudo_ram("L2_wlo_L1_WEIGHTSudo_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSudo() {
    delete meminst;
}


};//endmodule
#endif
