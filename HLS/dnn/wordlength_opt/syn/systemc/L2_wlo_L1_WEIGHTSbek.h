// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbek_H__
#define __L2_wlo_L1_WEIGHTSbek_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbek_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbek_ram) {
        ram[0] = "0b0010010000111011";
        ram[1] = "0b1010110000111111";
        ram[2] = "0b1010110001101100";
        ram[3] = "0b1011000001001001";
        ram[4] = "0b0010110111001111";
        ram[5] = "0b1010110101101111";
        ram[6] = "0b0010101010011111";
        ram[7] = "0b1001110111111001";
        ram[8] = "0b0011000011001000";
        ram[9] = "0b1011000000011001";
        ram[10] = "0b1010110111010010";
        ram[11] = "0b0010101100000111";
        ram[12] = "0b0010000011000110";
        ram[13] = "0b1010101110100010";
        ram[14] = "0b0010000001000100";
        ram[15] = "0b1010101100011011";
        ram[16] = "0b0010111110001110";
        ram[17] = "0b0010110010001111";
        ram[18] = "0b0010101010110001";
        ram[19] = "0b1010100110111100";
        ram[20] = "0b1010101010111111";
        ram[21] = "0b0010110011101101";
        ram[22] = "0b1010100100010110";
        ram[23] = "0b0010110000010010";
        ram[24] = "0b1010100010101010";
        ram[25] = "0b1010100011110110";
        ram[26] = "0b1010111000111100";
        ram[27] = "0b1010011000011010";
        ram[28] = "0b0010010011100101";
        ram[29] = "0b0010111001111000";
        ram[30] = "0b1001011000011011";
        ram[31] = "0b0010001111100001";
        ram[32] = "0b1010110011111000";
        ram[33] = "0b0010011000010011";
        ram[34] = "0b0010001010111000";
        ram[35] = "0b1011000010000101";
        ram[36] = "0b0010010110111111";
        ram[37] = "0b0010110010111101";
        ram[38] = "0b0011001011000111";
        ram[39] = "0b0010110011000100";
        ram[40] = "0b1010101010011110";
        ram[41] = "0b1010111100001001";
        ram[42] = "0b0011000101001010";
        ram[43] = "0b1010101010000101";
        ram[44] = "0b0010101011110011";
        ram[45] = "0b1010110111110011";
        ram[46] = "0b0010101100010010";
        ram[47] = "0b1010111000001011";
        ram[48] = "0b0010110010110011";
        ram[49] = "0b1010100101111010";
        ram[50] = "0b1011000000000110";
        ram[51] = "0b1010010001101010";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbek) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbek_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbek) {
meminst = new L2_wlo_L1_WEIGHTSbek_ram("L2_wlo_L1_WEIGHTSbek_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbek() {
    delete meminst;
}


};//endmodule
#endif
