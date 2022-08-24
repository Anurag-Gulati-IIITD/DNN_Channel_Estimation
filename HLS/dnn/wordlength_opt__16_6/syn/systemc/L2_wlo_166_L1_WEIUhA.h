// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_166_L1_WEIUhA_H__
#define __L2_wlo_166_L1_WEIUhA_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_166_L1_WEIUhA_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_166_L1_WEIUhA_ram) {
        ram[0] = "0b000000001";
        ram[1] = "0b101101010";
        ram[2] = "0b110000011";
        ram[3] = "0b111111001";
        ram[4] = "0b111000111";
        ram[5] = "0b101110010";
        ram[6] = "0b111101101";
        ram[7] = "0b000110111";
        ram[8] = "0b001010001";
        ram[9] = "0b010110001";
        ram[10] = "0b110111011";
        ram[11] = "0b000010011";
        ram[12] = "0b001000010";
        ram[13] = "0b110010001";
        ram[14] = "0b010010100";
        ram[15] = "0b001011101";
        ram[16] = "0b110000000";
        ram[17] = "0b001011000";
        ram[18] = "0b001010011";
        ram[19] = "0b110110101";
        ram[20] = "0b111100101";
        ram[21] = "0b111101110";
        ram[22] = "0b111010101";
        ram[23] = "0b001100100";
        ram[24] = "0b111110000";
        ram[25] = "0b111010001";
        ram[26] = "0b011011011";
        ram[27] = "0b000100000";
        ram[28] = "0b110011011";
        ram[29] = "0b010011100";
        ram[30] = "0b100111010";
        ram[31] = "0b000000000";
        ram[32] = "0b000101101";
        ram[33] = "0b010101000";
        ram[34] = "0b110011000";
        ram[35] = "0b110000001";
        ram[36] = "0b001001101";
        ram[37] = "0b001110111";
        ram[38] = "0b110111110";
        ram[39] = "0b001011000";
        ram[40] = "0b000101001";
        ram[41] = "0b001101111";
        ram[42] = "0b101100001";
        ram[43] = "0b110000111";
        ram[44] = "0b111100101";
        ram[45] = "0b000001011";
        ram[46] = "0b111101011";
        ram[47] = "0b000001001";
        ram[48] = "0b000101010";
        ram[49] = "0b010000110";
        ram[50] = "0b101111010";
        ram[51] = "0b110110111";


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


SC_MODULE(L2_wlo_166_L1_WEIUhA) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_166_L1_WEIUhA_ram* meminst;


SC_CTOR(L2_wlo_166_L1_WEIUhA) {
meminst = new L2_wlo_166_L1_WEIUhA_ram("L2_wlo_166_L1_WEIUhA_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_166_L1_WEIUhA() {
    delete meminst;
}


};//endmodule
#endif
