// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSxdS_H__
#define __L2_wlo_L1_WEIGHTSxdS_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSxdS_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSxdS_ram) {
        ram[0] = "0b0010101111111010";
        ram[1] = "0b1011000110111100";
        ram[2] = "0b0010010110000000";
        ram[3] = "0b0001110010000101";
        ram[4] = "0b1010101101100100";
        ram[5] = "0b0010101000001111";
        ram[6] = "0b0010101101110011";
        ram[7] = "0b0010000111110100";
        ram[8] = "0b1010110100010111";
        ram[9] = "0b1010101010000110";
        ram[10] = "0b1010111000100011";
        ram[11] = "0b1011001001000011";
        ram[12] = "0b1010110010100010";
        ram[13] = "0b0010111111100101";
        ram[14] = "0b0010101111110010";
        ram[15] = "0b0011000011111000";
        ram[16] = "0b1010110101111100";
        ram[17] = "0b0010010101101000";
        ram[18] = "0b0010011111011111";
        ram[19] = "0b1010110001101110";
        ram[20] = "0b1010111101110010";
        ram[21] = "0b1010111011001101";
        ram[22] = "0b0010100010101001";
        ram[23] = "0b0011001000111010";
        ram[24] = "0b0010101100011101";
        ram[25] = "0b1010001000001011";
        ram[26] = "0b0011000100000111";
        ram[27] = "0b1010100000100111";
        ram[28] = "0b1010101100000100";
        ram[29] = "0b1010110001000110";
        ram[30] = "0b1010111000110111";
        ram[31] = "0b1010100100000001";
        ram[32] = "0b0010100101110000";
        ram[33] = "0b0010101101111001";
        ram[34] = "0b0011000000010010";
        ram[35] = "0b1010001110010100";
        ram[36] = "0b0010010001011101";
        ram[37] = "0b0011000110011000";
        ram[38] = "0b1010010111001110";
        ram[39] = "0b1010111001111010";
        ram[40] = "0b1010100100001101";
        ram[41] = "0b0010101000000110";
        ram[42] = "0b1010011110110011";
        ram[43] = "0b1011001100011011";
        ram[44] = "0b1010010100101110";
        ram[45] = "0b1010110011111100";
        ram[46] = "0b1010110010110011";
        ram[47] = "0b1000101011111011";
        ram[48] = "0b1001110011110111";
        ram[49] = "0b1010100100101001";
        ram[50] = "0b1010101111010010";
        ram[51] = "0b0010101101101001";


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


SC_MODULE(L2_wlo_L1_WEIGHTSxdS) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSxdS_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSxdS) {
meminst = new L2_wlo_L1_WEIGHTSxdS_ram("L2_wlo_L1_WEIGHTSxdS_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSxdS() {
    delete meminst;
}


};//endmodule
#endif
