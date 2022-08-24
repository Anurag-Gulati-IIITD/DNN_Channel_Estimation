// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __normalize_wlo_stddEe_H__
#define __normalize_wlo_stddEe_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct normalize_wlo_stddEe_ram : public sc_core::sc_module {

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


   SC_CTOR(normalize_wlo_stddEe_ram) {
        ram[0] = "0b0011100110100110";
        ram[1] = "0b0011100110110100";
        ram[2] = "0b0011100110111010";
        ram[3] = "0b0011100110101111";
        ram[4] = "0b0011100110100111";
        ram[5] = "0b0011100110110001";
        ram[6] = "0b0011100110111001";
        ram[7] = "0b0011100110110011";
        ram[8] = "0b0011100110101011";
        ram[9] = "0b0011100110110001";
        ram[10] = "0b0011100110110111";
        ram[11] = "0b0011100110110100";
        ram[12] = "0b0011100110101101";
        ram[13] = "0b0011100110101111";
        ram[14] = "0b0011100110110110";
        ram[15] = "0b0011100110110011";
        ram[16] = "0b0011100110101101";
        ram[17] = "0b0011100110110000";
        ram[18] = "0b0011100110110111";
        ram[19] = "0b0011100110110011";
        ram[20] = "0b0011100110101010";
        ram[21] = "0b0011100110101111";
        ram[22] = "0b0011100110111000";
        ram[23] = "0b0011100110110101";
        ram[24] = "0b0011100110101001";
        ram[25] = "0b0011100110101100";
        ram[26] = "0b0011100110111001";
        ram[27] = "0b0011100110101001";
        ram[28] = "0b0011100110101000";
        ram[29] = "0b0011100110111000";
        ram[30] = "0b0011100110111100";
        ram[31] = "0b0011100110101101";
        ram[32] = "0b0011100110100100";
        ram[33] = "0b0011100110110001";
        ram[34] = "0b0011100110111100";
        ram[35] = "0b0011100110110000";
        ram[36] = "0b0011100110100011";
        ram[37] = "0b0011100110101001";
        ram[38] = "0b0011100110110110";
        ram[39] = "0b0011100110110101";
        ram[40] = "0b0011100110100111";
        ram[41] = "0b0011100110100011";
        ram[42] = "0b0011100110101111";
        ram[43] = "0b0011100110111000";
        ram[44] = "0b0011100110101111";
        ram[45] = "0b0011100110100010";
        ram[46] = "0b0011100110101001";
        ram[47] = "0b0011100110111000";
        ram[48] = "0b0011100110110111";
        ram[49] = "0b0011100110100101";
        ram[50] = "0b0011100110100010";
        ram[51] = "0b0011100110110100";
        ram[52] = "0b0011100110111010";
        ram[53] = "0b0011100110101100";
        ram[54] = "0b0011100110100110";
        ram[55] = "0b0011100110110010";
        ram[56] = "0b0011100110111010";
        ram[57] = "0b0011100110110001";
        ram[58] = "0b0011100110101010";
        ram[59] = "0b0011100110110000";
        ram[60] = "0b0011100110111000";
        ram[61] = "0b0011100110110100";
        ram[62] = "0b0011100110101101";
        ram[63] = "0b0011100110110000";
        ram[64] = "0b0011100110110111";
        ram[65] = "0b0011100110110100";
        ram[66] = "0b0011100110101110";
        ram[67] = "0b0011100110110000";
        ram[68] = "0b0011100110110111";
        ram[69] = "0b0011100110110011";
        ram[70] = "0b0011100110101100";
        ram[71] = "0b0011100110101111";
        ram[72] = "0b0011100110111000";
        ram[73] = "0b0011100110110011";
        ram[74] = "0b0011100110101001";
        ram[75] = "0b0011100110101101";
        ram[76] = "0b0011100110111001";
        ram[77] = "0b0011100110110110";
        ram[78] = "0b0011100110101010";
        ram[79] = "0b0011100110111001";
        ram[80] = "0b0011100110111010";
        ram[81] = "0b0011100110101011";
        ram[82] = "0b0011100110100110";
        ram[83] = "0b0011100110110101";
        ram[84] = "0b0011100110111100";
        ram[85] = "0b0011100110101111";
        ram[86] = "0b0011100110100011";
        ram[87] = "0b0011100110101101";
        ram[88] = "0b0011100110111001";
        ram[89] = "0b0011100110110010";
        ram[90] = "0b0011100110100100";
        ram[91] = "0b0011100110100101";
        ram[92] = "0b0011100110110010";
        ram[93] = "0b0011100110110110";
        ram[94] = "0b0011100110101011";
        ram[95] = "0b0011100110100010";
        ram[96] = "0b0011100110101100";
        ram[97] = "0b0011100110111001";
        ram[98] = "0b0011100110110100";
        ram[99] = "0b0011100110100011";
        ram[100] = "0b0011100110100110";
        ram[101] = "0b0011100110110110";
        ram[102] = "0b0011100110111001";
        ram[103] = "0b0011100110101000";


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


SC_MODULE(normalize_wlo_stddEe) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


normalize_wlo_stddEe_ram* meminst;


SC_CTOR(normalize_wlo_stddEe) {
meminst = new normalize_wlo_stddEe_ram("normalize_wlo_stddEe_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~normalize_wlo_stddEe() {
    delete meminst;
}


};//endmodule
#endif
