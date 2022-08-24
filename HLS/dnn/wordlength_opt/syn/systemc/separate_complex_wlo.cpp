// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "separate_complex_wlo.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic separate_complex_wlo::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic separate_complex_wlo::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> separate_complex_wlo::ap_ST_fsm_state1 = "1";
const sc_lv<3> separate_complex_wlo::ap_ST_fsm_pp0_stage0 = "10";
const sc_lv<3> separate_complex_wlo::ap_ST_fsm_state4 = "100";
const bool separate_complex_wlo::ap_const_boolean_1 = true;
const sc_lv<32> separate_complex_wlo::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> separate_complex_wlo::ap_const_lv32_1 = "1";
const bool separate_complex_wlo::ap_const_boolean_0 = false;
const sc_lv<1> separate_complex_wlo::ap_const_lv1_0 = "0";
const sc_lv<1> separate_complex_wlo::ap_const_lv1_1 = "1";
const sc_lv<6> separate_complex_wlo::ap_const_lv6_0 = "000000";
const sc_lv<6> separate_complex_wlo::ap_const_lv6_34 = "110100";
const sc_lv<6> separate_complex_wlo::ap_const_lv6_1 = "1";
const sc_lv<32> separate_complex_wlo::ap_const_lv32_20 = "100000";
const sc_lv<32> separate_complex_wlo::ap_const_lv32_3F = "111111";
const sc_lv<7> separate_complex_wlo::ap_const_lv7_34 = "110100";
const sc_lv<32> separate_complex_wlo::ap_const_lv32_2 = "10";

