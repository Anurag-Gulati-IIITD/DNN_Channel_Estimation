// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_L2_WEIGHTSbXr_H__
#define __L3_wlo_L2_WEIGHTSbXr_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_L2_WEIGHTSbXr_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_L2_WEIGHTSbXr_ram) {
        ram[0] = "0b0010010001011100";
        ram[1] = "0b0001111011101100";
        ram[2] = "0b1001010101000100";
        ram[3] = "0b1010000110110101";
        ram[4] = "0b1010001001100001";
        ram[5] = "0b1001101001010011";
        ram[6] = "0b0001111101001110";
        ram[7] = "0b0001111010100000";
        ram[8] = "0b0001010110101101";
        ram[9] = "0b1001101111111101";
        ram[10] = "0b1001110010100101";
        ram[11] = "0b0001101101001101";
        ram[12] = "0b0010000011001101";
        ram[13] = "0b0001010111101100";
        ram[14] = "0b0001101011000010";
        ram[15] = "0b1010000110101000";
        ram[16] = "0b1010000001000001";
        ram[17] = "0b1001110110010100";
        ram[18] = "0b0001110001100101";
        ram[19] = "0b0010001110010000";
        ram[20] = "0b0001110111100001";
        ram[21] = "0b1000110101110101";
        ram[22] = "0b1001110101111000";
        ram[23] = "0b1010000000101110";
        ram[24] = "0b0001011111100111";
        ram[25] = "0b0001110111101111";
        ram[26] = "0b0001110011110010";
        ram[27] = "0b1010010001010010";
        ram[28] = "0b1010010011011110";
        ram[29] = "0b1010001000100100";
        ram[30] = "0b0001110100000011";
        ram[31] = "0b0010010000111101";
        ram[32] = "0b0010001110100101";
        ram[33] = "0b0001110100110100";
        ram[34] = "0b1010001111010011";
        ram[35] = "0b1010010010001101";
        ram[36] = "0b1010000101000111";
        ram[37] = "0b0001101111000011";
        ram[38] = "0b0010001001001100";
        ram[39] = "0b0001110101101001";
        ram[40] = "0b1001010110000111";
        ram[41] = "0b1010001011011100";
        ram[42] = "0b1000110110100011";
        ram[43] = "0b0010000010100111";
        ram[44] = "0b0001110111110100";
        ram[45] = "0b1001101100100001";
        ram[46] = "0b1010001100000111";
        ram[47] = "0b1010000000000000";
        ram[48] = "0b1001010111001111";
        ram[49] = "0b0001110010010111";
        ram[50] = "0b0010001111001110";
        ram[51] = "0b1000100011001001";
        ram[52] = "0b1001100111010111";
        ram[53] = "0b1010001111010111";
        ram[54] = "0b1010001100011101";
        ram[55] = "0b1001110011001100";
        ram[56] = "0b0001100010111001";
        ram[57] = "0b0010000010000101";
        ram[58] = "0b0001111100101001";
        ram[59] = "0b1001010010010010";
        ram[60] = "0b1001111100000010";
        ram[61] = "0b0001100010000000";
        ram[62] = "0b0001011001010000";
        ram[63] = "0b0001011101001100";
        ram[64] = "0b0001100000100011";
        ram[65] = "0b1001110101110001";
        ram[66] = "0b1001110000000110";
        ram[67] = "0b1001110111011101";
        ram[68] = "0b0001100100101001";
        ram[69] = "0b0001110111011000";
        ram[70] = "0b0010000110111101";
        ram[71] = "0b0001101000100000";
        ram[72] = "0b1001111011010010";
        ram[73] = "0b1010000111001101";
        ram[74] = "0b1010000100011000";
        ram[75] = "0b0001111000100010";
        ram[76] = "0b0001111101010010";
        ram[77] = "0b0010000010010100";
        ram[78] = "0b1010010000101110";
        ram[79] = "0b1010000001110000";
        ram[80] = "0b1001000110001000";
        ram[81] = "0b0010001110000100";
        ram[82] = "0b0010010100011101";
        ram[83] = "0b0001101101101111";
        ram[84] = "0b1010001111010100";
        ram[85] = "0b1010001011001011";
        ram[86] = "0b1010000100101100";
        ram[87] = "0b0001100010001111";
        ram[88] = "0b0010001101100010";
        ram[89] = "0b0010010001111011";
        ram[90] = "0b0001101110111001";
        ram[91] = "0b1001010111101101";
        ram[92] = "0b1001110110000001";
        ram[93] = "0b0001101010111010";
        ram[94] = "0b0001110100111101";
        ram[95] = "0b0001111111101111";
        ram[96] = "0b1001111010100000";
        ram[97] = "0b1001111100110111";
        ram[98] = "0b1001111100000000";
        ram[99] = "0b0001101000110000";
        ram[100] = "0b0010010000000100";
        ram[101] = "0b0001110101001010";
        ram[102] = "0b1001110100110011";
        ram[103] = "0b1010001001011111";


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


SC_MODULE(L3_wlo_L2_WEIGHTSbXr) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_L2_WEIGHTSbXr_ram* meminst;


SC_CTOR(L3_wlo_L2_WEIGHTSbXr) {
meminst = new L3_wlo_L2_WEIGHTSbXr_ram("L3_wlo_L2_WEIGHTSbXr_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_L2_WEIGHTSbXr() {
    delete meminst;
}


};//endmodule
#endif
