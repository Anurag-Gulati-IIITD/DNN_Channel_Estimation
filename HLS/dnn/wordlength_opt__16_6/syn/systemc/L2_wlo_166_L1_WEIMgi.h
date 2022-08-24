// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_166_L1_WEIMgi_H__
#define __L2_wlo_166_L1_WEIMgi_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_166_L1_WEIMgi_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_166_L1_WEIMgi_ram) {
        ram[0] = "0b000100011";
        ram[1] = "0b000100010";
        ram[2] = "0b111101010";
        ram[3] = "0b000010100";
        ram[4] = "0b000011010";
        ram[5] = "0b001100100";
        ram[6] = "0b110101111";
        ram[7] = "0b111011000";
        ram[8] = "0b010110100";
        ram[9] = "0b010011011";
        ram[10] = "0b110011111";
        ram[11] = "0b000110111";
        ram[12] = "0b001010100";
        ram[13] = "0b011101111";
        ram[14] = "0b100101001";
        ram[15] = "0b000001010";
        ram[16] = "0b001000001";
        ram[17] = "0b111101001";
        ram[18] = "0b111110110";
        ram[19] = "0b001100001";
        ram[20] = "0b000000001";
        ram[21] = "0b111010111";
        ram[22] = "0b111100011";
        ram[23] = "0b111110101";
        ram[24] = "0b000001010";
        ram[25] = "0b001010011";
        ram[26] = "0b100010101";
        ram[27] = "0b111001111";
        ram[28] = "0b000010110";
        ram[29] = "0b110011110";
        ram[30] = "0b010010011";
        ram[31] = "0b110010101";
        ram[32] = "0b001010110";
        ram[33] = "0b110001011";
        ram[34] = "0b001001011";
        ram[35] = "0b111000110";
        ram[36] = "0b111011011";
        ram[37] = "0b010001011";
        ram[38] = "0b000011000";
        ram[39] = "0b000101101";
        ram[40] = "0b000110111";
        ram[41] = "0b001100101";
        ram[42] = "0b111010010";
        ram[43] = "0b111111001";
        ram[44] = "0b001000010";
        ram[45] = "0b000011000";
        ram[46] = "0b000000000";
        ram[47] = "0b000011111";
        ram[48] = "0b111110101";
        ram[49] = "0b000001011";
        ram[50] = "0b100111110";
        ram[51] = "0b101101110";


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


SC_MODULE(L2_wlo_166_L1_WEIMgi) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_166_L1_WEIMgi_ram* meminst;


SC_CTOR(L2_wlo_166_L1_WEIMgi) {
meminst = new L2_wlo_166_L1_WEIMgi_ram("L2_wlo_166_L1_WEIMgi_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_166_L1_WEIMgi() {
    delete meminst;
}


};//endmodule
#endif
