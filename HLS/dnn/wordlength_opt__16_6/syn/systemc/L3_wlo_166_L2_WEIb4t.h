// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_166_L2_WEIb4t_H__
#define __L3_wlo_166_L2_WEIb4t_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_166_L2_WEIb4t_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_166_L2_WEIb4t_ram) {
        ram[0] = "0b1111";
        ram[1] = "0b0001";
        ram[2] = "0b0010";
        ram[3] = "0b0001";
        ram[4] = "0b0000";
        ram[5] = "0b0000";
        ram[6] = "0b1100";
        ram[7] = "0b1010";
        ram[8] = "0b1010";
        ram[9] = "0b1110";
        ram[10] = "0b0100";
        ram[11] = "0b0111";
        ram[12] = "0b0110";
        ram[13] = "0b1110";
        ram[14] = "0b1010";
        ram[15] = "0b1010";
        ram[16] = "0b1100";
        ram[17] = "0b0011";
        ram[18] = "0b0101";
        ram[19] = "0b0001";
        ram[20] = "0b1110";
        ram[21] = "0b1011";
        ram[22] = "0b1110";
        ram[23] = "0b0001";
        ram[24] = "0b0001";
        ram[25] = "0b1111";
        ram[26] = "0b1100";
        ram[27] = "0b1111";
        ram[28] = "0b0011";
        ram[29] = "0b0010";
        ram[30] = "0b0010";
        ram[31] = "0b1110";
        ram[32] = "0b1101";
        ram[33] = "0b1110";
        ram[34] = "0b1111";
        ram[35] = "0b0000";
        ram[36] = "0b0000";
        ram[37] = "0b0001";
        ram[38] = "0b0001";
        ram[39] = "0b0100";
        ram[40] = "0b0010";
        ram[41] = "0b1101";
        ram[42] = "0b1010";
        ram[43] = "0b1001";
        ram[44] = "0b1101";
        ram[45] = "0b0010";
        ram[46] = "0b0101";
        ram[47] = "0b0011";
        ram[48] = "0b0001";
        ram[49] = "0b1100";
        ram[50] = "0b1101";
        ram[51] = "0b1110";
        ram[52] = "0b0011";
        ram[53] = "0b0000";
        ram[54] = "0b1110";
        ram[55] = "0b0000";
        ram[56] = "0b1101";
        ram[57] = "0b1100";
        ram[58] = "0b1100";
        ram[59] = "0b1110";
        ram[60] = "0b0011";
        ram[61] = "0b0111";
        ram[62] = "0b0110";
        ram[63] = "0b0001";
        ram[64] = "0b1010";
        ram[65] = "0b1001";
        ram[66] = "0b1010";
        ram[67] = "0b0010";
        ram[68] = "0b0101";
        ram[69] = "0b0100";
        ram[70] = "0b0001";
        ram[71] = "0b1011";
        ram[72] = "0b1011";
        ram[73] = "0b0000";
        ram[74] = "0b0000";
        ram[75] = "0b0010";
        ram[76] = "0b1110";
        ram[77] = "0b1011";
        ram[78] = "0b0001";
        ram[79] = "0b0010";
        ram[80] = "0b0010";
        ram[81] = "0b1110";
        ram[82] = "0b1100";
        ram[83] = "0b1101";
        ram[84] = "0b1110";
        ram[85] = "0b0001";
        ram[86] = "0b0010";
        ram[87] = "0b0010";
        ram[88] = "0b0001";
        ram[89] = "0b0010";
        ram[90] = "0b1111";
        ram[91] = "0b1110";
        ram[92] = "0b1101";
        ram[93] = "0b1010";
        ram[94] = "0b1101";
        ram[95] = "0b0011";
        ram[96] = "0b0110";
        ram[97] = "0b0100";
        ram[98] = "0b0001";
        ram[99] = "0b1101";
        ram[100] = "0b1010";
        ram[101] = "0b1101";
        ram[102] = "0b0000";
        ram[103] = "0b0010";


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


SC_MODULE(L3_wlo_166_L2_WEIb4t) {


static const unsigned DataWidth = 4;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_166_L2_WEIb4t_ram* meminst;


SC_CTOR(L3_wlo_166_L2_WEIb4t) {
meminst = new L3_wlo_166_L2_WEIb4t_ram("L3_wlo_166_L2_WEIb4t_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_166_L2_WEIb4t() {
    delete meminst;
}


};//endmodule
#endif
