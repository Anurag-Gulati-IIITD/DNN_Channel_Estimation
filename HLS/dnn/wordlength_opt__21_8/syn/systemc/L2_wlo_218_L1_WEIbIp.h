// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbIp_H__
#define __L2_wlo_218_L1_WEIbIp_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbIp_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIbIp_ram) {
        ram[0] = "0b111011111010";
        ram[1] = "0b110101001010";
        ram[2] = "0b110011110000";
        ram[3] = "0b000010010100";
        ram[4] = "0b110110111010";
        ram[5] = "0b101011010000";
        ram[6] = "0b111100101100";
        ram[7] = "0b000101100000";
        ram[8] = "0b010110010001";
        ram[9] = "0b001010100000";
        ram[10] = "0b110111010110";
        ram[11] = "0b111011000011";
        ram[12] = "0b000111101100";
        ram[13] = "0b110010010011";
        ram[14] = "0b000110110001";
        ram[15] = "0b011000100011";
        ram[16] = "0b111001100110";
        ram[17] = "0b010000000000";
        ram[18] = "0b111111000001";
        ram[19] = "0b110101011001";
        ram[20] = "0b110110001100";
        ram[21] = "0b000011000111";
        ram[22] = "0b110111101111";
        ram[23] = "0b001010000110";
        ram[24] = "0b101110100011";
        ram[25] = "0b111110010111";
        ram[26] = "0b000101010000";
        ram[27] = "0b000111010010";
        ram[28] = "0b101001101110";
        ram[29] = "0b011010011010";
        ram[30] = "0b000010000001";
        ram[31] = "0b101111111110";
        ram[32] = "0b001011000010";
        ram[33] = "0b000111110101";
        ram[34] = "0b101101111110";
        ram[35] = "0b110000001000";
        ram[36] = "0b111101011010";
        ram[37] = "0b010011000111";
        ram[38] = "0b101101101110";
        ram[39] = "0b001001011001";
        ram[40] = "0b000100000111";
        ram[41] = "0b001001111110";
        ram[42] = "0b101101000000";
        ram[43] = "0b101110111000";
        ram[44] = "0b000011010010";
        ram[45] = "0b000101011001";
        ram[46] = "0b111110000000";
        ram[47] = "0b111100011001";
        ram[48] = "0b111100001100";
        ram[49] = "0b000101000110";
        ram[50] = "0b100110110010";
        ram[51] = "0b110011001111";


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


SC_MODULE(L2_wlo_218_L1_WEIbIp) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbIp_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbIp) {
meminst = new L2_wlo_218_L1_WEIbIp_ram("L2_wlo_218_L1_WEIbIp_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbIp() {
    delete meminst;
}


};//endmodule
#endif
