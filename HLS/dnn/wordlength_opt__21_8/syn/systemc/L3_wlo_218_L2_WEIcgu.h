// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIcgu_H__
#define __L3_wlo_218_L2_WEIcgu_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIcgu_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIcgu_ram) {
        ram[0] = "0b101100110100";
        ram[1] = "0b110010000010";
        ram[2] = "0b000000011011";
        ram[3] = "0b001011011111";
        ram[4] = "0b010001010001";
        ram[5] = "0b001100010000";
        ram[6] = "0b111111000000";
        ram[7] = "0b110100101111";
        ram[8] = "0b110000100010";
        ram[9] = "0b110100101110";
        ram[10] = "0b111110011110";
        ram[11] = "0b000101100001";
        ram[12] = "0b001001000000";
        ram[13] = "0b000101011011";
        ram[14] = "0b000001100100";
        ram[15] = "0b000000111111";
        ram[16] = "0b111100011001";
        ram[17] = "0b111011110001";
        ram[18] = "0b111100011100";
        ram[19] = "0b111100111100";
        ram[20] = "0b000001000001";
        ram[21] = "0b000001101101";
        ram[22] = "0b000011101100";
        ram[23] = "0b000011000000";
        ram[24] = "0b000000101010";
        ram[25] = "0b111010101111";
        ram[26] = "0b111011100000";
        ram[27] = "0b000111011110";
        ram[28] = "0b001101001100";
        ram[29] = "0b001010000010";
        ram[30] = "0b000000101011";
        ram[31] = "0b110001111101";
        ram[32] = "0b110001100111";
        ram[33] = "0b111011111101";
        ram[34] = "0b000110101011";
        ram[35] = "0b001101111110";
        ram[36] = "0b000110001101";
        ram[37] = "0b111010010101";
        ram[38] = "0b111001100000";
        ram[39] = "0b111110101101";
        ram[40] = "0b001000001010";
        ram[41] = "0b001010110110";
        ram[42] = "0b111110111000";
        ram[43] = "0b110100000100";
        ram[44] = "0b110000010101";
        ram[45] = "0b111101000110";
        ram[46] = "0b001001100111";
        ram[47] = "0b010001101010";
        ram[48] = "0b001011011001";
        ram[49] = "0b111110100010";
        ram[50] = "0b110000101110";
        ram[51] = "0b110011010110";
        ram[52] = "0b111111001010";
        ram[53] = "0b001100111101";
        ram[54] = "0b010011101001";
        ram[55] = "0b001101001001";
        ram[56] = "0b000001000010";
        ram[57] = "0b110011000010";
        ram[58] = "0b101110000111";
        ram[59] = "0b110011011011";
        ram[60] = "0b000000000100";
        ram[61] = "0b000111001001";
        ram[62] = "0b001100101111";
        ram[63] = "0b001010011001";
        ram[64] = "0b000001110100";
        ram[65] = "0b111100001111";
        ram[66] = "0b111000100101";
        ram[67] = "0b111001111111";
        ram[68] = "0b111101100000";
        ram[69] = "0b000001100101";
        ram[70] = "0b000001000101";
        ram[71] = "0b000100001111";
        ram[72] = "0b000011000011";
        ram[73] = "0b000011100000";
        ram[74] = "0b000001001010";
        ram[75] = "0b111010010101";
        ram[76] = "0b110111011100";
        ram[77] = "0b111010010010";
        ram[78] = "0b001001101110";
        ram[79] = "0b001001000011";
        ram[80] = "0b000000111111";
        ram[81] = "0b110100100100";
        ram[82] = "0b110001001010";
        ram[83] = "0b111001101001";
        ram[84] = "0b000100110011";
        ram[85] = "0b001100111111";
        ram[86] = "0b001010110010";
        ram[87] = "0b000000100101";
        ram[88] = "0b110111100101";
        ram[89] = "0b110101111001";
        ram[90] = "0b111111111110";
        ram[91] = "0b000110001011";
        ram[92] = "0b000101101100";
        ram[93] = "0b111001011111";
        ram[94] = "0b110011110101";
        ram[95] = "0b111000100000";
        ram[96] = "0b000110100010";
        ram[97] = "0b001111100111";
        ram[98] = "0b010000101100";
        ram[99] = "0b000001011001";
        ram[100] = "0b110010001111";
        ram[101] = "0b101111111010";
        ram[102] = "0b111000001110";
        ram[103] = "0b000101000010";


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


SC_MODULE(L3_wlo_218_L2_WEIcgu) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIcgu_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIcgu) {
meminst = new L3_wlo_218_L2_WEIcgu_ram("L3_wlo_218_L2_WEIcgu_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIcgu() {
    delete meminst;
}


};//endmodule
#endif
