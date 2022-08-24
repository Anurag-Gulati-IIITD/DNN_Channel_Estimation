// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEI2iS_H__
#define __L2_wlo_218_L1_WEI2iS_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEI2iS_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEI2iS_ram) {
        ram[0] = "0b1111110111000";
        ram[1] = "0b1110010011101";
        ram[2] = "0b0001011001010";
        ram[3] = "0b1111101111100";
        ram[4] = "0b0010110111010";
        ram[5] = "0b0010110111101";
        ram[6] = "0b0001101111010";
        ram[7] = "0b0000100001111";
        ram[8] = "0b1110010111000";
        ram[9] = "0b0100001100100";
        ram[10] = "0b0000100110010";
        ram[11] = "0b1111110010111";
        ram[12] = "0b1110111011011";
        ram[13] = "0b0001111100110";
        ram[14] = "0b0001011100000";
        ram[15] = "0b1110111111101";
        ram[16] = "0b0000000101001";
        ram[17] = "0b1101001101111";
        ram[18] = "0b0000011111010";
        ram[19] = "0b0001000000010";
        ram[20] = "0b0000011111001";
        ram[21] = "0b1111000011010";
        ram[22] = "0b1111110100111";
        ram[23] = "0b0001011011101";
        ram[24] = "0b0001010011100";
        ram[25] = "0b1111000100101";
        ram[26] = "0b0001011000101";
        ram[27] = "0b0001000100000";
        ram[28] = "0b0001001000101";
        ram[29] = "0b1100111111000";
        ram[30] = "0b1111011001100";
        ram[31] = "0b0000100001011";
        ram[32] = "0b1101111010101";
        ram[33] = "0b1110001000011";
        ram[34] = "0b1111000101101";
        ram[35] = "0b0000100111100";
        ram[36] = "0b0000000110100";
        ram[37] = "0b0000100110110";
        ram[38] = "0b0000000111101";
        ram[39] = "0b1111000010000";
        ram[40] = "0b1111000101100";
        ram[41] = "0b1110000111000";
        ram[42] = "0b1011110110100";
        ram[43] = "0b0010010101110";
        ram[44] = "0b0000000000010";
        ram[45] = "0b1110001111110";
        ram[46] = "0b0001010000000";
        ram[47] = "0b1111101110001";
        ram[48] = "0b0010001001000";
        ram[49] = "0b0000000010010";
        ram[50] = "0b0000111000100";
        ram[51] = "0b0001010011010";


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


SC_MODULE(L2_wlo_218_L1_WEI2iS) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEI2iS_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEI2iS) {
meminst = new L2_wlo_218_L1_WEI2iS_ram("L2_wlo_218_L1_WEI2iS_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEI2iS() {
    delete meminst;
}


};//endmodule
#endif
