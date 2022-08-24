// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbOq_H__
#define __L2_wlo_218_L1_WEIbOq_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbOq_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIbOq_ram) {
        ram[0] = "0b000101101001";
        ram[1] = "0b000001011111";
        ram[2] = "0b000001000010";
        ram[3] = "0b010000001000";
        ram[4] = "0b110000110011";
        ram[5] = "0b001110010000";
        ram[6] = "0b110101010001";
        ram[7] = "0b111111101111";
        ram[8] = "0b001000001010";
        ram[9] = "0b000001110101";
        ram[10] = "0b110100111001";
        ram[11] = "0b111000111011";
        ram[12] = "0b111010011011";
        ram[13] = "0b111100010000";
        ram[14] = "0b001010111011";
        ram[15] = "0b111100110010";
        ram[16] = "0b111010111000";
        ram[17] = "0b000000101100";
        ram[18] = "0b111001101011";
        ram[19] = "0b000110101110";
        ram[20] = "0b000010000001";
        ram[21] = "0b110001100001";
        ram[22] = "0b000101010000";
        ram[23] = "0b000101100110";
        ram[24] = "0b001000000001";
        ram[25] = "0b110101110011";
        ram[26] = "0b000100000110";
        ram[27] = "0b000111101110";
        ram[28] = "0b110100011110";
        ram[29] = "0b000000110101";
        ram[30] = "0b110101011110";
        ram[31] = "0b001111111111";
        ram[32] = "0b001000110011";
        ram[33] = "0b001001110010";
        ram[34] = "0b100101101011";
        ram[35] = "0b010100111111";
        ram[36] = "0b001011010110";
        ram[37] = "0b000100100011";
        ram[38] = "0b101110101000";
        ram[39] = "0b111100010100";
        ram[40] = "0b000010010100";
        ram[41] = "0b010011010010";
        ram[42] = "0b000110101110";
        ram[43] = "0b010101101100";
        ram[44] = "0b111110000111";
        ram[45] = "0b000001001101";
        ram[46] = "0b000010001001";
        ram[47] = "0b000011101011";
        ram[48] = "0b000001001010";
        ram[49] = "0b011011010101";
        ram[50] = "0b111011110001";
        ram[51] = "0b001101100101";


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


SC_MODULE(L2_wlo_218_L1_WEIbOq) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbOq_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbOq) {
meminst = new L2_wlo_218_L1_WEIbOq_ram("L2_wlo_218_L1_WEIbOq_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbOq() {
    delete meminst;
}


};//endmodule
#endif
