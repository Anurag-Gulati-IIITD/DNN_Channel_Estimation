// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbHp_H__
#define __L2_wlo_L1_WEIGHTSbHp_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbHp_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbHp_ram) {
        ram[0] = "0b1010011001100000";
        ram[1] = "0b0001011101000011";
        ram[2] = "0b1010010110011011";
        ram[3] = "0b1010110011101110";
        ram[4] = "0b0011010000111000";
        ram[5] = "0b0010110101011101";
        ram[6] = "0b0010000010000010";
        ram[7] = "0b0010111100110101";
        ram[8] = "0b1010111001100011";
        ram[9] = "0b0011000101100100";
        ram[10] = "0b0010101000111000";
        ram[11] = "0b1010011001100101";
        ram[12] = "0b0010101010110100";
        ram[13] = "0b0010111101001110";
        ram[14] = "0b1010100101100111";
        ram[15] = "0b0010110101000101";
        ram[16] = "0b0010110011001010";
        ram[17] = "0b0010101111000110";
        ram[18] = "0b1010101111111111";
        ram[19] = "0b1010110010110100";
        ram[20] = "0b0000100000111010";
        ram[21] = "0b1010101010100011";
        ram[22] = "0b1010110010100100";
        ram[23] = "0b1010110011101010";
        ram[24] = "0b1010000110100011";
        ram[25] = "0b1000111100100101";
        ram[26] = "0b0010110010010011";
        ram[27] = "0b0010101000011100";
        ram[28] = "0b0010110101001111";
        ram[29] = "0b1010111000000001";
        ram[30] = "0b1001100101101100";
        ram[31] = "0b0010010011001101";
        ram[32] = "0b1010111101010001";
        ram[33] = "0b1010111001001001";
        ram[34] = "0b0011000010111011";
        ram[35] = "0b0010000000101010";
        ram[36] = "0b0010100011100101";
        ram[37] = "0b1010001011000101";
        ram[38] = "0b1001111000010011";
        ram[39] = "0b0010111100111100";
        ram[40] = "0b1010011111110001";
        ram[41] = "0b1011010011111101";
        ram[42] = "0b1011000111101011";
        ram[43] = "0b1010110100011000";
        ram[44] = "0b0010001000001110";
        ram[45] = "0b1010110000011000";
        ram[46] = "0b0010111101011110";
        ram[47] = "0b1010010110000001";
        ram[48] = "0b0010111100010010";
        ram[49] = "0b1010100110011011";
        ram[50] = "0b0011000011101111";
        ram[51] = "0b1010100011000101";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbHp) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbHp_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbHp) {
meminst = new L2_wlo_L1_WEIGHTSbHp_ram("L2_wlo_L1_WEIGHTSbHp_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbHp() {
    delete meminst;
}


};//endmodule
#endif
