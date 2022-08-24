// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_L1_WEIGHTSbun_H__
#define __L2_wlo_L1_WEIGHTSbun_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_L1_WEIGHTSbun_ram : public sc_core::sc_module {

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


   SC_CTOR(L2_wlo_L1_WEIGHTSbun_ram) {
        ram[0] = "0b0010001101111001";
        ram[1] = "0b0010010110110000";
        ram[2] = "0b0010111010101101";
        ram[3] = "0b1010010011001000";
        ram[4] = "0b0010100101011001";
        ram[5] = "0b0010101101110110";
        ram[6] = "0b0010110110111001";
        ram[7] = "0b1010101001110010";
        ram[8] = "0b1011001000000000";
        ram[9] = "0b1011000001110111";
        ram[10] = "0b0011000011101111";
        ram[11] = "0b1010001011001100";
        ram[12] = "0b1010110001010110";
        ram[13] = "0b1010011111001101";
        ram[14] = "0b0011000110000110";
        ram[15] = "0b1010101111000101";
        ram[16] = "0b0010011000011011";
        ram[17] = "0b1010111110100101";
        ram[18] = "0b0010100110010111";
        ram[19] = "0b0010011001000110";
        ram[20] = "0b1010100001000100";
        ram[21] = "0b1010001001101011";
        ram[22] = "0b0010100011010101";
        ram[23] = "0b0010011111100011";
        ram[24] = "0b0010001111100101";
        ram[25] = "0b0010101100000100";
        ram[26] = "0b0010101101101111";
        ram[27] = "0b0010100111111000";
        ram[28] = "0b0010010011101010";
        ram[29] = "0b1001001111101100";
        ram[30] = "0b1010110011101110";
        ram[31] = "0b0010101110001110";
        ram[32] = "0b1010111000111010";
        ram[33] = "0b1001011000000001";
        ram[34] = "0b0010010001110110";
        ram[35] = "0b0010101111110100";
        ram[36] = "0b1010110010101001";
        ram[37] = "0b1011000010011000";
        ram[38] = "0b1010100001011101";
        ram[39] = "0b1010101111001100";
        ram[40] = "0b1010101111111000";
        ram[41] = "0b1010111000111111";
        ram[42] = "0b0010100010010010";
        ram[43] = "0b0010101000010000";
        ram[44] = "0b1010110010000001";
        ram[45] = "0b1010100010011100";
        ram[46] = "0b0010111100100010";
        ram[47] = "0b1001011101011000";
        ram[48] = "0b0010100001000001";
        ram[49] = "0b1010111000011000";
        ram[50] = "0b0011001001011101";
        ram[51] = "0b0010101110111100";


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


SC_MODULE(L2_wlo_L1_WEIGHTSbun) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_L1_WEIGHTSbun_ram* meminst;


SC_CTOR(L2_wlo_L1_WEIGHTSbun) {
meminst = new L2_wlo_L1_WEIGHTSbun_ram("L2_wlo_L1_WEIGHTSbun_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_L1_WEIGHTSbun() {
    delete meminst;
}


};//endmodule
#endif