separate_complex_wlo::separate_complex_wlo(sc_module_name name) : sc_module(name), mVcdFile(0) {
    DNN_wlo_sptohp_32bkb_U1 = new DNN_wlo_sptohp_32bkb<1,2,32,16>("DNN_wlo_sptohp_32bkb_U1");
    DNN_wlo_sptohp_32bkb_U1->clk(ap_clk);
    DNN_wlo_sptohp_32bkb_U1->reset(ap_rst);
    DNN_wlo_sptohp_32bkb_U1->din0(grp_fu_97_p0);
    DNN_wlo_sptohp_32bkb_U1->ce(grp_fu_97_ce);
    DNN_wlo_sptohp_32bkb_U1->dout(grp_fu_97_p1);
    DNN_wlo_sptohp_32bkb_U2 = new DNN_wlo_sptohp_32bkb<1,2,32,16>("DNN_wlo_sptohp_32bkb_U2");
    DNN_wlo_sptohp_32bkb_U2->clk(ap_clk);
    DNN_wlo_sptohp_32bkb_U2->reset(ap_rst);
    DNN_wlo_sptohp_32bkb_U2->din0(grp_fu_101_p0);
    DNN_wlo_sptohp_32bkb_U2->ce(grp_fu_101_ce);
    DNN_wlo_sptohp_32bkb_U2->dout(grp_fu_101_p1);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_LS_stream_TDATA_blk_n);
    sensitive << ( LS_stream_TVALID );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( icmp_ln480_fu_105_p2 );

    SC_METHOD(thread_LS_stream_TREADY);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( icmp_ln480_fu_105_p2 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_add_ln484_fu_154_p2);
    sensitive << ( zext_ln480_fu_145_p1 );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_pp0_stage0);

    SC_METHOD(thread_ap_block_pp0_stage0_11001);
    sensitive << ( LS_stream_TVALID );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( icmp_ln480_fu_105_p2 );

    SC_METHOD(thread_ap_block_pp0_stage0_subdone);
    sensitive << ( LS_stream_TVALID );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( icmp_ln480_fu_105_p2 );

    SC_METHOD(thread_ap_block_state2_pp0_stage0_iter0);
    sensitive << ( LS_stream_TVALID );
    sensitive << ( icmp_ln480_fu_105_p2 );

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter1);

    SC_METHOD(thread_ap_condition_pp0_exit_iter0_state2);
    sensitive << ( icmp_ln480_fu_105_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_ap_enable_pp0);
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle_pp0);
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_ap_phi_mux_i_0_phi_fu_89_p4);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( i_0_reg_85 );
    sensitive << ( icmp_ln480_reg_165 );
    sensitive << ( i_reg_169 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_grp_fu_101_ce);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_grp_fu_101_p0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( tmp_data_M_imag_loa_fu_130_p4 );

    SC_METHOD(thread_grp_fu_97_ce);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_grp_fu_97_p0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( trunc_ln16_fu_121_p1 );

    SC_METHOD(thread_i_fu_111_p2);
    sensitive << ( ap_phi_mux_i_0_phi_fu_89_p4 );

    SC_METHOD(thread_icmp_ln480_fu_105_p2);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_phi_mux_i_0_phi_fu_89_p4 );

    SC_METHOD(thread_sep_address0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( zext_ln483_fu_149_p1 );

    SC_METHOD(thread_sep_address1);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( zext_ln484_fu_160_p1 );

    SC_METHOD(thread_sep_ce0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_sep_ce1);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_sep_d0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( grp_fu_97_p1 );

    SC_METHOD(thread_sep_d1);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( grp_fu_101_p1 );

    SC_METHOD(thread_sep_we0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( icmp_ln480_reg_165 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_sep_we1);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( icmp_ln480_reg_165 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_tmp_data_M_imag_loa_fu_130_p4);
    sensitive << ( LS_stream_TDATA );

    SC_METHOD(thread_trunc_ln16_fu_121_p1);
    sensitive << ( LS_stream_TDATA );

    SC_METHOD(thread_zext_ln480_fu_145_p1);
    sensitive << ( i_0_reg_85 );

    SC_METHOD(thread_zext_ln483_fu_149_p1);
    sensitive << ( i_0_reg_85 );

    SC_METHOD(thread_zext_ln484_fu_160_p1);
    sensitive << ( add_ln484_fu_154_p2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( icmp_ln480_fu_105_p2 );
    sensitive << ( ap_block_pp0_stage0_subdone );

    ap_CS_fsm = "001";
    ap_enable_reg_pp0_iter0 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "separate_complex_wlo_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, LS_stream_TDATA, "(port)LS_stream_TDATA");
    sc_trace(mVcdFile, LS_stream_TVALID, "(port)LS_stream_TVALID");
    sc_trace(mVcdFile, LS_stream_TREADY, "(port)LS_stream_TREADY");
    sc_trace(mVcdFile, LS_stream_TLAST, "(port)LS_stream_TLAST");
    sc_trace(mVcdFile, sep_address0, "(port)sep_address0");
    sc_trace(mVcdFile, sep_ce0, "(port)sep_ce0");
    sc_trace(mVcdFile, sep_we0, "(port)sep_we0");
    sc_trace(mVcdFile, sep_d0, "(port)sep_d0");
    sc_trace(mVcdFile, sep_address1, "(port)sep_address1");
    sc_trace(mVcdFile, sep_ce1, "(port)sep_ce1");
    sc_trace(mVcdFile, sep_we1, "(port)sep_we1");
    sc_trace(mVcdFile, sep_d1, "(port)sep_d1");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, LS_stream_TDATA_blk_n, "LS_stream_TDATA_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, ap_block_pp0_stage0, "ap_block_pp0_stage0");
    sc_trace(mVcdFile, icmp_ln480_fu_105_p2, "icmp_ln480_fu_105_p2");
    sc_trace(mVcdFile, i_0_reg_85, "i_0_reg_85");
    sc_trace(mVcdFile, icmp_ln480_reg_165, "icmp_ln480_reg_165");
    sc_trace(mVcdFile, ap_block_state2_pp0_stage0_iter0, "ap_block_state2_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter1, "ap_block_state3_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_11001, "ap_block_pp0_stage0_11001");
    sc_trace(mVcdFile, i_fu_111_p2, "i_fu_111_p2");
    sc_trace(mVcdFile, i_reg_169, "i_reg_169");
    sc_trace(mVcdFile, ap_block_pp0_stage0_subdone, "ap_block_pp0_stage0_subdone");
    sc_trace(mVcdFile, ap_condition_pp0_exit_iter0_state2, "ap_condition_pp0_exit_iter0_state2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, ap_phi_mux_i_0_phi_fu_89_p4, "ap_phi_mux_i_0_phi_fu_89_p4");
    sc_trace(mVcdFile, zext_ln483_fu_149_p1, "zext_ln483_fu_149_p1");
    sc_trace(mVcdFile, zext_ln484_fu_160_p1, "zext_ln484_fu_160_p1");
    sc_trace(mVcdFile, grp_fu_97_p1, "grp_fu_97_p1");
    sc_trace(mVcdFile, grp_fu_101_p1, "grp_fu_101_p1");
    sc_trace(mVcdFile, grp_fu_97_p0, "grp_fu_97_p0");
    sc_trace(mVcdFile, grp_fu_101_p0, "grp_fu_101_p0");
    sc_trace(mVcdFile, trunc_ln16_fu_121_p1, "trunc_ln16_fu_121_p1");
    sc_trace(mVcdFile, tmp_data_M_imag_loa_fu_130_p4, "tmp_data_M_imag_loa_fu_130_p4");
    sc_trace(mVcdFile, zext_ln480_fu_145_p1, "zext_ln480_fu_145_p1");
    sc_trace(mVcdFile, add_ln484_fu_154_p2, "add_ln484_fu_154_p2");
    sc_trace(mVcdFile, grp_fu_97_ce, "grp_fu_97_ce");
    sc_trace(mVcdFile, grp_fu_101_ce, "grp_fu_101_ce");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
#endif

    }
}

separate_complex_wlo::~separate_complex_wlo() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete DNN_wlo_sptohp_32bkb_U1;
    delete DNN_wlo_sptohp_32bkb_U2;
}

void separate_complex_wlo::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state2.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state2.read()))) {
            ap_enable_reg_pp0_iter1 = (ap_condition_pp0_exit_iter0_state2.read() ^ ap_const_logic_1);
        } else if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter1 = ap_enable_reg_pp0_iter0.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
            ap_enable_reg_pp0_iter1 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln480_reg_165.read()))) {
        i_0_reg_85 = i_reg_169.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_0_reg_85 = ap_const_lv6_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        i_reg_169 = i_fu_111_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        icmp_ln480_reg_165 = icmp_ln480_fu_105_p2.read();
    }
}

