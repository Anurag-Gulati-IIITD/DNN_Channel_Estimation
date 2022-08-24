// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIcpw_H__
#define __L3_wlo_218_L2_WEIcpw_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIcpw_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIcpw_ram) {
        ram[0] = "0b001010101000";
        ram[1] = "0b111011011100";
        ram[2] = "0b110000011001";
        ram[3] = "0b110010001100";
        ram[4] = "0b111010110111";
        ram[5] = "0b000110010000";
        ram[6] = "0b001101011100";
        ram[7] = "0b001011101011";
        ram[8] = "0b000010001101";
        ram[9] = "0b111001010011";
        ram[10] = "0b110101000100";
        ram[11] = "0b111001101011";
        ram[12] = "0b000001001000";
        ram[13] = "0b001001100110";
        ram[14] = "0b001011001100";
        ram[15] = "0b000100111101";
        ram[16] = "0b111100100001";
        ram[17] = "0b110011000001";
        ram[18] = "0b110011000010";
        ram[19] = "0b111101001000";
        ram[20] = "0b001000011101";
        ram[21] = "0b010010000010";
        ram[22] = "0b001110010111";
        ram[23] = "0b000001100000";
        ram[24] = "0b110010001110";
        ram[25] = "0b101101000000";
        ram[26] = "0b000101100011";
        ram[27] = "0b001101000011";
        ram[28] = "0b001011111101";
        ram[29] = "0b000000101000";
        ram[30] = "0b110101110010";
        ram[31] = "0b110110111111";
        ram[32] = "0b111101101101";
        ram[33] = "0b000110001101";
        ram[34] = "0b001000011101";
        ram[35] = "0b000001101000";
        ram[36] = "0b111100001100";
        ram[37] = "0b111001001000";
        ram[38] = "0b111010010010";
        ram[39] = "0b000000101111";
        ram[40] = "0b000101010001";
        ram[41] = "0b000100011101";
        ram[42] = "0b000010110101";
        ram[43] = "0b111101011100";
        ram[44] = "0b111100010010";
        ram[45] = "0b111100111100";
        ram[46] = "0b000010010101";
        ram[47] = "0b000101111110";
        ram[48] = "0b000010110000";
        ram[49] = "0b111101110010";
        ram[50] = "0b111001000001";
        ram[51] = "0b111001000010";
        ram[52] = "0b110000100110";
        ram[53] = "0b101110111110";
        ram[54] = "0b111000111001";
        ram[55] = "0b000100110110";
        ram[56] = "0b001101111111";
        ram[57] = "0b001101010001";
        ram[58] = "0b000100101101";
        ram[59] = "0b111010000011";
        ram[60] = "0b110011010101";
        ram[61] = "0b111000010010";
        ram[62] = "0b111111011110";
        ram[63] = "0b000110101011";
        ram[64] = "0b001010001100";
        ram[65] = "0b000111000110";
        ram[66] = "0b111101111101";
        ram[67] = "0b110101011100";
        ram[68] = "0b110100010101";
        ram[69] = "0b111001111111";
        ram[70] = "0b000110010111";
        ram[71] = "0b001110010100";
        ram[72] = "0b001101011000";
        ram[73] = "0b000001010101";
        ram[74] = "0b110100011110";
        ram[75] = "0b101110101011";
        ram[76] = "0b110100001010";
        ram[77] = "0b000011100001";
        ram[78] = "0b001110111101";
        ram[79] = "0b000110000011";
        ram[80] = "0b111000111001";
        ram[81] = "0b110100100000";
        ram[82] = "0b111001100111";
        ram[83] = "0b000001100110";
        ram[84] = "0b001000010101";
        ram[85] = "0b000111000110";
        ram[86] = "0b111110011110";
        ram[87] = "0b110111010101";
        ram[88] = "0b111001011101";
        ram[89] = "0b000000101101";
        ram[90] = "0b000101011001";
        ram[91] = "0b000111010100";
        ram[92] = "0b000010001000";
        ram[93] = "0b111110110100";
        ram[94] = "0b111010011000";
        ram[95] = "0b111100101000";
        ram[96] = "0b111111000000";
        ram[97] = "0b000101011111";
        ram[98] = "0b000010101000";
        ram[99] = "0b111110010010";
        ram[100] = "0b111011101001";
        ram[101] = "0b111010000100";
        ram[102] = "0b111100100000";
        ram[103] = "0b000011010101";


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


SC_MODULE(L3_wlo_218_L2_WEIcpw) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIcpw_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIcpw) {
meminst = new L3_wlo_218_L2_WEIcpw_ram("L3_wlo_218_L2_WEIcpw_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIcpw() {
    delete meminst;
}


};//endmodule
#endif
