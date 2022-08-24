// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEIwdI_H__
#define __L2_wlo_218_L1_WEIwdI_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEIwdI_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEIwdI_ram) {
        ram[0] = "0b000010111101";
        ram[1] = "0b000001111111";
        ram[2] = "0b001111000000";
        ram[3] = "0b000101001011";
        ram[4] = "0b101010010010";
        ram[5] = "0b010110001001";
        ram[6] = "0b111000110100";
        ram[7] = "0b101011100101";
        ram[8] = "0b110110011101";
        ram[9] = "0b010001010110";
        ram[10] = "0b001010001100";
        ram[11] = "0b111010011001";
        ram[12] = "0b111000101011";
        ram[13] = "0b000100011111";
        ram[14] = "0b000100011100";
        ram[15] = "0b111110101011";
        ram[16] = "0b111101011010";
        ram[17] = "0b110110111010";
        ram[18] = "0b000100100101";
        ram[19] = "0b000001100010";
        ram[20] = "0b111011000111";
        ram[21] = "0b111001001111";
        ram[22] = "0b010010110001";
        ram[23] = "0b000001001111";
        ram[24] = "0b000101010001";
        ram[25] = "0b111100111011";
        ram[26] = "0b001101000111";
        ram[27] = "0b011000001001";
        ram[28] = "0b111110110011";
        ram[29] = "0b100010001001";
        ram[30] = "0b001100101110";
        ram[31] = "0b000010100100";
        ram[32] = "0b000111101101";
        ram[33] = "0b111010001011";
        ram[34] = "0b111000110110";
        ram[35] = "0b000001011010";
        ram[36] = "0b000111100010";
        ram[37] = "0b101100110000";
        ram[38] = "0b101000111000";
        ram[39] = "0b001000010110";
        ram[40] = "0b111010001110";
        ram[41] = "0b010000010000";
        ram[42] = "0b110011111000";
        ram[43] = "0b110101100011";
        ram[44] = "0b111011101101";
        ram[45] = "0b111010110011";
        ram[46] = "0b111000110010";
        ram[47] = "0b111101000101";
        ram[48] = "0b111111111100";
        ram[49] = "0b111110001000";
        ram[50] = "0b001011010011";
        ram[51] = "0b111101000101";


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


SC_MODULE(L2_wlo_218_L1_WEIwdI) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEIwdI_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEIwdI) {
meminst = new L2_wlo_218_L1_WEIwdI_ram("L2_wlo_218_L1_WEIwdI_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEIwdI() {
    delete meminst;
}


};//endmodule
#endif
