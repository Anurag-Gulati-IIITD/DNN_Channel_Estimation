// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbil_H__
#define __L2_wlo_218_L1_WEIbil_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbil_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIbil_ram) {
        ram[0] = "0b001010110110";
        ram[1] = "0b111010101101";
        ram[2] = "0b001011101110";
        ram[3] = "0b110010101010";
        ram[4] = "0b001110000011";
        ram[5] = "0b111000011000";
        ram[6] = "0b111111110101";
        ram[7] = "0b000010101111";
        ram[8] = "0b010011001001";
        ram[9] = "0b110110011101";
        ram[10] = "0b010001001001";
        ram[11] = "0b000000001100";
        ram[12] = "0b001000001111";
        ram[13] = "0b101111111000";
        ram[14] = "0b000001110111";
        ram[15] = "0b101111100001";
        ram[16] = "0b001000111101";
        ram[17] = "0b101011100010";
        ram[18] = "0b111010010111";
        ram[19] = "0b000001000101";
        ram[20] = "0b111111000011";
        ram[21] = "0b111100111100";
        ram[22] = "0b111111111110";
        ram[23] = "0b000111000010";
        ram[24] = "0b000001101100";
        ram[25] = "0b000010101000";
        ram[26] = "0b111100101110";
        ram[27] = "0b001010010010";
        ram[28] = "0b000100100100";
        ram[29] = "0b111110011011";
        ram[30] = "0b111100001010";
        ram[31] = "0b000100110101";
        ram[32] = "0b111011110001";
        ram[33] = "0b001001111110";
        ram[34] = "0b001101001111";
        ram[35] = "0b001110110110";
        ram[36] = "0b001101110100";
        ram[37] = "0b110010110111";
        ram[38] = "0b110011010001";
        ram[39] = "0b000101110100";
        ram[40] = "0b110111100010";
        ram[41] = "0b111010100001";
        ram[42] = "0b001111100101";
        ram[43] = "0b010001110010";
        ram[44] = "0b110110001101";
        ram[45] = "0b110011001110";
        ram[46] = "0b001111101000";
        ram[47] = "0b110110100101";
        ram[48] = "0b010000010101";
        ram[49] = "0b110010101101";
        ram[50] = "0b101010110100";
        ram[51] = "0b110101000010";


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


SC_MODULE(L2_wlo_218_L1_WEIbil) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbil_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbil) {
meminst = new L2_wlo_218_L1_WEIbil_ram("L2_wlo_218_L1_WEIbil_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbil() {
    delete meminst;
}


};//endmodule
#endif
