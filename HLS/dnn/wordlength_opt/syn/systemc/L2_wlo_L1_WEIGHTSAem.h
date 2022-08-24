// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSAem_H__
#define __L2_wlo_L1_WEIGHTSAem_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSAem_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSAem_ram) {
        ram[0] = "0b1010111110011011";
        ram[1] = "0b0011000001010100";
        ram[2] = "0b1010110010011110";
        ram[3] = "0b1011000010000010";
        ram[4] = "0b0010101110010110";
        ram[5] = "0b1011000100010010";
        ram[6] = "0b1010101010111110";
        ram[7] = "0b0010101000110011";
        ram[8] = "0b1011000011101111";
        ram[9] = "0b1010111101100000";
        ram[10] = "0b0001111000101010";
        ram[11] = "0b0010110000011111";
        ram[12] = "0b0010101001000001";
        ram[13] = "0b1001001100001110";
        ram[14] = "0b1010100011000111";
        ram[15] = "0b1011001000101100";
        ram[16] = "0b0000101000101001";
        ram[17] = "0b0010010001000001";
        ram[18] = "0b1001110000011111";
        ram[19] = "0b1010101001000000";
        ram[20] = "0b0010010000110100";
        ram[21] = "0b0010100011100100";
        ram[22] = "0b1010010000001100";
        ram[23] = "0b1011000100101111";
        ram[24] = "0b1010101011010010";
        ram[25] = "0b0001010000100011";
        ram[26] = "0b1010000011111000";
        ram[27] = "0b1010100001111101";
        ram[28] = "0b0010111100110011";
        ram[29] = "0b0011000111101010";
        ram[30] = "0b0010110110010001";
        ram[31] = "0b1010101101111100";
        ram[32] = "0b1010110000011110";
        ram[33] = "0b1010110011000100";
        ram[34] = "0b1010110111000011";
        ram[35] = "0b1010111111000010";
        ram[36] = "0b1010110010001110";
        ram[37] = "0b0010100010001100";
        ram[38] = "0b1010101111011101";
        ram[39] = "0b0010110011010011";
        ram[40] = "0b1010100100111010";
        ram[41] = "0b1010101011011100";
        ram[42] = "0b0010100011100110";
        ram[43] = "0b0011000011100111";
        ram[44] = "0b1010110000010001";
        ram[45] = "0b1010111011110000";
        ram[46] = "0b0010110001000010";
        ram[47] = "0b0010110101001100";
        ram[48] = "0b0001100010101100";
        ram[49] = "0b0010110100111000";
        ram[50] = "0b0010110100001100";
        ram[51] = "0b1010110100011100";


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


SC_MODULE(L2_wlo_L1_WEIGHTSAem) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSAem_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSAem) {
meminst = new L2_wlo_L1_WEIGHTSAem_ram("L2_wlo_L1_WEIGHTSAem_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSAem() {
    delete meminst;
}


};//endmodule
#endif
