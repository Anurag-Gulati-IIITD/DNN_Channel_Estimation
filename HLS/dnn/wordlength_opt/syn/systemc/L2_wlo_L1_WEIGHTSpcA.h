// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSpcA_H__
#define __L2_wlo_L1_WEIGHTSpcA_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSpcA_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSpcA_ram) {
        ram[0] = "0b0010001010110101";
        ram[1] = "0b1001100010110110";
        ram[2] = "0b1010101011111000";
        ram[3] = "0b1010100001010010";
        ram[4] = "0b0010111101110110";
        ram[5] = "0b1011001000111010";
        ram[6] = "0b0010110111111101";
        ram[7] = "0b0011001010001111";
        ram[8] = "0b0010101010001110";
        ram[9] = "0b1010101101000111";
        ram[10] = "0b1011000111000000";
        ram[11] = "0b0010110010110001";
        ram[12] = "0b1010011000010010";
        ram[13] = "0b1010111010100000";
        ram[14] = "0b0010001000010110";
        ram[15] = "0b0010000001000111";
        ram[16] = "0b0010000000110100";
        ram[17] = "0b0010110011111001";
        ram[18] = "0b0001100101001110";
        ram[19] = "0b1010110100010110";
        ram[20] = "0b1010001100101100";
        ram[21] = "0b0010110100100000";
        ram[22] = "0b1010111110001101";
        ram[23] = "0b1010111001100010";
        ram[24] = "0b0001011100000001";
        ram[25] = "0b1001010001001101";
        ram[26] = "0b0010111111000000";
        ram[27] = "0b1010111110000011";
        ram[28] = "0b1001100100001000";
        ram[29] = "0b0011000010101001";
        ram[30] = "0b0010110000110001";
        ram[31] = "0b0010100010001000";
        ram[32] = "0b1010100010101000";
        ram[33] = "0b0010110010100101";
        ram[34] = "0b0010000000011100";
        ram[35] = "0b1010110011101001";
        ram[36] = "0b0001110100000001";
        ram[37] = "0b0011001111010101";
        ram[38] = "0b0010111100010011";
        ram[39] = "0b0010000010110111";
        ram[40] = "0b1001111110010010";
        ram[41] = "0b1010110011110001";
        ram[42] = "0b0010011110101001";
        ram[43] = "0b1010010101100111";
        ram[44] = "0b0010100100001110";
        ram[45] = "0b1010101010000101";
        ram[46] = "0b0010001111010001";
        ram[47] = "0b1010101100000000";
        ram[48] = "0b0010110011101100";
        ram[49] = "0b1010100000000111";
        ram[50] = "0b1010110100101101";
        ram[51] = "0b1010100111010101";


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


SC_MODULE(L2_wlo_L1_WEIGHTSpcA) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSpcA_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSpcA) {
meminst = new L2_wlo_L1_WEIGHTSpcA_ram("L2_wlo_L1_WEIGHTSpcA_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSpcA() {
    delete meminst;
}


};//endmodule
#endif
