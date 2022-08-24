// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbil_H__
#define __L2_wlo_L1_WEIGHTSbil_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbil_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbil_ram) {
        ram[0] = "0b1010011111001100";
        ram[1] = "0b0010111000110010";
        ram[2] = "0b0010001000110100";
        ram[3] = "0b0010100110111110";
        ram[4] = "0b1010101101000000";
        ram[5] = "0b1010110100011111";
        ram[6] = "0b1011000010001100";
        ram[7] = "0b0010101011100000";
        ram[8] = "0b1011000110101110";
        ram[9] = "0b0010100111000100";
        ram[10] = "0b0011001010010001";
        ram[11] = "0b1010101101111011";
        ram[12] = "0b0010011010110001";
        ram[13] = "0b1010111111100010";
        ram[14] = "0b0010011110011110";
        ram[15] = "0b1010110000000000";
        ram[16] = "0b1010101100010011";
        ram[17] = "0b1010100011101011";
        ram[18] = "0b0001101100001101";
        ram[19] = "0b0001111101010111";
        ram[20] = "0b0001100000100110";
        ram[21] = "0b1010100001001001";
        ram[22] = "0b0010100011101011";
        ram[23] = "0b1011001001101010";
        ram[24] = "0b0010100010110011";
        ram[25] = "0b1010100110111101";
        ram[26] = "0b1011000000110101";
        ram[27] = "0b0010110100001111";
        ram[28] = "0b1010111100000111";
        ram[29] = "0b0010110101111100";
        ram[30] = "0b1010001101000100";
        ram[31] = "0b0010110001110110";
        ram[32] = "0b1010010001100111";
        ram[33] = "0b1010101101001101";
        ram[34] = "0b1011001000101000";
        ram[35] = "0b0010111110100111";
        ram[36] = "0b1001111100011110";
        ram[37] = "0b1010111011100100";
        ram[38] = "0b1010111110100011";
        ram[39] = "0b0010110010111001";
        ram[40] = "0b1010101111001100";
        ram[41] = "0b0010101000111110";
        ram[42] = "0b1010111000111010";
        ram[43] = "0b0010011011111111";
        ram[44] = "0b0010111000000100";
        ram[45] = "0b0010111010111010";
        ram[46] = "0b1011000000101001";
        ram[47] = "0b1001110100011101";
        ram[48] = "0b1011000001001100";
        ram[49] = "0b0011000111001100";
        ram[50] = "0b0011001011010111";
        ram[51] = "0b1010010001110011";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbil) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbil_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbil) {
meminst = new L2_wlo_L1_WEIGHTSbil_ram("L2_wlo_L1_WEIGHTSbil_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbil() {
    delete meminst;
}


};//endmodule
#endif
