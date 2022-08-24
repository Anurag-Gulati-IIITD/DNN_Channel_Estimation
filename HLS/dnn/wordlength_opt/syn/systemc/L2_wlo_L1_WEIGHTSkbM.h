// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSkbM_H__
#define __L2_wlo_L1_WEIGHTSkbM_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSkbM_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSkbM_ram) {
        ram[0] = "0b1010101010000111";
        ram[1] = "0b1010101111000111";
        ram[2] = "0b0010110011101010";
        ram[3] = "0b1010111100101101";
        ram[4] = "0b0010111110000100";
        ram[5] = "0b0010111110100001";
        ram[6] = "0b0010010100010000";
        ram[7] = "0b0010001101111000";
        ram[8] = "0b0011000100011001";
        ram[9] = "0b1011000000001100";
        ram[10] = "0b0011000101001101";
        ram[11] = "0b0011000100011001";
        ram[12] = "0b0010101110011011";
        ram[13] = "0b1010110001101110";
        ram[14] = "0b0010011100001000";
        ram[15] = "0b1010110000010010";
        ram[16] = "0b0010011101010010";
        ram[17] = "0b1010100101100010";
        ram[18] = "0b1010110001100001";
        ram[19] = "0b0010110111111011";
        ram[20] = "0b0010111110000011";
        ram[21] = "0b1011000100011001";
        ram[22] = "0b0010100011011001";
        ram[23] = "0b0010111101011010";
        ram[24] = "0b0010111011111000";
        ram[25] = "0b0010011111001000";
        ram[26] = "0b1010010001001000";
        ram[27] = "0b0010100110011101";
        ram[28] = "0b0010110011101110";
        ram[29] = "0b1011000010011011";
        ram[30] = "0b0010101001000100";
        ram[31] = "0b1010100001001001";
        ram[32] = "0b1010000011001011";
        ram[33] = "0b1010100010001011";
        ram[34] = "0b0010110011111101";
        ram[35] = "0b0010101000010011";
        ram[36] = "0b0000001010001110";
        ram[37] = "0b1011000000001000";
        ram[38] = "0b1010111100001101";
        ram[39] = "0b0011000101000101";
        ram[40] = "0b1010111010110000";
        ram[41] = "0b1011000000001010";
        ram[42] = "0b0010101111010000";
        ram[43] = "0b0011000010100110";
        ram[44] = "0b0010010011111010";
        ram[45] = "0b1010110010101000";
        ram[46] = "0b0011000011000111";
        ram[47] = "0b1010110100101111";
        ram[48] = "0b0010101100111011";
        ram[49] = "0b1011001001101010";
        ram[50] = "0b1011000111110001";
        ram[51] = "0b1001100100011000";


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


SC_MODULE(L2_wlo_L1_WEIGHTSkbM) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSkbM_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSkbM) {
meminst = new L2_wlo_L1_WEIGHTSkbM_ram("L2_wlo_L1_WEIGHTSkbM_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSkbM() {
    delete meminst;
}


};//endmodule
#endif