void separate_complex_wlo::thread_LS_stream_TDATA_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(icmp_ln480_fu_105_p2.read(), ap_const_lv1_0))) {
        LS_stream_TDATA_blk_n = LS_stream_TVALID.read();
    } else {
        LS_stream_TDATA_blk_n = ap_const_logic_1;
    }
}

void separate_complex_wlo::thread_LS_stream_TREADY() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(icmp_ln480_fu_105_p2.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        LS_stream_TREADY = ap_const_logic_1;
    } else {
        LS_stream_TREADY = ap_const_logic_0;
    }
}

void separate_complex_wlo::thread_add_ln484_fu_154_p2() {
    add_ln484_fu_154_p2 = (!ap_const_lv7_34.is_01() || !zext_ln480_fu_145_p1.read().is_01())? sc_lv<7>(): (sc_biguint<7>(ap_const_lv7_34) + sc_biguint<7>(zext_ln480_fu_145_p1.read()));
}

void separate_complex_wlo::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[1];
}

void separate_complex_wlo::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void separate_complex_wlo::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[2];
}

void separate_complex_wlo::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void separate_complex_wlo::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(icmp_ln480_fu_105_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, LS_stream_TVALID.read()));
}

void separate_complex_wlo::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(icmp_ln480_fu_105_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, LS_stream_TVALID.read()));
}

void separate_complex_wlo::thread_ap_block_state2_pp0_stage0_iter0() {
    ap_block_state2_pp0_stage0_iter0 = (esl_seteq<1,1,1>(icmp_ln480_fu_105_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, LS_stream_TVALID.read()));
}

void separate_complex_wlo::thread_ap_block_state3_pp0_stage0_iter1() {
    ap_block_state3_pp0_stage0_iter1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void separate_complex_wlo::thread_ap_condition_pp0_exit_iter0_state2() {
    if (esl_seteq<1,1,1>(icmp_ln480_fu_105_p2.read(), ap_const_lv1_1)) {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_1;
    } else {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_0;
    }
}

void separate_complex_wlo::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void separate_complex_wlo::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void separate_complex_wlo::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void separate_complex_wlo::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void separate_complex_wlo::thread_ap_phi_mux_i_0_phi_fu_89_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln480_reg_165.read()))) {
        ap_phi_mux_i_0_phi_fu_89_p4 = i_reg_169.read();
    } else {
        ap_phi_mux_i_0_phi_fu_89_p4 = i_0_reg_85.read();
    }
}

