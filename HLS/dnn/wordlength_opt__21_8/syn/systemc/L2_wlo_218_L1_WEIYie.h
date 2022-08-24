// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIYie_H__
#define __L2_wlo_218_L1_WEIYie_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIYie_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIYie_ram) {
        ram[0] = "0b000111110001";
        ram[1] = "0b001110110100";
        ram[2] = "0b000010010010";
        ram[3] = "0b111011100010";
        ram[4] = "0b101100011110";
        ram[5] = "0b010010010111";
        ram[6] = "0b000010110101";
        ram[7] = "0b101101101100";
        ram[8] = "0b111010110010";
        ram[9] = "0b110000110000";
        ram[10] = "0b111010110111";
        ram[11] = "0b111110001110";
        ram[12] = "0b111101101101";
        ram[13] = "0b010100001100";
        ram[14] = "0b101101110010";
        ram[15] = "0b000011101110";
        ram[16] = "0b000000111111";
        ram[17] = "0b110111101011";
        ram[18] = "0b110011101001";
        ram[19] = "0b000110110101";
        ram[20] = "0b000001100111";
        ram[21] = "0b000000001110";
        ram[22] = "0b010110010000";
        ram[23] = "0b111001000000";
        ram[24] = "0b001000010011";
        ram[25] = "0b111110010101";
        ram[26] = "0b110000101111";
        ram[27] = "0b111010000001";
        ram[28] = "0b000001000010";
        ram[29] = "0b101110110101";
        ram[30] = "0b011011101100";
        ram[31] = "0b001000111100";
        ram[32] = "0b011000011100";
        ram[33] = "0b111101000100";
        ram[34] = "0b001111111111";
        ram[35] = "0b000101110101";
        ram[36] = "0b111100001110";
        ram[37] = "0b111100110111";
        ram[38] = "0b001101100110";
        ram[39] = "0b000010000111";
        ram[40] = "0b111111101000";
        ram[41] = "0b001110010011";
        ram[42] = "0b011010111010";
        ram[43] = "0b111110000001";
        ram[44] = "0b000111100011";
        ram[45] = "0b001011010100";
        ram[46] = "0b111100010101";
        ram[47] = "0b111000010001";
        ram[48] = "0b000011011100";
        ram[49] = "0b110101011000";
        ram[50] = "0b000011110101";
        ram[51] = "0b110010101101";


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


SC_MODULE(L2_wlo_218_L1_WEIYie) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIYie_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIYie) {
meminst = new L2_wlo_218_L1_WEIYie_ram("L2_wlo_218_L1_WEIYie_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIYie() {
    delete meminst;
}


};//endmodule
#endif
