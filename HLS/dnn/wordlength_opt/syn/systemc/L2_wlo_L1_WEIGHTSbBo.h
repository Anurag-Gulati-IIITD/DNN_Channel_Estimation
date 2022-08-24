// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbBo_H__
#define __L2_wlo_L1_WEIGHTSbBo_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbBo_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbBo_ram) {
        ram[0] = "0b1010110010101010";
        ram[1] = "0b0010111001100010";
        ram[2] = "0b0010010100001110";
        ram[3] = "0b1010110111101000";
        ram[4] = "0b0010111001110100";
        ram[5] = "0b0010100010001011";
        ram[6] = "0b0001100011011011";
        ram[7] = "0b1010010000110011";
        ram[8] = "0b1011000111111111";
        ram[9] = "0b1010100010100110";
        ram[10] = "0b0011001000011100";
        ram[11] = "0b1010011100001000";
        ram[12] = "0b0010110000100011";
        ram[13] = "0b0010111100100110";
        ram[14] = "0b1010110001001011";
        ram[15] = "0b0010100111110010";
        ram[16] = "0b0010110110011000";
        ram[17] = "0b1010101011011000";
        ram[18] = "0b1010111000110001";
        ram[19] = "0b0010110111001101";
        ram[20] = "0b0010110100100011";
        ram[21] = "0b1010111000001001";
        ram[22] = "0b0001100000101010";
        ram[23] = "0b1010101010001100";
        ram[24] = "0b1010001010001001";
        ram[25] = "0b1010100111100101";
        ram[26] = "0b1011000011001010";
        ram[27] = "0b1010110101001000";
        ram[28] = "0b0011001000001111";
        ram[29] = "0b1010101000111000";
        ram[30] = "0b0010100001110111";
        ram[31] = "0b0010010111100011";
        ram[32] = "0b1010110011101000";
        ram[33] = "0b1011001011000011";
        ram[34] = "0b0010110011011100";
        ram[35] = "0b1010111101110100";
        ram[36] = "0b0001111101000000";
        ram[37] = "0b1010110101110110";
        ram[38] = "0b0010110000000010";
        ram[39] = "0b1010110000110010";
        ram[40] = "0b1010011010011000";
        ram[41] = "0b1011000110000110";
        ram[42] = "0b0010110101010110";
        ram[43] = "0b1010101010000001";
        ram[44] = "0b0010111111111101";
        ram[45] = "0b0010110000011000";
        ram[46] = "0b1010011010011101";
        ram[47] = "0b0010101011111011";
        ram[48] = "0b0010011100101011";
        ram[49] = "0b1010010000011111";
        ram[50] = "0b0011000110100110";
        ram[51] = "0b0001110001101101";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbBo) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbBo_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbBo) {
meminst = new L2_wlo_L1_WEIGHTSbBo_ram("L2_wlo_L1_WEIGHTSbBo_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbBo() {
    delete meminst;
}


};//endmodule
#endif
