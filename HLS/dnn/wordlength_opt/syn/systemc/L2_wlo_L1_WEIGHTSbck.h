// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbck_H__
#define __L2_wlo_L1_WEIGHTSbck_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbck_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbck_ram) {
        ram[0] = "0b1010111011110000";
        ram[1] = "0b0010101110110011";
        ram[2] = "0b1010110000100011";
        ram[3] = "0b0010001111010101";
        ram[4] = "0b0010110110101100";
        ram[5] = "0b1011000111000100";
        ram[6] = "0b1010000110111000";
        ram[7] = "0b0010111001011100";
        ram[8] = "0b1010100110001000";
        ram[9] = "0b0010110111110101";
        ram[10] = "0b1011000000111100";
        ram[11] = "0b1010101110010111";
        ram[12] = "0b1010100111111100";
        ram[13] = "0b1011000010010110";
        ram[14] = "0b0010011001111010";
        ram[15] = "0b0010111101100101";
        ram[16] = "0b0010010001110100";
        ram[17] = "0b0011000101011011";
        ram[18] = "0b0010110010110011";
        ram[19] = "0b1010110111110111";
        ram[20] = "0b1010101101101001";
        ram[21] = "0b1010010011111001";
        ram[22] = "0b1011000011111001";
        ram[23] = "0b1010111100010011";
        ram[24] = "0b1010110000010101";
        ram[25] = "0b1010010100000001";
        ram[26] = "0b0010111111100110";
        ram[27] = "0b1011000100110011";
        ram[28] = "0b1010110110001110";
        ram[29] = "0b0011000111101000";
        ram[30] = "0b0010100001010001";
        ram[31] = "0b0010101110101100";
        ram[32] = "0b1010101000001010";
        ram[33] = "0b0011000011001101";
        ram[34] = "0b1010111100011110";
        ram[35] = "0b1010111010000111";
        ram[36] = "0b0010011111101001";
        ram[37] = "0b0011000001101011";
        ram[38] = "0b0011001000100110";
        ram[39] = "0b1010100000011011";
        ram[40] = "0b0010000101010001";
        ram[41] = "0b1010000000000010";
        ram[42] = "0b1010111010001110";
        ram[43] = "0b1010111000010111";
        ram[44] = "0b1010011011011101";
        ram[45] = "0b0010110001011000";
        ram[46] = "0b1010000111010110";
        ram[47] = "0b1010010111101111";
        ram[48] = "0b1010111100011111";
        ram[49] = "0b0010101111100010";
        ram[50] = "0b0010010100000101";
        ram[51] = "0b0011000011111100";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbck) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbck_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbck) {
meminst = new L2_wlo_L1_WEIGHTSbck_ram("L2_wlo_L1_WEIGHTSbck_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbck() {
    delete meminst;
}


};//endmodule
#endif
