// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTSbRq_H__
#define __L3_wlo_L2_WEIGHTSbRq_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTSbRq_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTSbRq_ram) {
        ram[0] = "0b0010100000000111";
        ram[1] = "0b1010011101100000";
        ram[2] = "0b1010101011111101";
        ram[3] = "0b1010010010101000";
        ram[4] = "0b0010010011111010";
        ram[5] = "0b0010001110000010";
        ram[6] = "0b1010100110101011";
        ram[7] = "0b1010100011000110";
        ram[8] = "0b1010000111001100";
        ram[9] = "0b0010100111010110";
        ram[10] = "0b0010110000001010";
        ram[11] = "0b0010001011111010";
        ram[12] = "0b1010100001100011";
        ram[13] = "0b1010101001011110";
        ram[14] = "0b0010000001001110";
        ram[15] = "0b0010110001111011";
        ram[16] = "0b0010100101111010";
        ram[17] = "0b1010100100001000";
        ram[18] = "0b1010110111111001";
        ram[19] = "0b1010110100000100";
        ram[20] = "0b0010010110110010";
        ram[21] = "0b0010110111111100";
        ram[22] = "0b0010110001011111";
        ram[23] = "0b1010000101111010";
        ram[24] = "0b1010110011101110";
        ram[25] = "0b1010110001100001";
        ram[26] = "0b0010101011110100";
        ram[27] = "0b0010101001001010";
        ram[28] = "0b1010001011001110";
        ram[29] = "0b1010101101111011";
        ram[30] = "0b1010011010101101";
        ram[31] = "0b0010010100011100";
        ram[32] = "0b0010101001001001";
        ram[33] = "0b0010100000110100";
        ram[34] = "0b1001010101001001";
        ram[35] = "0b1010010010101000";
        ram[36] = "0b1001110010001111";
        ram[37] = "0b0010011011101000";
        ram[38] = "0b0010010100101001";
        ram[39] = "0b1010010111010011";
        ram[40] = "0b1010101010010001";
        ram[41] = "0b1010010100111001";
        ram[42] = "0b0010011000110010";
        ram[43] = "0b0010101000011000";
        ram[44] = "0b0010100001101101";
        ram[45] = "0b1010100011101010";
        ram[46] = "0b1010101111010111";
        ram[47] = "0b1010010011000001";
        ram[48] = "0b0010110011001010";
        ram[49] = "0b0010110110001110";
        ram[50] = "0b0001111101111111";
        ram[51] = "0b1010111111001010";
        ram[52] = "0b1010111000100100";
        ram[53] = "0b1010110110100011";
        ram[54] = "0b0001010010001010";
        ram[55] = "0b0010100011110111";
        ram[56] = "0b0010000111111110";
        ram[57] = "0b1010011100111010";
        ram[58] = "0b1010011101010010";
        ram[59] = "0b0010001010010010";
        ram[60] = "0b0010110000111101";
        ram[61] = "0b0010100011000000";
        ram[62] = "0b1010011010101000";
        ram[63] = "0b1010100101010101";
        ram[64] = "0b1010100010101011";
        ram[65] = "0b0010010111110110";
        ram[66] = "0b0010100110001001";
        ram[67] = "0b0010000001100101";
        ram[68] = "0b1010110001000111";
        ram[69] = "0b1010101011011110";
        ram[70] = "0b1010001001011000";
        ram[71] = "0b0010110001000101";
        ram[72] = "0b0010111000000001";
        ram[73] = "0b0010011010110000";
        ram[74] = "0b1010110000001011";
        ram[75] = "0b1010111011101001";
        ram[76] = "0b1010100100111111";
        ram[77] = "0b0010100010001110";
        ram[78] = "0b0010100010110111";
        ram[79] = "0b1010101001101001";
        ram[80] = "0b1010110010110001";
        ram[81] = "0b1010010101000011";
        ram[82] = "0b0010011111110011";
        ram[83] = "0b0010110000011111";
        ram[84] = "0b0010011110101011";
        ram[85] = "0b1010100001110011";
        ram[86] = "0b1010100000011101";
        ram[87] = "0b0010001110011111";
        ram[88] = "0b0010011011111000";
        ram[89] = "0b0001100010011101";
        ram[90] = "0b1010101011110001";
        ram[91] = "0b1010101000100110";
        ram[92] = "0b0001110000001110";
        ram[93] = "0b0010100000011011";
        ram[94] = "0b0010101100000000";
        ram[95] = "0b0001110101000010";
        ram[96] = "0b1010100101000110";
        ram[97] = "0b1010101100100101";
        ram[98] = "0b0010000111011101";
        ram[99] = "0b0010110010001001";
        ram[100] = "0b0010100001101010";
        ram[101] = "0b1010100001110110";
        ram[102] = "0b1010111111011010";
        ram[103] = "0b1010110110011100";


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


SC_MODULE(L3_wlo_L2_WEIGHTSbRq) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTSbRq_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTSbRq) {
meminst = new L3_wlo_L2_WEIGHTSbRq_ram("L3_wlo_L2_WEIGHTSbRq_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTSbRq() {
    delete meminst;
}


};//endmodule
#endif
