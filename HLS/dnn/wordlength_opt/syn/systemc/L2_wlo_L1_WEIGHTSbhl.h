// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbhl_H__
#define __L2_wlo_L1_WEIGHTSbhl_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbhl_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbhl_ram) {
        ram[0] = "0b0010000011111000";
        ram[1] = "0b0010111011011000";
        ram[2] = "0b1010100010101001";
        ram[3] = "0b0010100110001100";
        ram[4] = "0b1010111111100110";
        ram[5] = "0b1001010111001010";
        ram[6] = "0b1010110101011000";
        ram[7] = "0b1010000010010001";
        ram[8] = "0b1011000110010101";
        ram[9] = "0b0010010010011001";
        ram[10] = "0b0010111000111101";
        ram[11] = "0b1001010010011011";
        ram[12] = "0b0010110011101010";
        ram[13] = "0b0001110111101110";
        ram[14] = "0b0010110101011001";
        ram[15] = "0b0010101001000100";
        ram[16] = "0b1010101110010101";
        ram[17] = "0b1001110101101000";
        ram[18] = "0b1010101100101010";
        ram[19] = "0b0010110001101100";
        ram[20] = "0b0010001110000111";
        ram[21] = "0b1010000100000000";
        ram[22] = "0b0011000001010100";
        ram[23] = "0b1010100001011100";
        ram[24] = "0b0010010101110100";
        ram[25] = "0b1010011010000010";
        ram[26] = "0b1011000011100111";
        ram[27] = "0b0011010000000100";
        ram[28] = "0b0010011011011011";
        ram[29] = "0b0010100000110011";
        ram[30] = "0b0010110001100001";
        ram[31] = "0b1010110001101000";
        ram[32] = "0b0010001110100101";
        ram[33] = "0b0010001110000010";
        ram[34] = "0b1011000001010111";
        ram[35] = "0b0010111101010100";
        ram[36] = "0b1010101001110000";
        ram[37] = "0b1011001100110111";
        ram[38] = "0b1010111110100110";
        ram[39] = "0b1010011111100101";
        ram[40] = "0b0010001011010000";
        ram[41] = "0b0010110000110110";
        ram[42] = "0b0010101101101101";
        ram[43] = "0b1010111000010010";
        ram[44] = "0b0010111101100001";
        ram[45] = "0b0010100011111000";
        ram[46] = "0b1010101100011000";
        ram[47] = "0b1010000011100111";
        ram[48] = "0b1010110111001101";
        ram[49] = "0b0011000010011100";
        ram[50] = "0b0010111010110101";
        ram[51] = "0b1011000011000011";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbhl) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbhl_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbhl) {
meminst = new L2_wlo_L1_WEIGHTSbhl_ram("L2_wlo_L1_WEIGHTSbhl_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbhl() {
    delete meminst;
}


};//endmodule
#endif
