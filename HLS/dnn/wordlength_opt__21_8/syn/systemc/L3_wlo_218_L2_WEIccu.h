// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIccu_H__
#define __L3_wlo_218_L2_WEIccu_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIccu_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIccu_ram) {
        ram[0] = "0b111100110011";
        ram[1] = "0b111000010001";
        ram[2] = "0b110100011001";
        ram[3] = "0b110101001010";
        ram[4] = "0b111011101000";
        ram[5] = "0b000101101111";
        ram[6] = "0b001110010101";
        ram[7] = "0b010001011010";
        ram[8] = "0b001100100011";
        ram[9] = "0b111100010010";
        ram[10] = "0b101110111001";
        ram[11] = "0b101010100001";
        ram[12] = "0b110001100010";
        ram[13] = "0b000011100011";
        ram[14] = "0b001110010011";
        ram[15] = "0b010010010100";
        ram[16] = "0b001110000001";
        ram[17] = "0b000110000011";
        ram[18] = "0b111010101001";
        ram[19] = "0b101110001100";
        ram[20] = "0b101111010111";
        ram[21] = "0b110100110000";
        ram[22] = "0b000000010101";
        ram[23] = "0b001101000100";
        ram[24] = "0b010000101110";
        ram[25] = "0b001101100010";
        ram[26] = "0b111001100101";
        ram[27] = "0b110110001101";
        ram[28] = "0b111001011110";
        ram[29] = "0b000000010011";
        ram[30] = "0b111101111110";
        ram[31] = "0b111101011110";
        ram[32] = "0b111101101010";
        ram[33] = "0b000010001001";
        ram[34] = "0b001011101001";
        ram[35] = "0b001111011100";
        ram[36] = "0b000111100111";
        ram[37] = "0b111001101001";
        ram[38] = "0b101110010101";
        ram[39] = "0b101101011110";
        ram[40] = "0b111001010101";
        ram[41] = "0b001000101101";
        ram[42] = "0b010001010000";
        ram[43] = "0b001101100001";
        ram[44] = "0b000100101000";
        ram[45] = "0b111000010010";
        ram[46] = "0b110101110100";
        ram[47] = "0b110101110010";
        ram[48] = "0b111011101010";
        ram[49] = "0b000000000100";
        ram[50] = "0b000110110010";
        ram[51] = "0b000111001001";
        ram[52] = "0b110111101001";
        ram[53] = "0b111011000011";
        ram[54] = "0b111101101001";
        ram[55] = "0b000101101100";
        ram[56] = "0b001100100011";
        ram[57] = "0b001111000001";
        ram[58] = "0b001001010111";
        ram[59] = "0b111011101101";
        ram[60] = "0b101111110111";
        ram[61] = "0b101011101110";
        ram[62] = "0b110011110001";
        ram[63] = "0b000011110011";
        ram[64] = "0b010001000011";
        ram[65] = "0b010011101111";
        ram[66] = "0b001101111001";
        ram[67] = "0b000011001001";
        ram[68] = "0b110100100010";
        ram[69] = "0b101110010010";
        ram[70] = "0b101110111001";
        ram[71] = "0b110111001100";
        ram[72] = "0b000101000001";
        ram[73] = "0b001111010000";
        ram[74] = "0b010001011001";
        ram[75] = "0b001100010010";
        ram[76] = "0b000100000100";
        ram[77] = "0b110111000100";
        ram[78] = "0b110111000001";
        ram[79] = "0b111100010100";
        ram[80] = "0b000011011000";
        ram[81] = "0b000011101101";
        ram[82] = "0b000000001011";
        ram[83] = "0b000010100101";
        ram[84] = "0b001000100101";
        ram[85] = "0b001000110010";
        ram[86] = "0b000111101100";
        ram[87] = "0b111011111000";
        ram[88] = "0b101111111001";
        ram[89] = "0b101100011101";
        ram[90] = "0b111001000101";
        ram[91] = "0b001000110010";
        ram[92] = "0b010010100001";
        ram[93] = "0b010000100101";
        ram[94] = "0b000101101100";
        ram[95] = "0b110101000111";
        ram[96] = "0b110001001111";
        ram[97] = "0b110010010011";
        ram[98] = "0b111010101100";
        ram[99] = "0b000101111110";
        ram[100] = "0b000111100111";
        ram[101] = "0b001000001010";
        ram[102] = "0b001000100000";
        ram[103] = "0b000101100101";


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


SC_MODULE(L3_wlo_218_L2_WEIccu) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIccu_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIccu) {
meminst = new L3_wlo_218_L2_WEIccu_ram("L3_wlo_218_L2_WEIccu_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIccu() {
    delete meminst;
}


};//endmodule
#endif
