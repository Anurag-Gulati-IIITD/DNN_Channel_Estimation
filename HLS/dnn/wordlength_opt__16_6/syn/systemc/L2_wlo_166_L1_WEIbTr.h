// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_166_L1_WEIbTr_H__
#define __L2_wlo_166_L1_WEIbTr_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_166_L1_WEIbTr_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 10;
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


   SC_CTOR(L2_wlo_166_L1_WEIbTr_ram) {
        ram[0] = "0b0000111110";
        ram[1] = "0b0000010100";
        ram[2] = "0b1110010111";
        ram[3] = "0b0000001100";
        ram[4] = "0b1110010100";
        ram[5] = "0b1111101011";
        ram[6] = "0b0000011100";
        ram[7] = "0b1111010010";
        ram[8] = "0b1110011001";
        ram[9] = "0b1100111011";
        ram[10] = "0b0000011111";
        ram[11] = "0b1101010001";
        ram[12] = "0b0001011100";
        ram[13] = "0b1101010111";
        ram[14] = "0b1110000111";
        ram[15] = "0b0100000111";
        ram[16] = "0b1110100110";
        ram[17] = "0b0010010010";
        ram[18] = "0b0000111111";
        ram[19] = "0b1110000101";
        ram[20] = "0b1101000010";
        ram[21] = "0b0000110001";
        ram[22] = "0b0000110000";
        ram[23] = "0b1110000000";
        ram[24] = "0b1101001011";
        ram[25] = "0b1111011001";
        ram[26] = "0b0010000001";
        ram[27] = "0b0000011110";
        ram[28] = "0b1111111101";
        ram[29] = "0b0001100011";
        ram[30] = "0b0001101001";
        ram[31] = "0b1101100000";
        ram[32] = "0b0010010011";
        ram[33] = "0b0001101011";
        ram[34] = "0b0001101110";
        ram[35] = "0b1101110010";
        ram[36] = "0b1111110101";
        ram[37] = "0b0000000111";
        ram[38] = "0b1110111011";
        ram[39] = "0b0011111011";
        ram[40] = "0b0000110101";
        ram[41] = "0b0001111000";
        ram[42] = "0b0011101111";
        ram[43] = "0b1100110110";
        ram[44] = "0b0000010011";
        ram[45] = "0b1111111100";
        ram[46] = "0b0000010110";
        ram[47] = "0b0000000001";
        ram[48] = "0b1111101111";
        ram[49] = "0b1111001101";
        ram[50] = "0b0000101110";
        ram[51] = "0b1101110000";


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


SC_MODULE(L2_wlo_166_L1_WEIbTr) {


static const unsigned DataWidth = 10;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_166_L1_WEIbTr_ram* meminst;


SC_CTOR(L2_wlo_166_L1_WEIbTr) {
meminst = new L2_wlo_166_L1_WEIbTr_ram("L2_wlo_166_L1_WEIbTr_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_166_L1_WEIbTr() {
    delete meminst;
}


};//endmodule
#endif
