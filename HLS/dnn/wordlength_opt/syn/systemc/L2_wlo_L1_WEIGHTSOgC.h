// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSOgC_H__
#define __L2_wlo_L1_WEIGHTSOgC_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSOgC_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSOgC_ram) {
        ram[0] = "0b0010101111000101";
        ram[1] = "0b0010111101101000";
        ram[2] = "0b0010010010010110";
        ram[3] = "0b1010100001110101";
        ram[4] = "0b1011000011100001";
        ram[5] = "0b0011000010010111";
        ram[6] = "0b0010010110101011";
        ram[7] = "0b1011000010010100";
        ram[8] = "0b1010100100110111";
        ram[9] = "0b1010111110011111";
        ram[10] = "0b1010100100100010";
        ram[11] = "0b1010001100011010";
        ram[12] = "0b1010010010010010";
        ram[13] = "0b0011000100001100";
        ram[14] = "0b1011000010001101";
        ram[15] = "0b0010011101110000";
        ram[16] = "0b0001111111100011";
        ram[17] = "0b1010110000101001";
        ram[18] = "0b1010111000101101";
        ram[19] = "0b0010101011010101";
        ram[20] = "0b0010001001110100";
        ram[21] = "0b0001011100000010";
        ram[22] = "0b0011000110010001";
        ram[23] = "0b1010101011111110";
        ram[24] = "0b0010110000100111";
        ram[25] = "0b1010001010101000";
        ram[26] = "0b1010111110100001";
        ram[27] = "0b1010100111111011";
        ram[28] = "0b0010000000100000";
        ram[29] = "0b1011000001001011";
        ram[30] = "0b0011001011101101";
        ram[31] = "0b0010110001111001";
        ram[32] = "0b0011001000011101";
        ram[33] = "0b1010010111011001";
        ram[34] = "0b0010111111111111";
        ram[35] = "0b0010100111010111";
        ram[36] = "0b1010011110001001";
        ram[37] = "0b1010011001000010";
        ram[38] = "0b0010111011001110";
        ram[39] = "0b0010010000111101";
        ram[40] = "0b1001100111011001";
        ram[41] = "0b0010111100100111";
        ram[42] = "0b0011001010111010";
        ram[43] = "0b1010001111101110";
        ram[44] = "0b0010101110001111";
        ram[45] = "0b0010110110101010";
        ram[46] = "0b1010011101010010";
        ram[47] = "0b1010101110111001";
        ram[48] = "0b0010011011100011";
        ram[49] = "0b1010110101001110";
        ram[50] = "0b0010011110101101";
        ram[51] = "0b1010111010100100";


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


SC_MODULE(L2_wlo_L1_WEIGHTSOgC) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSOgC_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSOgC) {
meminst = new L2_wlo_L1_WEIGHTSOgC_ram("L2_wlo_L1_WEIGHTSOgC_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSOgC() {
    delete meminst;
}


};//endmodule
#endif
