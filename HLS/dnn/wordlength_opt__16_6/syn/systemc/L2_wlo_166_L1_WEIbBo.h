// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __L2_wlo_166_L1_WEIbBo_H__
#define __L2_wlo_166_L1_WEIbBo_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct L2_wlo_166_L1_WEIbBo_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 9;
  static const unsigned AddressRange = 52;
  static const unsigned AddressWidth = 6;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(L2_wlo_166_L1_WEIbBo_ram) {
        ram[0] = "0b000011000";
        ram[1] = "0b110111101";
        ram[2] = "0b111111001";
        ram[3] = "0b001010110";
        ram[4] = "0b110010000";
        ram[5] = "0b111101011";
        ram[6] = "0b000011011";
        ram[7] = "0b000100110";
        ram[8] = "0b011000011";
        ram[9] = "0b000001011";
        ram[10] = "0b111101101";
        ram[11] = "0b111100110";
        ram[12] = "0b001110101";
        ram[13] = "0b001011110";
        ram[14] = "0b111100111";
        ram[15] = "0b010010111";
        ram[16] = "0b111110011";
        ram[17] = "0b111110100";
        ram[18] = "0b110000110";
        ram[19] = "0b001100001";
        ram[20] = "0b001011100";
        ram[21] = "0b111011011";
        ram[22] = "0b110110100";
        ram[23] = "0b000111011";
        ram[24] = "0b000000101";
        ram[25] = "0b000110101";
        ram[26] = "0b101010000";
        ram[27] = "0b110000000";
        ram[28] = "0b000110001";
        ram[29] = "0b111100010";
        ram[30] = "0b000100000";
        ram[31] = "0b111010011";
        ram[32] = "0b111110010";
        ram[33] = "0b000110111";
        ram[34] = "0b001010111";
        ram[35] = "0b011111101";
        ram[36] = "0b111000100";
        ram[37] = "0b111110001";
        ram[38] = "0b010010100";
        ram[39] = "0b111110111";
        ram[40] = "0b000011011";
        ram[41] = "0b001000011";
        ram[42] = "0b111101100";
        ram[43] = "0b101000000";
        ram[44] = "0b000001011";
        ram[45] = "0b111100111";
        ram[46] = "0b111111010";
        ram[47] = "0b111110100";
        ram[48] = "0b111000000";
        ram[49] = "0b101110001";
        ram[50] = "0b100000010";
        ram[51] = "0b110101111";


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


SC_MODULE(L2_wlo_166_L1_WEIbBo) {


static const unsigned DataWidth = 9;
static const unsigned AddressRange = 52;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


L2_wlo_166_L1_WEIbBo_ram* meminst;


SC_CTOR(L2_wlo_166_L1_WEIbBo) {
meminst = new L2_wlo_166_L1_WEIbBo_ram("L2_wlo_166_L1_WEIbBo_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~L2_wlo_166_L1_WEIbBo() {
    delete meminst;
}


};//endmodule
#endif
