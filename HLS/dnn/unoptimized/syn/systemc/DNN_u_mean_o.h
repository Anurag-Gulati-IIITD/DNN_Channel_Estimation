// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __DNN_u_mean_o_H__
#define __DNN_u_mean_o_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct DNN_u_mean_o_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
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


   SC_CTOR(DNN_u_mean_o_ram) {
        ram[0] = "0b10111011001110000000011001101100";
        ram[1] = "0b10111010101011011100110100101101";
        ram[2] = "0b00111010001001000001101000100110";
        ram[3] = "0b00111011000110011010111010010010";
        ram[4] = "0b00111011010101000100010101100111";
        ram[5] = "0b00111011001111011100101011010001";
        ram[6] = "0b00111010101000110101000011010011";
        ram[7] = "0b10111010101000000010101110000100";
        ram[8] = "0b10111011011000100010101000101100";
        ram[9] = "0b10111011100010101100111000100101";
        ram[10] = "0b10111011010000000000010100111110";
        ram[11] = "0b00110111110000001111000000100000";
        ram[12] = "0b00111011010100000111100001010011";
        ram[13] = "0b00111011100111110011100000111111";
        ram[14] = "0b00111011100001100111101011011001";
        ram[15] = "0b00111010101001001100000111101100";
        ram[16] = "0b10111011000100101001101010100010";
        ram[17] = "0b10111011100101110110001101011110";
        ram[18] = "0b10111011100110110101101001100100";
        ram[19] = "0b10111011001010011100110111000100";
        ram[20] = "0b00111010010001010010000111011110";
        ram[21] = "0b00111011011100011101001111101101";
        ram[22] = "0b00111011100111110011100000111111";
        ram[23] = "0b00111011011101011110010000011101";
        ram[24] = "0b00111010011100010110111101000100";
        ram[25] = "0b10111011000101100100011000101000";
        ram[26] = "0b10111011100100100101111111101001";
        ram[27] = "0b10111011001000111101011100001010";
        ram[28] = "0b00111010000101111100100000001000";
        ram[29] = "0b00111011010111011110011110100111";
        ram[30] = "0b00111011100110010110001100010011";
        ram[31] = "0b00111011011111010100101111110001";
        ram[32] = "0b00111010101000100100010001100011";
        ram[33] = "0b10111011000010000001111001000111";
        ram[34] = "0b10111011100101001011101111100100";
        ram[35] = "0b10111011100111110111001011110111";
        ram[36] = "0b10111011001100110111000000000100";
        ram[37] = "0b00111010011001101010111111001101";
        ram[38] = "0b00111011100001101010010011001010";
        ram[39] = "0b00111011101010010110000010110111";
        ram[40] = "0b00111011011000101111001110000000";
        ram[41] = "0b00110101100001100011011110111101";
        ram[42] = "0b10111011010100101100001110000111";
        ram[43] = "0b10111011100100011101100110110010";
        ram[44] = "0b10111011010101110100100100101000";
        ram[45] = "0b10111010001110111011000111110010";
        ram[46] = "0b00111010110110110000010101110101";
        ram[47] = "0b00111011001101101000010010001100";
        ram[48] = "0b00111011001001011101111100100010";
        ram[49] = "0b00111010110001011110101100110001";
        ram[50] = "0b00111001101100101100100000111111";
        ram[51] = "0b10111010001111111010000010010100";
        ram[52] = "0b00111010101111011010100101000011";
        ram[53] = "0b00111011001110001010111000110010";
        ram[54] = "0b00111011010001110101110001001011";
        ram[55] = "0b00111011000010011101001001111100";
        ram[56] = "0b00111001100111001100001100011010";
        ram[57] = "0b10111010111010111110110111111010";
        ram[58] = "0b10111011010111011110011110100111";
        ram[59] = "0b10111011011011011110010101001011";
        ram[60] = "0b10111011000011000011111100111110";
        ram[61] = "0b00111010001001001110001101111010";
        ram[62] = "0b00111011010111100110110111011111";
        ram[63] = "0b00111011100110001001000101011100";
        ram[64] = "0b00111011011010110001001111100000";
        ram[65] = "0b00111010000111100101010111000001";
        ram[66] = "0b10111011001101110000101011000100";
        ram[67] = "0b10111011100111101010000101000000";
        ram[68] = "0b10111011100100110000011110101111";
        ram[69] = "0b10111010111111001001001101100100";
        ram[70] = "0b00111010110010011111101101100001";
        ram[71] = "0b00111011100010100111000111011110";
        ram[72] = "0b00111011100111110111101101011011";
        ram[73] = "0b00111011010100101001000100110010";
        ram[74] = "0b00111000101011100001000001001001";
        ram[75] = "0b10111011010001110010100111110110";
        ram[76] = "0b10111011100110100011110100101110";
        ram[77] = "0b10111011100010001100111001110000";
        ram[78] = "0b00111010110000000010011011001100";
        ram[79] = "0b00111011100000011001000010001110";
        ram[80] = "0b00111011100101111011011101000001";
        ram[81] = "0b00111011010100101011001011000000";
        ram[82] = "0b00111001101100011011101111001111";
        ram[83] = "0b10111011001100111011001100100000";
        ram[84] = "0b10111011100110000010110010110010";
        ram[85] = "0b10111011100100010001100011000010";
        ram[86] = "0b10111011000001110000000100010001";
        ram[87] = "0b00111010101111010010001100001100";
        ram[88] = "0b00111011100011110001000010101010";
        ram[89] = "0b00111011101010000001100110001111";
        ram[90] = "0b00111011010100101101010001001110";
        ram[91] = "0b10111001110100101100001110000111";
        ram[92] = "0b10111011011101001110100001110101";
        ram[93] = "0b10111011101000100001001000001110";
        ram[94] = "0b10111011011000111100110110011010";
        ram[95] = "0b10111001101111010100010010011010";
        ram[96] = "0b00111011001001011000101100111111";
        ram[97] = "0b00111011011100110011010001000000";
        ram[98] = "0b00111011010000010011001100111100";
        ram[99] = "0b00111010100011111100100100110110";
        ram[100] = "0b10111010001101010110011101010101";
        ram[101] = "0b10111010111001101010111111001101";
        ram[102] = "0b10111011000010010100110001000100";
        ram[103] = "0b10111010111111010001100110011100";


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


SC_MODULE(DNN_u_mean_o) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


DNN_u_mean_o_ram* meminst;


SC_CTOR(DNN_u_mean_o) {
meminst = new DNN_u_mean_o_ram("DNN_u_mean_o_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~DNN_u_mean_o() {
    delete meminst;
}


};//endmodule
#endif
