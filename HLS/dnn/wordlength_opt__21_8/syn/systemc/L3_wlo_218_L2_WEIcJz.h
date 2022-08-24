// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIcJz_H__
#define __L3_wlo_218_L2_WEIcJz_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIcJz_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIcJz_ram) {
        ram[0] = "0b000100111101";
        ram[1] = "0b111000101010";
        ram[2] = "0b110010101001";
        ram[3] = "0b110011011101";
        ram[4] = "0b111100100011";
        ram[5] = "0b001000001101";
        ram[6] = "0b001111100000";
        ram[7] = "0b001100101001";
        ram[8] = "0b000001011010";
        ram[9] = "0b110101100101";
        ram[10] = "0b101111001101";
        ram[11] = "0b110011000011";
        ram[12] = "0b111111111000";
        ram[13] = "0b001001101001";
        ram[14] = "0b001110011000";
        ram[15] = "0b001000110010";
        ram[16] = "0b111110110010";
        ram[17] = "0b111000000001";
        ram[18] = "0b111000001000";
        ram[19] = "0b111101110010";
        ram[20] = "0b111110111111";
        ram[21] = "0b111111000001";
        ram[22] = "0b111111111010";
        ram[23] = "0b000010001000";
        ram[24] = "0b000111100001";
        ram[25] = "0b000111001001";
        ram[26] = "0b110101000111";
        ram[27] = "0b110010010111";
        ram[28] = "0b111001111010";
        ram[29] = "0b000111110010";
        ram[30] = "0b010011110000";
        ram[31] = "0b001101111110";
        ram[32] = "0b111101100111";
        ram[33] = "0b101110000001";
        ram[34] = "0b101010011100";
        ram[35] = "0b110110110000";
        ram[36] = "0b001000011100";
        ram[37] = "0b010010110100";
        ram[38] = "0b010000001101";
        ram[39] = "0b000100110111";
        ram[40] = "0b111001010010";
        ram[41] = "0b110100100011";
        ram[42] = "0b110101010100";
        ram[43] = "0b111010001111";
        ram[44] = "0b111101010011";
        ram[45] = "0b000100010101";
        ram[46] = "0b001001000011";
        ram[47] = "0b001100111110";
        ram[48] = "0b001001100110";
        ram[49] = "0b111110010110";
        ram[50] = "0b110000100100";
        ram[51] = "0b101101110011";
        ram[52] = "0b110001100011";
        ram[53] = "0b110010001110";
        ram[54] = "0b111100101000";
        ram[55] = "0b001000101111";
        ram[56] = "0b001110011011";
        ram[57] = "0b001100001000";
        ram[58] = "0b000001101101";
        ram[59] = "0b110110011001";
        ram[60] = "0b101111111001";
        ram[61] = "0b110010011111";
        ram[62] = "0b111110010001";
        ram[63] = "0b001010100110";
        ram[64] = "0b010000001010";
        ram[65] = "0b001011000100";
        ram[66] = "0b111111100101";
        ram[67] = "0b110101001100";
        ram[68] = "0b110101001100";
        ram[69] = "0b111010100111";
        ram[70] = "0b000001100010";
        ram[71] = "0b000100001111";
        ram[72] = "0b000010001110";
        ram[73] = "0b000010000110";
        ram[74] = "0b000011110001";
        ram[75] = "0b000100111000";
        ram[76] = "0b111111100111";
        ram[77] = "0b111000110110";
        ram[78] = "0b110111101011";
        ram[79] = "0b000100101100";
        ram[80] = "0b001111001110";
        ram[81] = "0b001111000001";
        ram[82] = "0b000011000000";
        ram[83] = "0b110001111111";
        ram[84] = "0b101001100101";
        ram[85] = "0b110011111001";
        ram[86] = "0b000101001100";
        ram[87] = "0b010100001001";
        ram[88] = "0b010011100100";
        ram[89] = "0b000111000111";
        ram[90] = "0b110111000010";
        ram[91] = "0b101111100110";
        ram[92] = "0b110011101010";
        ram[93] = "0b111011101100";
        ram[94] = "0b000010110100";
        ram[95] = "0b001000001101";
        ram[96] = "0b001001100100";
        ram[97] = "0b001001101101";
        ram[98] = "0b000111101101";
        ram[99] = "0b111110001000";
        ram[100] = "0b110100011111";
        ram[101] = "0b101111001100";
        ram[102] = "0b110100110011";
        ram[103] = "0b000010111101";


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


SC_MODULE(L3_wlo_218_L2_WEIcJz) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIcJz_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIcJz) {
meminst = new L3_wlo_218_L2_WEIcJz_ram("L3_wlo_218_L2_WEIcJz_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIcJz() {
    delete meminst;
}


};//endmodule
#endif
