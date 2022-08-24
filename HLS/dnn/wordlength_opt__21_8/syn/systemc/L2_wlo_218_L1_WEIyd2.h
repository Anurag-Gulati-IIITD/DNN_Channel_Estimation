// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIyd2_H__
#define __L2_wlo_218_L1_WEIyd2_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIyd2_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIyd2_ram) {
        ram[0] = "0b111000110100";
        ram[1] = "0b001110001110";
        ram[2] = "0b111001110010";
        ram[3] = "0b111010100101";
        ram[4] = "0b111010101001";
        ram[5] = "0b101100111010";
        ram[6] = "0b000110010111";
        ram[7] = "0b001010000110";
        ram[8] = "0b111111000100";
        ram[9] = "0b001000100111";
        ram[10] = "0b110000011011";
        ram[11] = "0b111100111011";
        ram[12] = "0b101010011011";
        ram[13] = "0b101011000000";
        ram[14] = "0b000011010010";
        ram[15] = "0b000110010000";
        ram[16] = "0b110010011010";
        ram[17] = "0b111011110011";
        ram[18] = "0b111001010101";
        ram[19] = "0b111001111110";
        ram[20] = "0b000000100000";
        ram[21] = "0b000101011001";
        ram[22] = "0b111010100110";
        ram[23] = "0b110111011101";
        ram[24] = "0b000110110100";
        ram[25] = "0b111100111111";
        ram[26] = "0b011001111011";
        ram[27] = "0b110110011101";
        ram[28] = "0b110111101111";
        ram[29] = "0b001001011010";
        ram[30] = "0b111101000110";
        ram[31] = "0b000011011001";
        ram[32] = "0b111001001100";
        ram[33] = "0b001000001000";
        ram[34] = "0b000001010101";
        ram[35] = "0b110110001011";
        ram[36] = "0b001000001100";
        ram[37] = "0b001001101101";
        ram[38] = "0b001011101100";
        ram[39] = "0b110000100001";
        ram[40] = "0b111011010010";
        ram[41] = "0b000010110000";
        ram[42] = "0b111110001101";
        ram[43] = "0b111101100000";
        ram[44] = "0b111101011001";
        ram[45] = "0b000001011000";
        ram[46] = "0b110101101101";
        ram[47] = "0b111110010010";
        ram[48] = "0b110110011000";
        ram[49] = "0b001100010001";
        ram[50] = "0b001000010111";
        ram[51] = "0b010001101100";


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


SC_MODULE(L2_wlo_218_L1_WEIyd2) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIyd2_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIyd2) {
meminst = new L2_wlo_218_L1_WEIyd2_ram("L2_wlo_218_L1_WEIyd2_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIyd2() {
    delete meminst;
}


};//endmodule
#endif
