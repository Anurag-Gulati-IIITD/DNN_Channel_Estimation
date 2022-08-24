// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbNq_H__
#define __L2_wlo_218_L1_WEIbNq_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbNq_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIbNq_ram) {
        ram[0] = "0b000101000101";
        ram[1] = "0b000110101011";
        ram[2] = "0b001011111100";
        ram[3] = "0b000010010111";
        ram[4] = "0b110001010001";
        ram[5] = "0b010010101010";
        ram[6] = "0b001100000000";
        ram[7] = "0b110001100001";
        ram[8] = "0b001001101101";
        ram[9] = "0b101100110010";
        ram[10] = "0b111000011100";
        ram[11] = "0b110100010011";
        ram[12] = "0b000000011101";
        ram[13] = "0b110110110010";
        ram[14] = "0b101010011100";
        ram[15] = "0b101110100101";
        ram[16] = "0b111010101111";
        ram[17] = "0b110101011100";
        ram[18] = "0b111000010010";
        ram[19] = "0b000010011000";
        ram[20] = "0b000011111001";
        ram[21] = "0b000000010101";
        ram[22] = "0b001001111100";
        ram[23] = "0b110101110000";
        ram[24] = "0b001000100100";
        ram[25] = "0b000100101111";
        ram[26] = "0b110110101010";
        ram[27] = "0b111000101110";
        ram[28] = "0b111000111000";
        ram[29] = "0b101101011110";
        ram[30] = "0b001110100100";
        ram[31] = "0b000001010101";
        ram[32] = "0b000111111011";
        ram[33] = "0b111100001010";
        ram[34] = "0b000110100101";
        ram[35] = "0b011101101110";
        ram[36] = "0b111100100001";
        ram[37] = "0b000111000001";
        ram[38] = "0b111001101010";
        ram[39] = "0b111110100011";
        ram[40] = "0b111011011101";
        ram[41] = "0b011000101000";
        ram[42] = "0b011010010001";
        ram[43] = "0b010011010110";
        ram[44] = "0b111101110000";
        ram[45] = "0b111100100110";
        ram[46] = "0b110110100101";
        ram[47] = "0b111110010101";
        ram[48] = "0b111011100101";
        ram[49] = "0b111100010010";
        ram[50] = "0b111101110000";
        ram[51] = "0b000010110011";


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


SC_MODULE(L2_wlo_218_L1_WEIbNq) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbNq_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbNq) {
meminst = new L2_wlo_218_L1_WEIbNq_ram("L2_wlo_218_L1_WEIbNq_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbNq() {
    delete meminst;
}


};//endmodule
#endif
