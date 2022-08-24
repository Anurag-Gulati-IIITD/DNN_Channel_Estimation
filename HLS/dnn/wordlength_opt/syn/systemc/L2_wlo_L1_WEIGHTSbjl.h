// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbjl_H__
#define __L2_wlo_L1_WEIGHTSbjl_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbjl_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbjl_ram) {
        ram[0] = "0b1001110001110111";
        ram[1] = "0b0011001110111000";
        ram[2] = "0b0010110101010011";
        ram[3] = "0b0010101111110100";
        ram[4] = "0b0011000000000011";
        ram[5] = "0b1010011001001111";
        ram[6] = "0b1010010001111011";
        ram[7] = "0b0011000000011010";
        ram[8] = "0b1010111100101111";
        ram[9] = "0b0011000011001100";
        ram[10] = "0b0010111011101101";
        ram[11] = "0b1010011111101011";
        ram[12] = "0b1010101101001001";
        ram[13] = "0b1011001001001010";
        ram[14] = "0b0000011000001000";
        ram[15] = "0b1010110001100001";
        ram[16] = "0b1001101001110110";
        ram[17] = "0b1010011010011011";
        ram[18] = "0b1010100010000001";
        ram[19] = "0b0010101110001100";
        ram[20] = "0b1001001111101110";
        ram[21] = "0b0010001001110111";
        ram[22] = "0b1010111010110000";
        ram[23] = "0b1011001011111011";
        ram[24] = "0b0010111010010111";
        ram[25] = "0b0010111000011010";
        ram[26] = "0b0010010111011001";
        ram[27] = "0b1010110111011101";
        ram[28] = "0b0010001000011111";
        ram[29] = "0b1010010011001101";
        ram[30] = "0b0010001000111010";
        ram[31] = "0b0010110010111011";
        ram[32] = "0b1010111000100000";
        ram[33] = "0b0010110100111001";
        ram[34] = "0b1010110101011001";
        ram[35] = "0b0011000100111001";
        ram[36] = "0b0010101110111111";
        ram[37] = "0b1010001010111110";
        ram[38] = "0b0010110001111001";
        ram[39] = "0b1010110011000100";
        ram[40] = "0b0010010001100111";
        ram[41] = "0b1010000111110000";
        ram[42] = "0b1010111111110100";
        ram[43] = "0b0010101111000010";
        ram[44] = "0b0010011110100000";
        ram[45] = "0b0011000000111111";
        ram[46] = "0b1010011101101000";
        ram[47] = "0b1010110000000100";
        ram[48] = "0b1010110000011000";
        ram[49] = "0b0010110011100010";
        ram[50] = "0b0010110001011010";
        ram[51] = "0b0010110000111110";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbjl) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbjl_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbjl) {
meminst = new L2_wlo_L1_WEIGHTSbjl_ram("L2_wlo_L1_WEIGHTSbjl_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbjl() {
    delete meminst;
}


};//endmodule
#endif
