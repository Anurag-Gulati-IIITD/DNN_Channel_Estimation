// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __normalize_wlo_218cud_H__
#define __normalize_wlo_218cud_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct normalize_wlo_218cud_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 7;
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


   SC_CTOR(normalize_wlo_218cud_ram) {
        ram[0] = "0b1101001";
        ram[1] = "0b1110101";
        ram[2] = "0b0000101";
        ram[3] = "0b0010011";
        ram[4] = "0b0011010";
        ram[5] = "0b0010111";
        ram[6] = "0b0001010";
        ram[7] = "0b1110110";
        ram[8] = "0b1100011";
        ram[9] = "0b1011101";
        ram[10] = "0b1101000";
        ram[11] = "0b0000000";
        ram[12] = "0b0011010";
        ram[13] = "0b0100111";
        ram[14] = "0b0100001";
        ram[15] = "0b0001010";
        ram[16] = "0b1101101";
        ram[17] = "0b1011010";
        ram[18] = "0b1011001";
        ram[19] = "0b1101010";
        ram[20] = "0b0000110";
        ram[21] = "0b0011110";
        ram[22] = "0b0100111";
        ram[23] = "0b0011110";
        ram[24] = "0b0000111";
        ram[25] = "0b1101101";
        ram[26] = "0b1011011";
        ram[27] = "0b1101011";
        ram[28] = "0b0000100";
        ram[29] = "0b0011011";
        ram[30] = "0b0100110";
        ram[31] = "0b0011111";
        ram[32] = "0b0001010";
        ram[33] = "0b1101110";
        ram[34] = "0b1011010";
        ram[35] = "0b1011000";
        ram[36] = "0b1101001";
        ram[37] = "0b0000111";
        ram[38] = "0b0100001";
        ram[39] = "0b0101010";
        ram[40] = "0b0011100";
        ram[41] = "0b0000000";
        ram[42] = "0b1100101";
        ram[43] = "0b1011011";
        ram[44] = "0b1100101";
        ram[45] = "0b1111010";
        ram[46] = "0b0001101";
        ram[47] = "0b0010110";
        ram[48] = "0b0010100";
        ram[49] = "0b0001100";
        ram[50] = "0b0000010";
        ram[51] = "0b1111010";
        ram[52] = "0b0001100";
        ram[53] = "0b0010111";
        ram[54] = "0b0011000";
        ram[55] = "0b0010000";
        ram[56] = "0b0000011";
        ram[57] = "0b1110001";
        ram[58] = "0b1100011";
        ram[59] = "0b1100010";
        ram[60] = "0b1101101";
        ram[61] = "0b0000101";
        ram[62] = "0b0011100";
        ram[63] = "0b0100110";
        ram[64] = "0b0011101";
        ram[65] = "0b0000101";
        ram[66] = "0b1101001";
        ram[67] = "0b1010111";
        ram[68] = "0b1011010";
        ram[69] = "0b1110000";
        ram[70] = "0b0001101";
        ram[71] = "0b0100010";
        ram[72] = "0b0101000";
        ram[73] = "0b0011001";
        ram[74] = "0b0000001";
        ram[75] = "0b1100111";
        ram[76] = "0b1011010";
        ram[77] = "0b1011110";
        ram[78] = "0b0001100";
        ram[79] = "0b0011111";
        ram[80] = "0b0100101";
        ram[81] = "0b0011010";
        ram[82] = "0b0000011";
        ram[83] = "0b1101000";
        ram[84] = "0b1011010";
        ram[85] = "0b1011011";
        ram[86] = "0b1101111";
        ram[87] = "0b0001011";
        ram[88] = "0b0100011";
        ram[89] = "0b0101001";
        ram[90] = "0b0011001";
        ram[91] = "0b1111100";
        ram[92] = "0b1100001";
        ram[93] = "0b1011000";
        ram[94] = "0b1100010";
        ram[95] = "0b1111100";
        ram[96] = "0b0010101";
        ram[97] = "0b0011101";
        ram[98] = "0b0011000";
        ram[99] = "0b0001000";
        ram[100] = "0b1111010";
        ram[101] = "0b1110010";
        ram[102] = "0b1101111";
        ram[103] = "0b1110000";


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


SC_MODULE(normalize_wlo_218cud) {


static const unsigned DataWidth = 7;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


normalize_wlo_218cud_ram* meminst;


SC_CTOR(normalize_wlo_218cud) {
meminst = new normalize_wlo_218cud_ram("normalize_wlo_218cud_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~normalize_wlo_218cud() {
    delete meminst;
}


};//endmodule
#endif
