// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _separate_complex_wlo_HH_
#define _separate_complex_wlo_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "DNN_wlo_sptohp_32bkb.h"

namespace ap_rtl {

struct separate_complex_wlo : public sc_module {
    // Port declarations 18
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<64> > LS_stream_TDATA;
    sc_in< sc_logic > LS_stream_TVALID;
    sc_out< sc_logic > LS_stream_TREADY;
    sc_in< sc_lv<1> > LS_stream_TLAST;
    sc_out< sc_lv<7> > sep_address0;
    sc_out< sc_logic > sep_ce0;
    sc_out< sc_logic > sep_we0;
    sc_out< sc_lv<16> > sep_d0;
    sc_out< sc_lv<7> > sep_address1;
    sc_out< sc_logic > sep_ce1;
    sc_out< sc_logic > sep_we1;
    sc_out< sc_lv<16> > sep_d1;


    // Module declarations
    separate_complex_wlo(sc_module_name name);
    SC_HAS_PROCESS(separate_complex_wlo);

    ~separate_complex_wlo();

    sc_trace_file* mVcdFile;

    DNN_wlo_sptohp_32bkb<1,2,32,16>* DNN_wlo_sptohp_32bkb_U1;
    DNN_wlo_sptohp_32bkb<1,2,32,16>* DNN_wlo_sptohp_32bkb_U2;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > LS_stream_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln480_fu_105_p2;
    sc_signal< sc_lv<6> > i_0_reg_85;
    sc_signal< sc_lv<1> > icmp_ln480_reg_165;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<6> > i_fu_111_p2;
    sc_signal< sc_lv<6> > i_reg_169;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_lv<6> > ap_phi_mux_i_0_phi_fu_89_p4;
    sc_signal< sc_lv<64> > zext_ln483_fu_149_p1;
    sc_signal< sc_lv<64> > zext_ln484_fu_160_p1;
    sc_signal< sc_lv<16> > grp_fu_97_p1;
    sc_signal< sc_lv<16> > grp_fu_101_p1;
    sc_signal< sc_lv<32> > grp_fu_97_p0;
    sc_signal< sc_lv<32> > grp_fu_101_p0;
    sc_signal< sc_lv<32> > trunc_ln16_fu_121_p1;
    sc_signal< sc_lv<32> > tmp_data_M_imag_loa_fu_130_p4;
    sc_signal< sc_lv<7> > zext_ln480_fu_145_p1;
    sc_signal< sc_lv<7> > add_ln484_fu_154_p2;
    sc_signal< sc_logic > grp_fu_97_ce;
    sc_signal< sc_logic > grp_fu_101_ce;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state4;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<6> ap_const_lv6_34;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<7> ap_const_lv7_34;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_LS_stream_TDATA_blk_n();
    void thread_LS_stream_TREADY();
    void thread_add_ln484_fu_154_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state4();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_i_0_phi_fu_89_p4();
    void thread_ap_ready();
    void thread_grp_fu_101_ce();
    void thread_grp_fu_101_p0();
    void thread_grp_fu_97_ce();
    void thread_grp_fu_97_p0();
    void thread_i_fu_111_p2();
    void thread_icmp_ln480_fu_105_p2();
    void thread_sep_address0();
    void thread_sep_address1();
    void thread_sep_ce0();
    void thread_sep_ce1();
    void thread_sep_d0();
    void thread_sep_d1();
    void thread_sep_we0();
    void thread_sep_we1();
    void thread_tmp_data_M_imag_loa_fu_130_p4();
    void thread_trunc_ln16_fu_121_p1();
    void thread_zext_ln480_fu_145_p1();
    void thread_zext_ln483_fu_149_p1();
    void thread_zext_ln484_fu_160_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
