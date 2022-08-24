// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbnm_H__
#define __L2_wlo_218_L1_WEIbnm_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbnm_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIbnm_ram) {
        ram[0] = "0b1110111101111";
        ram[1] = "0b0001000010100";
        ram[2] = "0b1101101001010";
        ram[3] = "0b0001010001000";
        ram[4] = "0b0001010110000";
        ram[5] = "0b1011000011011";
        ram[6] = "0b1110111000001";
        ram[7] = "0b0010111001100";
        ram[8] = "0b0000001000011";
        ram[9] = "0b0001000110010";
        ram[10] = "0b1110010100010";
        ram[11] = "0b1111100011001";
        ram[12] = "0b1110111010110";
        ram[13] = "0b1110010011110";
        ram[14] = "0b0000000110001";
        ram[15] = "0b0001000111000";
        ram[16] = "0b0000000011001";
        ram[17] = "0b0001000011001";
        ram[18] = "0b0000100000101";
        ram[19] = "0b1111111010111";
        ram[20] = "0b1110110100110";
        ram[21] = "0b0000101111110";
        ram[22] = "0b1110011000001";
        ram[23] = "0b0000001000011";
        ram[24] = "0b1101101101000";
        ram[25] = "0b0000111011001";
        ram[26] = "0b0000101110001";
        ram[27] = "0b1011111010001";
        ram[28] = "0b1110101001100";
        ram[29] = "0b0010010011101";
        ram[30] = "0b0000101000000";
        ram[31] = "0b0001000011001";
        ram[32] = "0b1111100001010";
        ram[33] = "0b0000110010010";
        ram[34] = "0b1111000111110";
        ram[35] = "0b1110111000101";
        ram[36] = "0b1111111111100";
        ram[37] = "0b0010010001000";
        ram[38] = "0b0010010101100";
        ram[39] = "0b1111001101111";
        ram[40] = "0b0001001100100";
        ram[41] = "0b1110110010101";
        ram[42] = "0b0001100100001";
        ram[43] = "0b1110010001111";
        ram[44] = "0b0000101101000";
        ram[45] = "0b0000011000000";
        ram[46] = "0b1111111000111";
        ram[47] = "0b0000001010100";
        ram[48] = "0b1111111011010";
        ram[49] = "0b0000000111110";
        ram[50] = "0b0000011001111";
        ram[51] = "0b0000110100100";


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


SC_MODULE(L2_wlo_218_L1_WEIbnm) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbnm_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbnm) {
meminst = new L2_wlo_218_L1_WEIbnm_ram("L2_wlo_218_L1_WEIbnm_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbnm() {
    delete meminst;
}


};//endmodule
#endif
