// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIcPA_H__
#define __L3_wlo_218_L2_WEIcPA_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIcPA_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIcPA_ram) {
        ram[0] = "0b000110010011";
        ram[1] = "0b000011111101";
        ram[2] = "0b111110011101";
        ram[3] = "0b000000111111";
        ram[4] = "0b000100100110";
        ram[5] = "0b000011000010";
        ram[6] = "0b111100110110";
        ram[7] = "0b110111111001";
        ram[8] = "0b110111110111";
        ram[9] = "0b111101100010";
        ram[10] = "0b001000101111";
        ram[11] = "0b001111011110";
        ram[12] = "0b001001010011";
        ram[13] = "0b000011100001";
        ram[14] = "0b110111111101";
        ram[15] = "0b110110111110";
        ram[16] = "0b111100110011";
        ram[17] = "0b000010110001";
        ram[18] = "0b000010011011";
        ram[19] = "0b111000111000";
        ram[20] = "0b111011111010";
        ram[21] = "0b000011011110";
        ram[22] = "0b001100100110";
        ram[23] = "0b010011001010";
        ram[24] = "0b001000110100";
        ram[25] = "0b111001011011";
        ram[26] = "0b101110010011";
        ram[27] = "0b110110011101";
        ram[28] = "0b000101111010";
        ram[29] = "0b010001011011";
        ram[30] = "0b001100011001";
        ram[31] = "0b001011011111";
        ram[32] = "0b000010110010";
        ram[33] = "0b111010001101";
        ram[34] = "0b110110000100";
        ram[35] = "0b110011010010";
        ram[36] = "0b110111000011";
        ram[37] = "0b000001000101";
        ram[38] = "0b001011000111";
        ram[39] = "0b001111101101";
        ram[40] = "0b001011100010";
        ram[41] = "0b111110100000";
        ram[42] = "0b110100101010";
        ram[43] = "0b101110001100";
        ram[44] = "0b111000000010";
        ram[45] = "0b000000011010";
        ram[46] = "0b001101111101";
        ram[47] = "0b001110111001";
        ram[48] = "0b000111001101";
        ram[49] = "0b111101110100";
        ram[50] = "0b111000110000";
        ram[51] = "0b110011101100";
        ram[52] = "0b000000101011";
        ram[53] = "0b111111000001";
        ram[54] = "0b111110000110";
        ram[55] = "0b111101110111";
        ram[56] = "0b111111001110";
        ram[57] = "0b111011110100";
        ram[58] = "0b111010110100";
        ram[59] = "0b111101011111";
        ram[60] = "0b000101100110";
        ram[61] = "0b001101100010";
        ram[62] = "0b001011011011";
        ram[63] = "0b000010101001";
        ram[64] = "0b110110101101";
        ram[65] = "0b110011001111";
        ram[66] = "0b111000011011";
        ram[67] = "0b000011010010";
        ram[68] = "0b000011111110";
        ram[69] = "0b000010010001";
        ram[70] = "0b111101001011";
        ram[71] = "0b111110110010";
        ram[72] = "0b000111100011";
        ram[73] = "0b001011110100";
        ram[74] = "0b000111101000";
        ram[75] = "0b111010000001";
        ram[76] = "0b110010100111";
        ram[77] = "0b101111110101";
        ram[78] = "0b001001000001";
        ram[79] = "0b010000010101";
        ram[80] = "0b010000011011";
        ram[81] = "0b001000110011";
        ram[82] = "0b111100001101";
        ram[83] = "0b110101011111";
        ram[84] = "0b110111100000";
        ram[85] = "0b110100100010";
        ram[86] = "0b111100000001";
        ram[87] = "0b000001011110";
        ram[88] = "0b001001111000";
        ram[89] = "0b001100111001";
        ram[90] = "0b001011010100";
        ram[91] = "0b000000010001";
        ram[92] = "0b110010101001";
        ram[93] = "0b101110101001";
        ram[94] = "0b110100110000";
        ram[95] = "0b111111100100";
        ram[96] = "0b001011110111";
        ram[97] = "0b001111001000";
        ram[98] = "0b000100100000";
        ram[99] = "0b111101010100";
        ram[100] = "0b110100000010";
        ram[101] = "0b110100001010";
        ram[102] = "0b111001110101";
        ram[103] = "0b000001000111";


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


SC_MODULE(L3_wlo_218_L2_WEIcPA) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIcPA_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIcPA) {
meminst = new L3_wlo_218_L2_WEIcPA_ram("L3_wlo_218_L2_WEIcPA_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIcPA() {
    delete meminst;
}


};//endmodule
#endif
