// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbBo_H__
#define __L2_wlo_218_L1_WEIbBo_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbBo_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIbBo_ram) {
        ram[0] = "0b000011000101";
        ram[1] = "0b110111101010";
        ram[2] = "0b111111001111";
        ram[3] = "0b001010110011";
        ram[4] = "0b110010000100";
        ram[5] = "0b111101011001";
        ram[6] = "0b000011011110";
        ram[7] = "0b000100110101";
        ram[8] = "0b011000011101";
        ram[9] = "0b000001011000";
        ram[10] = "0b111101101111";
        ram[11] = "0b111100110111";
        ram[12] = "0b001110101100";
        ram[13] = "0b001011110001";
        ram[14] = "0b111100111111";
        ram[15] = "0b010010111010";
        ram[16] = "0b111110011000";
        ram[17] = "0b111110100011";
        ram[18] = "0b110000110110";
        ram[19] = "0b001100001010";
        ram[20] = "0b001011100001";
        ram[21] = "0b111011011100";
        ram[22] = "0b110110100100";
        ram[23] = "0b000111011100";
        ram[24] = "0b000000101010";
        ram[25] = "0b000110101000";
        ram[26] = "0b101010000101";
        ram[27] = "0b110000000011";
        ram[28] = "0b000110001010";
        ram[29] = "0b111100010101";
        ram[30] = "0b000100000110";
        ram[31] = "0b111010011001";
        ram[32] = "0b111110010010";
        ram[33] = "0b000110111001";
        ram[34] = "0b001010111001";
        ram[35] = "0b011111101100";
        ram[36] = "0b111000100111";
        ram[37] = "0b111110001000";
        ram[38] = "0b010010100000";
        ram[39] = "0b111110111110";
        ram[40] = "0b000011011001";
        ram[41] = "0b001000011111";
        ram[42] = "0b111101100101";
        ram[43] = "0b101000000010";
        ram[44] = "0b000001011101";
        ram[45] = "0b111100111101";
        ram[46] = "0b111111010110";
        ram[47] = "0b111110100001";
        ram[48] = "0b111000000001";
        ram[49] = "0b101110001111";
        ram[50] = "0b100000010011";
        ram[51] = "0b110101111010";


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


SC_MODULE(L2_wlo_218_L1_WEIbBo) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbBo_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbBo) {
meminst = new L2_wlo_218_L1_WEIbBo_ram("L2_wlo_218_L1_WEIbBo_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbBo() {
    delete meminst;
}


};//endmodule
#endif
