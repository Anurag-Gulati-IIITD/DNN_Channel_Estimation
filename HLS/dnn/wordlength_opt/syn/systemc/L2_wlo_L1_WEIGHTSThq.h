// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSThq_H__
#define __L2_wlo_L1_WEIGHTSThq_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSThq_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSThq_ram) {
        ram[0] = "0b1010101101100010";
        ram[1] = "0b1010111000011111";
        ram[2] = "0b0010110011001101";
        ram[3] = "0b1010101110010111";
        ram[4] = "0b0011001010100100";
        ram[5] = "0b0011001111111011";
        ram[6] = "0b0010001000110001";
        ram[7] = "0b1010000001110101";
        ram[8] = "0b1011000000101001";
        ram[9] = "0b0010110010101010";
        ram[10] = "0b1010100010111100";
        ram[11] = "0b1011010011100110";
        ram[12] = "0b1010100010010111";
        ram[13] = "0b0011000001010011";
        ram[14] = "0b1010111011011101";
        ram[15] = "0b1010100100110111";
        ram[16] = "0b0010111000010110";
        ram[17] = "0b1010101110011001";
        ram[18] = "0b1010100101001011";
        ram[19] = "0b1010110100011111";
        ram[20] = "0b1010011001000100";
        ram[21] = "0b1010110101101111";
        ram[22] = "0b0010011001010110";
        ram[23] = "0b1010010110011111";
        ram[24] = "0b1010000011110001";
        ram[25] = "0b1010010101001001";
        ram[26] = "0b0010100001110100";
        ram[27] = "0b0010010101110000";
        ram[28] = "0b0011000001000111";
        ram[29] = "0b1011000011011011";
        ram[30] = "0b0010101000111011";
        ram[31] = "0b1010001101010111";
        ram[32] = "0b1011000100111010";
        ram[33] = "0b1010101000101010";
        ram[34] = "0b1010000101011010";
        ram[35] = "0b0010101000100101";
        ram[36] = "0b0010100001011110";
        ram[37] = "0b1010100101011100";
        ram[38] = "0b1010110110001011";
        ram[39] = "0b0010100000111010";
        ram[40] = "0b1011000000110101";
        ram[41] = "0b1011001100010011";
        ram[42] = "0b1011001000111000";
        ram[43] = "0b1010100110011010";
        ram[44] = "0b1010110101011001";
        ram[45] = "0b1011000010011010";
        ram[46] = "0b0010000100111011";
        ram[47] = "0b1010110001011001";
        ram[48] = "0b0011000110011000";
        ram[49] = "0b0010011001001010";
        ram[50] = "0b0011000001011011";
        ram[51] = "0b1010101111110000";


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


SC_MODULE(L2_wlo_L1_WEIGHTSThq) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSThq_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSThq) {
meminst = new L2_wlo_L1_WEIGHTSThq_ram("L2_wlo_L1_WEIGHTSThq_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSThq() {
    delete meminst;
}


};//endmodule
#endif