void separate_complex_wlo::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void separate_complex_wlo::thread_grp_fu_101_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        grp_fu_101_ce = ap_const_logic_1;
    } else {
        grp_fu_101_ce = ap_const_logic_0;
    }
}

void separate_complex_wlo::thread_grp_fu_101_p0() {
    grp_fu_101_p0 = tmp_data_M_imag_loa_fu_130_p4.read();
}

void separate_complex_wlo::thread_grp_fu_97_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        grp_fu_97_ce = ap_const_logic_1;
    } else {
        grp_fu_97_ce = ap_const_logic_0;
    }
}

void separate_complex_wlo::thread_grp_fu_97_p0() {
    grp_fu_97_p0 = trunc_ln16_fu_121_p1.read();
}

void separate_complex_wlo::thread_i_fu_111_p2() {
    i_fu_111_p2 = (!ap_phi_mux_i_0_phi_fu_89_p4.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(ap_phi_mux_i_0_phi_fu_89_p4.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void separate_complex_wlo::thread_icmp_ln480_fu_105_p2() {
    icmp_ln480_fu_105_p2 = (!ap_phi_mux_i_0_phi_fu_89_p4.read().is_01() || !ap_const_lv6_34.is_01())? sc_lv<1>(): sc_lv<1>(ap_phi_mux_i_0_phi_fu_89_p4.read() == ap_const_lv6_34);
}

void separate_complex_wlo::thread_sep_address0() {
    sep_address0 =  (sc_lv<7>) (zext_ln483_fu_149_p1.read());
}

void separate_complex_wlo::thread_sep_address1() {
    sep_address1 =  (sc_lv<7>) (zext_ln484_fu_160_p1.read());
}

void separate_complex_wlo::thread_sep_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
        sep_ce0 = ap_const_logic_1;
    } else {
        sep_ce0 = ap_const_logic_0;
    }
}

void separate_complex_wlo::thread_sep_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
        sep_ce1 = ap_const_logic_1;
    } else {
        sep_ce1 = ap_const_logic_0;
    }
}

void separate_complex_wlo::thread_sep_d0() {
    sep_d0 = grp_fu_97_p1.read();
}

void separate_complex_wlo::thread_sep_d1() {
    sep_d1 = grp_fu_101_p1.read();
}

void separate_complex_wlo::thread_sep_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln480_reg_165.read()))) {
        sep_we0 = ap_const_logic_1;
    } else {
        sep_we0 = ap_const_logic_0;
    }
}

void separate_complex_wlo::thread_sep_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln480_reg_165.read()))) {
        sep_we1 = ap_const_logic_1;
    } else {
        sep_we1 = ap_const_logic_0;
    }
}

void separate_complex_wlo::thread_tmp_data_M_imag_loa_fu_130_p4() {
    tmp_data_M_imag_loa_fu_130_p4 = LS_stream_TDATA.read().range(63, 32);
}

void separate_complex_wlo::thread_trunc_ln16_fu_121_p1() {
    trunc_ln16_fu_121_p1 = LS_stream_TDATA.read().range(32-1, 0);
}

void separate_complex_wlo::thread_zext_ln480_fu_145_p1() {
    zext_ln480_fu_145_p1 = esl_zext<7,6>(i_0_reg_85.read());
}

void separate_complex_wlo::thread_zext_ln483_fu_149_p1() {
    zext_ln483_fu_149_p1 = esl_zext<64,6>(i_0_reg_85.read());
}

void separate_complex_wlo::thread_zext_ln484_fu_160_p1() {
    zext_ln484_fu_160_p1 = esl_zext<64,7>(add_ln484_fu_154_p2.read());
}

void separate_complex_wlo::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if (!(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(icmp_ln480_fu_105_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(icmp_ln480_fu_105_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm = "XXX";
            break;
    }
}

}
