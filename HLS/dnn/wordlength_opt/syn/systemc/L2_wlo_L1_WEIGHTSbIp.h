// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbIp_H__
#define __L2_wlo_L1_WEIGHTSbIp_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbIp_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbIp_ram) {
        ram[0] = "0b0010100111000011";
        ram[1] = "0b0010100000001010";
        ram[2] = "0b1010111000100011";
        ram[3] = "0b0010001011110011";
        ram[4] = "0b0011000001000101";
        ram[5] = "0b0010111111100000";
        ram[6] = "0b0010111000101110";
        ram[7] = "0b0001110110110010";
        ram[8] = "0b1010101001001111";
        ram[9] = "0b0010010111001011";
        ram[10] = "0b0010010101001100";
        ram[11] = "0b1011001000011111";
        ram[12] = "0b0010011011001010";
        ram[13] = "0b0011000110001111";
        ram[14] = "0b1011001001001011";
        ram[15] = "0b0011000100000100";
        ram[16] = "0b1001110011111100";
        ram[17] = "0b0010100110111110";
        ram[18] = "0b0010011000000010";
        ram[19] = "0b1010110001010001";
        ram[20] = "0b1010111011111011";
        ram[21] = "0b0010110011010111";
        ram[22] = "0b0010110011001100";
        ram[23] = "0b1010111000011110";
        ram[24] = "0b1010101100101111";
        ram[25] = "0b1010011100001101";
        ram[26] = "0b0010111010110011";
        ram[27] = "0b1010011111000001";
        ram[28] = "0b1010000110100010";
        ram[29] = "0b1010100000001100";
        ram[30] = "0b0011000101001010";
        ram[31] = "0b1010111011000111";
        ram[32] = "0b1010010110100110";
        ram[33] = "0b1010000011010000";
        ram[34] = "0b0010110111111110";
        ram[35] = "0b0010001011111010";
        ram[36] = "0b1001000111000100";
        ram[37] = "0b0010100000001010";
        ram[38] = "0b0010000111011100";
        ram[39] = "0b0011000110101010";
        ram[40] = "0b0010010100110101";
        ram[41] = "0b0001111001011101";
        ram[42] = "0b0010010110011001";
        ram[43] = "0b1011000110101000";
        ram[44] = "0b0010000011010010";
        ram[45] = "0b1010110001001111";
        ram[46] = "0b1010110000001010";
        ram[47] = "0b1010100011010100";
        ram[48] = "0b0010101101001001";
        ram[49] = "0b1011000000001011";
        ram[50] = "0b0011000011000101";
        ram[51] = "0b1010111101101100";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbIp) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbIp_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbIp) {
meminst = new L2_wlo_L1_WEIGHTSbIp_ram("L2_wlo_L1_WEIGHTSbIp_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbIp() {
    delete meminst;
}


};//endmodule
#endif
