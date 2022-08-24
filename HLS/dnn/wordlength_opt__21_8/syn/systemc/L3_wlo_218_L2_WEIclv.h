// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIclv_H__
#define __L3_wlo_218_L2_WEIclv_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIclv_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIclv_ram) {
        ram[0] = "0b010001011";
        ram[1] = "0b000110111";
        ram[2] = "0b111110101";
        ram[3] = "0b110100100";
        ram[4] = "0b110011001";
        ram[5] = "0b111100110";
        ram[6] = "0b000111010";
        ram[7] = "0b000110100";
        ram[8] = "0b000001011";
        ram[9] = "0b111100000";
        ram[10] = "0b111011010";
        ram[11] = "0b000011101";
        ram[12] = "0b001001100";
        ram[13] = "0b000001011";
        ram[14] = "0b000011011";
        ram[15] = "0b110100101";
        ram[16] = "0b110111011";
        ram[17] = "0b111010011";
        ram[18] = "0b000100011";
        ram[19] = "0b001111000";
        ram[20] = "0b000101111";
        ram[21] = "0b111111101";
        ram[22] = "0b111010100";
        ram[23] = "0b110111101";
        ram[24] = "0b000001111";
        ram[25] = "0b000101111";
        ram[26] = "0b000100111";
        ram[27] = "0b101110101";
        ram[28] = "0b101100100";
        ram[29] = "0b110011101";
        ram[30] = "0b000101000";
        ram[31] = "0b010000111";
        ram[32] = "0b001111010";
        ram[33] = "0b000101001";
        ram[34] = "0b110000010";
        ram[35] = "0b101101110";
        ram[36] = "0b110101011";
        ram[37] = "0b000011111";
        ram[38] = "0b001100100";
        ram[39] = "0b000101011";
        ram[40] = "0b111110100";
        ram[41] = "0b110010010";
        ram[42] = "0b111111101";
        ram[43] = "0b001001010";
        ram[44] = "0b000101111";
        ram[45] = "0b111100011";
        ram[46] = "0b110001111";
        ram[47] = "0b110111111";
        ram[48] = "0b111110100";
        ram[49] = "0b000100100";
        ram[50] = "0b001111100";
        ram[51] = "0b111111110";
        ram[52] = "0b111101000";
        ram[53] = "0b110000010";
        ram[54] = "0b110001110";
        ram[55] = "0b111011001";
        ram[56] = "0b000010010";
        ram[57] = "0b001001000";
        ram[58] = "0b000111001";
        ram[59] = "0b111110110";
        ram[60] = "0b111000111";
        ram[61] = "0b000010010";
        ram[62] = "0b000001100";
        ram[63] = "0b000001110";
        ram[64] = "0b000010000";
        ram[65] = "0b111010100";
        ram[66] = "0b111011111";
        ram[67] = "0b111010001";
        ram[68] = "0b000010100";
        ram[69] = "0b000101110";
        ram[70] = "0b001011011";
        ram[71] = "0b000011000";
        ram[72] = "0b111001001";
        ram[73] = "0b110100011";
        ram[74] = "0b110101110";
        ram[75] = "0b000110001";
        ram[76] = "0b000111010";
        ram[77] = "0b001001001";
        ram[78] = "0b101111010";
        ram[79] = "0b110111000";
        ram[80] = "0b111111010";
        ram[81] = "0b001111000";
        ram[82] = "0b010100011";
        ram[83] = "0b000011101";
        ram[84] = "0b110000010";
        ram[85] = "0b110010011";
        ram[86] = "0b110101101";
        ram[87] = "0b000010010";
        ram[88] = "0b001110110";
        ram[89] = "0b010001111";
        ram[90] = "0b000011110";
        ram[91] = "0b111110100";
        ram[92] = "0b111010011";
        ram[93] = "0b000011010";
        ram[94] = "0b000101001";
        ram[95] = "0b000111111";
        ram[96] = "0b111001010";
        ram[97] = "0b111000110";
        ram[98] = "0b111000111";
        ram[99] = "0b000011000";
        ram[100] = "0b010000000";
        ram[101] = "0b000101010";
        ram[102] = "0b111010110";
        ram[103] = "0b110011010";


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


SC_MODULE(L3_wlo_218_L2_WEIclv) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIclv_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIclv) {
meminst = new L3_wlo_218_L2_WEIclv_ram("L3_wlo_218_L2_WEIclv_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIclv() {
    delete meminst;
}


};//endmodule
#endif
