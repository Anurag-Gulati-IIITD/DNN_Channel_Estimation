// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIIfE_H__
#define __L2_wlo_218_L1_WEIIfE_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIIfE_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 12;
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


   SC_CTOR(L2_wlo_218_L1_WEIIfE_ram) {
        ram[0] = "0b111000001001";
        ram[1] = "0b110100010001";
        ram[2] = "0b111001000010";
        ram[3] = "0b001010110010";
        ram[4] = "0b111010010101";
        ram[5] = "0b110100011110";
        ram[6] = "0b110101101000";
        ram[7] = "0b110011011111";
        ram[8] = "0b110100000011";
        ram[9] = "0b111000011101";
        ram[10] = "0b110101000010";
        ram[11] = "0b101101001000";
        ram[12] = "0b110101010110";
        ram[13] = "0b111011111011";
        ram[14] = "0b001011110100";
        ram[15] = "0b001011101101";
        ram[16] = "0b111000110011";
        ram[17] = "0b001000100010";
        ram[18] = "0b000001001111";
        ram[19] = "0b111010000000";
        ram[20] = "0b110011110110";
        ram[21] = "0b000110001000";
        ram[22] = "0b111000011111";
        ram[23] = "0b010011011000";
        ram[24] = "0b111101011011";
        ram[25] = "0b111001010001";
        ram[26] = "0b001111011001";
        ram[27] = "0b011000110101";
        ram[28] = "0b110100100111";
        ram[29] = "0b000100110111";
        ram[30] = "0b110010101010";
        ram[31] = "0b000100110011";
        ram[32] = "0b001000010110";
        ram[33] = "0b001100001000";
        ram[34] = "0b110000110011";
        ram[35] = "0b110001100010";
        ram[36] = "0b001100000100";
        ram[37] = "0b111111000101";
        ram[38] = "0b101110101100";
        ram[39] = "0b101110010101";
        ram[40] = "0b000011011001";
        ram[41] = "0b000100010011";
        ram[42] = "0b000111111111";
        ram[43] = "0b101010001001";
        ram[44] = "0b111010000000";
        ram[45] = "0b111110111100";
        ram[46] = "0b111001110011";
        ram[47] = "0b111010111110";
        ram[48] = "0b000001010101";
        ram[49] = "0b000011000000";
        ram[50] = "0b001111101010";
        ram[51] = "0b001001110000";


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


SC_MODULE(L2_wlo_218_L1_WEIIfE) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIIfE_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIIfE) {
meminst = new L2_wlo_218_L1_WEIIfE_ram("L2_wlo_218_L1_WEIIfE_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIIfE() {
    delete meminst;
}


};//endmodule
#endif
