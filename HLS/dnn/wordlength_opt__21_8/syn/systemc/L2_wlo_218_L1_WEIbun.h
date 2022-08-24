// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbun_H__
#define __L2_wlo_218_L1_WEIbun_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbun_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIbun_ram) {
        ram[0] = "0b111001010000";
        ram[1] = "0b010010010010";
        ram[2] = "0b000101010000";
        ram[3] = "0b110010111011";
        ram[4] = "0b001111001100";
        ram[5] = "0b010000100010";
        ram[6] = "0b001111101100";
        ram[7] = "0b001001111111";
        ram[8] = "0b000010000001";
        ram[9] = "0b000001011001";
        ram[10] = "0b111011011000";
        ram[11] = "0b001011101011";
        ram[12] = "0b111110111010";
        ram[13] = "0b111101010110";
        ram[14] = "0b111111110010";
        ram[15] = "0b101110001111";
        ram[16] = "0b111100110101";
        ram[17] = "0b110100000110";
        ram[18] = "0b111011111111";
        ram[19] = "0b111110011000";
        ram[20] = "0b000010011001";
        ram[21] = "0b110110001110";
        ram[22] = "0b110000000000";
        ram[23] = "0b110001101011";
        ram[24] = "0b000101001001";
        ram[25] = "0b000101000111";
        ram[26] = "0b010011001100";
        ram[27] = "0b101100101000";
        ram[28] = "0b000000011100";
        ram[29] = "0b111000000001";
        ram[30] = "0b000011011001";
        ram[31] = "0b000011110111";
        ram[32] = "0b110111011001";
        ram[33] = "0b111100101111";
        ram[34] = "0b010100010111";
        ram[35] = "0b001101000100";
        ram[36] = "0b111101100001";
        ram[37] = "0b000010100000";
        ram[38] = "0b010011000011";
        ram[39] = "0b000010110011";
        ram[40] = "0b110101101110";
        ram[41] = "0b111100110100";
        ram[42] = "0b101001010100";
        ram[43] = "0b001011010101";
        ram[44] = "0b110100110111";
        ram[45] = "0b000110011010";
        ram[46] = "0b010001000101";
        ram[47] = "0b000010011101";
        ram[48] = "0b000011101111";
        ram[49] = "0b110100100000";
        ram[50] = "0b110100000101";
        ram[51] = "0b000010010111";


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


SC_MODULE(L2_wlo_218_L1_WEIbun) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbun_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbun) {
meminst = new L2_wlo_218_L1_WEIbun_ram("L2_wlo_218_L1_WEIbun_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbun() {
    delete meminst;
}


};//endmodule
#endif
