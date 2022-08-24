// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbxn_H__
#define __L2_wlo_218_L1_WEIbxn_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbxn_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIbxn_ram) {
        ram[0] = "0b000011110010";
        ram[1] = "0b110011100010";
        ram[2] = "0b101110010010";
        ram[3] = "0b111110001010";
        ram[4] = "0b000010001001";
        ram[5] = "0b100100110100";
        ram[6] = "0b110000111110";
        ram[7] = "0b110111111111";
        ram[8] = "0b101000100111";
        ram[9] = "0b110010001100";
        ram[10] = "0b000101001010";
        ram[11] = "0b110011101010";
        ram[12] = "0b110110110000";
        ram[13] = "0b101000000111";
        ram[14] = "0b000100011100";
        ram[15] = "0b000010001100";
        ram[16] = "0b000110000011";
        ram[17] = "0b001011100001";
        ram[18] = "0b111110100000";
        ram[19] = "0b110110010011";
        ram[20] = "0b110111111111";
        ram[21] = "0b000111011000";
        ram[22] = "0b000111100110";
        ram[23] = "0b000000110111";
        ram[24] = "0b110011100100";
        ram[25] = "0b000010110100";
        ram[26] = "0b000000000110";
        ram[27] = "0b011001001000";
        ram[28] = "0b111010100001";
        ram[29] = "0b011010011101";
        ram[30] = "0b110111001100";
        ram[31] = "0b000001000011";
        ram[32] = "0b111011001100";
        ram[33] = "0b000101110100";
        ram[34] = "0b110101101000";
        ram[35] = "0b110011001100";
        ram[36] = "0b111011101001";
        ram[37] = "0b000010111111";
        ram[38] = "0b100001111000";
        ram[39] = "0b000111010101";
        ram[40] = "0b001110000011";
        ram[41] = "0b000111001111";
        ram[42] = "0b010110001011";
        ram[43] = "0b000010001111";
        ram[44] = "0b111011101110";
        ram[45] = "0b001000011001";
        ram[46] = "0b001000011110";
        ram[47] = "0b001111111000";
        ram[48] = "0b111011001111";
        ram[49] = "0b010001100110";
        ram[50] = "0b010110010111";
        ram[51] = "0b110110100101";


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


SC_MODULE(L2_wlo_218_L1_WEIbxn) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbxn_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbxn) {
meminst = new L2_wlo_218_L1_WEIbxn_ram("L2_wlo_218_L1_WEIbxn_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbxn() {
    delete meminst;
}


};//endmodule
#endif
