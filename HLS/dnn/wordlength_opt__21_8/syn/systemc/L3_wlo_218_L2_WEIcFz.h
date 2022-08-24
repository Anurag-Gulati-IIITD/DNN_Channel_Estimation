// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIcFz_H__
#define __L3_wlo_218_L2_WEIcFz_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIcFz_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIcFz_ram) {
        ram[0] = "0b101010101011";
        ram[1] = "0b101111001100";
        ram[2] = "0b111101111000";
        ram[3] = "0b001010010101";
        ram[4] = "0b001110010110";
        ram[5] = "0b010000010111";
        ram[6] = "0b000110110000";
        ram[7] = "0b111100011010";
        ram[8] = "0b110100000010";
        ram[9] = "0b101111011100";
        ram[10] = "0b110101100011";
        ram[11] = "0b111100110010";
        ram[12] = "0b000110101001";
        ram[13] = "0b001001011000";
        ram[14] = "0b001010101111";
        ram[15] = "0b000111110010";
        ram[16] = "0b000000101001";
        ram[17] = "0b110101110100";
        ram[18] = "0b110011110110";
        ram[19] = "0b110100010100";
        ram[20] = "0b111100000010";
        ram[21] = "0b000100001011";
        ram[22] = "0b000111000000";
        ram[23] = "0b001101011000";
        ram[24] = "0b001001100101";
        ram[25] = "0b000000011110";
        ram[26] = "0b110010110001";
        ram[27] = "0b110011010101";
        ram[28] = "0b111000101001";
        ram[29] = "0b000011111101";
        ram[30] = "0b001011100010";
        ram[31] = "0b001101110011";
        ram[32] = "0b001011100010";
        ram[33] = "0b000001100110";
        ram[34] = "0b110101010101";
        ram[35] = "0b110000010010";
        ram[36] = "0b110000101101";
        ram[37] = "0b110110100101";
        ram[38] = "0b000100011010";
        ram[39] = "0b001001011101";
        ram[40] = "0b001101011000";
        ram[41] = "0b001100000010";
        ram[42] = "0b000101111110";
        ram[43] = "0b111111000001";
        ram[44] = "0b111001011110";
        ram[45] = "0b110101001110";
        ram[46] = "0b110010110111";
        ram[47] = "0b110101000000";
        ram[48] = "0b111110001001";
        ram[49] = "0b001101111110";
        ram[50] = "0b010011111110";
        ram[51] = "0b010010011101";
        ram[52] = "0b111111111000";
        ram[53] = "0b001100000011";
        ram[54] = "0b010100111011";
        ram[55] = "0b001110011001";
        ram[56] = "0b001000101010";
        ram[57] = "0b111100101000";
        ram[58] = "0b110011101001";
        ram[59] = "0b110000100010";
        ram[60] = "0b110101101100";
        ram[61] = "0b111110011000";
        ram[62] = "0b000110010101";
        ram[63] = "0b001110010001";
        ram[64] = "0b001001011100";
        ram[65] = "0b000010111011";
        ram[66] = "0b111101100000";
        ram[67] = "0b110110000000";
        ram[68] = "0b110101010011";
        ram[69] = "0b110101001010";
        ram[70] = "0b111001111000";
        ram[71] = "0b000100011000";
        ram[72] = "0b001010100100";
        ram[73] = "0b000111010111";
        ram[74] = "0b000110110101";
        ram[75] = "0b111101101111";
        ram[76] = "0b111001011010";
        ram[77] = "0b110010011010";
        ram[78] = "0b111101110011";
        ram[79] = "0b000101011101";
        ram[80] = "0b001100100001";
        ram[81] = "0b001110110001";
        ram[82] = "0b000111111000";
        ram[83] = "0b000010100001";
        ram[84] = "0b110111010101";
        ram[85] = "0b101111001010";
        ram[86] = "0b110000011101";
        ram[87] = "0b111001100100";
        ram[88] = "0b000110111000";
        ram[89] = "0b001111101110";
        ram[90] = "0b001101011100";
        ram[91] = "0b001001100000";
        ram[92] = "0b000010010100";
        ram[93] = "0b111100000111";
        ram[94] = "0b110101011111";
        ram[95] = "0b110011000110";
        ram[96] = "0b110011111111";
        ram[97] = "0b111011001001";
        ram[98] = "0b000110110010";
        ram[99] = "0b001011101001";
        ram[100] = "0b010010011100";
        ram[101] = "0b010000110111";
        ram[102] = "0b000001101110";
        ram[103] = "0b101111101100";


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


SC_MODULE(L3_wlo_218_L2_WEIcFz) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIcFz_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIcFz) {
meminst = new L3_wlo_218_L2_WEIcFz_ram("L3_wlo_218_L2_WEIcFz_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIcFz() {
    delete meminst;
}


};//endmodule
#endif
