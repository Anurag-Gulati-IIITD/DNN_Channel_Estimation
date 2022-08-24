// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __DNN_wlo_mean_o_H__
#define __DNN_wlo_mean_o_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct DNN_wlo_mean_o_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 16;
  static const unsigned AddressRange = 104;
  static const unsigned AddressWidth = 7;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(DNN_wlo_mean_o_ram) {
        ram[0] = "0b1001100111000000";
        ram[1] = "0b1001010101101110";
        ram[2] = "0b0001000100100001";
        ram[3] = "0b0001100011001101";
        ram[4] = "0b0001101010100010";
        ram[5] = "0b0001100111101110";
        ram[6] = "0b0001010100011011";
        ram[7] = "0b1001010100000001";
        ram[8] = "0b1001101100010001";
        ram[9] = "0b1001110001010110";
        ram[10] = "0b1001101000000000";
        ram[11] = "0b0000000110000010";
        ram[12] = "0b0001101010000100";
        ram[13] = "0b0001110011111010";
        ram[14] = "0b0001110000110100";
        ram[15] = "0b0001010100100110";
        ram[16] = "0b1001100010010101";
        ram[17] = "0b1001110010111011";
        ram[18] = "0b1001110011011011";
        ram[19] = "0b1001100101001110";
        ram[20] = "0b0001001000101001";
        ram[21] = "0b0001101110001111";
        ram[22] = "0b0001110011111010";
        ram[23] = "0b0001101110101111";
        ram[24] = "0b0001001110001011";
        ram[25] = "0b1001100010110010";
        ram[26] = "0b1001110010010011";
        ram[27] = "0b1001100100011111";
        ram[28] = "0b0001000010111110";
        ram[29] = "0b0001101011101111";
        ram[30] = "0b0001110011001011";
        ram[31] = "0b0001101111101010";
        ram[32] = "0b0001010100010010";
        ram[33] = "0b1001100001000001";
        ram[34] = "0b1001110010100110";
        ram[35] = "0b1001110011111100";
        ram[36] = "0b1001100110011100";
        ram[37] = "0b0001001100110101";
        ram[38] = "0b0001110000110101";
        ram[39] = "0b0001110101001011";
        ram[40] = "0b0001101100011000";
        ram[41] = "0b0000000000010001";
        ram[42] = "0b1001101010010110";
        ram[43] = "0b1001110010001111";
        ram[44] = "0b1001101010111010";
        ram[45] = "0b1001000111011110";
        ram[46] = "0b0001011011011000";
        ram[47] = "0b0001100110110100";
        ram[48] = "0b0001100100101111";
        ram[49] = "0b0001011000101111";
        ram[50] = "0b0000110110010110";
        ram[51] = "0b1001000111111101";
        ram[52] = "0b0001010111101101";
        ram[53] = "0b0001100111000101";
        ram[54] = "0b0001101000111011";
        ram[55] = "0b0001100001001111";
        ram[56] = "0b0000110011100110";
        ram[57] = "0b1001011101011111";
        ram[58] = "0b1001101011101111";
        ram[59] = "0b1001101101101111";
        ram[60] = "0b1001100001100010";
        ram[61] = "0b0001000100100111";
        ram[62] = "0b0001101011110011";
        ram[63] = "0b0001110011000101";
        ram[64] = "0b0001101101011001";
        ram[65] = "0b0001000011110011";
        ram[66] = "0b1001100110111000";
        ram[67] = "0b1001110011110101";
        ram[68] = "0b1001110010011000";
        ram[69] = "0b1001011111100101";
        ram[70] = "0b0001011001010000";
        ram[71] = "0b0001110001010100";
        ram[72] = "0b0001110011111100";
        ram[73] = "0b0001101010010101";
        ram[74] = "0b0000010101110001";
        ram[75] = "0b1001101000111001";
        ram[76] = "0b1001110011010010";
        ram[77] = "0b1001110001000110";
        ram[78] = "0b0001011000000001";
        ram[79] = "0b0001110000001101";
        ram[80] = "0b0001110010111110";
        ram[81] = "0b0001101010010110";
        ram[82] = "0b0000110110001110";
        ram[83] = "0b1001100110011110";
        ram[84] = "0b1001110011000001";
        ram[85] = "0b1001110010001001";
        ram[86] = "0b1001100000111000";
        ram[87] = "0b0001010111101001";
        ram[88] = "0b0001110001111001";
        ram[89] = "0b0001110101000001";
        ram[90] = "0b0001101010010111";
        ram[91] = "0b1000111010010110";
        ram[92] = "0b1001101110100111";
        ram[93] = "0b1001110100010001";
        ram[94] = "0b1001101100011110";
        ram[95] = "0b1000110111101010";
        ram[96] = "0b0001100100101100";
        ram[97] = "0b0001101110011010";
        ram[98] = "0b0001101000001010";
        ram[99] = "0b0001010001111110";
        ram[100] = "0b1001000110101011";
        ram[101] = "0b1001011100110101";
        ram[102] = "0b1001100001001010";
        ram[103] = "0b1001011111101001";


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


SC_MODULE(DNN_wlo_mean_o) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


DNN_wlo_mean_o_ram* meminst;


SC_CTOR(DNN_wlo_mean_o) {
meminst = new DNN_wlo_mean_o_ram("DNN_wlo_mean_o_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~DNN_wlo_mean_o() {
    delete meminst;
}


};//endmodule
#endif
