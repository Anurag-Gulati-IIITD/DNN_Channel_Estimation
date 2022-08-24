// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIzec_H__
#define __L2_wlo_218_L1_WEIzec_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIzec_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIzec_ram) {
        ram[0] = "0b000001101011";
        ram[1] = "0b111111101101";
        ram[2] = "0b111001000001";
        ram[3] = "0b111011101011";
        ram[4] = "0b001110111011";
        ram[5] = "0b100111000101";
        ram[6] = "0b001011111110";
        ram[7] = "0b011010001110";
        ram[8] = "0b000110100011";
        ram[9] = "0b111000101110";
        ram[10] = "0b101001000000";
        ram[11] = "0b001001011000";
        ram[12] = "0b111100111101";
        ram[13] = "0b110010110000";
        ram[14] = "0b000001100001";
        ram[15] = "0b000001000100";
        ram[16] = "0b000001000011";
        ram[17] = "0b001001111100";
        ram[18] = "0b000000010101";
        ram[19] = "0b110101110100";
        ram[20] = "0b111110001101";
        ram[21] = "0b001010010000";
        ram[22] = "0b110000111001";
        ram[23] = "0b110011001110";
        ram[24] = "0b000000001110";
        ram[25] = "0b111111110111";
        ram[26] = "0b001111100000";
        ram[27] = "0b110000111110";
        ram[28] = "0b111111101011";
        ram[29] = "0b010010101001";
        ram[30] = "0b001000011000";
        ram[31] = "0b000100100010";
        ram[32] = "0b111011010101";
        ram[33] = "0b001001010010";
        ram[34] = "0b000001000001";
        ram[35] = "0b110110001011";
        ram[36] = "0b000000101000";
        ram[37] = "0b011111010100";
        ram[38] = "0b001110001001";
        ram[39] = "0b000001001011";
        ram[40] = "0b111111000011";
        ram[41] = "0b110110000111";
        ram[42] = "0b000011110101";
        ram[43] = "0b111101010011";
        ram[44] = "0b000101000011";
        ram[45] = "0b111001011110";
        ram[46] = "0b000001111101";
        ram[47] = "0b111000111111";
        ram[48] = "0b001001110101";
        ram[49] = "0b111011111110";
        ram[50] = "0b110101101001";
        ram[51] = "0b111010001010";


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


SC_MODULE(L2_wlo_218_L1_WEIzec) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIzec_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIzec) {
meminst = new L2_wlo_218_L1_WEIzec_ram("L2_wlo_218_L1_WEIzec_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIzec() {
    delete meminst;
}


};//endmodule
#endif
