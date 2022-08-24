// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbak_H__
#define __L2_wlo_L1_WEIGHTSbak_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbak_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbak_ram) {
        ram[0] = "0b1010011010100011";
        ram[1] = "0b0010010000111111";
        ram[2] = "0b0011000101010101";
        ram[3] = "0b0010100111001101";
        ram[4] = "0b1011000001011111";
        ram[5] = "0b0011001111010101";
        ram[6] = "0b0010110110010110";
        ram[7] = "0b1011010001101001";
        ram[8] = "0b1010000000010100";
        ram[9] = "0b0011000110001011";
        ram[10] = "0b0010000010010011";
        ram[11] = "0b1010110000110110";
        ram[12] = "0b1010110110101101";
        ram[13] = "0b0010110100100010";
        ram[14] = "0b0010001010101000";
        ram[15] = "0b1010101110001001";
        ram[16] = "0b0010101011110110";
        ram[17] = "0b1011000011100111";
        ram[18] = "0b1001111100001010";
        ram[19] = "0b1010100000111001";
        ram[20] = "0b1010110111111010";
        ram[21] = "0b1010010010010000";
        ram[22] = "0b0011000100011111";
        ram[23] = "0b1010110000101010";
        ram[24] = "0b0010001001101101";
        ram[25] = "0b0010110010111101";
        ram[26] = "0b0011000010010011";
        ram[27] = "0b0011000101101010";
        ram[28] = "0b1010001101100101";
        ram[29] = "0b1011010101100101";
        ram[30] = "0b1010000101010100";
        ram[31] = "0b0010111100010111";
        ram[32] = "0b0010110010000010";
        ram[33] = "0b1010011011101011";
        ram[34] = "0b0010101100000010";
        ram[35] = "0b1010100100111111";
        ram[36] = "0b0010110111111001";
        ram[37] = "0b1010111100101010";
        ram[38] = "0b1010110101110111";
        ram[39] = "0b1010111101100101";
        ram[40] = "0b1010011100101010";
        ram[41] = "0b0011000100000100";
        ram[42] = "0b1011001011101101";
        ram[43] = "0b1010010101110111";
        ram[44] = "0b1010101100000011";
        ram[45] = "0b0010111000110110";
        ram[46] = "0b1010100010010110";
        ram[47] = "0b1010110101001011";
        ram[48] = "0b1010110011011101";
        ram[49] = "0b1010010001100010";
        ram[50] = "0b0010111111111010";
        ram[51] = "0b0010111001111010";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbak) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbak_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbak) {
meminst = new L2_wlo_L1_WEIGHTSbak_ram("L2_wlo_L1_WEIGHTSbak_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbak() {
    delete meminst;
}


};//endmodule
#endif
