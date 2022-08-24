// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbwn_H__
#define __L2_wlo_L1_WEIGHTSbwn_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbwn_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbwn_ram) {
        ram[0] = "0b1001110110100010";
        ram[1] = "0b0011000001010010";
        ram[2] = "0b1010010000000101";
        ram[3] = "0b1010110100001000";
        ram[4] = "0b1010011101101001";
        ram[5] = "0b0010110110100001";
        ram[6] = "0b0010101000100101";
        ram[7] = "0b1010111110111111";
        ram[8] = "0b0010101010100010";
        ram[9] = "0b1010110001101000";
        ram[10] = "0b1010111001101000";
        ram[11] = "0b1010010011110101";
        ram[12] = "0b0010101101100011";
        ram[13] = "0b0010110111010001";
        ram[14] = "0b1010111000011111";
        ram[15] = "0b1011001011011110";
        ram[16] = "0b0001111010011010";
        ram[17] = "0b1001111110101110";
        ram[18] = "0b1010101000100100";
        ram[19] = "0b1010100001010001";
        ram[20] = "0b1010111011100011";
        ram[21] = "0b0010100100110010";
        ram[22] = "0b0010110011111011";
        ram[23] = "0b1011000100001011";
        ram[24] = "0b0010011110011010";
        ram[25] = "0b1010010000100101";
        ram[26] = "0b0011000101010001";
        ram[27] = "0b1010100111010100";
        ram[28] = "0b1010001001110000";
        ram[29] = "0b1010111100011111";
        ram[30] = "0b0010110111101010";
        ram[31] = "0b1010101011001010";
        ram[32] = "0b0010011101000100";
        ram[33] = "0b1010000010010001";
        ram[34] = "0b1010100101101100";
        ram[35] = "0b0001100100101101";
        ram[36] = "0b1010111001101100";
        ram[37] = "0b0010110100111001";
        ram[38] = "0b0010101001111010";
        ram[39] = "0b0010101010110001";
        ram[40] = "0b1010011000110010";
        ram[41] = "0b1010110000110011";
        ram[42] = "0b0010101011110011";
        ram[43] = "0b0011001100100111";
        ram[44] = "0b1010011110110110";
        ram[45] = "0b1010010100100100";
        ram[46] = "0b1010100110001001";
        ram[47] = "0b1010010101010110";
        ram[48] = "0b0010000100110001";
        ram[49] = "0b0001101010101011";
        ram[50] = "0b1010100011001000";
        ram[51] = "0b1001111111100101";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbwn) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbwn_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbwn) {
meminst = new L2_wlo_L1_WEIGHTSbwn_ram("L2_wlo_L1_WEIGHTSbwn_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbwn() {
    delete meminst;
}


};//endmodule
#endif
