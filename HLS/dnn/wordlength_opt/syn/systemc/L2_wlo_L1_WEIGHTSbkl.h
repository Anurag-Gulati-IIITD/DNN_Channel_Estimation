// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbkl_H__
#define __L2_wlo_L1_WEIGHTSbkl_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbkl_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbkl_ram) {
        ram[0] = "0b1010101010111101";
        ram[1] = "0b0011000010010011";
        ram[2] = "0b0010100101000001";
        ram[3] = "0b1010111010001000";
        ram[4] = "0b0010111110011000";
        ram[5] = "0b0011000000100011";
        ram[6] = "0b0010111111011001";
        ram[7] = "0b0010110011111110";
        ram[8] = "0b0010010000001011";
        ram[9] = "0b0010000110011010";
        ram[10] = "0b1010100010011110";
        ram[11] = "0b0010110111011000";
        ram[12] = "0b1010000001011110";
        ram[13] = "0b1010010101001101";
        ram[14] = "0b1001011010000001";
        ram[15] = "0b1011000001110000";
        ram[16] = "0b1010011001010001";
        ram[17] = "0b1010110111110010";
        ram[18] = "0b1010100000000011";
        ram[19] = "0b1010001001111001";
        ram[20] = "0b0010010011001100";
        ram[21] = "0b1010110011100100";
        ram[22] = "0b1010111111111111";
        ram[23] = "0b1010111100101000";
        ram[24] = "0b0010100100100111";
        ram[25] = "0b0010100100011110";
        ram[26] = "0b0011000011001100";
        ram[27] = "0b1011000011010111";
        ram[28] = "0b0001101100110111";
        ram[29] = "0b1010101111111010";
        ram[30] = "0b0010011011001010";
        ram[31] = "0b0010011110111001";
        ram[32] = "0b1010110001001110";
        ram[33] = "0b1010011010000011";
        ram[34] = "0b0011000100010111";
        ram[35] = "0b0010111010001001";
        ram[36] = "0b1010010011110101";
        ram[37] = "0b0010010100000001";
        ram[38] = "0b0011000011000100";
        ram[39] = "0b0010010110011111";
        ram[40] = "0b1010110100100100";
        ram[41] = "0b1010011001011111";
        ram[42] = "0b1011000110101011";
        ram[43] = "0b0010110110101011";
        ram[44] = "0b1010110110010000";
        ram[45] = "0b0010101001101100";
        ram[46] = "0b0011000001000110";
        ram[47] = "0b0010010011101111";
        ram[48] = "0b0010011101111011";
        ram[49] = "0b1010110110111111";
        ram[50] = "0b1010110111110101";
        ram[51] = "0b0010010010111110";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbkl) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbkl_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbkl) {
meminst = new L2_wlo_L1_WEIGHTSbkl_ram("L2_wlo_L1_WEIGHTSbkl_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbkl() {
    delete meminst;
}


};//endmodule
#endif
