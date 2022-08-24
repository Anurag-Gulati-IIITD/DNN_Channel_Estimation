// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_166_L1_WEIbIp_H__
#define __L2_wlo_166_L1_WEIbIp_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_166_L1_WEIbIp_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 9;
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


   SC_CTOR(L2_wlo_166_L1_WEIbIp_ram) {
        ram[0] = "0b111011111";
        ram[1] = "0b110101001";
        ram[2] = "0b110011110";
        ram[3] = "0b000010010";
        ram[4] = "0b110110111";
        ram[5] = "0b101011010";
        ram[6] = "0b111100101";
        ram[7] = "0b000101100";
        ram[8] = "0b010110010";
        ram[9] = "0b001010100";
        ram[10] = "0b110111010";
        ram[11] = "0b111011000";
        ram[12] = "0b000111101";
        ram[13] = "0b110010010";
        ram[14] = "0b000110110";
        ram[15] = "0b011000100";
        ram[16] = "0b111001100";
        ram[17] = "0b010000000";
        ram[18] = "0b111111000";
        ram[19] = "0b110101011";
        ram[20] = "0b110110001";
        ram[21] = "0b000011000";
        ram[22] = "0b110111101";
        ram[23] = "0b001010000";
        ram[24] = "0b101110100";
        ram[25] = "0b111110010";
        ram[26] = "0b000101010";
        ram[27] = "0b000111010";
        ram[28] = "0b101001101";
        ram[29] = "0b011010011";
        ram[30] = "0b000010000";
        ram[31] = "0b101111111";
        ram[32] = "0b001011000";
        ram[33] = "0b000111110";
        ram[34] = "0b101101111";
        ram[35] = "0b110000001";
        ram[36] = "0b111101011";
        ram[37] = "0b010011000";
        ram[38] = "0b101101101";
        ram[39] = "0b001001011";
        ram[40] = "0b000100000";
        ram[41] = "0b001001111";
        ram[42] = "0b101101000";
        ram[43] = "0b101110111";
        ram[44] = "0b000011010";
        ram[45] = "0b000101011";
        ram[46] = "0b111110000";
        ram[47] = "0b111100011";
        ram[48] = "0b111100001";
        ram[49] = "0b000101000";
        ram[50] = "0b100110110";
        ram[51] = "0b110011001";


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


SC_MODULE(L2_wlo_166_L1_WEIbIp) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_166_L1_WEIbIp_ram* meminst;


SC_CTOR(L2_wlo_166_L1_WEIbIp) {
meminst = new L2_wlo_166_L1_WEIbIp_ram("L2_wlo_166_L1_WEIbIp_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_166_L1_WEIbIp() {
    delete meminst;
}


};//endmodule
#endif
