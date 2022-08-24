// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbsm_H__
#define __L2_wlo_218_L1_WEIbsm_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbsm_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIbsm_ram) {
        ram[0] = "0b111100000110";
        ram[1] = "0b001100011001";
        ram[2] = "0b000001100011";
        ram[3] = "0b000101101111";
        ram[4] = "0b111000101111";
        ram[5] = "0b110101110000";
        ram[6] = "0b101101110100";
        ram[7] = "0b000110110111";
        ram[8] = "0b101001010001";
        ram[9] = "0b000101110001";
        ram[10] = "0b011010010001";
        ram[11] = "0b111000100001";
        ram[12] = "0b000011010110";
        ram[13] = "0b110000001110";
        ram[14] = "0b000011110011";
        ram[15] = "0b110111111111";
        ram[16] = "0b111000111011";
        ram[17] = "0b111011000101";
        ram[18] = "0b000000011100";
        ram[19] = "0b000000111010";
        ram[20] = "0b000000010000";
        ram[21] = "0b111011101101";
        ram[22] = "0b000100111010";
        ram[23] = "0b100110010101";
        ram[24] = "0b000100101100";
        ram[25] = "0b111010010000";
        ram[26] = "0b101111001011";
        ram[27] = "0b001010000111";
        ram[28] = "0b110001111100";
        ram[29] = "0b001010111101";
        ram[30] = "0b111110001011";
        ram[31] = "0b001000111010";
        ram[32] = "0b111101110011";
        ram[33] = "0b111000101100";
        ram[34] = "0b100111011000";
        ram[35] = "0b001111010011";
        ram[36] = "0b111111000111";
        ram[37] = "0b110010001110";
        ram[38] = "0b110000101110";
        ram[39] = "0b001001011100";
        ram[40] = "0b111000001100";
        ram[41] = "0b000110001111";
        ram[42] = "0b110011100010";
        ram[43] = "0b000011011111";
        ram[44] = "0b001100000001";
        ram[45] = "0b001101011100";
        ram[46] = "0b101111010110";
        ram[47] = "0b111111010111";
        ram[48] = "0b101110110011";
        ram[49] = "0b010111001011";
        ram[50] = "0b011011010111";
        ram[51] = "0b111101110001";


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


SC_MODULE(L2_wlo_218_L1_WEIbsm) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbsm_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbsm) {
meminst = new L2_wlo_218_L1_WEIbsm_ram("L2_wlo_218_L1_WEIbsm_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbsm() {
    delete meminst;
}


};//endmodule
#endif
