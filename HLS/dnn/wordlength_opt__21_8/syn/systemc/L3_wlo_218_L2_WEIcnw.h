// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIcnw_H__
#define __L3_wlo_218_L2_WEIcnw_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIcnw_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 9;
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


   SC_CTOR(L3_wlo_218_L2_WEIcnw_ram) {
        ram[0] = "0b010010010";
        ram[1] = "0b001111011";
        ram[2] = "0b000010111";
        ram[3] = "0b111000010";
        ram[4] = "0b110100100";
        ram[5] = "0b111001111";
        ram[6] = "0b000001111";
        ram[7] = "0b000110101";
        ram[8] = "0b000011101";
        ram[9] = "0b111011111";
        ram[10] = "0b111101111";
        ram[11] = "0b111100111";
        ram[12] = "0b000000110";
        ram[13] = "0b001000010";
        ram[14] = "0b111100000";
        ram[15] = "0b110111111";
        ram[16] = "0b110111000";
        ram[17] = "0b111110011";
        ram[18] = "0b000110110";
        ram[19] = "0b001111000";
        ram[20] = "0b001100010";
        ram[21] = "0b000010101";
        ram[22] = "0b111100101";
        ram[23] = "0b111101011";
        ram[24] = "0b000101011";
        ram[25] = "0b001000001";
        ram[26] = "0b110111110";
        ram[27] = "0b110000110";
        ram[28] = "0b110111010";
        ram[29] = "0b000100111";
        ram[30] = "0b000101100";
        ram[31] = "0b000111111";
        ram[32] = "0b000000100";
        ram[33] = "0b111100101";
        ram[34] = "0b000001001";
        ram[35] = "0b000000011";
        ram[36] = "0b000101110";
        ram[37] = "0b111000100";
        ram[38] = "0b110011011";
        ram[39] = "0b111011011";
        ram[40] = "0b111101000";
        ram[41] = "0b111111001";
        ram[42] = "0b001010110";
        ram[43] = "0b000001111";
        ram[44] = "0b000100000";
        ram[45] = "0b111110110";
        ram[46] = "0b111011010";
        ram[47] = "0b111011010";
        ram[48] = "0b111000000";
        ram[49] = "0b111100011";
        ram[50] = "0b111111100";
        ram[51] = "0b001001110";
        ram[52] = "0b000011000";
        ram[53] = "0b110101000";
        ram[54] = "0b110001101";
        ram[55] = "0b110100010";
        ram[56] = "0b000001100";
        ram[57] = "0b001000001";
        ram[58] = "0b001001110";
        ram[59] = "0b000010110";
        ram[60] = "0b111001010";
        ram[61] = "0b111010001";
        ram[62] = "0b000000110";
        ram[63] = "0b000101101";
        ram[64] = "0b111100000";
        ram[65] = "0b111101001";
        ram[66] = "0b110001011";
        ram[67] = "0b111101000";
        ram[68] = "0b000111101";
        ram[69] = "0b001000111";
        ram[70] = "0b001001101";
        ram[71] = "0b111110011";
        ram[72] = "0b111000111";
        ram[73] = "0b110101000";
        ram[74] = "0b000000010";
        ram[75] = "0b000001011";
        ram[76] = "0b000100011";
        ram[77] = "0b111111000";
        ram[78] = "0b111011001";
        ram[79] = "0b000001010";
        ram[80] = "0b001001010";
        ram[81] = "0b001110101";
        ram[82] = "0b000101101";
        ram[83] = "0b111111001";
        ram[84] = "0b111111000";
        ram[85] = "0b111100110";
        ram[86] = "0b000000100";
        ram[87] = "0b111001010";
        ram[88] = "0b111101100";
        ram[89] = "0b110101100";
        ram[90] = "0b111011011";
        ram[91] = "0b000011101";
        ram[92] = "0b001010010";
        ram[93] = "0b000101111";
        ram[94] = "0b000010101";
        ram[95] = "0b111111011";
        ram[96] = "0b111001110";
        ram[97] = "0b111010101";
        ram[98] = "0b111010011";
        ram[99] = "0b000000001";
        ram[100] = "0b111011011";
        ram[101] = "0b000110100";
        ram[102] = "0b001010001";
        ram[103] = "0b000001101";


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


SC_MODULE(L3_wlo_218_L2_WEIcnw) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIcnw_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIcnw) {
meminst = new L3_wlo_218_L2_WEIcnw_ram("L3_wlo_218_L2_WEIcnw_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIcnw() {
    delete meminst;
}


};//endmodule
#endif
