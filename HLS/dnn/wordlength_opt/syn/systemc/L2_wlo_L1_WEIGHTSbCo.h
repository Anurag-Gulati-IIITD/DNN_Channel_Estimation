// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbCo_H__
#define __L2_wlo_L1_WEIGHTSbCo_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbCo_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbCo_ram) {
        ram[0] = "0b0010110011010010";
        ram[1] = "0b0010111011101101";
        ram[2] = "0b0010100001110100";
        ram[3] = "0b1010110011110010";
        ram[4] = "0b1010110011111011";
        ram[5] = "0b0010110110100101";
        ram[6] = "0b1001111110010100";
        ram[7] = "0b1010111011101001";
        ram[8] = "0b1010101101110010";
        ram[9] = "0b1011000111111111";
        ram[10] = "0b0010110011011110";
        ram[11] = "0b1001011001100111";
        ram[12] = "0b0010101110011110";
        ram[13] = "0b0011000011010110";
        ram[14] = "0b1011010000010101";
        ram[15] = "0b1010101000011010";
        ram[16] = "0b0010010001011011";
        ram[17] = "0b1010110101010101";
        ram[18] = "0b1010100100110100";
        ram[19] = "0b0010111001011000";
        ram[20] = "0b0010100100011001";
        ram[21] = "0b1010011111010010";
        ram[22] = "0b0010110110110001";
        ram[23] = "0b1011000001011001";
        ram[24] = "0b0010100101101101";
        ram[25] = "0b1010101000001111";
        ram[26] = "0b1011001010100010";
        ram[27] = "0b1010100001001011";
        ram[28] = "0b0010100110110000";
        ram[29] = "0b1010110000000001";
        ram[30] = "0b0011001011000100";
        ram[31] = "0b0010110010000001";
        ram[32] = "0b1001111000011111";
        ram[33] = "0b1010110101000110";
        ram[34] = "0b0010111110011010";
        ram[35] = "0b0010011010010100";
        ram[36] = "0b0010001101011010";
        ram[37] = "0b1010011110111001";
        ram[38] = "0b1001100100100100";
        ram[39] = "0b1010110101000100";
        ram[40] = "0b1010010001101001";
        ram[41] = "0b0010110111011100";
        ram[42] = "0b0011000010011011";
        ram[43] = "0b0010100010111110";
        ram[44] = "0b0010111000111000";
        ram[45] = "0b0010110101101101";
        ram[46] = "0b0001011111011101";
        ram[47] = "0b1010101100001000";
        ram[48] = "0b1010010001001001";
        ram[49] = "0b1011000010111001";
        ram[50] = "0b0010110101110000";
        ram[51] = "0b1010100111111010";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbCo) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbCo_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbCo) {
meminst = new L2_wlo_L1_WEIGHTSbCo_ram("L2_wlo_L1_WEIGHTSbCo_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbCo() {
    delete meminst;
}


};//endmodule
#endif
