// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSMgi_H__
#define __L2_wlo_L1_WEIGHTSMgi_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSMgi_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSMgi_ram) {
        ram[0] = "0b0010100101111001";
        ram[1] = "0b1010110011001011";
        ram[2] = "0b1010101000001001";
        ram[3] = "0b1010011001111010";
        ram[4] = "0b0010111000011101";
        ram[5] = "0b1011000011010111";
        ram[6] = "0b1010001011011101";
        ram[7] = "0b0010110001110001";
        ram[8] = "0b1011000101111010";
        ram[9] = "0b0011000001111011";
        ram[10] = "0b0010110101000111";
        ram[11] = "0b0010101110011111";
        ram[12] = "0b0010011101100101";
        ram[13] = "0b1010001111001010";
        ram[14] = "0b0010010010100011";
        ram[15] = "0b0010101001000101";
        ram[16] = "0b0010111100110001";
        ram[17] = "0b0010110101010110";
        ram[18] = "0b0010110000010001";
        ram[19] = "0b0010110010011100";
        ram[20] = "0b1010000101110010";
        ram[21] = "0b1010010101000111";
        ram[22] = "0b1010111001111100";
        ram[23] = "0b1010100010001010";
        ram[24] = "0b0010011010100000";
        ram[25] = "0b1010110000000111";
        ram[26] = "0b1010101101010010";
        ram[27] = "0b1010111101100111";
        ram[28] = "0b0010110001001110";
        ram[29] = "0b0011000111110101";
        ram[30] = "0b1010011011101110";
        ram[31] = "0b1010010101100100";
        ram[32] = "0b1010110101001011";
        ram[33] = "0b1010110111110110";
        ram[34] = "0b0010110100101111";
        ram[35] = "0b1011000101001011";
        ram[36] = "0b1010111101001110";
        ram[37] = "0b1011000010101110";
        ram[38] = "0b0010010111000101";
        ram[39] = "0b1010000101010110";
        ram[40] = "0b0010001010110011";
        ram[41] = "0b1011000000000010";
        ram[42] = "0b1010111010101000";
        ram[43] = "0b1010110110100111";
        ram[44] = "0b0010101011011111";
        ram[45] = "0b0010011010010010";
        ram[46] = "0b0010010001011101";
        ram[47] = "0b0010110110011000";
        ram[48] = "0b1010011100010000";
        ram[49] = "0b1001111101001000";
        ram[50] = "0b0011000011000010";
        ram[51] = "0b0010010111010010";


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


SC_MODULE(L2_wlo_L1_WEIGHTSMgi) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSMgi_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSMgi) {
meminst = new L2_wlo_L1_WEIGHTSMgi_ram("L2_wlo_L1_WEIGHTSMgi_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSMgi() {
    delete meminst;
}


};//endmodule
#endif
