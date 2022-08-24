// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSEe0_H__
#define __L2_wlo_L1_WEIGHTSEe0_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSEe0_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSEe0_ram) {
        ram[0] = "0b1010101011001010";
        ram[1] = "0b1011001110011101";
        ram[2] = "0b0010101111110111";
        ram[3] = "0b0010111001101011";
        ram[4] = "0b1010100110110111";
        ram[5] = "0b1010100101000001";
        ram[6] = "0b0010111010000010";
        ram[7] = "0b0010111001010001";
        ram[8] = "0b0001110000111001";
        ram[9] = "0b1001101111101001";
        ram[10] = "0b0010111111101011";
        ram[11] = "0b0001100100100110";
        ram[12] = "0b0010101011010010";
        ram[13] = "0b1010110101011010";
        ram[14] = "0b0010100111100110";
        ram[15] = "0b0011000110111001";
        ram[16] = "0b1001111100101000";
        ram[17] = "0b1001110010001100";
        ram[18] = "0b1010101000001110";
        ram[19] = "0b0010100101111100";
        ram[20] = "0b0010110000001010";
        ram[21] = "0b1010001110100110";
        ram[22] = "0b1010101000000001";
        ram[23] = "0b0011000110111101";
        ram[24] = "0b0011000000000101";
        ram[25] = "0b1001010001100111";
        ram[26] = "0b1010111100100001";
        ram[27] = "0b1001111110100110";
        ram[28] = "0b1010100000011001";
        ram[29] = "0b0010110100000001";
        ram[30] = "0b1011000110101111";
        ram[31] = "0b0010111100110001";
        ram[32] = "0b0001110011001100";
        ram[33] = "0b0010100011111100";
        ram[34] = "0b0010101001010000";
        ram[35] = "0b0011000100101100";
        ram[36] = "0b1010010110101100";
        ram[37] = "0b1010110111110111";
        ram[38] = "0b1010111100101110";
        ram[39] = "0b1010110011110100";
        ram[40] = "0b1010010100100000";
        ram[41] = "0b0010110000001100";
        ram[42] = "0b1010101010000001";
        ram[43] = "0b1011001011110010";
        ram[44] = "0b0010100010101101";
        ram[45] = "0b1010000100000100";
        ram[46] = "0b1010111000011111";
        ram[47] = "0b0010111010100111";
        ram[48] = "0b1010111010100010";
        ram[49] = "0b1010110110001101";
        ram[50] = "0b1010101000100101";
        ram[51] = "0b0010110010001000";


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


SC_MODULE(L2_wlo_L1_WEIGHTSEe0) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSEe0_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSEe0) {
meminst = new L2_wlo_L1_WEIGHTSEe0_ram("L2_wlo_L1_WEIGHTSEe0_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSEe0() {
    delete meminst;
}


};//endmodule
#endif
