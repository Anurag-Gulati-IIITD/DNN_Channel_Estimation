// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTShbi_H__
#define __L2_wlo_L1_WEIGHTShbi_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTShbi_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTShbi_ram) {
        ram[0] = "0b0010110011001010";
        ram[1] = "0b0010111100101010";
        ram[2] = "0b1010100110010100";
        ram[3] = "0b0011000101010010";
        ram[4] = "0b1010010110010100";
        ram[5] = "0b1010100001110001";
        ram[6] = "0b1011000001011100";
        ram[7] = "0b0010101011111011";
        ram[8] = "0b1011001101011011";
        ram[9] = "0b1010110101010100";
        ram[10] = "0b1011000011000011";
        ram[11] = "0b1011000000011100";
        ram[12] = "0b1010011110111011";
        ram[13] = "0b0010110010101111";
        ram[14] = "0b0010100100000001";
        ram[15] = "0b0010110011010000";
        ram[16] = "0b1010101001111111";
        ram[17] = "0b0010110011011100";
        ram[18] = "0b0010100001101110";
        ram[19] = "0b0010010101001000";
        ram[20] = "0b1010110101111010";
        ram[21] = "0b0010010001111101";
        ram[22] = "0b0010100001100010";
        ram[23] = "0b1010111010010011";
        ram[24] = "0b1010110011101011";
        ram[25] = "0b0010101011010011";
        ram[26] = "0b1011001100010000";
        ram[27] = "0b1011000110100110";
        ram[28] = "0b0010100000010111";
        ram[29] = "0b0011000000111101";
        ram[30] = "0b1010111000000011";
        ram[31] = "0b0010101011101011";
        ram[32] = "0b0010010100111110";
        ram[33] = "0b1010101110010001";
        ram[34] = "0b1011000000011110";
        ram[35] = "0b1010101001100110";
        ram[36] = "0b0010101010111100";
        ram[37] = "0b0011001000011111";
        ram[38] = "0b0010101010001011";
        ram[39] = "0b1010000011100001";
        ram[40] = "0b0010101000000001";
        ram[41] = "0b1010010101101101";
        ram[42] = "0b1010011000100101";
        ram[43] = "0b1010111101100011";
        ram[44] = "0b0010101000101000";
        ram[45] = "0b0010010011101111";
        ram[46] = "0b1010111100001100";
        ram[47] = "0b0010101010101010";
        ram[48] = "0b0010100011010000";
        ram[49] = "0b0010110110100000";
        ram[50] = "0b0011000001011110";
        ram[51] = "0b1010000000110010";


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


SC_MODULE(L2_wlo_L1_WEIGHTShbi) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTShbi_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTShbi) {
meminst = new L2_wlo_L1_WEIGHTShbi_ram("L2_wlo_L1_WEIGHTShbi_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTShbi() {
    delete meminst;
}


};//endmodule
#endif
