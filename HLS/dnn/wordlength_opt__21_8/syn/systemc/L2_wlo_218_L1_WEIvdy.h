// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIvdy_H__
#define __L2_wlo_218_L1_WEIvdy_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIvdy_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIvdy_ram) {
        ram[0] = "0b000110010010";
        ram[1] = "0b101111011100";
        ram[2] = "0b001101100000";
        ram[3] = "0b110110110000";
        ram[4] = "0b111111011001";
        ram[5] = "0b011101001011";
        ram[6] = "0b010001011000";
        ram[7] = "0b110001001101";
        ram[8] = "0b111100101100";
        ram[9] = "0b111111011010";
        ram[10] = "0b011000011110";
        ram[11] = "0b001011110000";
        ram[12] = "0b111010101111";
        ram[13] = "0b001111100101";
        ram[14] = "0b111000101110";
        ram[15] = "0b111001001111";
        ram[16] = "0b111001111110";
        ram[17] = "0b111011100010";
        ram[18] = "0b000010011001";
        ram[19] = "0b000010100101";
        ram[20] = "0b000000100111";
        ram[21] = "0b111111111100";
        ram[22] = "0b001101010001";
        ram[23] = "0b000100110011";
        ram[24] = "0b001100001011";
        ram[25] = "0b000101101001";
        ram[26] = "0b000110010011";
        ram[27] = "0b010101001101";
        ram[28] = "0b000001001101";
        ram[29] = "0b101000000111";
        ram[30] = "0b111110110010";
        ram[31] = "0b110001111010";
        ram[32] = "0b111111101100";
        ram[33] = "0b110111111011";
        ram[34] = "0b010001010110";
        ram[35] = "0b001100101100";
        ram[36] = "0b000110101111";
        ram[37] = "0b110011111100";
        ram[38] = "0b100010001110";
        ram[39] = "0b000011010100";
        ram[40] = "0b111001001011";
        ram[41] = "0b000111100010";
        ram[42] = "0b111101000111";
        ram[43] = "0b000100110110";
        ram[44] = "0b111111100110";
        ram[45] = "0b000001010010";
        ram[46] = "0b000011000000";
        ram[47] = "0b110111101100";
        ram[48] = "0b111010111000";
        ram[49] = "0b000010101111";
        ram[50] = "0b000001110000";
        ram[51] = "0b111000000101";


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


SC_MODULE(L2_wlo_218_L1_WEIvdy) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIvdy_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIvdy) {
meminst = new L2_wlo_218_L1_WEIvdy_ram("L2_wlo_218_L1_WEIvdy_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIvdy() {
    delete meminst;
}


};//endmodule
#endif
