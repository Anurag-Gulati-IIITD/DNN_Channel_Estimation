// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSvdy_H__
#define __L2_wlo_L1_WEIGHTSvdy_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSvdy_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSvdy_ram) {
        ram[0] = "0b0010110110011001";
        ram[1] = "0b0011010000010001";
        ram[2] = "0b0010111101100000";
        ram[3] = "0b1010101110101011";
        ram[4] = "0b0010101011011001";
        ram[5] = "0b1010000001110101";
        ram[6] = "0b0010101111000011";
        ram[7] = "0b0010111111010001";
        ram[8] = "0b0010100000111100";
        ram[9] = "0b0010100001010111";
        ram[10] = "0b0010101000100100";
        ram[11] = "0b0010111110001011";
        ram[12] = "0b0010000011101101";
        ram[13] = "0b1011000100011001";
        ram[14] = "0b1001111011010010";
        ram[15] = "0b1011000101001010";
        ram[16] = "0b0001111111010110";
        ram[17] = "0b1011000011100011";
        ram[18] = "0b1010011101011011";
        ram[19] = "0b0010110001001011";
        ram[20] = "0b0010111101110010";
        ram[21] = "0b1010110100010101";
        ram[22] = "0b1010100011110011";
        ram[23] = "0b1011001101000101";
        ram[24] = "0b1001110101100101";
        ram[25] = "0b1010001011001101";
        ram[26] = "0b0010010110000100";
        ram[27] = "0b1011000110010010";
        ram[28] = "0b0001110000101111";
        ram[29] = "0b1010010100010011";
        ram[30] = "0b1001100110010010";
        ram[31] = "0b1010100111101001";
        ram[32] = "0b1010110001111000";
        ram[33] = "0b0010011101100010";
        ram[34] = "0b0010110010000010";
        ram[35] = "0b0010111010010110";
        ram[36] = "0b0010100000001100";
        ram[37] = "0b1010110001010000";
        ram[38] = "0b0011000010001000";
        ram[39] = "0b1010011110000101";
        ram[40] = "0b1010110110011100";
        ram[41] = "0b1011000000011001";
        ram[42] = "0b1010100000101011";
        ram[43] = "0b0010111000110001";
        ram[44] = "0b1010111000101000";
        ram[45] = "0b1001100011011101";
        ram[46] = "0b0010010111111101";
        ram[47] = "0b1010110110011010";
        ram[48] = "0b1010111111110110";
        ram[49] = "0b1011000100100010";
        ram[50] = "0b1010101111000100";
        ram[51] = "0b0010101011010110";


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


SC_MODULE(L2_wlo_L1_WEIGHTSvdy) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSvdy_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSvdy) {
meminst = new L2_wlo_L1_WEIGHTSvdy_ram("L2_wlo_L1_WEIGHTSvdy_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSvdy() {
    delete meminst;
}


};//endmodule
#endif
