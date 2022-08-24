// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSZio_H__
#define __L2_wlo_L1_WEIGHTSZio_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSZio_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSZio_ram) {
        ram[0] = "0b0010100010100101";
        ram[1] = "0b1010101010000010";
        ram[2] = "0b0010111111011101";
        ram[3] = "0b0010100111000010";
        ram[4] = "0b1011000110000101";
        ram[5] = "0b0010111011001000";
        ram[6] = "0b0001100001000111";
        ram[7] = "0b1010001010000001";
        ram[8] = "0b1010111101001101";
        ram[9] = "0b0010100010110000";
        ram[10] = "0b0010110101101001";
        ram[11] = "0b0010110001110000";
        ram[12] = "0b0001111011001010";
        ram[13] = "0b0001111011100011";
        ram[14] = "0b0011001000100110";
        ram[15] = "0b1010111010101111";
        ram[16] = "0b1010110100000111";
        ram[17] = "0b1010110110101110";
        ram[18] = "0b1010000000100100";
        ram[19] = "0b0010100010110110";
        ram[20] = "0b0010000110001010";
        ram[21] = "0b1010011001111110";
        ram[22] = "0b0010111001011101";
        ram[23] = "0b0010101100001101";
        ram[24] = "0b0010110110001101";
        ram[25] = "0b0010100100101100";
        ram[26] = "0b0011000001111111";
        ram[27] = "0b1011010101111000";
        ram[28] = "0b1010001101001001";
        ram[29] = "0b1010110111101011";
        ram[30] = "0b1010110111011110";
        ram[31] = "0b1011000001101110";
        ram[32] = "0b0010100011011001";
        ram[33] = "0b0010100000001110";
        ram[34] = "0b1010011011100011";
        ram[35] = "0b0001100011111001";
        ram[36] = "0b0010100111000111";
        ram[37] = "0b1010110010001010";
        ram[38] = "0b0011010001100101";
        ram[39] = "0b0011000000000100";
        ram[40] = "0b0001101001010001";
        ram[41] = "0b0011000011110111";
        ram[42] = "0b1010110011111100";
        ram[43] = "0b0011000101010111";
        ram[44] = "0b1010110101001001";
        ram[45] = "0b1010101101001110";
        ram[46] = "0b1001111100111111";
        ram[47] = "0b1010110011100110";
        ram[48] = "0b1010010010000101";
        ram[49] = "0b0010100101001010";
        ram[50] = "0b0010111101100000";
        ram[51] = "0b1010101100000100";


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


SC_MODULE(L2_wlo_L1_WEIGHTSZio) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSZio_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSZio) {
meminst = new L2_wlo_L1_WEIGHTSZio_ram("L2_wlo_L1_WEIGHTSZio_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSZio() {
    delete meminst;
}


};//endmodule
#endif
