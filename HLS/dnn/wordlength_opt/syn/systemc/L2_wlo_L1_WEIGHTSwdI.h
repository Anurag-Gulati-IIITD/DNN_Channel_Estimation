// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSwdI_H__
#define __L2_wlo_L1_WEIGHTSwdI_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSwdI_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSwdI_ram) {
        ram[0] = "0b0010110011000111";
        ram[1] = "0b1011000111011111";
        ram[2] = "0b0010111110101000";
        ram[3] = "0b1010101110110100";
        ram[4] = "0b0010000100110001";
        ram[5] = "0b0011010010100001";
        ram[6] = "0b0010110000011011";
        ram[7] = "0b0010001010001011";
        ram[8] = "0b0010111011110101";
        ram[9] = "0b0010110011000011";
        ram[10] = "0b1011000000011001";
        ram[11] = "0b0010111010010010";
        ram[12] = "0b1010001101101011";
        ram[13] = "0b0010111110011100";
        ram[14] = "0b1010100010101000";
        ram[15] = "0b0010100111010010";
        ram[16] = "0b1010000010001111";
        ram[17] = "0b1010110101011110";
        ram[18] = "0b1010110011000110";
        ram[19] = "0b0010101011110110";
        ram[20] = "0b1010010010110110";
        ram[21] = "0b1010110111110011";
        ram[22] = "0b0010010011011001";
        ram[23] = "0b0010111101110011";
        ram[24] = "0b0010101111010000";
        ram[25] = "0b1010000101101100";
        ram[26] = "0b0010111000000011";
        ram[27] = "0b1011000101111011";
        ram[28] = "0b1010101001111000";
        ram[29] = "0b1011010011011011";
        ram[30] = "0b0010100100111000";
        ram[31] = "0b0001010110010100";
        ram[32] = "0b1010101011000111";
        ram[33] = "0b1010100001001110";
        ram[34] = "0b0011001000000101";
        ram[35] = "0b0010110000000011";
        ram[36] = "0b1010010110110011";
        ram[37] = "0b0010111000000110";
        ram[38] = "0b0011000110011010";
        ram[39] = "0b1010110011101011";
        ram[40] = "0b1010110101011001";
        ram[41] = "0b1010011011101110";
        ram[42] = "0b0010010111101111";
        ram[43] = "0b1000101101111001";
        ram[44] = "0b1010110101011010";
        ram[45] = "0b1001111110011111";
        ram[46] = "0b0010001111011111";
        ram[47] = "0b1011000011000110";
        ram[48] = "0b0001010100001011";
        ram[49] = "0b1010111111100101";
        ram[50] = "0b1011000000110011";
        ram[51] = "0b0010111000010110";


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


SC_MODULE(L2_wlo_L1_WEIGHTSwdI) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSwdI_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSwdI) {
meminst = new L2_wlo_L1_WEIGHTSwdI_ram("L2_wlo_L1_WEIGHTSwdI_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSwdI() {
    delete meminst;
}


};//endmodule
#endif
