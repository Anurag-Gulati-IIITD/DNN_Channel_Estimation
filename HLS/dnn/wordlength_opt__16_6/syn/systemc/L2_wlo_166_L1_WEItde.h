// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_166_L1_WEItde_H__
#define __L2_wlo_166_L1_WEItde_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_166_L1_WEItde_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_166_L1_WEItde_ram) {
        ram[0] = "0b111001000";
        ram[1] = "0b110000111";
        ram[2] = "0b000001001";
        ram[3] = "0b110100110";
        ram[4] = "0b010101111";
        ram[5] = "0b101100010";
        ram[6] = "0b000000101";
        ram[7] = "0b010001111";
        ram[8] = "0b010100001";
        ram[9] = "0b110011011";
        ram[10] = "0b000110010";
        ram[11] = "0b000011100";
        ram[12] = "0b001110110";
        ram[13] = "0b111000111";
        ram[14] = "0b001101100";
        ram[15] = "0b110111100";
        ram[16] = "0b000010010";
        ram[17] = "0b001100100";
        ram[18] = "0b110101101";
        ram[19] = "0b000111101";
        ram[20] = "0b001010010";
        ram[21] = "0b111110111";
        ram[22] = "0b101001011";
        ram[23] = "0b001111110";
        ram[24] = "0b111100011";
        ram[25] = "0b111100011";
        ram[26] = "0b101100000";
        ram[27] = "0b110100111";
        ram[28] = "0b000010001";
        ram[29] = "0b001011000";
        ram[30] = "0b000100000";
        ram[31] = "0b111101101";
        ram[32] = "0b101100111";
        ram[33] = "0b000000100";
        ram[34] = "0b000110000";
        ram[35] = "0b000111110";
        ram[36] = "0b000001000";
        ram[37] = "0b000001110";
        ram[38] = "0b111110000";
        ram[39] = "0b001010010";
        ram[40] = "0b111111001";
        ram[41] = "0b110110100";
        ram[42] = "0b010000011";
        ram[43] = "0b000110010";
        ram[44] = "0b110101111";
        ram[45] = "0b110011100";
        ram[46] = "0b001111001";
        ram[47] = "0b111000011";
        ram[48] = "0b000110011";
        ram[49] = "0b111000000";
        ram[50] = "0b101110110";
        ram[51] = "0b110000000";


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


SC_MODULE(L2_wlo_166_L1_WEItde) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_166_L1_WEItde_ram* meminst;


SC_CTOR(L2_wlo_166_L1_WEItde) {
meminst = new L2_wlo_166_L1_WEItde_ram("L2_wlo_166_L1_WEItde_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_166_L1_WEItde() {
    delete meminst;
}


};//endmodule
#endif
