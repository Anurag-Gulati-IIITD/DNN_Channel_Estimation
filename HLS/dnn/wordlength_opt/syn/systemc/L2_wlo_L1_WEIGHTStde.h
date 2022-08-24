// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTStde_H__
#define __L2_wlo_L1_WEIGHTStde_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTStde_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 16;
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


   SC_CTOR(L2_wlo_L1_WEIGHTStde_ram) {
        ram[0] = "0b0010000111111000";
        ram[1] = "0b0001110001110011";
        ram[2] = "0b0010010011100001";
        ram[3] = "0b0011000011001101";
        ram[4] = "0b1011000001110110";
        ram[5] = "0b1010100101000110";
        ram[6] = "0b1010110000101001";
        ram[7] = "0b1011000100000011";
        ram[8] = "0b1011000111000101";
        ram[9] = "0b1010000000000111";
        ram[10] = "0b0011000111010000";
        ram[11] = "0b1010000110010100";
        ram[12] = "0b0010111011000100";
        ram[13] = "0b0010100101110000";
        ram[14] = "0b0010110001100101";
        ram[15] = "0b0010100001110101";
        ram[16] = "0b1011000011011101";
        ram[17] = "0b1010000101001000";
        ram[18] = "0b1010000001110010";
        ram[19] = "0b0001110100011000";
        ram[20] = "0b1010100000000011";
        ram[21] = "0b0010001110111101";
        ram[22] = "0b0010111110101011";
        ram[23] = "0b1010010100010101";
        ram[24] = "0b0010110011101001";
        ram[25] = "0b1010011000000001";
        ram[26] = "0b1011000111001001";
        ram[27] = "0b0011001010100100";
        ram[28] = "0b1001010100110001";
        ram[29] = "0b0010101010010000";
        ram[30] = "0b1010101001011111";
        ram[31] = "0b1001100010111100";
        ram[32] = "0b0010011111111110";
        ram[33] = "0b0010010111101101";
        ram[34] = "0b1011000001000100";
        ram[35] = "0b1001100100101001";
        ram[36] = "0b1010010100010001";
        ram[37] = "0b1010110011001010";
        ram[38] = "0b1011001000100001";
        ram[39] = "0b1010011010101011";
        ram[40] = "0b1001110010010001";
        ram[41] = "0b0010111110101000";
        ram[42] = "0b0010100001010001";
        ram[43] = "0b1010010001111011";
        ram[44] = "0b0010100101110000";
        ram[45] = "0b0010110101011110";
        ram[46] = "0b1011000111111111";
        ram[47] = "0b0010000111110000";
        ram[48] = "0b0010011011111010";
        ram[49] = "0b0011001101110111";
        ram[50] = "0b0011000110101011";
        ram[51] = "0b1010101100100011";


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


SC_MODULE(L2_wlo_L1_WEIGHTStde) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTStde_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTStde) {
meminst = new L2_wlo_L1_WEIGHTStde_ram("L2_wlo_L1_WEIGHTStde_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTStde() {
    delete meminst;
}


};//endmodule
#endif
