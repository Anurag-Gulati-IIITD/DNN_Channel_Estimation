// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbyn_H__
#define __L2_wlo_L1_WEIGHTSbyn_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbyn_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbyn_ram) {
        ram[0] = "0b1010100000010100";
        ram[1] = "0b1010110101101011";
        ram[2] = "0b1010111000011110";
        ram[3] = "0b0010010010100001";
        ram[4] = "0b1010110010001011";
        ram[5] = "0b1011000100110000";
        ram[6] = "0b1010011010011101";
        ram[7] = "0b0010100110000010";
        ram[8] = "0b0011000110010010";
        ram[9] = "0b0010110101000010";
        ram[10] = "0b1010110001010100";
        ram[11] = "0b1010100011110011";
        ram[12] = "0b0010101110110011";
        ram[13] = "0b1010111011011001";
        ram[14] = "0b0010101011001000";
        ram[15] = "0b0011001000100011";
        ram[16] = "0b1010101001100101";
        ram[17] = "0b0011000000000001";
        ram[18] = "0b1001111111001011";
        ram[19] = "0b1010110101001101";
        ram[20] = "0b1010110011101000";
        ram[21] = "0b0010011000111010";
        ram[22] = "0b1010110000100000";
        ram[23] = "0b0010110100001101";
        ram[24] = "0b1011000001011100";
        ram[25] = "0b1010001010000001";
        ram[26] = "0b0010100101000010";
        ram[27] = "0b0010101101001000";
        ram[28] = "0b1011000110010010";
        ram[29] = "0b0011001010011011";
        ram[30] = "0b0010010000001010";
        ram[31] = "0b1011000000000010";
        ram[32] = "0b0010110110000110";
        ram[33] = "0b0010101111010110";
        ram[34] = "0b1011000010000001";
        ram[35] = "0b1010111111101111";
        ram[36] = "0b1010010100101111";
        ram[37] = "0b0011000011000111";
        ram[38] = "0b1011000010010001";
        ram[39] = "0b0010110010110010";
        ram[40] = "0b0010100000100000";
        ram[41] = "0b0010110011111101";
        ram[42] = "0b1011000011000000";
        ram[43] = "0b1011000001001000";
        ram[44] = "0b0010011010010101";
        ram[45] = "0b0010100101100100";
        ram[46] = "0b1010001111111001";
        ram[47] = "0b1010011100110100";
        ram[48] = "0b1010011110011011";
        ram[49] = "0b0010100100011000";
        ram[50] = "0b1011001001001110";
        ram[51] = "0b1010111001100010";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbyn) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbyn_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbyn) {
meminst = new L2_wlo_L1_WEIGHTSbyn_ram("L2_wlo_L1_WEIGHTSbyn_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbyn() {
    delete meminst;
}


};//endmodule
#endif
