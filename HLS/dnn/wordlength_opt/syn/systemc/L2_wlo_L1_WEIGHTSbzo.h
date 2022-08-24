// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbzo_H__
#define __L2_wlo_L1_WEIGHTSbzo_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbzo_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbzo_ram) {
        ram[0] = "0b1010110101101100";
        ram[1] = "0b1010111001101011";
        ram[2] = "0b1010100101001111";
        ram[3] = "0b1010011100010000";
        ram[4] = "0b0010011100000100";
        ram[5] = "0b1011001101001110";
        ram[6] = "0b0001101011000111";
        ram[7] = "0b0010110001100011";
        ram[8] = "0b0010111010100110";
        ram[9] = "0b0010110001101110";
        ram[10] = "0b0010110011101101";
        ram[11] = "0b0010101000001011";
        ram[12] = "0b0010110101110101";
        ram[13] = "0b1010110010001001";
        ram[14] = "0b0010110000110100";
        ram[15] = "0b0011000101111111";
        ram[16] = "0b0010100111011011";
        ram[17] = "0b0010110011101110";
        ram[18] = "0b0010010010000100";
        ram[19] = "0b1010110010000110";
        ram[20] = "0b1010100010110101";
        ram[21] = "0b0010110101101110";
        ram[22] = "0b1011000011110111";
        ram[23] = "0b0010111111111101";
        ram[24] = "0b1010101001001000";
        ram[25] = "0b1010110100001001";
        ram[26] = "0b1010100001110011";
        ram[27] = "0b1010000001000001";
        ram[28] = "0b1001010101000010";
        ram[29] = "0b0011000011111000";
        ram[30] = "0b1010110010111011";
        ram[31] = "0b0010011011110110";
        ram[32] = "0b0010100000111111";
        ram[33] = "0b0010011001100100";
        ram[34] = "0b0010100010001011";
        ram[35] = "0b1010011111011010";
        ram[36] = "0b1010110001010111";
        ram[37] = "0b1010011110111101";
        ram[38] = "0b1010110000000100";
        ram[39] = "0b0010101110000110";
        ram[40] = "0b0010101001100001";
        ram[41] = "0b0001011000100011";
        ram[42] = "0b1011000010000011";
        ram[43] = "0b1011000000111011";
        ram[44] = "0b0010110011011010";
        ram[45] = "0b0010100110000011";
        ram[46] = "0b1010100000100101";
        ram[47] = "0b1010010110000000";
        ram[48] = "0b1010101111100011";
        ram[49] = "0b1010010101001010";
        ram[50] = "0b1010011100011111";
        ram[51] = "0b1010110010010111";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbzo) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbzo_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbzo) {
meminst = new L2_wlo_L1_WEIGHTSbzo_ram("L2_wlo_L1_WEIGHTSbzo_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbzo() {
    delete meminst;
}


};//endmodule
#endif
