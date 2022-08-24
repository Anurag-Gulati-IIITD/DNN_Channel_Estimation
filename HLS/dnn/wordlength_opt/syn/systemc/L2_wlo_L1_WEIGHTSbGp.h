// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbGp_H__
#define __L2_wlo_L1_WEIGHTSbGp_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbGp_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbGp_ram) {
        ram[0] = "0b1010110100101111";
        ram[1] = "0b1011000000001100";
        ram[2] = "0b0010110000000101";
        ram[3] = "0b1001100111110011";
        ram[4] = "0b0010111000101001";
        ram[5] = "0b1010010000100010";
        ram[6] = "0b1010000010111011";
        ram[7] = "0b0010100010001001";
        ram[8] = "0b1001100101001010";
        ram[9] = "0b0011010001111001";
        ram[10] = "0b1001111110010001";
        ram[11] = "0b0010101101001000";
        ram[12] = "0b1010110000110001";
        ram[13] = "0b0011000000111100";
        ram[14] = "0b0011001000011101";
        ram[15] = "0b1010110010010111";
        ram[16] = "0b1010100111000001";
        ram[17] = "0b1010111000100101";
        ram[18] = "0b0010010110100110";
        ram[19] = "0b0010010010000001";
        ram[20] = "0b0010101101011010";
        ram[21] = "0b0001101101001101";
        ram[22] = "0b1010110110001000";
        ram[23] = "0b0011000101111101";
        ram[24] = "0b0010100100101110";
        ram[25] = "0b0001100100010110";
        ram[26] = "0b0010110011000001";
        ram[27] = "0b0010110001101000";
        ram[28] = "0b0010100110101100";
        ram[29] = "0b1010111000101010";
        ram[30] = "0b1011000110000100";
        ram[31] = "0b1001011000001001";
        ram[32] = "0b1010110100010111";
        ram[33] = "0b1010000010100110";
        ram[34] = "0b1010111001011001";
        ram[35] = "0b1010111110011100";
        ram[36] = "0b0010011001001001";
        ram[37] = "0b0010111000001110";
        ram[38] = "0b1010011110010100";
        ram[39] = "0b0010100001010101";
        ram[40] = "0b1010110100001010";
        ram[41] = "0b1010111010111011";
        ram[42] = "0b1011000111011110";
        ram[43] = "0b0011000001101101";
        ram[44] = "0b1010010011110101";
        ram[45] = "0b1010111000010011";
        ram[46] = "0b1010101000111000";
        ram[47] = "0b0010000000010000";
        ram[48] = "0b0010111100010001";
        ram[49] = "0b0010100001100100";
        ram[50] = "0b0010001000001000";
        ram[51] = "0b1001101010011000";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbGp) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbGp_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbGp) {
meminst = new L2_wlo_L1_WEIGHTSbGp_ram("L2_wlo_L1_WEIGHTSbGp_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbGp() {
    delete meminst;
}


};//endmodule
#endif
