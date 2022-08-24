// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIPgM_H__
#define __L2_wlo_218_L1_WEIPgM_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIPgM_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIPgM_ram) {
        ram[0] = "0b111101010100";
        ram[1] = "0b111010000110";
        ram[2] = "0b111010110101";
        ram[3] = "0b000001010011";
        ram[4] = "0b001111000010";
        ram[5] = "0b101000110101";
        ram[6] = "0b001100100001";
        ram[7] = "0b001101001101";
        ram[8] = "0b101111010110";
        ram[9] = "0b111011101110";
        ram[10] = "0b010011100011";
        ram[11] = "0b000100001000";
        ram[12] = "0b111111101111";
        ram[13] = "0b111000111000";
        ram[14] = "0b010011001110";
        ram[15] = "0b001001101100";
        ram[16] = "0b111100110000";
        ram[17] = "0b111100100111";
        ram[18] = "0b110011011000";
        ram[19] = "0b111000101100";
        ram[20] = "0b001010100111";
        ram[21] = "0b111110101110";
        ram[22] = "0b111110100110";
        ram[23] = "0b001111101000";
        ram[24] = "0b111010010010";
        ram[25] = "0b000011010010";
        ram[26] = "0b110010110001";
        ram[27] = "0b111000011101";
        ram[28] = "0b111110101011";
        ram[29] = "0b001110011101";
        ram[30] = "0b100011000110";
        ram[31] = "0b001101111100";
        ram[32] = "0b110111000110";
        ram[33] = "0b000110100010";
        ram[34] = "0b000110000001";
        ram[35] = "0b001111011011";
        ram[36] = "0b111010000011";
        ram[37] = "0b100111011100";
        ram[38] = "0b111001111101";
        ram[39] = "0b110011111001";
        ram[40] = "0b111001100011";
        ram[41] = "0b110110101011";
        ram[42] = "0b111101010101";
        ram[43] = "0b110111011100";
        ram[44] = "0b000010010011";
        ram[45] = "0b000001100010";
        ram[46] = "0b111010110011";
        ram[47] = "0b111110010001";
        ram[48] = "0b111001000000";
        ram[49] = "0b111001011110";
        ram[50] = "0b010001110101";
        ram[51] = "0b001011001000";


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


SC_MODULE(L2_wlo_218_L1_WEIPgM) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIPgM_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIPgM) {
meminst = new L2_wlo_218_L1_WEIPgM_ram("L2_wlo_218_L1_WEIPgM_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIPgM() {
    delete meminst;
}


};//endmodule
#endif
