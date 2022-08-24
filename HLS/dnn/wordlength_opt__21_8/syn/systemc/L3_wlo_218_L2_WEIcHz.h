// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIcHz_H__
#define __L3_wlo_218_L2_WEIcHz_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIcHz_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIcHz_ram) {
        ram[0] = "0b111010100000";
        ram[1] = "0b110010011100";
        ram[2] = "0b110001011111";
        ram[3] = "0b111010110011";
        ram[4] = "0b000011101101";
        ram[5] = "0b001101100111";
        ram[6] = "0b001011011000";
        ram[7] = "0b000100110000";
        ram[8] = "0b111100010010";
        ram[9] = "0b111100101111";
        ram[10] = "0b111110111010";
        ram[11] = "0b111110001110";
        ram[12] = "0b111010001001";
        ram[13] = "0b111011010111";
        ram[14] = "0b111110011101";
        ram[15] = "0b000100111110";
        ram[16] = "0b001011000100";
        ram[17] = "0b001001101010";
        ram[18] = "0b000001010100";
        ram[19] = "0b111000011111";
        ram[20] = "0b110100000110";
        ram[21] = "0b111011001000";
        ram[22] = "0b000011110111";
        ram[23] = "0b000101011110";
        ram[24] = "0b000001001010";
        ram[25] = "0b000001010001";
        ram[26] = "0b000001000101";
        ram[27] = "0b000100011110";
        ram[28] = "0b111111010000";
        ram[29] = "0b111001011111";
        ram[30] = "0b110111011000";
        ram[31] = "0b111101001000";
        ram[32] = "0b000001110101";
        ram[33] = "0b001000010100";
        ram[34] = "0b000110010001";
        ram[35] = "0b111101111001";
        ram[36] = "0b110110010100";
        ram[37] = "0b111001111101";
        ram[38] = "0b000010001010";
        ram[39] = "0b001001000111";
        ram[40] = "0b000100010111";
        ram[41] = "0b111010110110";
        ram[42] = "0b110111101010";
        ram[43] = "0b111010000110";
        ram[44] = "0b000110011010";
        ram[45] = "0b001100010001";
        ram[46] = "0b001000110110";
        ram[47] = "0b111000110010";
        ram[48] = "0b101111011010";
        ram[49] = "0b101111100000";
        ram[50] = "0b111111111001";
        ram[51] = "0b001101111110";
        ram[52] = "0b110010010100";
        ram[53] = "0b110101000101";
        ram[54] = "0b000010101011";
        ram[55] = "0b010001011001";
        ram[56] = "0b001100000010";
        ram[57] = "0b000100100010";
        ram[58] = "0b111011110000";
        ram[59] = "0b111000011101";
        ram[60] = "0b111001010010";
        ram[61] = "0b111100010100";
        ram[62] = "0b111110010000";
        ram[63] = "0b111001100100";
        ram[64] = "0b111111010000";
        ram[65] = "0b000010101100";
        ram[66] = "0b001010100111";
        ram[67] = "0b001010100101";
        ram[68] = "0b000010111000";
        ram[69] = "0b111000001000";
        ram[70] = "0b110001011100";
        ram[71] = "0b110110101011";
        ram[72] = "0b111111010101";
        ram[73] = "0b001000011100";
        ram[74] = "0b000111010000";
        ram[75] = "0b000011100001";
        ram[76] = "0b111100010001";
        ram[77] = "0b111100110110";
        ram[78] = "0b000001010001";
        ram[79] = "0b000000011111";
        ram[80] = "0b111010111000";
        ram[81] = "0b111010100101";
        ram[82] = "0b111111000000";
        ram[83] = "0b001001011100";
        ram[84] = "0b000111110010";
        ram[85] = "0b000011000110";
        ram[86] = "0b110101110111";
        ram[87] = "0b111001101000";
        ram[88] = "0b111101100011";
        ram[89] = "0b000110100001";
        ram[90] = "0b001000110000";
        ram[91] = "0b111111111110";
        ram[92] = "0b111001111001";
        ram[93] = "0b111100111010";
        ram[94] = "0b000010110010";
        ram[95] = "0b001010101011";
        ram[96] = "0b001010011110";
        ram[97] = "0b111101111010";
        ram[98] = "0b110001000111";
        ram[99] = "0b110000100011";
        ram[100] = "0b111001000111";
        ram[101] = "0b000111100101";
        ram[102] = "0b010110100010";
        ram[103] = "0b010001111100";


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


SC_MODULE(L3_wlo_218_L2_WEIcHz) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIcHz_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIcHz) {
meminst = new L3_wlo_218_L2_WEIcHz_ram("L3_wlo_218_L2_WEIcHz_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIcHz() {
    delete meminst;
}


};//endmodule
#endif
