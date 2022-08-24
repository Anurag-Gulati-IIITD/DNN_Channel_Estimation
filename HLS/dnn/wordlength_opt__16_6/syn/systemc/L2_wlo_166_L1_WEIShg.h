// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_166_L1_WEIShg_H__
#define __L2_wlo_166_L1_WEIShg_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_166_L1_WEIShg_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_166_L1_WEIShg_ram) {
        ram[0] = "0b111011100";
        ram[1] = "0b010111000";
        ram[2] = "0b000001011";
        ram[3] = "0b111101001";
        ram[4] = "0b110011001";
        ram[5] = "0b000101110";
        ram[6] = "0b000010001";
        ram[7] = "0b111100101";
        ram[8] = "0b001000101";
        ram[9] = "0b111011111";
        ram[10] = "0b110101111";
        ram[11] = "0b110010100";
        ram[12] = "0b000100011";
        ram[13] = "0b000111110";
        ram[14] = "0b101110000";
        ram[15] = "0b101110010";
        ram[16] = "0b111001101";
        ram[17] = "0b111100111";
        ram[18] = "0b111011110";
        ram[19] = "0b110111100";
        ram[20] = "0b110010111";
        ram[21] = "0b110111001";
        ram[22] = "0b001111111";
        ram[23] = "0b101110101";
        ram[24] = "0b000010111";
        ram[25] = "0b111000101";
        ram[26] = "0b001111001";
        ram[27] = "0b111101001";
        ram[28] = "0b110111011";
        ram[29] = "0b110101011";
        ram[30] = "0b001100101";
        ram[31] = "0b111101100";
        ram[32] = "0b000000110";
        ram[33] = "0b001001101";
        ram[34] = "0b110011001";
        ram[35] = "0b001011110";
        ram[36] = "0b111111010";
        ram[37] = "0b010111011";
        ram[38] = "0b111101010";
        ram[39] = "0b010010001";
        ram[40] = "0b111101010";
        ram[41] = "0b111110101";
        ram[42] = "0b111011100";
        ram[43] = "0b010110111";
        ram[44] = "0b111110011";
        ram[45] = "0b110100010";
        ram[46] = "0b111101000";
        ram[47] = "0b111011001";
        ram[48] = "0b110111101";
        ram[49] = "0b001101001";
        ram[50] = "0b110001100";
        ram[51] = "0b111101111";


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


SC_MODULE(L2_wlo_166_L1_WEIShg) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_166_L1_WEIShg_ram* meminst;


SC_CTOR(L2_wlo_166_L1_WEIShg) {
meminst = new L2_wlo_166_L1_WEIShg_ram("L2_wlo_166_L1_WEIShg_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_166_L1_WEIShg() {
    delete meminst;
}


};//endmodule
#endif
