// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIcsw_H__
#define __L3_wlo_218_L2_WEIcsw_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIcsw_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 12;
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


   SC_CTOR(L3_wlo_218_L2_WEIcsw_ram) {
        ram[0] = "0b101100101101";
        ram[1] = "0b110101000110";
        ram[2] = "0b111100001111";
        ram[3] = "0b000000110111";
        ram[4] = "0b000010011111";
        ram[5] = "0b000100010001";
        ram[6] = "0b000111011000";
        ram[7] = "0b001100101101";
        ram[8] = "0b001010100101";
        ram[9] = "0b000010010000";
        ram[10] = "0b111000101110";
        ram[11] = "0b110100011000";
        ram[12] = "0b110100011001";
        ram[13] = "0b111001011001";
        ram[14] = "0b111101111110";
        ram[15] = "0b000011011101";
        ram[16] = "0b000111011110";
        ram[17] = "0b001001100010";
        ram[18] = "0b001010100111";
        ram[19] = "0b000110101011";
        ram[20] = "0b000001000000";
        ram[21] = "0b111010100001";
        ram[22] = "0b110110001000";
        ram[23] = "0b110100010111";
        ram[24] = "0b110101110110";
        ram[25] = "0b111010101010";
        ram[26] = "0b000111101000";
        ram[27] = "0b001010110101";
        ram[28] = "0b001100000001";
        ram[29] = "0b000111010101";
        ram[30] = "0b000000110101";
        ram[31] = "0b111010110100";
        ram[32] = "0b110111011000";
        ram[33] = "0b110111000111";
        ram[34] = "0b111010011010";
        ram[35] = "0b111011101100";
        ram[36] = "0b000000010100";
        ram[37] = "0b000101101100";
        ram[38] = "0b001001010100";
        ram[39] = "0b001011111011";
        ram[40] = "0b001001000110";
        ram[41] = "0b000000110111";
        ram[42] = "0b111001001111";
        ram[43] = "0b110100110111";
        ram[44] = "0b111000010000";
        ram[45] = "0b111010000011";
        ram[46] = "0b111100111111";
        ram[47] = "0b111101111000";
        ram[48] = "0b111111110010";
        ram[49] = "0b000101110000";
        ram[50] = "0b010000100001";
        ram[51] = "0b010011110000";
        ram[52] = "0b000000111111";
        ram[53] = "0b001000011100";
        ram[54] = "0b001010010101";
        ram[55] = "0b000111101011";
        ram[56] = "0b000110000010";
        ram[57] = "0b000110100101";
        ram[58] = "0b000101001100";
        ram[59] = "0b111110011010";
        ram[60] = "0b110111001111";
        ram[61] = "0b110011101111";
        ram[62] = "0b110100110100";
        ram[63] = "0b111100011100";
        ram[64] = "0b000010101110";
        ram[65] = "0b001001001011";
        ram[66] = "0b001001000100";
        ram[67] = "0b001001010110";
        ram[68] = "0b000101110001";
        ram[69] = "0b000100010100";
        ram[70] = "0b111101101011";
        ram[71] = "0b110110111011";
        ram[72] = "0b110100010011";
        ram[73] = "0b110100110011";
        ram[74] = "0b111000110011";
        ram[75] = "0b111111111000";
        ram[76] = "0b000110100101";
        ram[77] = "0b001011011110";
        ram[78] = "0b001000010110";
        ram[79] = "0b000001100100";
        ram[80] = "0b111011011000";
        ram[81] = "0b110110000101";
        ram[82] = "0b110100011011";
        ram[83] = "0b110101111000";
        ram[84] = "0b111100010010";
        ram[85] = "0b000001000101";
        ram[86] = "0b000110101001";
        ram[87] = "0b001000010011";
        ram[88] = "0b001001011111";
        ram[89] = "0b001000000001";
        ram[90] = "0b000011011100";
        ram[91] = "0b111110001000";
        ram[92] = "0b110101111011";
        ram[93] = "0b110001110011";
        ram[94] = "0b110101101100";
        ram[95] = "0b111101010011";
        ram[96] = "0b000011110111";
        ram[97] = "0b000101011100";
        ram[98] = "0b000011010101";
        ram[99] = "0b000101000010";
        ram[100] = "0b001000011011";
        ram[101] = "0b001100100101";
        ram[102] = "0b000110001110";
        ram[103] = "0b111010011010";


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


SC_MODULE(L3_wlo_218_L2_WEIcsw) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIcsw_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIcsw) {
meminst = new L3_wlo_218_L2_WEIcsw_ram("L3_wlo_218_L2_WEIcsw_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIcsw() {
    delete meminst;
}


};//endmodule
#endif
