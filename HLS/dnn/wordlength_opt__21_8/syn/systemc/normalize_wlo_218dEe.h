// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __normalize_wlo_218dEe_H__
#define __normalize_wlo_218dEe_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct normalize_wlo_218dEe_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 13;
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


   SC_CTOR(normalize_wlo_218dEe_ram) {
        ram[0] = "0b1011010010111";
        ram[1] = "0b1011011010000";
        ram[2] = "0b1011011101001";
        ram[3] = "0b1011010111011";
        ram[4] = "0b1011010011100";
        ram[5] = "0b1011011000100";
        ram[6] = "0b1011011100100";
        ram[7] = "0b1011011001011";
        ram[8] = "0b1011010101011";
        ram[9] = "0b1011011000010";
        ram[10] = "0b1011011011100";
        ram[11] = "0b1011011001111";
        ram[12] = "0b1011010110100";
        ram[13] = "0b1011010111101";
        ram[14] = "0b1011011010110";
        ram[15] = "0b1011011001101";
        ram[16] = "0b1011010110010";
        ram[17] = "0b1011011000001";
        ram[18] = "0b1011011011100";
        ram[19] = "0b1011011001100";
        ram[20] = "0b1011010101000";
        ram[21] = "0b1011010111010";
        ram[22] = "0b1011011100000";
        ram[23] = "0b1011011010010";
        ram[24] = "0b1011010100010";
        ram[25] = "0b1011010101110";
        ram[26] = "0b1011011100100";
        ram[27] = "0b1011010100100";
        ram[28] = "0b1011010011111";
        ram[29] = "0b1011011011110";
        ram[30] = "0b1011011101111";
        ram[31] = "0b1011010110011";
        ram[32] = "0b1011010010001";
        ram[33] = "0b1011011000101";
        ram[34] = "0b1011011101110";
        ram[35] = "0b1011011000000";
        ram[36] = "0b1011010001100";
        ram[37] = "0b1011010100011";
        ram[38] = "0b1011011011000";
        ram[39] = "0b1011011010011";
        ram[40] = "0b1011010011011";
        ram[41] = "0b1011010001010";
        ram[42] = "0b1011010111100";
        ram[43] = "0b1011011100000";
        ram[44] = "0b1011010111101";
        ram[45] = "0b1011010000110";
        ram[46] = "0b1011010100010";
        ram[47] = "0b1011011100001";
        ram[48] = "0b1011011011011";
        ram[49] = "0b1011010010101";
        ram[50] = "0b1011010001001";
        ram[51] = "0b1011011001110";
        ram[52] = "0b1011011100110";
        ram[53] = "0b1011010101111";
        ram[54] = "0b1011010010111";
        ram[55] = "0b1011011001000";
        ram[56] = "0b1011011100111";
        ram[57] = "0b1011011000010";
        ram[58] = "0b1011010100111";
        ram[59] = "0b1011011000000";
        ram[60] = "0b1011011100000";
        ram[61] = "0b1011011001110";
        ram[62] = "0b1011010110100";
        ram[63] = "0b1011011000001";
        ram[64] = "0b1011011011010";
        ram[65] = "0b1011011010000";
        ram[66] = "0b1011010110110";
        ram[67] = "0b1011011000001";
        ram[68] = "0b1011011011010";
        ram[69] = "0b1011011001011";
        ram[70] = "0b1011010101110";
        ram[71] = "0b1011010111011";
        ram[72] = "0b1011011011111";
        ram[73] = "0b1011011001011";
        ram[74] = "0b1011010100101";
        ram[75] = "0b1011010110011";
        ram[76] = "0b1011011100011";
        ram[77] = "0b1011011010111";
        ram[78] = "0b1011010100110";
        ram[79] = "0b1011011100011";
        ram[80] = "0b1011011101000";
        ram[81] = "0b1011010101101";
        ram[82] = "0b1011010011001";
        ram[83] = "0b1011011010101";
        ram[84] = "0b1011011101111";
        ram[85] = "0b1011010111100";
        ram[86] = "0b1011010001011";
        ram[87] = "0b1011010110101";
        ram[88] = "0b1011011100011";
        ram[89] = "0b1011011000111";
        ram[90] = "0b1011010001111";
        ram[91] = "0b1011010010011";
        ram[92] = "0b1011011001001";
        ram[93] = "0b1011011011000";
        ram[94] = "0b1011010101101";
        ram[95] = "0b1011010001000";
        ram[96] = "0b1011010101110";
        ram[97] = "0b1011011100010";
        ram[98] = "0b1011011001111";
        ram[99] = "0b1011010001100";
        ram[100] = "0b1011010010110";
        ram[101] = "0b1011011011001";
        ram[102] = "0b1011011100100";
        ram[103] = "0b1011010100000";


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


SC_MODULE(normalize_wlo_218dEe) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 104;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


normalize_wlo_218dEe_ram* meminst;


SC_CTOR(normalize_wlo_218dEe) {
meminst = new normalize_wlo_218dEe_ram("normalize_wlo_218dEe_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~normalize_wlo_218dEe() {
    delete meminst;
}


};//endmodule
#endif
