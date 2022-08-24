// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSg8j_H__
#define __L2_wlo_L1_WEIGHTSg8j_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSg8j_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSg8j_ram) {
        ram[0] = "0b0010110101101011";
        ram[1] = "0b0011000000101001";
        ram[2] = "0b1010110001010010";
        ram[3] = "0b0010110001001101";
        ram[4] = "0b1010011001111100";
        ram[5] = "0b0010111001100011";
        ram[6] = "0b1010110011110011";
        ram[7] = "0b1010111101110000";
        ram[8] = "0b1011000001100011";
        ram[9] = "0b0010010100100110";
        ram[10] = "0b1010111110010100";
        ram[11] = "0b0010110000100101";
        ram[12] = "0b1010011000110100";
        ram[13] = "0b0011001010101100";
        ram[14] = "0b1010000110010111";
        ram[15] = "0b0011000100010000";
        ram[16] = "0b0010011000011001";
        ram[17] = "0b0010110001100011";
        ram[18] = "0b0010100111100111";
        ram[19] = "0b0010100011010011";
        ram[20] = "0b0010110000101011";
        ram[21] = "0b0010101000011010";
        ram[22] = "0b0010110000000001";
        ram[23] = "0b1011000001001101";
        ram[24] = "0b1010010011111101";
        ram[25] = "0b1010110101011000";
        ram[26] = "0b1010110010110101";
        ram[27] = "0b1010100001000001";
        ram[28] = "0b0011000101111110";
        ram[29] = "0b1010111001011011";
        ram[30] = "0b0010111101010010";
        ram[31] = "0b0010100110010100";
        ram[32] = "0b0010110111000110";
        ram[33] = "0b0010010110011111";
        ram[34] = "0b1011000010001010";
        ram[35] = "0b1011000000110100";
        ram[36] = "0b0010101010110110";
        ram[37] = "0b0011000100001100";
        ram[38] = "0b1010011000001101";
        ram[39] = "0b1010110111111111";
        ram[40] = "0b0010100001010010";
        ram[41] = "0b1010011110100111";
        ram[42] = "0b1010110110010001";
        ram[43] = "0b1010111110110111";
        ram[44] = "0b0010000111011101";
        ram[45] = "0b1010101000011101";
        ram[46] = "0b1010110010011100";
        ram[47] = "0b0010101000111000";
        ram[48] = "0b0010100101010100";
        ram[49] = "0b0010111001011011";
        ram[50] = "0b0011000010111111";
        ram[51] = "0b0010110111001110";


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


SC_MODULE(L2_wlo_L1_WEIGHTSg8j) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSg8j_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSg8j) {
meminst = new L2_wlo_L1_WEIGHTSg8j_ram("L2_wlo_L1_WEIGHTSg8j_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSg8j() {
    delete meminst;
}


};//endmodule
#endif
