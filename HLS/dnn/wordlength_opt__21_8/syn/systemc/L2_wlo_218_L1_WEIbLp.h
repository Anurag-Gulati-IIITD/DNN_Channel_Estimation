// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbLp_H__
#define __L2_wlo_218_L1_WEIbLp_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbLp_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIbLp_ram) {
        ram[0] = "0b110110101010";
        ram[1] = "0b001100110000";
        ram[2] = "0b000010100001";
        ram[3] = "0b110100001011";
        ram[4] = "0b001100111010";
        ram[5] = "0b000100100010";
        ram[6] = "0b000000010011";
        ram[7] = "0b111101111001";
        ram[8] = "0b101000000001";
        ram[9] = "0b111011010110";
        ram[10] = "0b011000011011";
        ram[11] = "0b111100011111";
        ram[12] = "0b001000010001";
        ram[13] = "0b001110010010";
        ram[14] = "0b110111011010";
        ram[15] = "0b000101111100";
        ram[16] = "0b001011001100";
        ram[17] = "0b111001001010";
        ram[18] = "0b110011100111";
        ram[19] = "0b001011100110";
        ram[20] = "0b001010010001";
        ram[21] = "0b110011111011";
        ram[22] = "0b000000010000";
        ram[23] = "0b111001011100";
        ram[24] = "0b111110010111";
        ram[25] = "0b111010000110";
        ram[26] = "0b101100110101";
        ram[27] = "0b110101011011";
        ram[28] = "0b011000001110";
        ram[29] = "0b111001110001";
        ram[30] = "0b000100011101";
        ram[31] = "0b000010111100";
        ram[32] = "0b110110001100";
        ram[33] = "0b100100111101";
        ram[34] = "0b001001101101";
        ram[35] = "0b110001000110";
        ram[36] = "0b000000111010";
        ram[37] = "0b110101000101";
        ram[38] = "0b001000000001";
        ram[39] = "0b110111100111";
        ram[40] = "0b111100101100";
        ram[41] = "0b101001111010";
        ram[42] = "0b001010101011";
        ram[43] = "0b111001011111";
        ram[44] = "0b001111111110";
        ram[45] = "0b001000001100";
        ram[46] = "0b111100101100";
        ram[47] = "0b000110111110";
        ram[48] = "0b000011100101";
        ram[49] = "0b111101111100";
        ram[50] = "0b010110100110";
        ram[51] = "0b000000100011";


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


SC_MODULE(L2_wlo_218_L1_WEIbLp) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbLp_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbLp) {
meminst = new L2_wlo_218_L1_WEIbLp_ram("L2_wlo_218_L1_WEIbLp_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbLp() {
    delete meminst;
}


};//endmodule
#endif
