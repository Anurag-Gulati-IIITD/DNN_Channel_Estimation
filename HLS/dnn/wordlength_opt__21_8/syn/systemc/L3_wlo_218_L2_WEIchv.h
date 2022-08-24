// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIchv_H__
#define __L3_wlo_218_L2_WEIchv_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIchv_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIchv_ram) {
        ram[0] = "0b111010110100";
        ram[1] = "0b000111100111";
        ram[2] = "0b001101111000";
        ram[3] = "0b001101000011";
        ram[4] = "0b000011100110";
        ram[5] = "0b110111011111";
        ram[6] = "0b101111111001";
        ram[7] = "0b110010110110";
        ram[8] = "0b111110100001";
        ram[9] = "0b001010110100";
        ram[10] = "0b010001011011";
        ram[11] = "0b001101011011";
        ram[12] = "0b000000000110";
        ram[13] = "0b110101111110";
        ram[14] = "0b110001000101";
        ram[15] = "0b110110111000";
        ram[16] = "0b000001010001";
        ram[17] = "0b001000010001";
        ram[18] = "0b001000001001";
        ram[19] = "0b000010010010";
        ram[20] = "0b000001000011";
        ram[21] = "0b000001000001";
        ram[22] = "0b000000000101";
        ram[23] = "0b111101110001";
        ram[24] = "0b111000001100";
        ram[25] = "0b111000100100";
        ram[26] = "0b001011010100";
        ram[27] = "0b001110001010";
        ram[28] = "0b000110010100";
        ram[29] = "0b110111111010";
        ram[30] = "0b101011011111";
        ram[31] = "0b110001011111";
        ram[32] = "0b000010011101";
        ram[33] = "0b010010101001";
        ram[34] = "0b010110010101";
        ram[35] = "0b001001100101";
        ram[36] = "0b110111001111";
        ram[37] = "0b101100011111";
        ram[38] = "0b101111001100";
        ram[39] = "0b111010111101";
        ram[40] = "0b000110111101";
        ram[41] = "0b001011111000";
        ram[42] = "0b001011000100";
        ram[43] = "0b000101111110";
        ram[44] = "0b000010110010";
        ram[45] = "0b111011011111";
        ram[46] = "0b110110100111";
        ram[47] = "0b110010100010";
        ram[48] = "0b110110000010";
        ram[49] = "0b000001101110";
        ram[50] = "0b010000000000";
        ram[51] = "0b010010111000";
        ram[52] = "0b001110111111";
        ram[53] = "0b001110010110";
        ram[54] = "0b000011100010";
        ram[55] = "0b110110111010";
        ram[56] = "0b110001000000";
        ram[57] = "0b110011010111";
        ram[58] = "0b111110001100";
        ram[59] = "0b001001111101";
        ram[60] = "0b010000101110";
        ram[61] = "0b001110000001";
        ram[62] = "0b000001110001";
        ram[63] = "0b110100111111";
        ram[64] = "0b101111001110";
        ram[65] = "0b110100100001";
        ram[66] = "0b000000011101";
        ram[67] = "0b001011001110";
        ram[68] = "0b001011001101";
        ram[69] = "0b000101100101";
        ram[70] = "0b111110011001";
        ram[71] = "0b111011100110";
        ram[72] = "0b111101101101";
        ram[73] = "0b111101110100";
        ram[74] = "0b111100000101";
        ram[75] = "0b111010111010";
        ram[76] = "0b000000011001";
        ram[77] = "0b000111011011";
        ram[78] = "0b001000101001";
        ram[79] = "0b111011000111";
        ram[80] = "0b110000001011";
        ram[81] = "0b110000011010";
        ram[82] = "0b111100111000";
        ram[83] = "0b001110100001";
        ram[84] = "0b010111010000";
        ram[85] = "0b001100100010";
        ram[86] = "0b111010100111";
        ram[87] = "0b101011000110";
        ram[88] = "0b101011101110";
        ram[89] = "0b111000101000";
        ram[90] = "0b001001010010";
        ram[91] = "0b010001000000";
        ram[92] = "0b001100110010";
        ram[93] = "0b000100011100";
        ram[94] = "0b111101000011";
        ram[95] = "0b110111011101";
        ram[96] = "0b110110000011";
        ram[97] = "0b110101111011";
        ram[98] = "0b111000000001";
        ram[99] = "0b000001111100";
        ram[100] = "0b001011111101";
        ram[101] = "0b010001011011";
        ram[102] = "0b001011100110";
        ram[103] = "0b111100111001";


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


SC_MODULE(L3_wlo_218_L2_WEIchv) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIchv_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIchv) {
meminst = new L3_wlo_218_L2_WEIchv_ram("L3_wlo_218_L2_WEIchv_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIchv() {
    delete meminst;
}


};//endmodule
#endif
