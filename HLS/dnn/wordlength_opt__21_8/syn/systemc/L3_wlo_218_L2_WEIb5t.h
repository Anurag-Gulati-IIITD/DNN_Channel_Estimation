// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L3_wlo_218_L2_WEIb5t_H__
#define __L3_wlo_218_L2_WEIb5t_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L3_wlo_218_L2_WEIb5t_ram : public sc_core::sc_module {

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


   SC_CTOR(L3_wlo_218_L2_WEIb5t_ram) {
        ram[0] = "0b001000101";
        ram[1] = "0b110100010";
        ram[2] = "0b110101110";
        ram[3] = "0b110001111";
        ram[4] = "0b101100101";
        ram[5] = "0b001001110";
        ram[6] = "0b001101011";
        ram[7] = "0b001101000";
        ram[8] = "0b010001101";
        ram[9] = "0b111111101";
        ram[10] = "0b101101011";
        ram[11] = "0b110011001";
        ram[12] = "0b110101110";
        ram[13] = "0b111100110";
        ram[14] = "0b000100000";
        ram[15] = "0b000010100";
        ram[16] = "0b001010100";
        ram[17] = "0b001011000";
        ram[18] = "0b001011011";
        ram[19] = "0b111010100";
        ram[20] = "0b110000000";
        ram[21] = "0b110000100";
        ram[22] = "0b000000101";
        ram[23] = "0b111011000";
        ram[24] = "0b001110111";
        ram[25] = "0b001100110";
        ram[26] = "0b000101000";
        ram[27] = "0b110110111";
        ram[28] = "0b110101010";
        ram[29] = "0b111001100";
        ram[30] = "0b111100100";
        ram[31] = "0b111110111";
        ram[32] = "0b001000010";
        ram[33] = "0b000111111";
        ram[34] = "0b000110101";
        ram[35] = "0b010010111";
        ram[36] = "0b110010011";
        ram[37] = "0b110100011";
        ram[38] = "0b110000000";
        ram[39] = "0b101100101";
        ram[40] = "0b000011011";
        ram[41] = "0b001101111";
        ram[42] = "0b001111110";
        ram[43] = "0b001101100";
        ram[44] = "0b000110011";
        ram[45] = "0b110111100";
        ram[46] = "0b110010100";
        ram[47] = "0b110100010";
        ram[48] = "0b111000000";
        ram[49] = "0b111110100";
        ram[50] = "0b001000010";
        ram[51] = "0b001011011";
        ram[52] = "0b110110001";
        ram[53] = "0b110010011";
        ram[54] = "0b101000101";
        ram[55] = "0b001101110";
        ram[56] = "0b001001011";
        ram[57] = "0b001100111";
        ram[58] = "0b010001101";
        ram[59] = "0b110001110";
        ram[60] = "0b110011010";
        ram[61] = "0b110100100";
        ram[62] = "0b110101111";
        ram[63] = "0b000001100";
        ram[64] = "0b001010000";
        ram[65] = "0b001001010";
        ram[66] = "0b001010111";
        ram[67] = "0b001000001";
        ram[68] = "0b000101001";
        ram[69] = "0b111111010";
        ram[70] = "0b110111000";
        ram[71] = "0b110011111";
        ram[72] = "0b111110100";
        ram[73] = "0b001000111";
        ram[74] = "0b001010010";
        ram[75] = "0b001110110";
        ram[76] = "0b001010010";
        ram[77] = "0b000010001";
        ram[78] = "0b110001011";
        ram[79] = "0b111010000";
        ram[80] = "0b111011010";
        ram[81] = "0b111111011";
        ram[82] = "0b001000011";
        ram[83] = "0b001000001";
        ram[84] = "0b000100010";
        ram[85] = "0b001100010";
        ram[86] = "0b111011100";
        ram[87] = "0b111001110";
        ram[88] = "0b110011110";
        ram[89] = "0b101001001";
        ram[90] = "0b001001011";
        ram[91] = "0b010010000";
        ram[92] = "0b010011101";
        ram[93] = "0b001110000";
        ram[94] = "0b000011110";
        ram[95] = "0b110101000";
        ram[96] = "0b110011000";
        ram[97] = "0b110010000";
        ram[98] = "0b111000000";
        ram[99] = "0b001000111";
        ram[100] = "0b001011100";
        ram[101] = "0b000110100";
        ram[102] = "0b010000001";
        ram[103] = "0b010000010";


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


SC_MODULE(L3_wlo_218_L2_WEIb5t) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L3_wlo_218_L2_WEIb5t_ram* meminst;


SC_CTOR(L3_wlo_218_L2_WEIb5t) {
meminst = new L3_wlo_218_L2_WEIb5t_ram("L3_wlo_218_L2_WEIb5t_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L3_wlo_218_L2_WEIb5t() {
    delete meminst;
}


};//endmodule
#endif
