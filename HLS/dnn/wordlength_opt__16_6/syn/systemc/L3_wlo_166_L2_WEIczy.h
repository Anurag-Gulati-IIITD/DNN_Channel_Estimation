// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_166_L2_WEIczy_H__
#define __L3_wlo_166_L2_WEIczy_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_166_L2_WEIczy_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 4;
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


   SC_CTOR(L3_wlo_166_L2_WEIczy_ram) {
        ram[0] = "0b0010";
        ram[1] = "0b0010";
        ram[2] = "0b0000";
        ram[3] = "0b1111";
        ram[4] = "0b1101";
        ram[5] = "0b0010";
        ram[6] = "0b0011";
        ram[7] = "0b0011";
        ram[8] = "0b1100";
        ram[9] = "0b1011";
        ram[10] = "0b1100";
        ram[11] = "0b0000";
        ram[12] = "0b0011";
        ram[13] = "0b0110";
        ram[14] = "0b0000";
        ram[15] = "0b1101";
        ram[16] = "0b1101";
        ram[17] = "0b1101";
        ram[18] = "0b0001";
        ram[19] = "0b0010";
        ram[20] = "0b1110";
        ram[21] = "0b1111";
        ram[22] = "0b1111";
        ram[23] = "0b0000";
        ram[24] = "0b0000";
        ram[25] = "0b0010";
        ram[26] = "0b1111";
        ram[27] = "0b0000";
        ram[28] = "0b1111";
        ram[29] = "0b1111";
        ram[30] = "0b1100";
        ram[31] = "0b1110";
        ram[32] = "0b1100";
        ram[33] = "0b0000";
        ram[34] = "0b0011";
        ram[35] = "0b0001";
        ram[36] = "0b1111";
        ram[37] = "0b1101";
        ram[38] = "0b1110";
        ram[39] = "0b0010";
        ram[40] = "0b0010";
        ram[41] = "0b0000";
        ram[42] = "0b1111";
        ram[43] = "0b1011";
        ram[44] = "0b1110";
        ram[45] = "0b0000";
        ram[46] = "0b0010";
        ram[47] = "0b0000";
        ram[48] = "0b1110";
        ram[49] = "0b1111";
        ram[50] = "0b0010";
        ram[51] = "0b0011";
        ram[52] = "0b0101";
        ram[53] = "0b1101";
        ram[54] = "0b1100";
        ram[55] = "0b0000";
        ram[56] = "0b0001";
        ram[57] = "0b0010";
        ram[58] = "0b1111";
        ram[59] = "0b1101";
        ram[60] = "0b1011";
        ram[61] = "0b1101";
        ram[62] = "0b0011";
        ram[63] = "0b0001";
        ram[64] = "0b0001";
        ram[65] = "0b1110";
        ram[66] = "0b1100";
        ram[67] = "0b1101";
        ram[68] = "0b0001";
        ram[69] = "0b0010";
        ram[70] = "0b1110";
        ram[71] = "0b1111";
        ram[72] = "0b1101";
        ram[73] = "0b1110";
        ram[74] = "0b0001";
        ram[75] = "0b0010";
        ram[76] = "0b0000";
        ram[77] = "0b1111";
        ram[78] = "0b1111";
        ram[79] = "0b0000";
        ram[80] = "0b1111";
        ram[81] = "0b1110";
        ram[82] = "0b1100";
        ram[83] = "0b0001";
        ram[84] = "0b0011";
        ram[85] = "0b0011";
        ram[86] = "0b1110";
        ram[87] = "0b1111";
        ram[88] = "0b1101";
        ram[89] = "0b1111";
        ram[90] = "0b0010";
        ram[91] = "0b0001";
        ram[92] = "0b1111";
        ram[93] = "0b0000";
        ram[94] = "0b1111";
        ram[95] = "0b0000";
        ram[96] = "0b0010";
        ram[97] = "0b0001";
        ram[98] = "0b1110";
        ram[99] = "0b1110";
        ram[100] = "0b1110";
        ram[101] = "0b1111";
        ram[102] = "0b0100";
        ram[103] = "0b0001";


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


SC_MODULE(L3_wlo_166_L2_WEIczy) {


static const unsigned DataWidth = 4;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_166_L2_WEIczy_ram* meminst;


SC_CTOR(L3_wlo_166_L2_WEIczy) {
meminst = new L3_wlo_166_L2_WEIczy_ram("L3_wlo_166_L2_WEIczy_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_166_L2_WEIczy() {
    delete meminst;
}


};//endmodule
#endif
