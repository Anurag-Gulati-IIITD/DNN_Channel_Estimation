// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbtn_H__
#define __L2_wlo_L1_WEIGHTSbtn_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbtn_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbtn_ram) {
        ram[0] = "0b1001011110010010";
        ram[1] = "0b1010110000010110";
        ram[2] = "0b1001111101010101";
        ram[3] = "0b0010010011000101";
        ram[4] = "0b0010110010011100";
        ram[5] = "0b1010111000110000";
        ram[6] = "0b1001010101110100";
        ram[7] = "0b1001100101010001";
        ram[8] = "0b1001100010101011";
        ram[9] = "0b1010111110001000";
        ram[10] = "0b0011001000010011";
        ram[11] = "0b1011000001000001";
        ram[12] = "0b1010100010110110";
        ram[13] = "0b1010111101111001";
        ram[14] = "0b0011010000101001";
        ram[15] = "0b0010111100100001";
        ram[16] = "0b1010010010110100";
        ram[17] = "0b1010111100001011";
        ram[18] = "0b1010110001100101";
        ram[19] = "0b0010101010111100";
        ram[20] = "0b0010010110001010";
        ram[21] = "0b0010100001010011";
        ram[22] = "0b1010110110111010";
        ram[23] = "0b0011000101101101";
        ram[24] = "0b0001010100111001";
        ram[25] = "0b0010000111000000";
        ram[26] = "0b1010101000101110";
        ram[27] = "0b0010110101001011";
        ram[28] = "0b1010110011001110";
        ram[29] = "0b1010011000100110";
        ram[30] = "0b1011000101010000";
        ram[31] = "0b0010111001000011";
        ram[32] = "0b1010110100010010";
        ram[33] = "0b0001000011100000";
        ram[34] = "0b0011000001111010";
        ram[35] = "0b0011001001011111";
        ram[36] = "0b0010001100001011";
        ram[37] = "0b1010111110101101";
        ram[38] = "0b0010010111100001";
        ram[39] = "0b1010110101100111";
        ram[40] = "0b1010011011111001";
        ram[41] = "0b0010000101110111";
        ram[42] = "0b0010110111100010";
        ram[43] = "0b1010111000011111";
        ram[44] = "0b1010100100110010";
        ram[45] = "0b0010100001101000";
        ram[46] = "0b0010000111101111";
        ram[47] = "0b0010100100100011";
        ram[48] = "0b1010010010001110";
        ram[49] = "0b1011000000011100";
        ram[50] = "0b0010111111011111";
        ram[51] = "0b0011000011011011";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbtn) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbtn_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbtn) {
meminst = new L2_wlo_L1_WEIGHTSbtn_ram("L2_wlo_L1_WEIGHTSbtn_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbtn() {
    delete meminst;
}


};//endmodule
#endif
