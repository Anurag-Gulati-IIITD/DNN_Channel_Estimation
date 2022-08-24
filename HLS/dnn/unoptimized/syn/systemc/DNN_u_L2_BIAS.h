// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __DNN_u_L2_BIAS_H__
#define __DNN_u_L2_BIAS_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct DNN_u_L2_BIAS_ram : public sc_core::sc_module {

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


   SC_CTOR(DNN_u_L2_BIAS_ram) {
        ram[0] = "0b00111110001000001111011110111010";
        ram[1] = "0b00111101100100111101100111101100";
        ram[2] = "0b10111101000100010010100001111100";
        ram[3] = "0b10111110000000010101101000001000";
        ram[4] = "0b10111101101001111011101010101010";
        ram[5] = "0b10111010111111111111101111001110";
        ram[6] = "0b00111101101001110111111101101011";
        ram[7] = "0b00111101000001111001001011010001";
        ram[8] = "0b10111011100000011110110011010101";
        ram[9] = "0b10111100111010110010111100100011";
        ram[10] = "0b00111010100110010001011110010100";
        ram[11] = "0b00111101000101001000100110001111";
        ram[12] = "0b00111101000000000110011111001111";
        ram[13] = "0b10111100010010100001010010001100";
        ram[14] = "0b10111101100101110101001110100100";
        ram[15] = "0b10111101101100111011011011001100";
        ram[16] = "0b10111101001011010011111010010010";
        ram[17] = "0b00111101011100000111111000010111";
        ram[18] = "0b00111101101101110000110001010110";
        ram[19] = "0b00111101100000100100101110111010";
        ram[20] = "0b00111100101000001001010001100000";
        ram[21] = "0b10111100101110001000110010100100";
        ram[22] = "0b00111011100110111010010111100011";
        ram[23] = "0b00111100010010101011001111101110";
        ram[24] = "0b00111011111011000011000100010110";
        ram[25] = "0b10111101000010010110010101101111";
        ram[26] = "0b10111101010101001111000101011110";
        ram[27] = "0b00111101000110000111010100001100";
        ram[28] = "0b00111101101111010110110011111000";
        ram[29] = "0b00111101110110011010111100011001";
        ram[30] = "0b00111101001010010100001001001110";
        ram[31] = "0b10111101000101000011100111011110";
        ram[32] = "0b10111101100011100110010000101100";
        ram[33] = "0b10111101100000011001101110010001";
        ram[34] = "0b10111101010010100010001100111010";
        ram[35] = "0b00111011100001001101011101101011";
        ram[36] = "0b00111011101101011111010111110001";
        ram[37] = "0b00111011001110001011111011111001";
        ram[38] = "0b00111100111010100001010000000101";
        ram[39] = "0b00111100111001110111010011101111";
        ram[40] = "0b00111100101000001111010011011000";
        ram[41] = "0b00111100000100110100011010011001";
        ram[42] = "0b00111011100111011101011111101101";
        ram[43] = "0b00111100110101011111010101101010";
        ram[44] = "0b10111100100001010010010100000011";
        ram[45] = "0b10111100100100111010100100101010";
        ram[46] = "0b10111101100101111100010111101111";
        ram[47] = "0b10111101100000110011100010110100";
        ram[48] = "0b10111100001101011100001110011100";
        ram[49] = "0b00111101110011110011110111000000";
        ram[50] = "0b00111110000001110110010011110001";
        ram[51] = "0b00111101101101001110111101000110";
        ram[52] = "0b00111011110001001011110100110100";
        ram[53] = "0b10111101101011101011111111101100";
        ram[54] = "0b10111110000001000101011100111010";
        ram[55] = "0b10111101000011111111000000000010";
        ram[56] = "0b00111101100010100101100000101110";
        ram[57] = "0b00111101101100000100011110010001";
        ram[58] = "0b00111100111101110101110110011010";
        ram[59] = "0b10111100101001101001101111100001";
        ram[60] = "0b10111101000111110100001010111011";
        ram[61] = "0b10111100010101100011100010000110";
        ram[62] = "0b00111101001001001111001000101000";
        ram[63] = "0b10111010000101100111100001111101";
        ram[64] = "0b10111101000101010010001110110011";
        ram[65] = "0b10111101100111000110100001100110";
        ram[66] = "0b10111101000011001111111100100010";
        ram[67] = "0b00111101000100000011001000010010";
        ram[68] = "0b00111101110011111100100100110110";
        ram[69] = "0b00111101100001110001000001000101";
        ram[70] = "0b00111100100011101110011010111000";
        ram[71] = "0b10111100100111011100001011110100";
        ram[72] = "0b10111101001111101101100001001101";
        ram[73] = "0b00111011110101000001101101110110";
        ram[74] = "0b00111100011110111010010001010001";
        ram[75] = "0b10111011111110011100000111111000";
        ram[76] = "0b10111101010110110110001011000111";
        ram[77] = "0b10111101001111111010010111010011";
        ram[78] = "0b00111101100111110000010001010111";
        ram[79] = "0b00111101111011001010110011010010";
        ram[80] = "0b00111101100011001111000011111010";
        ram[81] = "0b10111101000111010100010100100000";
        ram[82] = "0b10111101101001011000110101011000";
        ram[83] = "0b10111101101011110101000100100110";
        ram[84] = "0b10111101010010001011010000111001";
        ram[85] = "0b00111100010100001001010110101111";
        ram[86] = "0b00111100111010101011110111100100";
        ram[87] = "0b00111100110010000001010011010111";
        ram[88] = "0b00111100100011100100001100100100";
        ram[89] = "0b00111011111011010101011010110000";
        ram[90] = "0b00111101010000000000111010101110";
        ram[91] = "0b00111011000000010100110101110010";
        ram[92] = "0b10111011001111110011101111101011";
        ram[93] = "0b00111011010101011011011010000000";
        ram[94] = "0b10111100001010000011101100011101";
        ram[95] = "0b10111100110000111110100101100100";
        ram[96] = "0b10111101001001111011111001010101";
        ram[97] = "0b10111101001101100000000001101101";
        ram[98] = "0b00111011010001100110000010100010";
        ram[99] = "0b00111101100100010001111010000110";
        ram[100] = "0b00111101111101111100001111010111";
        ram[101] = "0b00111101011111101000111011100111";
        ram[102] = "0b10111010100000011010000101010101";
        ram[103] = "0b10111110000000000110111111101111";


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


SC_MODULE(DNN_u_L2_BIAS) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


DNN_u_L2_BIAS_ram* meminst;


SC_CTOR(DNN_u_L2_BIAS) {
meminst = new DNN_u_L2_BIAS_ram("DNN_u_L2_BIAS_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~DNN_u_L2_BIAS() {
    delete meminst;
}


};//endmodule
#endif
