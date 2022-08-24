// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEItde_H__
#define __L2_wlo_218_L1_WEItde_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEItde_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEItde_ram) {
        ram[0] = "0b111001000001";
        ram[1] = "0b110000111011";
        ram[2] = "0b000001001101";
        ram[3] = "0b110100110100";
        ram[4] = "0b010101111011";
        ram[5] = "0b101100010110";
        ram[6] = "0b000000101000";
        ram[7] = "0b010001111111";
        ram[8] = "0b010100001110";
        ram[9] = "0b110011011101";
        ram[10] = "0b000110010010";
        ram[11] = "0b000011100010";
        ram[12] = "0b001110110100";
        ram[13] = "0b111000111100";
        ram[14] = "0b001101100101";
        ram[15] = "0b110111100101";
        ram[16] = "0b000010010110";
        ram[17] = "0b001100100100";
        ram[18] = "0b110101101011";
        ram[19] = "0b000111101111";
        ram[20] = "0b001010010011";
        ram[21] = "0b111110111001";
        ram[22] = "0b101001011101";
        ram[23] = "0b001111110101";
        ram[24] = "0b111100011100";
        ram[25] = "0b111100011111";
        ram[26] = "0b101100000001";
        ram[27] = "0b110100111110";
        ram[28] = "0b000010001101";
        ram[29] = "0b001011000101";
        ram[30] = "0b000100000101";
        ram[31] = "0b111101101101";
        ram[32] = "0b101100111011";
        ram[33] = "0b000000100000";
        ram[34] = "0b000110000111";
        ram[35] = "0b000111110101";
        ram[36] = "0b000001000110";
        ram[37] = "0b000001110000";
        ram[38] = "0b111110000111";
        ram[39] = "0b001010010000";
        ram[40] = "0b111111001101";
        ram[41] = "0b110110100011";
        ram[42] = "0b010000011001";
        ram[43] = "0b000110010001";
        ram[44] = "0b110101111100";
        ram[45] = "0b110011100100";
        ram[46] = "0b001111001110";
        ram[47] = "0b111000011010";
        ram[48] = "0b000110011010";
        ram[49] = "0b111000000011";
        ram[50] = "0b101110110011";
        ram[51] = "0b110000000111";


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


SC_MODULE(L2_wlo_218_L1_WEItde) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEItde_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEItde) {
meminst = new L2_wlo_218_L1_WEItde_ram("L2_wlo_218_L1_WEItde_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEItde() {
    delete meminst;
}


};//endmodule
#endif
