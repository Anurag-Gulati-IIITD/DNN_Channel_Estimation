// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbbk_H__
#define __L2_wlo_L1_WEIGHTSbbk_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbbk_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbbk_ram) {
        ram[0] = "0b0010010011001011";
        ram[1] = "0b0011000000010011";
        ram[2] = "0b0010110001100000";
        ram[3] = "0b0011000100010101";
        ram[4] = "0b1010111010110000";
        ram[5] = "0b0011000100110100";
        ram[6] = "0b1010010100001000";
        ram[7] = "0b1010110100110111";
        ram[8] = "0b1011001101110001";
        ram[9] = "0b0011000101011001";
        ram[10] = "0b1010100010010010";
        ram[11] = "0b0010010010111110";
        ram[12] = "0b1010100111000100";
        ram[13] = "0b0010011100111010";
        ram[14] = "0b1010101001110001";
        ram[15] = "0b0010111000000101";
        ram[16] = "0b0010000010001100";
        ram[17] = "0b0010011001010011";
        ram[18] = "0b1010101010001110";
        ram[19] = "0b1011000010011101";
        ram[20] = "0b1010110010001110";
        ram[21] = "0b1010110010100001";
        ram[22] = "0b0010111010101111";
        ram[23] = "0b1010100011010101";
        ram[24] = "0b1010110000001000";
        ram[25] = "0b0001111011010001";
        ram[26] = "0b0010111011101011";
        ram[27] = "0b1010110001111001";
        ram[28] = "0b1010110011000101";
        ram[29] = "0b1010110111101101";
        ram[30] = "0b0010011011010100";
        ram[31] = "0b0010110010011010";
        ram[32] = "0b0011000001010000";
        ram[33] = "0b0010110001010011";
        ram[34] = "0b1010101010010001";
        ram[35] = "0b1010100000010100";
        ram[36] = "0b0010101101111100";
        ram[37] = "0b0010010100101000";
        ram[38] = "0b0010110011111001";
        ram[39] = "0b1011000010100111";
        ram[40] = "0b0010011101010110";
        ram[41] = "0b0010110011100010";
        ram[42] = "0b1010111110010100";
        ram[43] = "0b1010101011000110";
        ram[44] = "0b1010100110001000";
        ram[45] = "0b0010110100111000";
        ram[46] = "0b1010110111111000";
        ram[47] = "0b0001010001100011";
        ram[48] = "0b1010111110111110";
        ram[49] = "0b0010111010000001";
        ram[50] = "0b0010110111011100";
        ram[51] = "0b0010110011111100";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbbk) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbbk_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbbk) {
meminst = new L2_wlo_L1_WEIGHTSbbk_ram("L2_wlo_L1_WEIGHTSbbk_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbbk() {
    delete meminst;
}


};//endmodule
#endif
