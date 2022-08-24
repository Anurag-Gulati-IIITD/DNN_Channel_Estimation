// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbpm_H__
#define __L2_wlo_L1_WEIGHTSbpm_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbpm_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbpm_ram) {
        ram[0] = "0b1010101100101100";
        ram[1] = "0b0011001101110100";
        ram[2] = "0b0010100010100000";
        ram[3] = "0b0010100111000010";
        ram[4] = "0b0010101110111000";
        ram[5] = "0b1010111100110101";
        ram[6] = "0b1010111100010111";
        ram[7] = "0b0010011000011101";
        ram[8] = "0b1001011010000101";
        ram[9] = "0b0010001110010110";
        ram[10] = "0b1010110001011101";
        ram[11] = "0b0011000101100000";
        ram[12] = "0b0010111011101001";
        ram[13] = "0b1010100001011000";
        ram[14] = "0b1011000101101000";
        ram[15] = "0b1011001011111101";
        ram[16] = "0b0010100011101111";
        ram[17] = "0b0010111110101011";
        ram[18] = "0b1010101000011011";
        ram[19] = "0b0010110000111110";
        ram[20] = "0b0010100000001100";
        ram[21] = "0b0010100101101101";
        ram[22] = "0b1010010011101101";
        ram[23] = "0b1011001001111101";
        ram[24] = "0b1010101011000110";
        ram[25] = "0b1010100101000110";
        ram[26] = "0b1010110111101101";
        ram[27] = "0b1010100101111010";
        ram[28] = "0b0010010111111011";
        ram[29] = "0b0010101100000001";
        ram[30] = "0b0011001001111000";
        ram[31] = "0b1010100111001010";
        ram[32] = "0b0010110111011000";
        ram[33] = "0b1010010001111100";
        ram[34] = "0b1010110001010010";
        ram[35] = "0b1011000110010000";
        ram[36] = "0b1010101010010111";
        ram[37] = "0b0010011101110110";
        ram[38] = "0b0010110000011000";
        ram[39] = "0b1010100100111110";
        ram[40] = "0b0010100001101111";
        ram[41] = "0b1010110000011111";
        ram[42] = "0b1011000000001101";
        ram[43] = "0b0011001010001101";
        ram[44] = "0b0010101100000111";
        ram[45] = "0b0010101101000100";
        ram[46] = "0b0010100110000011";
        ram[47] = "0b0010101011101111";
        ram[48] = "0b1010110010111111";
        ram[49] = "0b0011000010101010";
        ram[50] = "0b1010101011001000";
        ram[51] = "0b1010101110101101";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbpm) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbpm_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbpm) {
meminst = new L2_wlo_L1_WEIGHTSbpm_ram("L2_wlo_L1_WEIGHTSbpm_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbpm() {
    delete meminst;
}


};//endmodule
#endif
