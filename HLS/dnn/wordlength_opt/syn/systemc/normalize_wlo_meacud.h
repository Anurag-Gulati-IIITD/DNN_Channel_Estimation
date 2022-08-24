// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __normalize_wlo_meacud_H__
#define __normalize_wlo_meacud_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct normalize_wlo_meacud_ram : public sc_core::sc_module {

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


   SC_CTOR(normalize_wlo_meacud_ram) {
        ram[0] = "0b1001100110111101";
        ram[1] = "0b1001010101100111";
        ram[2] = "0b0001000100010010";
        ram[3] = "0b0001100011001010";
        ram[4] = "0b0001101010100101";
        ram[5] = "0b0001100111110001";
        ram[6] = "0b0001010100010011";
        ram[7] = "0b1001010011111010";
        ram[8] = "0b1001101100010100";
        ram[9] = "0b1001110001010101";
        ram[10] = "0b1001100111111100";
        ram[11] = "0b0000000111110111";
        ram[12] = "0b0001101010000111";
        ram[13] = "0b0001110011111100";
        ram[14] = "0b0001110000110110";
        ram[15] = "0b0001010100011111";
        ram[16] = "0b1001100010011000";
        ram[17] = "0b1001110010111001";
        ram[18] = "0b1001110011011001";
        ram[19] = "0b1001100101010010";
        ram[20] = "0b0001001000111000";
        ram[21] = "0b0001101110001011";
        ram[22] = "0b0001110011111100";
        ram[23] = "0b0001101110110010";
        ram[24] = "0b0001001110011010";
        ram[25] = "0b1001100010101111";
        ram[26] = "0b1001110010010001";
        ram[27] = "0b1001100100100010";
        ram[28] = "0b0001000010110000";
        ram[29] = "0b0001101011110011";
        ram[30] = "0b0001110011001101";
        ram[31] = "0b0001101111100111";
        ram[32] = "0b0001010100011001";
        ram[33] = "0b1001100001000100";
        ram[34] = "0b1001110010100100";
        ram[35] = "0b1001110011111101";
        ram[36] = "0b1001100110011111";
        ram[37] = "0b0001001100100111";
        ram[38] = "0b0001110000110011";
        ram[39] = "0b0001110101001001";
        ram[40] = "0b0001101100011011";
        ram[41] = "0b0000000001110101";
        ram[42] = "0b1001101010011010";
        ram[43] = "0b1001110010010001";
        ram[44] = "0b1001101010110111";
        ram[45] = "0b1001000111101100";
        ram[46] = "0b0001011011100000";
        ram[47] = "0b0001100110110000";
        ram[48] = "0b0001100100110011";
        ram[49] = "0b0001011000110111";
        ram[50] = "0b0000110110110100";
        ram[51] = "0b1001000111101110";
        ram[52] = "0b0001011000110111";
        ram[53] = "0b0001100111101010";
        ram[54] = "0b0001101000010110";
        ram[55] = "0b0001100000101010";
        ram[56] = "0b0000111000001100";
        ram[57] = "0b1001011100010110";
        ram[58] = "0b1001101100010011";
        ram[59] = "0b1001101101001010";
        ram[60] = "0b1001100010000111";
        ram[61] = "0b0001000110111010";
        ram[62] = "0b0001101100011000";
        ram[63] = "0b0001110011010111";
        ram[64] = "0b0001101101111101";
        ram[65] = "0b0001000110000101";
        ram[66] = "0b1001100110010100";
        ram[67] = "0b1001110100000111";
        ram[68] = "0b1001110010101011";
        ram[69] = "0b1001011110011011";
        ram[70] = "0b0001011010011001";
        ram[71] = "0b0001110001000001";
        ram[72] = "0b0001110100001110";
        ram[73] = "0b0001101001110000";
        ram[74] = "0b0000100100000011";
        ram[75] = "0b1001101000010101";
        ram[76] = "0b1001110011000000";
        ram[77] = "0b1001110000110100";
        ram[78] = "0b0001011001001011";
        ram[79] = "0b0001101111110100";
        ram[80] = "0b0001110010101011";
        ram[81] = "0b0001101010111010";
        ram[82] = "0b0000111010101111";
        ram[83] = "0b1001100111000010";
        ram[84] = "0b1001110010101111";
        ram[85] = "0b1001110010011011";
        ram[86] = "0b1001100000010011";
        ram[87] = "0b0001010110100000";
        ram[88] = "0b0001110001100110";
        ram[89] = "0b0001110100101110";
        ram[90] = "0b0001101001110010";
        ram[91] = "0b1000111110111100";
        ram[92] = "0b1001101110000011";
        ram[93] = "0b1001110011111110";
        ram[94] = "0b1001101101000011";
        ram[95] = "0b1000111100010000";
        ram[96] = "0b0001100101010001";
        ram[97] = "0b0001101101110101";
        ram[98] = "0b0001101000101110";
        ram[99] = "0b0001010000110101";
        ram[100] = "0b1001000100011000";
        ram[101] = "0b1001011011101100";
        ram[102] = "0b1001100000100110";
        ram[103] = "0b1001011110011111";


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


SC_MODULE(normalize_wlo_meacud) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


normalize_wlo_meacud_ram* meminst;


SC_CTOR(normalize_wlo_meacud) {
meminst = new normalize_wlo_meacud_ram("normalize_wlo_meacud_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~normalize_wlo_meacud() {
    delete meminst;
}


};//endmodule
#endif
