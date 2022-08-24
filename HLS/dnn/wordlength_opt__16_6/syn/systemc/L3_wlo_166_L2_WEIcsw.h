// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_166_L2_WEIcsw_H__
#define __L3_wlo_166_L2_WEIcsw_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_166_L2_WEIcsw_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_166_L2_WEIcsw_ram) {
        ram[0] = "0b101100101";
        ram[1] = "0b110101000";
        ram[2] = "0b111100001";
        ram[3] = "0b000000110";
        ram[4] = "0b000010011";
        ram[5] = "0b000100010";
        ram[6] = "0b000111011";
        ram[7] = "0b001100101";
        ram[8] = "0b001010100";
        ram[9] = "0b000010010";
        ram[10] = "0b111000101";
        ram[11] = "0b110100011";
        ram[12] = "0b110100011";
        ram[13] = "0b111001011";
        ram[14] = "0b111101111";
        ram[15] = "0b000011011";
        ram[16] = "0b000111011";
        ram[17] = "0b001001100";
        ram[18] = "0b001010100";
        ram[19] = "0b000110101";
        ram[20] = "0b000001000";
        ram[21] = "0b111010100";
        ram[22] = "0b110110001";
        ram[23] = "0b110100010";
        ram[24] = "0b110101110";
        ram[25] = "0b111010101";
        ram[26] = "0b000111101";
        ram[27] = "0b001010110";
        ram[28] = "0b001100000";
        ram[29] = "0b000111010";
        ram[30] = "0b000000110";
        ram[31] = "0b111010110";
        ram[32] = "0b110111011";
        ram[33] = "0b110111000";
        ram[34] = "0b111010011";
        ram[35] = "0b111011101";
        ram[36] = "0b000000010";
        ram[37] = "0b000101101";
        ram[38] = "0b001001010";
        ram[39] = "0b001011111";
        ram[40] = "0b001001000";
        ram[41] = "0b000000110";
        ram[42] = "0b111001001";
        ram[43] = "0b110100110";
        ram[44] = "0b111000010";
        ram[45] = "0b111010000";
        ram[46] = "0b111100111";
        ram[47] = "0b111101111";
        ram[48] = "0b111111110";
        ram[49] = "0b000101110";
        ram[50] = "0b010000100";
        ram[51] = "0b010011110";
        ram[52] = "0b000000111";
        ram[53] = "0b001000011";
        ram[54] = "0b001010010";
        ram[55] = "0b000111101";
        ram[56] = "0b000110000";
        ram[57] = "0b000110100";
        ram[58] = "0b000101001";
        ram[59] = "0b111110011";
        ram[60] = "0b110111001";
        ram[61] = "0b110011101";
        ram[62] = "0b110100110";
        ram[63] = "0b111100011";
        ram[64] = "0b000010101";
        ram[65] = "0b001001001";
        ram[66] = "0b001001000";
        ram[67] = "0b001001010";
        ram[68] = "0b000101110";
        ram[69] = "0b000100010";
        ram[70] = "0b111101101";
        ram[71] = "0b110110111";
        ram[72] = "0b110100010";
        ram[73] = "0b110100110";
        ram[74] = "0b111000110";
        ram[75] = "0b111111111";
        ram[76] = "0b000110100";
        ram[77] = "0b001011011";
        ram[78] = "0b001000010";
        ram[79] = "0b000001100";
        ram[80] = "0b111011011";
        ram[81] = "0b110110000";
        ram[82] = "0b110100011";
        ram[83] = "0b110101111";
        ram[84] = "0b111100010";
        ram[85] = "0b000001000";
        ram[86] = "0b000110101";
        ram[87] = "0b001000010";
        ram[88] = "0b001001011";
        ram[89] = "0b001000000";
        ram[90] = "0b000011011";
        ram[91] = "0b111110001";
        ram[92] = "0b110101111";
        ram[93] = "0b110001110";
        ram[94] = "0b110101101";
        ram[95] = "0b111101010";
        ram[96] = "0b000011110";
        ram[97] = "0b000101011";
        ram[98] = "0b000011010";
        ram[99] = "0b000101000";
        ram[100] = "0b001000011";
        ram[101] = "0b001100100";
        ram[102] = "0b000110001";
        ram[103] = "0b111010011";


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


SC_MODULE(L3_wlo_166_L2_WEIcsw) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_166_L2_WEIcsw_ram* meminst;


SC_CTOR(L3_wlo_166_L2_WEIcsw) {
meminst = new L3_wlo_166_L2_WEIcsw_ram("L3_wlo_166_L2_WEIcsw_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_166_L2_WEIcsw() {
    delete meminst;
}


};//endmodule
#endif
