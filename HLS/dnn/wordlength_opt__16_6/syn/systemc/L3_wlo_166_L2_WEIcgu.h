// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_166_L2_WEIcgu_H__
#define __L3_wlo_166_L2_WEIcgu_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_166_L2_WEIcgu_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 9;
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


   SC_CTOR(L3_wlo_166_L2_WEIcgu_ram) {
        ram[0] = "0b101100110";
        ram[1] = "0b110010000";
        ram[2] = "0b000000011";
        ram[3] = "0b001011011";
        ram[4] = "0b010001010";
        ram[5] = "0b001100010";
        ram[6] = "0b111111000";
        ram[7] = "0b110100101";
        ram[8] = "0b110000100";
        ram[9] = "0b110100101";
        ram[10] = "0b111110011";
        ram[11] = "0b000101100";
        ram[12] = "0b001001000";
        ram[13] = "0b000101011";
        ram[14] = "0b000001100";
        ram[15] = "0b000000111";
        ram[16] = "0b111100011";
        ram[17] = "0b111011110";
        ram[18] = "0b111100011";
        ram[19] = "0b111100111";
        ram[20] = "0b000001000";
        ram[21] = "0b000001101";
        ram[22] = "0b000011101";
        ram[23] = "0b000011000";
        ram[24] = "0b000000101";
        ram[25] = "0b111010101";
        ram[26] = "0b111011100";
        ram[27] = "0b000111011";
        ram[28] = "0b001101001";
        ram[29] = "0b001010000";
        ram[30] = "0b000000101";
        ram[31] = "0b110001111";
        ram[32] = "0b110001100";
        ram[33] = "0b111011111";
        ram[34] = "0b000110101";
        ram[35] = "0b001101111";
        ram[36] = "0b000110001";
        ram[37] = "0b111010010";
        ram[38] = "0b111001100";
        ram[39] = "0b111110101";
        ram[40] = "0b001000001";
        ram[41] = "0b001010110";
        ram[42] = "0b111110111";
        ram[43] = "0b110100000";
        ram[44] = "0b110000010";
        ram[45] = "0b111101000";
        ram[46] = "0b001001100";
        ram[47] = "0b010001101";
        ram[48] = "0b001011011";
        ram[49] = "0b111110100";
        ram[50] = "0b110000101";
        ram[51] = "0b110011010";
        ram[52] = "0b111111001";
        ram[53] = "0b001100111";
        ram[54] = "0b010011101";
        ram[55] = "0b001101001";
        ram[56] = "0b000001000";
        ram[57] = "0b110011000";
        ram[58] = "0b101110000";
        ram[59] = "0b110011011";
        ram[60] = "0b000000000";
        ram[61] = "0b000111001";
        ram[62] = "0b001100101";
        ram[63] = "0b001010011";
        ram[64] = "0b000001110";
        ram[65] = "0b111100001";
        ram[66] = "0b111000100";
        ram[67] = "0b111001111";
        ram[68] = "0b111101100";
        ram[69] = "0b000001100";
        ram[70] = "0b000001000";
        ram[71] = "0b000100001";
        ram[72] = "0b000011000";
        ram[73] = "0b000011100";
        ram[74] = "0b000001001";
        ram[75] = "0b111010010";
        ram[76] = "0b110111011";
        ram[77] = "0b111010010";
        ram[78] = "0b001001101";
        ram[79] = "0b001001000";
        ram[80] = "0b000000111";
        ram[81] = "0b110100100";
        ram[82] = "0b110001001";
        ram[83] = "0b111001101";
        ram[84] = "0b000100110";
        ram[85] = "0b001100111";
        ram[86] = "0b001010110";
        ram[87] = "0b000000100";
        ram[88] = "0b110111100";
        ram[89] = "0b110101111";
        ram[90] = "0b111111111";
        ram[91] = "0b000110001";
        ram[92] = "0b000101101";
        ram[93] = "0b111001011";
        ram[94] = "0b110011110";
        ram[95] = "0b111000100";
        ram[96] = "0b000110100";
        ram[97] = "0b001111100";
        ram[98] = "0b010000101";
        ram[99] = "0b000001011";
        ram[100] = "0b110010001";
        ram[101] = "0b101111111";
        ram[102] = "0b111000001";
        ram[103] = "0b000101000";


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


SC_MODULE(L3_wlo_166_L2_WEIcgu) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_166_L2_WEIcgu_ram* meminst;


SC_CTOR(L3_wlo_166_L2_WEIcgu) {
meminst = new L3_wlo_166_L2_WEIcgu_ram("L3_wlo_166_L2_WEIcgu_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_166_L2_WEIcgu() {
    delete meminst;
}


};//endmodule
#endif
