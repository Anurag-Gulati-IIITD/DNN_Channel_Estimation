// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_218_L1_WEI1iI_H__
#define __L2_wlo_218_L1_WEI1iI_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_218_L1_WEI1iI_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_218_L1_WEI1iI_ram) {
        ram[0] = "0b000010001110";
        ram[1] = "0b110011101111";
        ram[2] = "0b000000010011";
        ram[3] = "0b111111000110";
        ram[4] = "0b000111111110";
        ram[5] = "0b000001011011";
        ram[6] = "0b110011100001";
        ram[7] = "0b001011100101";
        ram[8] = "0b001000111111";
        ram[9] = "0b011000010010";
        ram[10] = "0b110001001010";
        ram[11] = "0b000100100010";
        ram[12] = "0b101101011001";
        ram[13] = "0b000000100101";
        ram[14] = "0b011100001110";
        ram[15] = "0b101110010010";
        ram[16] = "0b000111011101";
        ram[17] = "0b111101001111";
        ram[18] = "0b110111010111";
        ram[19] = "0b000100001011";
        ram[20] = "0b001100000010";
        ram[21] = "0b111011101011";
        ram[22] = "0b111110001000";
        ram[23] = "0b001001100101";
        ram[24] = "0b111110111010";
        ram[25] = "0b000000110111";
        ram[26] = "0b110101000110";
        ram[27] = "0b000010100010";
        ram[28] = "0b111101110001";
        ram[29] = "0b110110101110";
        ram[30] = "0b100111101100";
        ram[31] = "0b010110101001";
        ram[32] = "0b000101011011";
        ram[33] = "0b111011101110";
        ram[34] = "0b110101000000";
        ram[35] = "0b001010111000";
        ram[36] = "0b111011110101";
        ram[37] = "0b000111001111";
        ram[38] = "0b000000010011";
        ram[39] = "0b101101001101";
        ram[40] = "0b111101010011";
        ram[41] = "0b111110111000";
        ram[42] = "0b101010001110";
        ram[43] = "0b000110101001";
        ram[44] = "0b111110001001";
        ram[45] = "0b000011100011";
        ram[46] = "0b111011101100";
        ram[47] = "0b111011001100";
        ram[48] = "0b111111101000";
        ram[49] = "0b010101011110";
        ram[50] = "0b111011111111";
        ram[51] = "0b010001111011";


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


SC_MODULE(L2_wlo_218_L1_WEI1iI) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_218_L1_WEI1iI_ram* meminst;


SC_CTOR(L2_wlo_218_L1_WEI1iI) {
meminst = new L2_wlo_218_L1_WEI1iI_ram("L2_wlo_218_L1_WEI1iI_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_218_L1_WEI1iI() {
    delete meminst;
}


};//endmodule
#endif
