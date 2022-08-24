// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _reconstruct_complex_s_HH_
#define _reconstruct_complex_s_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "DNN_wlo_hptosp_16cux.h"

namespace ap_rtl {

struct reconstruct_complex_s : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<7> > y_L3_address0;
    sc_out< sc_logic > y_L3_ce0;
    sc_in< sc_lv<16> > y_L3_q0;
    sc_out< sc_lv<7> > y_L3_address1;
    sc_out< sc_logic > y_L3_ce1;
    sc_in< sc_lv<16> > y_L3_q1;
    sc_out< sc_lv<64> > DNN_out_TDATA;
    sc_out< sc_logic > DNN_out_TVALID;
    sc_in< sc_logic > DNN_out_TREADY;
    sc_out< sc_lv<1> > DNN_out_TLAST;


    // Module declarations
    reconstruct_complex_s(sc_module_name name);
    SC_HAS_PROCESS(reconstruct_complex_s);

    ~reconstruct_complex_s();

    sc_trace_file* mVcdFile;

    DNN_wlo_hptosp_16cux<1,2,16,32>* DNN_wlo_hptosp_16cux_U411;
    DNN_wlo_hptosp_16cux<1,2,16,32>* DNN_wlo_hptosp_16cux_U412;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > DNN_out_TDATA_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln537_reg_159;
    sc_signal< sc_lv<1> > icmp_ln537_reg_159_pp0_iter1_reg;
    sc_signal< sc_lv<6> > i_0_reg_85;
    sc_signal< sc_lv<1> > icmp_ln537_fu_104_p2;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state4_io;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<6> > i_fu_110_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > tmp_last_V_fu_136_p2;
    sc_signal< sc_lv<1> > tmp_last_V_reg_178;
    sc_signal< sc_lv<1> > tmp_last_V_reg_178_pp0_iter1_reg;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_lv<64> > zext_ln542_fu_120_p1;
    sc_signal< sc_lv<64> > zext_ln542_1_fu_131_p1;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<7> > zext_ln537_fu_116_p1;
    sc_signal< sc_lv<7> > add_ln542_fu_125_p2;
    sc_signal< sc_lv<32> > grp_fu_96_p1;
    sc_signal< sc_lv<32> > grp_fu_100_p1;
    sc_signal< sc_lv<32> > bitcast_ln162_1_fu_146_p1;
    sc_signal< sc_lv<32> > bitcast_ln162_fu_142_p1;
    sc_signal< sc_logic > grp_fu_96_ce;
    sc_signal< sc_logic > grp_fu_100_ce;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state5;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<6> ap_const_lv6_34;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<7> ap_const_lv7_34;
    static const sc_lv<6> ap_const_lv6_33;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_DNN_out_TDATA();
    void thread_DNN_out_TDATA_blk_n();
    void thread_DNN_out_TLAST();
    void thread_DNN_out_TVALID();
    void thread_add_ln542_fu_125_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_io();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_bitcast_ln162_1_fu_146_p1();
    void thread_bitcast_ln162_fu_142_p1();
    void thread_grp_fu_100_ce();
    void thread_grp_fu_96_ce();
    void thread_i_fu_110_p2();
    void thread_icmp_ln537_fu_104_p2();
    void thread_tmp_last_V_fu_136_p2();
    void thread_y_L3_address0();
    void thread_y_L3_address1();
    void thread_y_L3_ce0();
    void thread_y_L3_ce1();
    void thread_zext_ln537_fu_116_p1();
    void thread_zext_ln542_1_fu_131_p1();
    void thread_zext_ln542_fu_120_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
