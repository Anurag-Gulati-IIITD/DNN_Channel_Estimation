// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_166_L1_WEIAem_H__
#define __L2_wlo_166_L1_WEIAem_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_166_L1_WEIAem_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_166_L1_WEIAem_ram) {
        ram[0] = "0b111101100";
        ram[1] = "0b101111000";
        ram[2] = "0b111010010";
        ram[3] = "0b110101001";
        ram[4] = "0b001010000";
        ram[5] = "0b111001110";
        ram[6] = "0b000000110";
        ram[7] = "0b111110101";
        ram[8] = "0b011111010";
        ram[9] = "0b100101101";
        ram[10] = "0b110001000";
        ram[11] = "0b010011010";
        ram[12] = "0b110111010";
        ram[13] = "0b010110010";
        ram[14] = "0b111010011";
        ram[15] = "0b111110011";
        ram[16] = "0b000101010";
        ram[17] = "0b000001110";
        ram[18] = "0b001001011";
        ram[19] = "0b111111110";
        ram[20] = "0b000001001";
        ram[21] = "0b111100110";
        ram[22] = "0b110011111";
        ram[23] = "0b010101100";
        ram[24] = "0b111000010";
        ram[25] = "0b111101000";
        ram[26] = "0b000111110";
        ram[27] = "0b101111010";
        ram[28] = "0b111011001";
        ram[29] = "0b000101010";
        ram[30] = "0b111110010";
        ram[31] = "0b111111111";
        ram[32] = "0b000001011";
        ram[33] = "0b110010101";
        ram[34] = "0b010010000";
        ram[35] = "0b100000100";
        ram[36] = "0b111111100";
        ram[37] = "0b001111110";
        ram[38] = "0b011010011";
        ram[39] = "0b111001001";
        ram[40] = "0b000110011";
        ram[41] = "0b101110100";
        ram[42] = "0b001011111";
        ram[43] = "0b111100110";
        ram[44] = "0b000101101";
        ram[45] = "0b110100111";
        ram[46] = "0b000100011";
        ram[47] = "0b110010000";
        ram[48] = "0b001001101";
        ram[49] = "0b101010001";
        ram[50] = "0b100001110";
        ram[51] = "0b000010010";


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


SC_MODULE(L2_wlo_166_L1_WEIAem) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_166_L1_WEIAem_ram* meminst;


SC_CTOR(L2_wlo_166_L1_WEIAem) {
meminst = new L2_wlo_166_L1_WEIAem_ram("L2_wlo_166_L1_WEIAem_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_166_L1_WEIAem() {
    delete meminst;
}


};//endmodule
#endif
