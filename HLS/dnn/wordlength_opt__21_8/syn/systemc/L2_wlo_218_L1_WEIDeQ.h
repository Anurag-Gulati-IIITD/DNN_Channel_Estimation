// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIDeQ_H__
#define __L2_wlo_218_L1_WEIDeQ_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIDeQ_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIDeQ_ram) {
        ram[0] = "0b000001011111";
        ram[1] = "0b000000100011";
        ram[2] = "0b000010011100";
        ram[3] = "0b010011001100";
        ram[4] = "0b101110001010";
        ram[5] = "0b111010101110";
        ram[6] = "0b110111101011";
        ram[7] = "0b101011111101";
        ram[8] = "0b101000111010";
        ram[9] = "0b111110111111";
        ram[10] = "0b010111010000";
        ram[11] = "0b111110100110";
        ram[12] = "0b001101100010";
        ram[13] = "0b000101011011";
        ram[14] = "0b001000110010";
        ram[15] = "0b000100011101";
        ram[16] = "0b101100100011";
        ram[17] = "0b111110101011";
        ram[18] = "0b111110111000";
        ram[19] = "0b000000101000";
        ram[20] = "0b111011111111";
        ram[21] = "0b000001111011";
        ram[22] = "0b001111010101";
        ram[23] = "0b111101011101";
        ram[24] = "0b001001110100";
        ram[25] = "0b111100111111";
        ram[26] = "0b101000110110";
        ram[27] = "0b011010100100";
        ram[28] = "0b111111110101";
        ram[29] = "0b000110100100";
        ram[30] = "0b111001101000";
        ram[31] = "0b111111101101";
        ram[32] = "0b000011111111";
        ram[33] = "0b000010111101";
        ram[34] = "0b101110111011";
        ram[35] = "0b111111101011";
        ram[36] = "0b111101011101";
        ram[37] = "0b110110011010";
        ram[38] = "0b100111011111";
        ram[39] = "0b111100101010";
        ram[40] = "0b111111011011";
        ram[41] = "0b001111010100";
        ram[42] = "0b000100010100";
        ram[43] = "0b111101110000";
        ram[44] = "0b000101011011";
        ram[45] = "0b001010101110";
        ram[46] = "0b101000000001";
        ram[47] = "0b000001011111";
        ram[48] = "0b000011011111";
        ram[49] = "0b011101110111";
        ram[50] = "0b010110101011";
        ram[51] = "0b111000110111";


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


SC_MODULE(L2_wlo_218_L1_WEIDeQ) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIDeQ_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIDeQ) {
meminst = new L2_wlo_218_L1_WEIDeQ_ram("L2_wlo_218_L1_WEIDeQ_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIDeQ() {
    delete meminst;
}


};//endmodule
#endif
