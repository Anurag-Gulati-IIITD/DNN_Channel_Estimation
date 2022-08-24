// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbqm_H__
#define __L2_wlo_L1_WEIGHTSbqm_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbqm_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbqm_ram) {
        ram[0] = "0b0010011010000011";
        ram[1] = "0b0010110111110100";
        ram[2] = "0b0010100111010001";
        ram[3] = "0b0010000100000001";
        ram[4] = "0b1001101111000010";
        ram[5] = "0b0010110010011010";
        ram[6] = "0b1010111011110000";
        ram[7] = "0b1001111100111101";
        ram[8] = "0b0011000100011010";
        ram[9] = "0b0010100011000100";
        ram[10] = "0b1010111000000001";
        ram[11] = "0b0010010001110001";
        ram[12] = "0b0010110010110011";
        ram[13] = "0b0011000101011110";
        ram[14] = "0b1010110110110100";
        ram[15] = "0b1010101001110111";
        ram[16] = "0b0001011100010000";
        ram[17] = "0b1010110100000111";
        ram[18] = "0b1010011000011100";
        ram[19] = "0b0010100110100011";
        ram[20] = "0b0010110100000110";
        ram[21] = "0b1010010101000101";
        ram[22] = "0b1010111001011000";
        ram[23] = "0b1010100100111010";
        ram[24] = "0b0010110000000100";
        ram[25] = "0b1010011101000000";
        ram[26] = "0b1011000111110100";
        ram[27] = "0b1011000101100001";
        ram[28] = "0b0001101011111010";
        ram[29] = "0b1010110100010101";
        ram[30] = "0b0011000010101001";
        ram[31] = "0b1010110001010001";
        ram[32] = "0b1010100011101100";
        ram[33] = "0b1010111000010000";
        ram[34] = "0b0010100000111110";
        ram[35] = "0b1001100011011011";
        ram[36] = "0b1010010101111010";
        ram[37] = "0b0010101000011001";
        ram[38] = "0b0011000011010111";
        ram[39] = "0b0010111101101110";
        ram[40] = "0b1010110000111100";
        ram[41] = "0b0001110101001100";
        ram[42] = "0b1010110101000011";
        ram[43] = "0b0010111001011111";
        ram[44] = "0b0010100111101010";
        ram[45] = "0b0010000100010010";
        ram[46] = "0b1010111001011001";
        ram[47] = "0b0010001001100100";
        ram[48] = "0b0010000001110011";
        ram[49] = "0b0010100100010111";
        ram[50] = "0b1011000010010000";
        ram[51] = "0b1011001000101110";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbqm) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbqm_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbqm) {
meminst = new L2_wlo_L1_WEIGHTSbqm_ram("L2_wlo_L1_WEIGHTSbqm_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbqm() {
    delete meminst;
}


};//endmodule
#endif
