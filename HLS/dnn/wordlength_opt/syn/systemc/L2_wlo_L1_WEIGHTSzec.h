// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSzec_H__
#define __L2_wlo_L1_WEIGHTSzec_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSzec_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSzec_ram) {
        ram[0] = "0b0010010001011010";
        ram[1] = "0b0010110111010110";
        ram[2] = "0b1001111100010001";
        ram[3] = "0b1000010001100100";
        ram[4] = "0b0010011101110100";
        ram[5] = "0b1010111010010000";
        ram[6] = "0b0010100110010011";
        ram[7] = "0b1010001011001011";
        ram[8] = "0b1011001000011001";
        ram[9] = "0b1010111011100100";
        ram[10] = "0b1010001001101000";
        ram[11] = "0b0010011001000111";
        ram[12] = "0b1010100101110100";
        ram[13] = "0b1010110101011100";
        ram[14] = "0b0010110100000001";
        ram[15] = "0b1010110101011000";
        ram[16] = "0b0010011111101111";
        ram[17] = "0b0010110010100111";
        ram[18] = "0b0010010111001001";
        ram[19] = "0b1010101000001000";
        ram[20] = "0b1010101010000100";
        ram[21] = "0b0010011000111001";
        ram[22] = "0b1001111111101111";
        ram[23] = "0b0010101101111100";
        ram[24] = "0b0010000011100101";
        ram[25] = "0b0010101001011010";
        ram[26] = "0b0011000100010000";
        ram[27] = "0b0011000001111011";
        ram[28] = "0b1010110100001000";
        ram[29] = "0b0010110110000010";
        ram[30] = "0b1010111110101011";
        ram[31] = "0b1010101011000101";
        ram[32] = "0b0010100111011000";
        ram[33] = "0b1010010011010010";
        ram[34] = "0b1010101101110001";
        ram[35] = "0b1011001101000110";
        ram[36] = "0b1010100101000011";
        ram[37] = "0b1010010100100001";
        ram[38] = "0b1011001010101111";
        ram[39] = "0b1010010001010011";
        ram[40] = "0b0010110001101111";
        ram[41] = "0b1001100010010000";
        ram[42] = "0b0010111110000110";
        ram[43] = "0b0010110010111110";
        ram[44] = "0b1010100111011101";
        ram[45] = "0b0010010101001011";
        ram[46] = "0b1010001001111001";
        ram[47] = "0b0010101100101100";
        ram[48] = "0b1001111000000011";
        ram[49] = "0b0010110110011111";
        ram[50] = "0b0011000000100100";
        ram[51] = "0b0010100100010001";


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


SC_MODULE(L2_wlo_L1_WEIGHTSzec) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSzec_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSzec) {
meminst = new L2_wlo_L1_WEIGHTSzec_ram("L2_wlo_L1_WEIGHTSzec_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSzec() {
    delete meminst;
}


};//endmodule
#endif
