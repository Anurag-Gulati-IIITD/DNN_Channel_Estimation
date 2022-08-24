// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIbck_H__
#define __L2_wlo_218_L1_WEIbck_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIbck_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIbck_ram) {
        ram[0] = "0b110011001101";
        ram[1] = "0b110101011000";
        ram[2] = "0b110010111101";
        ram[3] = "0b101100011010";
        ram[4] = "0b000101101100";
        ram[5] = "0b110010000001";
        ram[6] = "0b000100100111";
        ram[7] = "0b000100111000";
        ram[8] = "0b010001010110";
        ram[9] = "0b110101010101";
        ram[10] = "0b001011111000";
        ram[11] = "0b000101100001";
        ram[12] = "0b110011010000";
        ram[13] = "0b110100110011";
        ram[14] = "0b110011011111";
        ram[15] = "0b110110010111";
        ram[16] = "0b001000101111";
        ram[17] = "0b010101010001";
        ram[18] = "0b001010010100";
        ram[19] = "0b111011111000";
        ram[20] = "0b110111001001";
        ram[21] = "0b000111010001";
        ram[22] = "0b111000100111";
        ram[23] = "0b001001010011";
        ram[24] = "0b110111001110";
        ram[25] = "0b110110011111";
        ram[26] = "0b000011111110";
        ram[27] = "0b001011000101";
        ram[28] = "0b000001110000";
        ram[29] = "0b011000111101";
        ram[30] = "0b001001011111";
        ram[31] = "0b001010100001";
        ram[32] = "0b110000010001";
        ram[33] = "0b111001101001";
        ram[34] = "0b111101011111";
        ram[35] = "0b101110110010";
        ram[36] = "0b000100001011";
        ram[37] = "0b101101100100";
        ram[38] = "0b101000101101";
        ram[39] = "0b110001100101";
        ram[40] = "0b000101010010";
        ram[41] = "0b101010110000";
        ram[42] = "0b000100001011";
        ram[43] = "0b001010100001";
        ram[44] = "0b111111011001";
        ram[45] = "0b111011100011";
        ram[46] = "0b010010111101";
        ram[47] = "0b000011010011";
        ram[48] = "0b111101011000";
        ram[49] = "0b110111110111";
        ram[50] = "0b101100010011";
        ram[51] = "0b000110111010";


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


SC_MODULE(L2_wlo_218_L1_WEIbck) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIbck_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIbck) {
meminst = new L2_wlo_218_L1_WEIbck_ram("L2_wlo_218_L1_WEIbck_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIbck() {
    delete meminst;
}


};//endmodule
#endif
