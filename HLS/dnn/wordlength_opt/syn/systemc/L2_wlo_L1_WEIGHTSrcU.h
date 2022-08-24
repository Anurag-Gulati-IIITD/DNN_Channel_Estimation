// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSrcU_H__
#define __L2_wlo_L1_WEIGHTSrcU_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSrcU_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSrcU_ram) {
        ram[0] = "0b1010100011001101";
        ram[1] = "0b1011010010001011";
        ram[2] = "0b1010100101110111";
        ram[3] = "0b0010101011100110";
        ram[4] = "0b1010011111010100";
        ram[5] = "0b0010110111000101";
        ram[6] = "0b1010101001001000";
        ram[7] = "0b1011000001110101";
        ram[8] = "0b0010111101111001";
        ram[9] = "0b1010111000000001";
        ram[10] = "0b1010110110111101";
        ram[11] = "0b1001011000001001";
        ram[12] = "0b0010101100110110";
        ram[13] = "0b0010111000011000";
        ram[14] = "0b1010010101100010";
        ram[15] = "0b0010011111110110";
        ram[16] = "0b0010101110111000";
        ram[17] = "0b0010110011011101";
        ram[18] = "0b1001010000001111";
        ram[19] = "0b0010100001100001";
        ram[20] = "0b1010110001110010";
        ram[21] = "0b0010100001100100";
        ram[22] = "0b0010111111001111";
        ram[23] = "0b0011001110010000";
        ram[24] = "0b0001110101111101";
        ram[25] = "0b1010100010100101";
        ram[26] = "0b1010100111100000";
        ram[27] = "0b0000010111100110";
        ram[28] = "0b0010110100101000";
        ram[29] = "0b1010111010111111";
        ram[30] = "0b0010011011111011";
        ram[31] = "0b1010011111100100";
        ram[32] = "0b1010000000011000";
        ram[33] = "0b1010111000001001";
        ram[34] = "0b0010110000101101";
        ram[35] = "0b1011000110010101";
        ram[36] = "0b1010110011010110";
        ram[37] = "0b0010110100100100";
        ram[38] = "0b1010100111011000";
        ram[39] = "0b0010011010001011";
        ram[40] = "0b0010111000111000";
        ram[41] = "0b0001110100101111";
        ram[42] = "0b0010101000000001";
        ram[43] = "0b1010100000101011";
        ram[44] = "0b0010111100111100";
        ram[45] = "0b1010101110111101";
        ram[46] = "0b1010010111010111";
        ram[47] = "0b1010010110001001";
        ram[48] = "0b0011000000110010";
        ram[49] = "0b1010100011111011";
        ram[50] = "0b1010110000011011";
        ram[51] = "0b1010101110010100";


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


SC_MODULE(L2_wlo_L1_WEIGHTSrcU) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSrcU_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSrcU) {
meminst = new L2_wlo_L1_WEIGHTSrcU_ram("L2_wlo_L1_WEIGHTSrcU_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSrcU() {
    delete meminst;
}


};//endmodule
#endif
