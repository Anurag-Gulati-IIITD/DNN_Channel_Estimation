// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbKp_H__
#define __L2_wlo_L1_WEIGHTSbKp_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbKp_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbKp_ram) {
        ram[0] = "0b1010100110001010";
        ram[1] = "0b0010100101111011";
        ram[2] = "0b1010110110110101";
        ram[3] = "0b1010100000001100";
        ram[4] = "0b1011010010011011";
        ram[5] = "0b1011001100000010";
        ram[6] = "0b1010000100000011";
        ram[7] = "0b0001110010010010";
        ram[8] = "0b0010110110011110";
        ram[9] = "0b1011010101111011";
        ram[10] = "0b0010011011100101";
        ram[11] = "0b0011001010010001";
        ram[12] = "0b0010100001101100";
        ram[13] = "0b1011000011010000";
        ram[14] = "0b1010011001000000";
        ram[15] = "0b0010111100010100";
        ram[16] = "0b1010101111000111";
        ram[17] = "0b0010100010111110";
        ram[18] = "0b0010100001011010";
        ram[19] = "0b1011000110011110";
        ram[20] = "0b0010100000101111";
        ram[21] = "0b0010100111000111";
        ram[22] = "0b0010110000010111";
        ram[23] = "0b1010111011000110";
        ram[24] = "0b1010110111101101";
        ram[25] = "0b0001111001110000";
        ram[26] = "0b0010100010010001";
        ram[27] = "0b1001010001101010";
        ram[28] = "0b1011000110001101";
        ram[29] = "0b0011000110110100";
        ram[30] = "0b0010111100110000";
        ram[31] = "0b1001011000100110";
        ram[32] = "0b0010111111000000";
        ram[33] = "0b0011001110110011";
        ram[34] = "0b1010010110001110";
        ram[35] = "0b1010100010001111";
        ram[36] = "0b1010101010100001";
        ram[37] = "0b1001010011101100";
        ram[38] = "0b0010011011011010";
        ram[39] = "0b0010110100101010";
        ram[40] = "0b0010110010010110";
        ram[41] = "0b0011000000001011";
        ram[42] = "0b0011000001101101";
        ram[43] = "0b1011000011100000";
        ram[44] = "0b0010101001011011";
        ram[45] = "0b0010101111010011";
        ram[46] = "0b0010111011011101";
        ram[47] = "0b0010011000000011";
        ram[48] = "0b1010101100110000";
        ram[49] = "0b0010101110111001";
        ram[50] = "0b1010101111110111";
        ram[51] = "0b1010111011110000";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbKp) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbKp_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbKp) {
meminst = new L2_wlo_L1_WEIGHTSbKp_ram("L2_wlo_L1_WEIGHTSbKp_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbKp() {
    delete meminst;
}


};//endmodule
#endif
