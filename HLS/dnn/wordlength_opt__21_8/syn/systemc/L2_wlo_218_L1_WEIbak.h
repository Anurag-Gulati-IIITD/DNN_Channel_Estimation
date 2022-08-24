// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbak_H__
#define __L2_wlo_218_L1_WEIbak_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbak_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIbak_ram) {
        ram[0] = "0b111110011100";
        ram[1] = "0b110000010111";
        ram[2] = "0b111000100010";
        ram[3] = "0b001110111111";
        ram[4] = "0b110100010011";
        ram[5] = "0b111010000001";
        ram[6] = "0b111010101101";
        ram[7] = "0b000100100111";
        ram[8] = "0b101101001100";
        ram[9] = "0b001111101110";
        ram[10] = "0b001010100101";
        ram[11] = "0b101100011000";
        ram[12] = "0b111101111011";
        ram[13] = "0b010010001110";
        ram[14] = "0b111101111001";
        ram[15] = "0b101100001000";
        ram[16] = "0b111010011001";
        ram[17] = "0b001110100011";
        ram[18] = "0b000010011111";
        ram[19] = "0b110100100110";
        ram[20] = "0b110111001011";
        ram[21] = "0b111110010011";
        ram[22] = "0b110101110100";
        ram[23] = "0b010011110010";
        ram[24] = "0b110111100010";
        ram[25] = "0b110110010011";
        ram[26] = "0b001100101101";
        ram[27] = "0b100000010101";
        ram[28] = "0b000000000011";
        ram[29] = "0b001011011100";
        ram[30] = "0b111011100011";
        ram[31] = "0b111001101101";
        ram[32] = "0b001011100000";
        ram[33] = "0b111111001000";
        ram[34] = "0b111000110000";
        ram[35] = "0b000011100100";
        ram[36] = "0b111011011000";
        ram[37] = "0b110011101000";
        ram[38] = "0b010011010010";
        ram[39] = "0b000000111111";
        ram[40] = "0b000001100001";
        ram[41] = "0b001011111110";
        ram[42] = "0b111101100000";
        ram[43] = "0b010110111110";
        ram[44] = "0b111101101001";
        ram[45] = "0b000110110110";
        ram[46] = "0b111000110101";
        ram[47] = "0b000001010100";
        ram[48] = "0b000000110111";
        ram[49] = "0b000111100101";
        ram[50] = "0b010110001000";
        ram[51] = "0b111110001001";


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


SC_MODULE(L2_wlo_218_L1_WEIbak) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbak_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbak) {
meminst = new L2_wlo_218_L1_WEIbak_ram("L2_wlo_218_L1_WEIbak_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbak() {
    delete meminst;
}


};//endmodule
#endif
