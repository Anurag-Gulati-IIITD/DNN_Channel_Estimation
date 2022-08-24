// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIcBy_H__
#define __L3_wlo_218_L2_WEIcBy_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIcBy_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIcBy_ram) {
        ram[0] = "0b000101110000";
        ram[1] = "0b001100000000";
        ram[2] = "0b001000101111";
        ram[3] = "0b000101101110";
        ram[4] = "0b000100100010";
        ram[5] = "0b000110011111";
        ram[6] = "0b000010111100";
        ram[7] = "0b111100110011";
        ram[8] = "0b110100000110";
        ram[9] = "0b110001000111";
        ram[10] = "0b110110101110";
        ram[11] = "0b000001010111";
        ram[12] = "0b001001000010";
        ram[13] = "0b001000111011";
        ram[14] = "0b000110000010";
        ram[15] = "0b000011111101";
        ram[16] = "0b000100101011";
        ram[17] = "0b000001101110";
        ram[18] = "0b111101100000";
        ram[19] = "0b110111110001";
        ram[20] = "0b110011100111";
        ram[21] = "0b110110011010";
        ram[22] = "0b111011010110";
        ram[23] = "0b000010000000";
        ram[24] = "0b000101011110";
        ram[25] = "0b000111011000";
        ram[26] = "0b001011001010";
        ram[27] = "0b000101000010";
        ram[28] = "0b111011101110";
        ram[29] = "0b110000111001";
        ram[30] = "0b101110001100";
        ram[31] = "0b110100101011";
        ram[32] = "0b000001011011";
        ram[33] = "0b001010000001";
        ram[34] = "0b001011010100";
        ram[35] = "0b000100101001";
        ram[36] = "0b000010101001";
        ram[37] = "0b000100011011";
        ram[38] = "0b000101110011";
        ram[39] = "0b000010111101";
        ram[40] = "0b111001110100";
        ram[41] = "0b101111110010";
        ram[42] = "0b101110101111";
        ram[43] = "0b111000000110";
        ram[44] = "0b000111100000";
        ram[45] = "0b001110000111";
        ram[46] = "0b001100111000";
        ram[47] = "0b000101101100";
        ram[48] = "0b000001111011";
        ram[49] = "0b000001100101";
        ram[50] = "0b000001110101";
        ram[51] = "0b111010011100";
        ram[52] = "0b010001110000";
        ram[53] = "0b000110001000";
        ram[54] = "0b111111100001";
        ram[55] = "0b111101001110";
        ram[56] = "0b111110100110";
        ram[57] = "0b111100101000";
        ram[58] = "0b110111000011";
        ram[59] = "0b110011001011";
        ram[60] = "0b111000001001";
        ram[61] = "0b000011111010";
        ram[62] = "0b001011100101";
        ram[63] = "0b001110101000";
        ram[64] = "0b000111101101";
        ram[65] = "0b000001010111";
        ram[66] = "0b111100111010";
        ram[67] = "0b111100100000";
        ram[68] = "0b111011011011";
        ram[69] = "0b111001010010";
        ram[70] = "0b110111000001";
        ram[71] = "0b110111100101";
        ram[72] = "0b111111010100";
        ram[73] = "0b000100010110";
        ram[74] = "0b001001001101";
        ram[75] = "0b001001111011";
        ram[76] = "0b001000011101";
        ram[77] = "0b000100111101";
        ram[78] = "0b111001000001";
        ram[79] = "0b110001000110";
        ram[80] = "0b101111011011";
        ram[81] = "0b110110110011";
        ram[82] = "0b000010101101";
        ram[83] = "0b001101010111";
        ram[84] = "0b010000000101";
        ram[85] = "0b001001011011";
        ram[86] = "0b000001100010";
        ram[87] = "0b111100001111";
        ram[88] = "0b111110001101";
        ram[89] = "0b000000001101";
        ram[90] = "0b111001111000";
        ram[91] = "0b110101011111";
        ram[92] = "0b110010000001";
        ram[93] = "0b111000100001";
        ram[94] = "0b000110110110";
        ram[95] = "0b010001101110";
        ram[96] = "0b010000111100";
        ram[97] = "0b000111011110";
        ram[98] = "0b111100100010";
        ram[99] = "0b110111100001";
        ram[100] = "0b111001110110";
        ram[101] = "0b111100101001";
        ram[102] = "0b110101110000";
        ram[103] = "0b110010111101";


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


SC_MODULE(L3_wlo_218_L2_WEIcBy) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIcBy_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIcBy) {
meminst = new L3_wlo_218_L2_WEIcBy_ram("L3_wlo_218_L2_WEIcBy_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIcBy() {
    delete meminst;
}


};//endmodule
#endif
