// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _LS_estimator_HH_
#define _LS_estimator_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "LS_estimator_faddhbi.h"
#include "LS_estimator_fsubibs.h"
#include "LS_estimator_fmuljbC.h"
#include "LS_estimator_fdivkbM.h"
#include "LS_estimator_preabkb.h"

namespace ap_rtl {

struct LS_estimator : public sc_module {
    // Port declarations 10
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_lv<64> > in_stream_TDATA;
    sc_in< sc_logic > in_stream_TVALID;
    sc_out< sc_logic > in_stream_TREADY;
    sc_in< sc_lv<1> > in_stream_TLAST;
    sc_out< sc_lv<64> > out_stream_TDATA;
    sc_out< sc_logic > out_stream_TVALID;
    sc_in< sc_logic > out_stream_TREADY;
    sc_out< sc_lv<1> > out_stream_TLAST;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    LS_estimator(sc_module_name name);
    SC_HAS_PROCESS(LS_estimator);

    ~LS_estimator();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    LS_estimator_preabkb* preamble_M_real_U;
    LS_estimator_preabkb* preamble_M_imag_U;
    LS_estimator_preabkb* training_sym_M_real_U;
    LS_estimator_preabkb* training_sym_M_imag_U;
    LS_estimator_preabkb* LS_out_M_real_U;
    LS_estimator_preabkb* LS_out_M_imag_U;
    LS_estimator_faddhbi<1,5,32,32,32>* LS_estimator_faddhbi_U1;
    LS_estimator_faddhbi<1,5,32,32,32>* LS_estimator_faddhbi_U2;
    LS_estimator_fsubibs<1,5,32,32,32>* LS_estimator_fsubibs_U3;
    LS_estimator_fmuljbC<1,4,32,32,32>* LS_estimator_fmuljbC_U4;
    LS_estimator_fmuljbC<1,4,32,32,32>* LS_estimator_fmuljbC_U5;
    LS_estimator_fmuljbC<1,4,32,32,32>* LS_estimator_fmuljbC_U6;
    LS_estimator_fmuljbC<1,4,32,32,32>* LS_estimator_fmuljbC_U7;
    LS_estimator_fmuljbC<1,4,32,32,32>* LS_estimator_fmuljbC_U8;
    LS_estimator_fmuljbC<1,4,32,32,32>* LS_estimator_fmuljbC_U9;
    LS_estimator_fdivkbM<1,16,32,32,32>* LS_estimator_fdivkbM_U10;
    LS_estimator_fdivkbM<1,16,32,32,32>* LS_estimator_fdivkbM_U11;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_lv<64> > in_stream_V_data_0_data_out;
    sc_signal< sc_logic > in_stream_V_data_0_vld_in;
    sc_signal< sc_logic > in_stream_V_data_0_vld_out;
    sc_signal< sc_logic > in_stream_V_data_0_ack_in;
    sc_signal< sc_logic > in_stream_V_data_0_ack_out;
    sc_signal< sc_lv<64> > in_stream_V_data_0_payload_A;
    sc_signal< sc_lv<64> > in_stream_V_data_0_payload_B;
    sc_signal< sc_logic > in_stream_V_data_0_sel_rd;
    sc_signal< sc_logic > in_stream_V_data_0_sel_wr;
    sc_signal< sc_logic > in_stream_V_data_0_sel;
    sc_signal< sc_logic > in_stream_V_data_0_load_A;
    sc_signal< sc_logic > in_stream_V_data_0_load_B;
    sc_signal< sc_lv<2> > in_stream_V_data_0_state;
    sc_signal< sc_logic > in_stream_V_data_0_state_cmp_full;
    sc_signal< sc_logic > in_stream_V_last_V_0_vld_in;
    sc_signal< sc_logic > in_stream_V_last_V_0_ack_out;
    sc_signal< sc_lv<2> > in_stream_V_last_V_0_state;
    sc_signal< sc_lv<64> > out_stream_V_data_1_data_out;
    sc_signal< sc_logic > out_stream_V_data_1_vld_in;
    sc_signal< sc_logic > out_stream_V_data_1_vld_out;
    sc_signal< sc_logic > out_stream_V_data_1_ack_in;
    sc_signal< sc_logic > out_stream_V_data_1_ack_out;
    sc_signal< sc_lv<64> > out_stream_V_data_1_payload_A;
    sc_signal< sc_lv<64> > out_stream_V_data_1_payload_B;
    sc_signal< sc_logic > out_stream_V_data_1_sel_rd;
    sc_signal< sc_logic > out_stream_V_data_1_sel_wr;
    sc_signal< sc_logic > out_stream_V_data_1_sel;
    sc_signal< sc_logic > out_stream_V_data_1_load_A;
    sc_signal< sc_logic > out_stream_V_data_1_load_B;
    sc_signal< sc_lv<2> > out_stream_V_data_1_state;
    sc_signal< sc_logic > out_stream_V_data_1_state_cmp_full;
    sc_signal< sc_lv<1> > out_stream_V_last_V_1_data_out;
    sc_signal< sc_logic > out_stream_V_last_V_1_vld_in;
    sc_signal< sc_logic > out_stream_V_last_V_1_vld_out;
    sc_signal< sc_logic > out_stream_V_last_V_1_ack_in;
    sc_signal< sc_logic > out_stream_V_last_V_1_ack_out;
    sc_signal< sc_lv<1> > out_stream_V_last_V_1_payload_A;
    sc_signal< sc_lv<1> > out_stream_V_last_V_1_payload_B;
    sc_signal< sc_logic > out_stream_V_last_V_1_sel_rd;
    sc_signal< sc_logic > out_stream_V_last_V_1_sel_wr;
    sc_signal< sc_logic > out_stream_V_last_V_1_sel;
    sc_signal< sc_logic > out_stream_V_last_V_1_load_A;
    sc_signal< sc_logic > out_stream_V_last_V_1_load_B;
    sc_signal< sc_lv<2> > out_stream_V_last_V_1_state;
    sc_signal< sc_logic > out_stream_V_last_V_1_state_cmp_full;
    sc_signal< sc_logic > in_stream_TDATA_blk_n;
    sc_signal< sc_lv<10> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > icmp_ln30_fu_469_p2;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<1> > icmp_ln36_fu_501_p2;
    sc_signal< sc_logic > out_stream_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter1;
    sc_signal< bool > ap_block_pp1_stage0;
    sc_signal< sc_lv<1> > icmp_ln49_reg_754;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter2;
    sc_signal< sc_lv<1> > icmp_ln49_reg_754_pp1_iter1_reg;
    sc_signal< sc_lv<6> > i5_0_reg_335;
    sc_signal< sc_lv<6> > i6_0_reg_346;
    sc_signal< sc_lv<6> > add_ln25_fu_415_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<6> > add_ln25_1_fu_433_p2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<6> > add_ln27_fu_451_p2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<6> > i_fu_475_p2;
    sc_signal< bool > ap_block_state5;
    sc_signal< bool > ap_block_state6;
    sc_signal< sc_lv<6> > i_1_fu_507_p2;
    sc_signal< sc_lv<1> > icmp_ln43_fu_533_p2;
    sc_signal< sc_lv<1> > icmp_ln43_reg_635;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state8_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state9_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state10_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state11_pp0_stage0_iter4;
    sc_signal< bool > ap_block_state12_pp0_stage0_iter5;
    sc_signal< bool > ap_block_state13_pp0_stage0_iter6;
    sc_signal< bool > ap_block_state14_pp0_stage0_iter7;
    sc_signal< bool > ap_block_state15_pp0_stage0_iter8;
    sc_signal< bool > ap_block_state16_pp0_stage0_iter9;
    sc_signal< bool > ap_block_state17_pp0_stage0_iter10;
    sc_signal< bool > ap_block_state18_pp0_stage0_iter11;
    sc_signal< bool > ap_block_state19_pp0_stage0_iter12;
    sc_signal< bool > ap_block_state20_pp0_stage0_iter13;
    sc_signal< bool > ap_block_state21_pp0_stage0_iter14;
    sc_signal< bool > ap_block_state22_pp0_stage0_iter15;
    sc_signal< bool > ap_block_state23_pp0_stage0_iter16;
    sc_signal< bool > ap_block_state24_pp0_stage0_iter17;
    sc_signal< bool > ap_block_state25_pp0_stage0_iter18;
    sc_signal< bool > ap_block_state26_pp0_stage0_iter19;
    sc_signal< bool > ap_block_state27_pp0_stage0_iter20;
    sc_signal< bool > ap_block_state28_pp0_stage0_iter21;
    sc_signal< bool > ap_block_state29_pp0_stage0_iter22;
    sc_signal< bool > ap_block_state30_pp0_stage0_iter23;
    sc_signal< bool > ap_block_state31_pp0_stage0_iter24;
    sc_signal< bool > ap_block_state32_pp0_stage0_iter25;
    sc_signal< bool > ap_block_state33_pp0_stage0_iter26;
    sc_signal< bool > ap_block_state34_pp0_stage0_iter27;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln43_reg_635_pp0_iter1_reg;
    sc_signal< sc_lv<1> > icmp_ln43_reg_635_pp0_iter2_reg;
    sc_signal< sc_lv<1> > icmp_ln43_reg_635_pp0_iter3_reg;
    sc_signal< sc_lv<1> > icmp_ln43_reg_635_pp0_iter4_reg;
    sc_signal< sc_lv<1> > icmp_ln43_reg_635_pp0_iter5_reg;
    sc_signal< sc_lv<1> > icmp_ln43_reg_635_pp0_iter6_reg;
    sc_signal< sc_lv<1> > icmp_ln43_reg_635_pp0_iter7_reg;
    sc_signal< sc_lv<1> > icmp_ln43_reg_635_pp0_iter8_reg;
    sc_signal< sc_lv<1> > icmp_ln43_reg_635_pp0_iter9_reg;
    sc_signal< sc_lv<1> > icmp_ln43_reg_635_pp0_iter10_reg;
    sc_signal< sc_lv<1> > icmp_ln43_reg_635_pp0_iter11_reg;
    sc_signal< sc_lv<1> > icmp_ln43_reg_635_pp0_iter12_reg;
    sc_signal< sc_lv<1> > icmp_ln43_reg_635_pp0_iter13_reg;
    sc_signal< sc_lv<1> > icmp_ln43_reg_635_pp0_iter14_reg;
    sc_signal< sc_lv<1> > icmp_ln43_reg_635_pp0_iter15_reg;
    sc_signal< sc_lv<1> > icmp_ln43_reg_635_pp0_iter16_reg;
    sc_signal< sc_lv<1> > icmp_ln43_reg_635_pp0_iter17_reg;
    sc_signal< sc_lv<1> > icmp_ln43_reg_635_pp0_iter18_reg;
    sc_signal< sc_lv<1> > icmp_ln43_reg_635_pp0_iter19_reg;
    sc_signal< sc_lv<1> > icmp_ln43_reg_635_pp0_iter20_reg;
    sc_signal< sc_lv<1> > icmp_ln43_reg_635_pp0_iter21_reg;
    sc_signal< sc_lv<1> > icmp_ln43_reg_635_pp0_iter22_reg;
    sc_signal< sc_lv<1> > icmp_ln43_reg_635_pp0_iter23_reg;
    sc_signal< sc_lv<1> > icmp_ln43_reg_635_pp0_iter24_reg;
    sc_signal< sc_lv<1> > icmp_ln43_reg_635_pp0_iter25_reg;
    sc_signal< sc_lv<1> > icmp_ln43_reg_635_pp0_iter26_reg;
    sc_signal< sc_lv<6> > i_2_fu_539_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<64> > zext_ln45_fu_545_p1;
    sc_signal< sc_lv<64> > zext_ln45_reg_644;
    sc_signal< sc_lv<64> > zext_ln45_reg_644_pp0_iter1_reg;
    sc_signal< sc_lv<64> > zext_ln45_reg_644_pp0_iter2_reg;
    sc_signal< sc_lv<64> > zext_ln45_reg_644_pp0_iter3_reg;
    sc_signal< sc_lv<64> > zext_ln45_reg_644_pp0_iter4_reg;
    sc_signal< sc_lv<64> > zext_ln45_reg_644_pp0_iter5_reg;
    sc_signal< sc_lv<64> > zext_ln45_reg_644_pp0_iter6_reg;
    sc_signal< sc_lv<64> > zext_ln45_reg_644_pp0_iter7_reg;
    sc_signal< sc_lv<64> > zext_ln45_reg_644_pp0_iter8_reg;
    sc_signal< sc_lv<64> > zext_ln45_reg_644_pp0_iter9_reg;
    sc_signal< sc_lv<64> > zext_ln45_reg_644_pp0_iter10_reg;
    sc_signal< sc_lv<64> > zext_ln45_reg_644_pp0_iter11_reg;
    sc_signal< sc_lv<64> > zext_ln45_reg_644_pp0_iter12_reg;
    sc_signal< sc_lv<64> > zext_ln45_reg_644_pp0_iter13_reg;
    sc_signal< sc_lv<64> > zext_ln45_reg_644_pp0_iter14_reg;
    sc_signal< sc_lv<64> > zext_ln45_reg_644_pp0_iter15_reg;
    sc_signal< sc_lv<64> > zext_ln45_reg_644_pp0_iter16_reg;
    sc_signal< sc_lv<64> > zext_ln45_reg_644_pp0_iter17_reg;
    sc_signal< sc_lv<64> > zext_ln45_reg_644_pp0_iter18_reg;
    sc_signal< sc_lv<64> > zext_ln45_reg_644_pp0_iter19_reg;
    sc_signal< sc_lv<64> > zext_ln45_reg_644_pp0_iter20_reg;
    sc_signal< sc_lv<64> > zext_ln45_reg_644_pp0_iter21_reg;
    sc_signal< sc_lv<64> > zext_ln45_reg_644_pp0_iter22_reg;
    sc_signal< sc_lv<64> > zext_ln45_reg_644_pp0_iter23_reg;
    sc_signal< sc_lv<64> > zext_ln45_reg_644_pp0_iter24_reg;
    sc_signal< sc_lv<64> > zext_ln45_reg_644_pp0_iter25_reg;
    sc_signal< sc_lv<64> > zext_ln45_reg_644_pp0_iter26_reg;
    sc_signal< sc_lv<32> > preamble_M_real_q0;
    sc_signal< sc_lv<32> > p_r_M_real_reg_670;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_lv<32> > preamble_M_imag_q0;
    sc_signal< sc_lv<32> > p_r_M_imag_reg_676;
    sc_signal< sc_lv<32> > training_sym_M_real_q0;
    sc_signal< sc_lv<32> > p_t_real_reg_682;
    sc_signal< sc_lv<32> > training_sym_M_imag_q0;
    sc_signal< sc_lv<32> > p_t_imag_reg_690;
    sc_signal< sc_lv<32> > grp_fu_369_p2;
    sc_signal< sc_lv<32> > tmp_i_i_reg_698;
    sc_signal< sc_lv<32> > grp_fu_373_p2;
    sc_signal< sc_lv<32> > tmp_1_i_i_reg_703;
    sc_signal< sc_lv<32> > grp_fu_377_p2;
    sc_signal< sc_lv<32> > tmp_3_i_i_reg_708;
    sc_signal< sc_lv<32> > grp_fu_381_p2;
    sc_signal< sc_lv<32> > tmp_4_i_i_reg_713;
    sc_signal< sc_lv<32> > grp_fu_385_p2;
    sc_signal< sc_lv<32> > tmp_6_i_i_reg_718;
    sc_signal< sc_lv<32> > grp_fu_389_p2;
    sc_signal< sc_lv<32> > tmp_7_i_i_reg_723;
    sc_signal< sc_lv<32> > grp_fu_357_p2;
    sc_signal< sc_lv<32> > tmp_2_i_i_reg_728;
    sc_signal< sc_lv<32> > grp_fu_361_p2;
    sc_signal< sc_lv<32> > tmp_5_i_i_reg_733;
    sc_signal< sc_lv<32> > grp_fu_365_p2;
    sc_signal< sc_lv<32> > tmp_8_i_i_reg_739;
    sc_signal< sc_lv<32> > grp_fu_393_p2;
    sc_signal< sc_lv<32> > complex_M_real_writ_reg_744;
    sc_signal< sc_lv<32> > grp_fu_397_p2;
    sc_signal< sc_lv<32> > complex_M_imag_writ_reg_749;
    sc_signal< sc_lv<1> > icmp_ln49_fu_553_p2;
    sc_signal< bool > ap_block_state36_pp1_stage0_iter0;
    sc_signal< bool > ap_block_state37_pp1_stage0_iter1;
    sc_signal< bool > ap_block_state37_io;
    sc_signal< bool > ap_block_state38_pp1_stage0_iter2;
    sc_signal< bool > ap_block_state38_io;
    sc_signal< bool > ap_block_pp1_stage0_11001;
    sc_signal< sc_lv<6> > i_3_fu_559_p2;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter0;
    sc_signal< sc_lv<1> > tmp_last_V_fu_571_p2;
    sc_signal< sc_lv<1> > tmp_last_V_reg_773;
    sc_signal< sc_lv<64> > tmp_data_2_fu_585_p3;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state7;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter5;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter6;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter7;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter8;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter9;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter10;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter11;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter12;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter13;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter14;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter15;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter16;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter17;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter18;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter19;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter20;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter21;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter22;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter23;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter24;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter25;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter26;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter27;
    sc_signal< sc_logic > ap_CS_fsm_state35;
    sc_signal< bool > ap_block_pp1_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp1_exit_iter0_state36;
    sc_signal< sc_lv<6> > preamble_M_real_address0;
    sc_signal< sc_logic > preamble_M_real_ce0;
    sc_signal< sc_logic > preamble_M_real_we0;
    sc_signal< sc_lv<32> > preamble_M_real_d0;
    sc_signal< sc_lv<6> > preamble_M_imag_address0;
    sc_signal< sc_logic > preamble_M_imag_ce0;
    sc_signal< sc_logic > preamble_M_imag_we0;
    sc_signal< sc_lv<32> > preamble_M_imag_d0;
    sc_signal< sc_lv<6> > training_sym_M_real_address0;
    sc_signal< sc_logic > training_sym_M_real_ce0;
    sc_signal< sc_logic > training_sym_M_real_we0;
    sc_signal< sc_lv<32> > training_sym_M_real_d0;
    sc_signal< sc_lv<6> > training_sym_M_imag_address0;
    sc_signal< sc_logic > training_sym_M_imag_ce0;
    sc_signal< sc_logic > training_sym_M_imag_we0;
    sc_signal< sc_lv<32> > training_sym_M_imag_d0;
    sc_signal< sc_lv<6> > LS_out_M_real_address0;
    sc_signal< sc_logic > LS_out_M_real_ce0;
    sc_signal< sc_logic > LS_out_M_real_we0;
    sc_signal< sc_lv<32> > LS_out_M_real_d0;
    sc_signal< sc_lv<32> > LS_out_M_real_q0;
    sc_signal< sc_lv<6> > LS_out_M_imag_address0;
    sc_signal< sc_logic > LS_out_M_imag_ce0;
    sc_signal< sc_logic > LS_out_M_imag_we0;
    sc_signal< sc_lv<32> > LS_out_M_imag_d0;
    sc_signal< sc_lv<32> > LS_out_M_imag_q0;
    sc_signal< sc_lv<6> > phi_ln25_reg_280;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<1> > icmp_ln25_fu_427_p2;
    sc_signal< sc_lv<6> > phi_ln25_1_reg_291;
    sc_signal< sc_lv<1> > icmp_ln25_1_fu_445_p2;
    sc_signal< sc_lv<6> > phi_ln27_reg_302;
    sc_signal< sc_lv<1> > icmp_ln27_fu_463_p2;
    sc_signal< sc_lv<6> > i_0_reg_313;
    sc_signal< sc_lv<6> > i3_0_reg_324;
    sc_signal< sc_lv<64> > zext_ln25_fu_421_p1;
    sc_signal< sc_lv<64> > zext_ln25_1_fu_439_p1;
    sc_signal< sc_lv<64> > zext_ln27_fu_457_p1;
    sc_signal< sc_lv<64> > zext_ln33_fu_495_p1;
    sc_signal< sc_lv<64> > zext_ln39_fu_527_p1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<64> > zext_ln53_fu_565_p1;
    sc_signal< bool > ap_block_pp1_stage0_01001;
    sc_signal< sc_lv<32> > bitcast_ln9_fu_485_p1;
    sc_signal< sc_lv<32> > bitcast_ln9_1_fu_490_p1;
    sc_signal< sc_lv<32> > bitcast_ln9_2_fu_517_p1;
    sc_signal< sc_lv<32> > bitcast_ln9_3_fu_522_p1;
    sc_signal< sc_lv<32> > trunc_ln9_fu_481_p1;
    sc_signal< sc_lv<32> > grp_fu_405_p4;
    sc_signal< sc_lv<32> > trunc_ln9_1_fu_513_p1;
    sc_signal< sc_lv<32> > bitcast_ln162_1_fu_581_p1;
    sc_signal< sc_lv<32> > bitcast_ln162_fu_577_p1;
    sc_signal< sc_lv<10> > ap_NS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state39;
    sc_signal< bool > ap_block_state39;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_logic > ap_idle_pp1;
    sc_signal< sc_logic > ap_enable_pp1;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<10> ap_ST_fsm_state1;
    static const sc_lv<10> ap_ST_fsm_state2;
    static const sc_lv<10> ap_ST_fsm_state3;
    static const sc_lv<10> ap_ST_fsm_state4;
    static const sc_lv<10> ap_ST_fsm_state5;
    static const sc_lv<10> ap_ST_fsm_state6;
    static const sc_lv<10> ap_ST_fsm_pp0_stage0;
    static const sc_lv<10> ap_ST_fsm_state35;
    static const sc_lv<10> ap_ST_fsm_pp1_stage0;
    static const sc_lv<10> ap_ST_fsm_state39;
    static const bool ap_const_boolean_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_8;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<6> ap_const_lv6_33;
    static const sc_lv<6> ap_const_lv6_34;
    static const sc_lv<32> ap_const_lv32_9;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_LS_out_M_imag_address0();
    void thread_LS_out_M_imag_ce0();
    void thread_LS_out_M_imag_d0();
    void thread_LS_out_M_imag_we0();
    void thread_LS_out_M_real_address0();
    void thread_LS_out_M_real_ce0();
    void thread_LS_out_M_real_d0();
    void thread_LS_out_M_real_we0();
    void thread_add_ln25_1_fu_433_p2();
    void thread_add_ln25_fu_415_p2();
    void thread_add_ln27_fu_451_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp1_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state35();
    void thread_ap_CS_fsm_state39();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp1_stage0();
    void thread_ap_block_pp1_stage0_01001();
    void thread_ap_block_pp1_stage0_11001();
    void thread_ap_block_pp1_stage0_subdone();
    void thread_ap_block_state10_pp0_stage0_iter3();
    void thread_ap_block_state11_pp0_stage0_iter4();
    void thread_ap_block_state12_pp0_stage0_iter5();
    void thread_ap_block_state13_pp0_stage0_iter6();
    void thread_ap_block_state14_pp0_stage0_iter7();
    void thread_ap_block_state15_pp0_stage0_iter8();
    void thread_ap_block_state16_pp0_stage0_iter9();
    void thread_ap_block_state17_pp0_stage0_iter10();
    void thread_ap_block_state18_pp0_stage0_iter11();
    void thread_ap_block_state19_pp0_stage0_iter12();
    void thread_ap_block_state20_pp0_stage0_iter13();
    void thread_ap_block_state21_pp0_stage0_iter14();
    void thread_ap_block_state22_pp0_stage0_iter15();
    void thread_ap_block_state23_pp0_stage0_iter16();
    void thread_ap_block_state24_pp0_stage0_iter17();
    void thread_ap_block_state25_pp0_stage0_iter18();
    void thread_ap_block_state26_pp0_stage0_iter19();
    void thread_ap_block_state27_pp0_stage0_iter20();
    void thread_ap_block_state28_pp0_stage0_iter21();
    void thread_ap_block_state29_pp0_stage0_iter22();
    void thread_ap_block_state30_pp0_stage0_iter23();
    void thread_ap_block_state31_pp0_stage0_iter24();
    void thread_ap_block_state32_pp0_stage0_iter25();
    void thread_ap_block_state33_pp0_stage0_iter26();
    void thread_ap_block_state34_pp0_stage0_iter27();
    void thread_ap_block_state36_pp1_stage0_iter0();
    void thread_ap_block_state37_io();
    void thread_ap_block_state37_pp1_stage0_iter1();
    void thread_ap_block_state38_io();
    void thread_ap_block_state38_pp1_stage0_iter2();
    void thread_ap_block_state39();
    void thread_ap_block_state5();
    void thread_ap_block_state6();
    void thread_ap_block_state7_pp0_stage0_iter0();
    void thread_ap_block_state8_pp0_stage0_iter1();
    void thread_ap_block_state9_pp0_stage0_iter2();
    void thread_ap_condition_pp0_exit_iter0_state7();
    void thread_ap_condition_pp1_exit_iter0_state36();
    void thread_ap_enable_pp0();
    void thread_ap_enable_pp1();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp1();
    void thread_ap_rst_n_inv();
    void thread_bitcast_ln162_1_fu_581_p1();
    void thread_bitcast_ln162_fu_577_p1();
    void thread_bitcast_ln9_1_fu_490_p1();
    void thread_bitcast_ln9_2_fu_517_p1();
    void thread_bitcast_ln9_3_fu_522_p1();
    void thread_bitcast_ln9_fu_485_p1();
    void thread_grp_fu_405_p4();
    void thread_i_1_fu_507_p2();
    void thread_i_2_fu_539_p2();
    void thread_i_3_fu_559_p2();
    void thread_i_fu_475_p2();
    void thread_icmp_ln25_1_fu_445_p2();
    void thread_icmp_ln25_fu_427_p2();
    void thread_icmp_ln27_fu_463_p2();
    void thread_icmp_ln30_fu_469_p2();
    void thread_icmp_ln36_fu_501_p2();
    void thread_icmp_ln43_fu_533_p2();
    void thread_icmp_ln49_fu_553_p2();
    void thread_in_stream_TDATA_blk_n();
    void thread_in_stream_TREADY();
    void thread_in_stream_V_data_0_ack_in();
    void thread_in_stream_V_data_0_ack_out();
    void thread_in_stream_V_data_0_data_out();
    void thread_in_stream_V_data_0_load_A();
    void thread_in_stream_V_data_0_load_B();
    void thread_in_stream_V_data_0_sel();
    void thread_in_stream_V_data_0_state_cmp_full();
    void thread_in_stream_V_data_0_vld_in();
    void thread_in_stream_V_data_0_vld_out();
    void thread_in_stream_V_last_V_0_ack_out();
    void thread_in_stream_V_last_V_0_vld_in();
    void thread_out_stream_TDATA();
    void thread_out_stream_TDATA_blk_n();
    void thread_out_stream_TLAST();
    void thread_out_stream_TVALID();
    void thread_out_stream_V_data_1_ack_in();
    void thread_out_stream_V_data_1_ack_out();
    void thread_out_stream_V_data_1_data_out();
    void thread_out_stream_V_data_1_load_A();
    void thread_out_stream_V_data_1_load_B();
    void thread_out_stream_V_data_1_sel();
    void thread_out_stream_V_data_1_state_cmp_full();
    void thread_out_stream_V_data_1_vld_in();
    void thread_out_stream_V_data_1_vld_out();
    void thread_out_stream_V_last_V_1_ack_in();
    void thread_out_stream_V_last_V_1_ack_out();
    void thread_out_stream_V_last_V_1_data_out();
    void thread_out_stream_V_last_V_1_load_A();
    void thread_out_stream_V_last_V_1_load_B();
    void thread_out_stream_V_last_V_1_sel();
    void thread_out_stream_V_last_V_1_state_cmp_full();
    void thread_out_stream_V_last_V_1_vld_in();
    void thread_out_stream_V_last_V_1_vld_out();
    void thread_preamble_M_imag_address0();
    void thread_preamble_M_imag_ce0();
    void thread_preamble_M_imag_d0();
    void thread_preamble_M_imag_we0();
    void thread_preamble_M_real_address0();
    void thread_preamble_M_real_ce0();
    void thread_preamble_M_real_d0();
    void thread_preamble_M_real_we0();
    void thread_tmp_data_2_fu_585_p3();
    void thread_tmp_last_V_fu_571_p2();
    void thread_training_sym_M_imag_address0();
    void thread_training_sym_M_imag_ce0();
    void thread_training_sym_M_imag_d0();
    void thread_training_sym_M_imag_we0();
    void thread_training_sym_M_real_address0();
    void thread_training_sym_M_real_ce0();
    void thread_training_sym_M_real_d0();
    void thread_training_sym_M_real_we0();
    void thread_trunc_ln9_1_fu_513_p1();
    void thread_trunc_ln9_fu_481_p1();
    void thread_zext_ln25_1_fu_439_p1();
    void thread_zext_ln25_fu_421_p1();
    void thread_zext_ln27_fu_457_p1();
    void thread_zext_ln33_fu_495_p1();
    void thread_zext_ln39_fu_527_p1();
    void thread_zext_ln45_fu_545_p1();
    void thread_zext_ln53_fu_565_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif