// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_166_L2_WEIcmv_H__
#define __L3_wlo_166_L2_WEIcmv_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_166_L2_WEIcmv_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 5;
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


   SC_CTOR(L3_wlo_166_L2_WEIcmv_ram) {
        ram[0] = "0b10000";
        ram[1] = "0b10111";
        ram[2] = "0b00011";
        ram[3] = "0b00101";
        ram[4] = "0b01000";
        ram[5] = "0b00100";
        ram[6] = "0b11111";
        ram[7] = "0b11111";
        ram[8] = "0b11110";
        ram[9] = "0b00000";
        ram[10] = "0b11111";
        ram[11] = "0b11100";
        ram[12] = "0b00010";
        ram[13] = "0b11111";
        ram[14] = "0b00100";
        ram[15] = "0b00001";
        ram[16] = "0b00001";
        ram[17] = "0b11110";
        ram[18] = "0b00000";
        ram[19] = "0b11101";
        ram[20] = "0b11001";
        ram[21] = "0b11011";
        ram[22] = "0b11111";
        ram[23] = "0b00100";
        ram[24] = "0b00010";
        ram[25] = "0b11111";
        ram[26] = "0b00001";
        ram[27] = "0b00010";
        ram[28] = "0b11101";
        ram[29] = "0b10111";
        ram[30] = "0b11100";
        ram[31] = "0b11111";
        ram[32] = "0b11110";
        ram[33] = "0b00010";
        ram[34] = "0b11110";
        ram[35] = "0b00010";
        ram[36] = "0b11110";
        ram[37] = "0b00001";
        ram[38] = "0b11110";
        ram[39] = "0b11111";
        ram[40] = "0b00110";
        ram[41] = "0b00001";
        ram[42] = "0b00011";
        ram[43] = "0b11100";
        ram[44] = "0b11010";
        ram[45] = "0b11100";
        ram[46] = "0b11111";
        ram[47] = "0b11110";
        ram[48] = "0b11111";
        ram[49] = "0b00000";
        ram[50] = "0b11111";
        ram[51] = "0b00000";
        ram[52] = "0b00101";
        ram[53] = "0b01001";
        ram[54] = "0b01110";
        ram[55] = "0b00101";
        ram[56] = "0b11011";
        ram[57] = "0b11110";
        ram[58] = "0b11010";
        ram[59] = "0b11111";
        ram[60] = "0b00001";
        ram[61] = "0b00000";
        ram[62] = "0b00000";
        ram[63] = "0b11101";
        ram[64] = "0b00010";
        ram[65] = "0b00011";
        ram[66] = "0b01010";
        ram[67] = "0b11111";
        ram[68] = "0b11011";
        ram[69] = "0b11101";
        ram[70] = "0b11001";
        ram[71] = "0b00001";
        ram[72] = "0b00001";
        ram[73] = "0b00010";
        ram[74] = "0b00011";
        ram[75] = "0b00010";
        ram[76] = "0b11110";
        ram[77] = "0b11101";
        ram[78] = "0b11110";
        ram[79] = "0b11111";
        ram[80] = "0b11011";
        ram[81] = "0b11101";
        ram[82] = "0b00000";
        ram[83] = "0b00100";
        ram[84] = "0b00000";
        ram[85] = "0b00001";
        ram[86] = "0b00000";
        ram[87] = "0b00011";
        ram[88] = "0b11011";
        ram[89] = "0b00000";
        ram[90] = "0b00001";
        ram[91] = "0b11110";
        ram[92] = "0b00100";
        ram[93] = "0b00010";
        ram[94] = "0b11010";
        ram[95] = "0b11101";
        ram[96] = "0b11011";
        ram[97] = "0b00010";
        ram[98] = "0b00000";
        ram[99] = "0b11110";
        ram[100] = "0b00001";
        ram[101] = "0b00011";
        ram[102] = "0b11011";
        ram[103] = "0b11100";


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


SC_MODULE(L3_wlo_166_L2_WEIcmv) {


static const unsigned DataWidth = 5;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_166_L2_WEIcmv_ram* meminst;


SC_CTOR(L3_wlo_166_L2_WEIcmv) {
meminst = new L3_wlo_166_L2_WEIcmv_ram("L3_wlo_166_L2_WEIcmv_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_166_L2_WEIcmv() {
    delete meminst;
}


};//endmodule
#endif
