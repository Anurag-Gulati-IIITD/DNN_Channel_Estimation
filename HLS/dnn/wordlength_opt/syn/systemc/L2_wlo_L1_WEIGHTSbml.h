// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbml_H__
#define __L2_wlo_L1_WEIGHTSbml_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbml_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbml_ram) {
        ram[0] = "0b1010101111110001";
        ram[1] = "0b1011000001001011";
        ram[2] = "0b1011000010111110";
        ram[3] = "0b0010111010001010";
        ram[4] = "0b1010111010001001";
        ram[5] = "0b1010010111100001";
        ram[6] = "0b1001100000001110";
        ram[7] = "0b1010110110011100";
        ram[8] = "0b1010111001010011";
        ram[9] = "0b1010100100011111";
        ram[10] = "0b1010110110101111";
        ram[11] = "0b1011001010100100";
        ram[12] = "0b1010000111000100";
        ram[13] = "0b0010110101010001";
        ram[14] = "0b0010110101100011";
        ram[15] = "0b0011000100010101";
        ram[16] = "0b1001110101010010";
        ram[17] = "0b0010110000000111";
        ram[18] = "0b0010100111011010";
        ram[19] = "0b1010111100101011";
        ram[20] = "0b1010110011011100";
        ram[21] = "0b0010100111000010";
        ram[22] = "0b0011000011000101";
        ram[23] = "0b0011000101001001";
        ram[24] = "0b1010101100011011";
        ram[25] = "0b1010110001101011";
        ram[26] = "0b0011001011000010";
        ram[27] = "0b0011000101100110";
        ram[28] = "0b0010100010001111";
        ram[29] = "0b1010001100000011";
        ram[30] = "0b1010011001111110";
        ram[31] = "0b0010010010001000";
        ram[32] = "0b0010110010111000";
        ram[33] = "0b0010011111100110";
        ram[34] = "0b1010110001000101";
        ram[35] = "0b1011001000110101";
        ram[36] = "0b0010011110001111";
        ram[37] = "0b0011000000100010";
        ram[38] = "0b1011000000001110";
        ram[39] = "0b1010111000000101";
        ram[40] = "0b0010110010101101";
        ram[41] = "0b0010111101001000";
        ram[42] = "0b0010110101101001";
        ram[43] = "0b1010110110010101";
        ram[44] = "0b0010110110100011";
        ram[45] = "0b1010111100011111";
        ram[46] = "0b1010111100110101";
        ram[47] = "0b0010001110010101";
        ram[48] = "0b0010011000111000";
        ram[49] = "0b0010101100110001";
        ram[50] = "0b0010110000110010";
        ram[51] = "0b0010101100011001";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbml) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbml_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbml) {
meminst = new L2_wlo_L1_WEIGHTSbml_ram("L2_wlo_L1_WEIGHTSbml_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbml() {
    delete meminst;
}


};//endmodule
#endif
