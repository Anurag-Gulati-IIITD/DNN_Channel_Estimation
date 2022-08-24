// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIhbi_H__
#define __L2_wlo_218_L1_WEIhbi_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIhbi_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 13;
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


   SC_CTOR(L2_wlo_218_L1_WEIhbi_ram) {
        ram[0] = "0b0001000110100";
        ram[1] = "0b0000110010010";
        ram[2] = "0b0000001110011";
        ram[3] = "0b1110010101000";
        ram[4] = "0b0010011001010";
        ram[5] = "0b1100101111110";
        ram[6] = "0b0000000001000";
        ram[7] = "0b1111010101110";
        ram[8] = "0b0010001101111";
        ram[9] = "0b1111010001010";
        ram[10] = "0b0000000100111";
        ram[11] = "0b1101110001111";
        ram[12] = "0b1110110011001";
        ram[13] = "0b1101101010001";
        ram[14] = "0b1101000000100";
        ram[15] = "0b0001100000011";
        ram[16] = "0b0000011110001";
        ram[17] = "0b0001101001110";
        ram[18] = "0b1111001010001";
        ram[19] = "0b0000110011010";
        ram[20] = "0b0000000000001";
        ram[21] = "0b0000101101001";
        ram[22] = "0b1111011100001";
        ram[23] = "0b1111110001000";
        ram[24] = "0b0000111110101";
        ram[25] = "0b0000101000001";
        ram[26] = "0b1101110110001";
        ram[27] = "0b0101011111011";
        ram[28] = "0b0000010110010";
        ram[29] = "0b0011010111001";
        ram[30] = "0b0010101111010";
        ram[31] = "0b0000110011110";
        ram[32] = "0b1110001101001";
        ram[33] = "0b1111010110001";
        ram[34] = "0b0000111110110";
        ram[35] = "0b0011010101111";
        ram[36] = "0b1111011001101";
        ram[37] = "0b0000111010111";
        ram[38] = "0b1010110011011";
        ram[39] = "0b1101101110001";
        ram[40] = "0b0000010011110";
        ram[41] = "0b1110000001111";
        ram[42] = "0b0001111100101";
        ram[43] = "0b1110110001101";
        ram[44] = "0b1111011000100";
        ram[45] = "0b1111010011111";
        ram[46] = "0b0001010010100";
        ram[47] = "0b0000000001111";
        ram[48] = "0b1111001010000";
        ram[49] = "0b1111100011110";
        ram[50] = "0b1101110111000";
        ram[51] = "0b0000110011101";


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


SC_MODULE(L2_wlo_218_L1_WEIhbi) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIhbi_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIhbi) {
meminst = new L2_wlo_218_L1_WEIhbi_ram("L2_wlo_218_L1_WEIhbi_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIhbi() {
    delete meminst;
}


};//endmodule
#endif
