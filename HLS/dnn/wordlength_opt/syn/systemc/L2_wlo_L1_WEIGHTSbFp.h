// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbFp_H__
#define __L2_wlo_L1_WEIGHTSbFp_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbFp_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbFp_ram) {
        ram[0] = "0b1010010010010010";
        ram[1] = "0b1011000000110011";
        ram[2] = "0b0010101010110100";
        ram[3] = "0b1010001001110001";
        ram[4] = "0b1001111110101010";
        ram[5] = "0b1010101001001010";
        ram[6] = "0b0010000000110010";
        ram[7] = "0b0010100010110000";
        ram[8] = "0b0010111011011011";
        ram[9] = "0b0011000101001111";
        ram[10] = "0b1010100011000000";
        ram[11] = "0b0010110110011011";
        ram[12] = "0b1010111001101111";
        ram[13] = "0b1011000100110101";
        ram[14] = "0b0010111010101110";
        ram[15] = "0b1010011111110011";
        ram[16] = "0b1010000011011110";
        ram[17] = "0b1011000000011111";
        ram[18] = "0b1010110010010011";
        ram[19] = "0b0010000010011110";
        ram[20] = "0b0010110000001000";
        ram[21] = "0b0001000000111110";
        ram[22] = "0b1010010110001101";
        ram[23] = "0b0010011100000100";
        ram[24] = "0b0000011011010001";
        ram[25] = "0b0000111011101110";
        ram[26] = "0b0010011010101000";
        ram[27] = "0b0010100000001011";
        ram[28] = "0b1011000101101100";
        ram[29] = "0b0010001011111001";
        ram[30] = "0b1010111000100000";
        ram[31] = "0b0010111101001100";
        ram[32] = "0b1010101000000010";
        ram[33] = "0b0010111101100101";
        ram[34] = "0b0001110101110001";
        ram[35] = "0b0010111100111111";
        ram[36] = "0b1001011001011001";
        ram[37] = "0b0010100110100010";
        ram[38] = "0b1010011111110100";
        ram[39] = "0b1010111110011000";
        ram[40] = "0b1001011110110000";
        ram[41] = "0b0010010100100001";
        ram[42] = "0b1011000011010101";
        ram[43] = "0b1010011011111111";
        ram[44] = "0b1010010011011100";
        ram[45] = "0b1010101101010001";
        ram[46] = "0b1001111011111111";
        ram[47] = "0b1010010010100011";
        ram[48] = "0b0010100101010111";
        ram[49] = "0b0010110010001101";
        ram[50] = "0b1011000010011111";
        ram[51] = "0b0010100011010100";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbFp) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbFp_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbFp) {
meminst = new L2_wlo_L1_WEIGHTSbFp_ram("L2_wlo_L1_WEIGHTSbFp_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbFp() {
    delete meminst;
}


};//endmodule
#endif
