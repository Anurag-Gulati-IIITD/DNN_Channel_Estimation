// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIKfY_H__
#define __L2_wlo_218_L1_WEIKfY_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIKfY_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIKfY_ram) {
        ram[0] = "0b110000110010";
        ram[1] = "0b010001010100";
        ram[2] = "0b110110110001";
        ram[3] = "0b101101111101";
        ram[4] = "0b000111100101";
        ram[5] = "0b101011101110";
        ram[6] = "0b111001010000";
        ram[7] = "0b000110001100";
        ram[8] = "0b101100010000";
        ram[9] = "0b110001010000";
        ram[10] = "0b000000110001";
        ram[11] = "0b001000001111";
        ram[12] = "0b000110010000";
        ram[13] = "0b111111111000";
        ram[14] = "0b111011001110";
        ram[15] = "0b100111010100";
        ram[16] = "0b000000000001";
        ram[17] = "0b000010001000";
        ram[18] = "0b111111011111";
        ram[19] = "0b111001110000";
        ram[20] = "0b000010000110";
        ram[21] = "0b000100111001";
        ram[22] = "0b111101111110";
        ram[23] = "0b101011010001";
        ram[24] = "0b111001001011";
        ram[25] = "0b000000001000";
        ram[26] = "0b111110110000";
        ram[27] = "0b111011100000";
        ram[28] = "0b001110011001";
        ram[29] = "0b010111101001";
        ram[30] = "0b001011001000";
        ram[31] = "0b111000100001";
        ram[32] = "0b110111110000";
        ram[33] = "0b110110011110";
        ram[34] = "0b110100011110";
        ram[35] = "0b110000011110";
        ram[36] = "0b110110111000";
        ram[37] = "0b000100100011";
        ram[38] = "0b111000001000";
        ram[39] = "0b001001101001";
        ram[40] = "0b111010110001";
        ram[41] = "0b111001001001";
        ram[42] = "0b000100111001";
        ram[43] = "0b010011100110";
        ram[44] = "0b110111110111";
        ram[45] = "0b110010001000";
        ram[46] = "0b001000100000";
        ram[47] = "0b001010100110";
        ram[48] = "0b000000010010";
        ram[49] = "0b001010011100";
        ram[50] = "0b001010000101";
        ram[51] = "0b110101110010";


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


SC_MODULE(L2_wlo_218_L1_WEIKfY) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIKfY_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIKfY) {
meminst = new L2_wlo_218_L1_WEIKfY_ram("L2_wlo_218_L1_WEIKfY_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIKfY() {
    delete meminst;
}


};//endmodule
#endif
