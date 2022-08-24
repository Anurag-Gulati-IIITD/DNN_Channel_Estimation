// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSncg_H__
#define __L2_wlo_L1_WEIGHTSncg_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSncg_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSncg_ram) {
        ram[0] = "0b1010101000011001";
        ram[1] = "0b0011001010101000";
        ram[2] = "0b0010110000110011";
        ram[3] = "0b0010110011010100";
        ram[4] = "0b1010111101110001";
        ram[5] = "0b0011000000101010";
        ram[6] = "0b1010010011010100";
        ram[7] = "0b1010110010101111";
        ram[8] = "0b1011001001011100";
        ram[9] = "0b0011000000110001";
        ram[10] = "0b0010111101010011";
        ram[11] = "0b1010100110001111";
        ram[12] = "0b1011000000101010";
        ram[13] = "0b1010010001110001";
        ram[14] = "0b0010011000001011";
        ram[15] = "0b0010100111110010";
        ram[16] = "0b1010011011011100";
        ram[17] = "0b1010111100011001";
        ram[18] = "0b0010011101100111";
        ram[19] = "0b1010110100101110";
        ram[20] = "0b1010100110010000";
        ram[21] = "0b1010110100001111";
        ram[22] = "0b1010010001110000";
        ram[23] = "0b1011001000101010";
        ram[24] = "0b0010010010101101";
        ram[25] = "0b1010101101010110";
        ram[26] = "0b0010111000010110";
        ram[27] = "0b0010111001010101";
        ram[28] = "0b1011000011100010";
        ram[29] = "0b1011000001010110";
        ram[30] = "0b1010110100000010";
        ram[31] = "0b0011000011010101";
        ram[32] = "0b0011000000100001";
        ram[33] = "0b0010110111010011";
        ram[34] = "0b1010110000011010";
        ram[35] = "0b0010100011110111";
        ram[36] = "0b0001110010111111";
        ram[37] = "0b1010110101101100";
        ram[38] = "0b1010101000110111";
        ram[39] = "0b1010111111100001";
        ram[40] = "0b0010001000011110";
        ram[41] = "0b0011001000011101";
        ram[42] = "0b1011001010101001";
        ram[43] = "0b1001110111101110";
        ram[44] = "0b0010001010011101";
        ram[45] = "0b0011000000100000";
        ram[46] = "0b1010110000011001";
        ram[47] = "0b0010001101100110";
        ram[48] = "0b1010110100111001";
        ram[49] = "0b0010100101001010";
        ram[50] = "0b0011000011100000";
        ram[51] = "0b0011000010011000";


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


SC_MODULE(L2_wlo_L1_WEIGHTSncg) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSncg_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSncg) {
meminst = new L2_wlo_L1_WEIGHTSncg_ram("L2_wlo_L1_WEIGHTSncg_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSncg() {
    delete meminst;
}


};//endmodule
#endif
