// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbtn_H__
#define __L2_wlo_218_L1_WEIbtn_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbtn_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIbtn_ram) {
        ram[0] = "0b111111011100";
        ram[1] = "0b011110110111";
        ram[2] = "0b001010101001";
        ram[3] = "0b000111111100";
        ram[4] = "0b010000000010";
        ram[5] = "0b111100110110";
        ram[6] = "0b111101110000";
        ram[7] = "0b010000011010";
        ram[8] = "0b110001101000";
        ram[9] = "0b010011001011";
        ram[10] = "0b001101110110";
        ram[11] = "0b111100000010";
        ram[12] = "0b111000101101";
        ram[13] = "0b100110110110";
        ram[14] = "0b000000000000";
        ram[15] = "0b110111001111";
        ram[16] = "0b111111100110";
        ram[17] = "0b111100101100";
        ram[18] = "0b111011011111";
        ram[19] = "0b000111100010";
        ram[20] = "0b111111111000";
        ram[21] = "0b000001100111";
        ram[22] = "0b110010101000";
        ram[23] = "0b100100000100";
        ram[24] = "0b001101001011";
        ram[25] = "0b001100001100";
        ram[26] = "0b000010111011";
        ram[27] = "0b110100010001";
        ram[28] = "0b000001100001";
        ram[29] = "0b111101100110";
        ram[30] = "0b000001100011";
        ram[31] = "0b001001011101";
        ram[32] = "0b110011101111";
        ram[33] = "0b001010011100";
        ram[34] = "0b110101010011";
        ram[35] = "0b010100111000";
        ram[36] = "0b000111101111";
        ram[37] = "0b111110010100";
        ram[38] = "0b001000111100";
        ram[39] = "0b110110011101";
        ram[40] = "0b000010001100";
        ram[41] = "0b111110100001";
        ram[42] = "0b110000000101";
        ram[43] = "0b000111110000";
        ram[44] = "0b000011110100";
        ram[45] = "0b010000111111";
        ram[46] = "0b111100010010";
        ram[47] = "0b110111111101";
        ram[48] = "0b110111110100";
        ram[49] = "0b001001110001";
        ram[50] = "0b001000101100";
        ram[51] = "0b001000011111";


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


SC_MODULE(L2_wlo_218_L1_WEIbtn) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbtn_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbtn) {
meminst = new L2_wlo_218_L1_WEIbtn_ram("L2_wlo_218_L1_WEIbtn_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbtn() {
    delete meminst;
}


};//endmodule
#endif
