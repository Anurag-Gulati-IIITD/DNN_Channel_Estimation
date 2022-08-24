// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIVhK_H__
#define __L2_wlo_218_L1_WEIVhK_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIVhK_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIVhK_ram) {
        ram[0] = "0b111011110111";
        ram[1] = "0b000001100101";
        ram[2] = "0b110010000101";
        ram[3] = "0b110001110110";
        ram[4] = "0b111101100111";
        ram[5] = "0b101001100011";
        ram[6] = "0b111011100100";
        ram[7] = "0b010010111110";
        ram[8] = "0b001011001001";
        ram[9] = "0b010000011111";
        ram[10] = "0b000000110011";
        ram[11] = "0b000010000000";
        ram[12] = "0b000000001010";
        ram[13] = "0b110001010101";
        ram[14] = "0b001100011011";
        ram[15] = "0b010010010111";
        ram[16] = "0b000111010111";
        ram[17] = "0b001010101010";
        ram[18] = "0b001011100100";
        ram[19] = "0b111111001111";
        ram[20] = "0b111100000110";
        ram[21] = "0b001000100110";
        ram[22] = "0b110010011110";
        ram[23] = "0b001010101111";
        ram[24] = "0b110110010111";
        ram[25] = "0b111111010101";
        ram[26] = "0b001001110101";
        ram[27] = "0b001101010111";
        ram[28] = "0b000111010000";
        ram[29] = "0b010011010111";
        ram[30] = "0b101011000110";
        ram[31] = "0b111010100010";
        ram[32] = "0b000010001100";
        ram[33] = "0b000000110000";
        ram[34] = "0b001001111100";
        ram[35] = "0b101011101010";
        ram[36] = "0b111010100110";
        ram[37] = "0b110001100001";
        ram[38] = "0b110111101100";
        ram[39] = "0b001000001100";
        ram[40] = "0b000011111011";
        ram[41] = "0b111000001000";
        ram[42] = "0b110010110100";
        ram[43] = "0b101110110001";
        ram[44] = "0b000101011111";
        ram[45] = "0b000111001100";
        ram[46] = "0b001010010010";
        ram[47] = "0b000010011001";
        ram[48] = "0b000011011001";
        ram[49] = "0b110101100110";
        ram[50] = "0b000111100000";
        ram[51] = "0b110111111011";


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


SC_MODULE(L2_wlo_218_L1_WEIVhK) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIVhK_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIVhK) {
meminst = new L2_wlo_218_L1_WEIVhK_ram("L2_wlo_218_L1_WEIVhK_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIVhK() {
    delete meminst;
}


};//endmodule
#endif
