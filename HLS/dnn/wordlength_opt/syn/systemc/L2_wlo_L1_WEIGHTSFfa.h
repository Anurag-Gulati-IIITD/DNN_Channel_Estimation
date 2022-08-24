// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSFfa_H__
#define __L2_wlo_L1_WEIGHTSFfa_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSFfa_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSFfa_ram) {
        ram[0] = "0b1010010101011110";
        ram[1] = "0b1010100111100100";
        ram[2] = "0b1010100100101001";
        ram[3] = "0b0010000100110010";
        ram[4] = "0b0010111110000100";
        ram[5] = "0b1011000111001011";
        ram[6] = "0b0010111001000010";
        ram[7] = "0b0010111010011011";
        ram[8] = "0b1011000000101001";
        ram[9] = "0b1010100001000111";
        ram[10] = "0b0011000011100100";
        ram[11] = "0b0010100000100010";
        ram[12] = "0b1001100000111110";
        ram[13] = "0b1010101100011101";
        ram[14] = "0b0011000011001111";
        ram[15] = "0b0010110011011001";
        ram[16] = "0b1010011001111001";
        ram[17] = "0b1010011011000111";
        ram[18] = "0b1010111001001111";
        ram[19] = "0b1010101101001100";
        ram[20] = "0b0010110101001111";
        ram[21] = "0b1010000100010111";
        ram[22] = "0b1010000110011001";
        ram[23] = "0b0010111111010000";
        ram[24] = "0b1010100110110101";
        ram[25] = "0b0010011010010011";
        ram[26] = "0b1010111010011110";
        ram[27] = "0b1010101110001010";
        ram[28] = "0b1010000101000001";
        ram[29] = "0b0010111100111011";
        ram[30] = "0b1011001100111010";
        ram[31] = "0b0010111011111001";
        ram[32] = "0b1010110001110011";
        ram[33] = "0b0010101010001011";
        ram[34] = "0b0010101000000100";
        ram[35] = "0b0010111110110110";
        ram[36] = "0b1010100111110001";
        ram[37] = "0b1011001000100011";
        ram[38] = "0b1010101000001000";
        ram[39] = "0b1010111000001101";
        ram[40] = "0b1010101001110011";
        ram[41] = "0b1010110010101001";
        ram[42] = "0b1010010101010111";
        ram[43] = "0b1010110001000110";
        ram[44] = "0b0010010010100000";
        ram[45] = "0b0010001000100100";
        ram[46] = "0b1010100100110000";
        ram[47] = "0b1010001011100100";
        ram[48] = "0b1010101011111110";
        ram[49] = "0b1010101010000111";
        ram[50] = "0b0011000001110110";
        ram[51] = "0b0010110110010001";


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


SC_MODULE(L2_wlo_L1_WEIGHTSFfa) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSFfa_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSFfa) {
meminst = new L2_wlo_L1_WEIGHTSFfa_ram("L2_wlo_L1_WEIGHTSFfa_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSFfa() {
    delete meminst;
}


};//endmodule
#endif
