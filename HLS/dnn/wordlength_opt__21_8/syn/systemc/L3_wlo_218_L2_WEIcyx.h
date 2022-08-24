// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIcyx_H__
#define __L3_wlo_218_L2_WEIcyx_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIcyx_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIcyx_ram) {
        ram[0] = "0b111100100110";
        ram[1] = "0b110101010001";
        ram[2] = "0b110111101100";
        ram[3] = "0b111000011100";
        ram[4] = "0b000010010101";
        ram[5] = "0b111111010000";
        ram[6] = "0b000011111001";
        ram[7] = "0b111110110010";
        ram[8] = "0b000011100001";
        ram[9] = "0b000101001111";
        ram[10] = "0b000010100010";
        ram[11] = "0b111100011100";
        ram[12] = "0b111100011011";
        ram[13] = "0b110011100111";
        ram[14] = "0b111101010111";
        ram[15] = "0b000010010000";
        ram[16] = "0b000110100010";
        ram[17] = "0b000110000001";
        ram[18] = "0b111100111010";
        ram[19] = "0b111010111011";
        ram[20] = "0b111010111010";
        ram[21] = "0b111111010000";
        ram[22] = "0b000011110110";
        ram[23] = "0b000001111011";
        ram[24] = "0b000010001010";
        ram[25] = "0b111010011011";
        ram[26] = "0b000001001111";
        ram[27] = "0b000010011010";
        ram[28] = "0b000000111100";
        ram[29] = "0b111011110011";
        ram[30] = "0b111110111111";
        ram[31] = "0b000000000000";
        ram[32] = "0b001000110110";
        ram[33] = "0b000110110011";
        ram[34] = "0b000001010100";
        ram[35] = "0b111010100001";
        ram[36] = "0b110111101011";
        ram[37] = "0b111100000011";
        ram[38] = "0b000000101011";
        ram[39] = "0b000011000110";
        ram[40] = "0b000001010010";
        ram[41] = "0b111101111010";
        ram[42] = "0b111001101111";
        ram[43] = "0b000100011111";
        ram[44] = "0b000101000101";
        ram[45] = "0b001010110000";
        ram[46] = "0b000001111100";
        ram[47] = "0b111001100111";
        ram[48] = "0b110011101011";
        ram[49] = "0b110001100001";
        ram[50] = "0b111000000101";
        ram[51] = "0b000110001000";
        ram[52] = "0b101101101001";
        ram[53] = "0b111100001010";
        ram[54] = "0b000011001101";
        ram[55] = "0b000101001101";
        ram[56] = "0b000110000100";
        ram[57] = "0b000011100111";
        ram[58] = "0b111110010010";
        ram[59] = "0b000000010100";
        ram[60] = "0b000010100001";
        ram[61] = "0b111111110111";
        ram[62] = "0b111010000000";
        ram[63] = "0b111101110110";
        ram[64] = "0b111100110011";
        ram[65] = "0b000010001101";
        ram[66] = "0b000111000101";
        ram[67] = "0b000011111111";
        ram[68] = "0b111111101101";
        ram[69] = "0b111010000100";
        ram[70] = "0b111111001100";
        ram[71] = "0b111111011001";
        ram[72] = "0b000110001101";
        ram[73] = "0b000111100110";
        ram[74] = "0b000010110001";
        ram[75] = "0b111101010011";
        ram[76] = "0b111100011010";
        ram[77] = "0b111100011101";
        ram[78] = "0b000011100111";
        ram[79] = "0b111111010100";
        ram[80] = "0b111101101101";
        ram[81] = "0b111111101001";
        ram[82] = "0b000110111011";
        ram[83] = "0b000011010000";
        ram[84] = "0b000010000000";
        ram[85] = "0b111010001110";
        ram[86] = "0b111010100001";
        ram[87] = "0b111000110000";
        ram[88] = "0b111111100001";
        ram[89] = "0b001000001111";
        ram[90] = "0b000101111100";
        ram[91] = "0b000011110111";
        ram[92] = "0b111110100101";
        ram[93] = "0b111000101010";
        ram[94] = "0b111111011011";
        ram[95] = "0b000101011001";
        ram[96] = "0b000100001000";
        ram[97] = "0b111100110111";
        ram[98] = "0b111001011001";
        ram[99] = "0b110110111011";
        ram[100] = "0b111111011110";
        ram[101] = "0b001000111100";
        ram[102] = "0b001100011001";
        ram[103] = "0b001010100001";


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


SC_MODULE(L3_wlo_218_L2_WEIcyx) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIcyx_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIcyx) {
meminst = new L3_wlo_218_L2_WEIcyx_ram("L3_wlo_218_L2_WEIcyx_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIcyx() {
    delete meminst;
}


};//endmodule
#endif
