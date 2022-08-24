// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEI3i2_H__
#define __L2_wlo_218_L1_WEI3i2_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEI3i2_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEI3i2_ram) {
        ram[0] = "0b1111000100111";
        ram[1] = "0b1110011110000";
        ram[2] = "0b0001001100110";
        ram[3] = "0b1111000011010";
        ram[4] = "0b0011010100100";
        ram[5] = "0b0011111111011";
        ram[6] = "0b0000001100011";
        ram[7] = "0b1111110111000";
        ram[8] = "0b1101111010110";
        ram[9] = "0b0001001010101";
        ram[10] = "0b1111011010000";
        ram[11] = "0b1011000110011";
        ram[12] = "0b1111011011010";
        ram[13] = "0b0010001010011";
        ram[14] = "0b1110010010001";
        ram[15] = "0b1111010110010";
        ram[16] = "0b0001100001010";
        ram[17] = "0b1111000011001";
        ram[18] = "0b1111010101101";
        ram[19] = "0b1110101110000";
        ram[20] = "0b1111100110111";
        ram[21] = "0b1110101001000";
        ram[22] = "0b0000011001010";
        ram[23] = "0b1111101001100";
        ram[24] = "0b1111110110000";
        ram[25] = "0b1111101010110";
        ram[26] = "0b0000100011100";
        ram[27] = "0b0000010101110";
        ram[28] = "0b0010001000111";
        ram[29] = "0b1101100100101";
        ram[30] = "0b0000110001110";
        ram[31] = "0b1111110001010";
        ram[32] = "0b1101011000110";
        ram[33] = "0b1111001110101";
        ram[34] = "0b1111110101010";
        ram[35] = "0b0000110001001";
        ram[36] = "0b0000100010111";
        ram[37] = "0b1111010101000";
        ram[38] = "0b1110100111010";
        ram[39] = "0b0000100001110";
        ram[40] = "0b1101111001011";
        ram[41] = "0b1100011101100";
        ram[42] = "0b1100111001000";
        ram[43] = "0b1111010011001";
        ram[44] = "0b1110101010011";
        ram[45] = "0b1101101100110";
        ram[46] = "0b0000001010011";
        ram[47] = "0b1110111010011";
        ram[48] = "0b0010110011000";
        ram[49] = "0b0000011001001";
        ram[50] = "0b0010001011011";
        ram[51] = "0b1111000000100";


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


SC_MODULE(L2_wlo_218_L1_WEI3i2) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEI3i2_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEI3i2) {
meminst = new L2_wlo_218_L1_WEI3i2_ram("L2_wlo_218_L1_WEI3i2_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEI3i2() {
    delete meminst;
}


};//endmodule
#endif
