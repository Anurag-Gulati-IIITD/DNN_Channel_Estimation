// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "reconstruct_complex_s.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic reconstruct_complex_s::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic reconstruct_complex_s::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> reconstruct_complex_s::ap_ST_fsm_state1 = "1";
const sc_lv<3> reconstruct_complex_s::ap_ST_fsm_pp0_stage0 = "10";
const sc_lv<3> reconstruct_complex_s::ap_ST_fsm_state5 = "100";
const bool reconstruct_complex_s::ap_const_boolean_1 = true;
const sc_lv<32> reconstruct_complex_s::ap_const_lv32_0 = "00000000000000000000000000000000";
const bool reconstruct_complex_s::ap_const_boolean_0 = false;
const sc_lv<1> reconstruct_complex_s::ap_const_lv1_0 = "0";
const sc_lv<32> reconstruct_complex_s::ap_const_lv32_1 = "1";
const sc_lv<1> reconstruct_complex_s::ap_const_lv1_1 = "1";
const sc_lv<6> reconstruct_complex_s::ap_const_lv6_0 = "000000";
const sc_lv<6> reconstruct_complex_s::ap_const_lv6_34 = "110100";
const sc_lv<6> reconstruct_complex_s::ap_const_lv6_1 = "1";
const sc_lv<7> reconstruct_complex_s::ap_const_lv7_34 = "110100";
const sc_lv<6> reconstruct_complex_s::ap_const_lv6_33 = "110011";
const sc_lv<32> reconstruct_complex_s::ap_const_lv32_2 = "10";

reconstruct_complex_s::reconstruct_complex_s(sc_module_name name) : sc_module(name), mVcdFile(0) {
    DNN_wlo_hptosp_16cux_U411 = new DNN_wlo_hptosp_16cux<1,2,16,32>("DNN_wlo_hptosp_16cux_U411");
    DNN_wlo_hptosp_16cux_U411->clk(ap_clk);
    DNN_wlo_hptosp_16cux_U411->reset(ap_rst);
    DNN_wlo_hptosp_16cux_U411->din0(y_L3_q0);
    DNN_wlo_hptosp_16cux_U411->ce(grp_fu_96_ce);
    DNN_wlo_hptosp_16cux_U411->dout(grp_fu_96_p1);
    DNN_wlo_hptosp_16cux_U412 = new DNN_wlo_hptosp_16cux<1,2,16,32>("DNN_wlo_hptosp_16cux_U412");
    DNN_wlo_hptosp_16cux_U412->clk(ap_clk);
    DNN_wlo_hptosp_16cux_U412->reset(ap_rst);
    DNN_wlo_hptosp_16cux_U412->din0(y_L3_q1);
    DNN_wlo_hptosp_16cux_U412->ce(grp_fu_100_ce);
    DNN_wlo_hptosp_16cux_U412->dout(grp_fu_100_p1);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_DNN_out_TDATA);
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( icmp_ln537_reg_159_pp0_iter1_reg );
    sensitive << ( ap_block_pp0_stage0_01001 );
    sensitive << ( bitcast_ln162_1_fu_146_p1 );
    sensitive << ( bitcast_ln162_fu_142_p1 );

    SC_METHOD(thread_DNN_out_TDATA_blk_n);
    sensitive << ( DNN_out_TREADY );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( icmp_ln537_reg_159_pp0_iter1_reg );

    SC_METHOD(thread_DNN_out_TLAST);
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( icmp_ln537_reg_159_pp0_iter1_reg );
    sensitive << ( tmp_last_V_reg_178_pp0_iter1_reg );
    sensitive << ( ap_block_pp0_stage0_01001 );

    SC_METHOD(thread_DNN_out_TVALID);
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( icmp_ln537_reg_159_pp0_iter1_reg );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_add_ln542_fu_125_p2);
    sensitive << ( zext_ln537_fu_116_p1 );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_pp0_stage0);

    SC_METHOD(thread_ap_block_pp0_stage0_01001);

    SC_METHOD(thread_ap_block_pp0_stage0_11001);
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_block_state4_io );

    SC_METHOD(thread_ap_block_pp0_stage0_subdone);
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_block_state4_io );

    SC_METHOD(thread_ap_block_state2_pp0_stage0_iter0);

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter1);

    SC_METHOD(thread_ap_block_state4_io);
    sensitive << ( DNN_out_TREADY );
    sensitive << ( icmp_ln537_reg_159_pp0_iter1_reg );

    SC_METHOD(thread_ap_block_state4_pp0_stage0_iter2);

    SC_METHOD(thread_ap_condition_pp0_exit_iter0_state2);
    sensitive << ( icmp_ln537_fu_104_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_ap_enable_pp0);
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle_pp0);
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_bitcast_ln162_1_fu_146_p1);
    sensitive << ( grp_fu_100_p1 );

    SC_METHOD(thread_bitcast_ln162_fu_142_p1);
    sensitive << ( grp_fu_96_p1 );

    SC_METHOD(thread_grp_fu_100_ce);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_grp_fu_96_ce);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_i_fu_110_p2);
    sensitive << ( i_0_reg_85 );

    SC_METHOD(thread_icmp_ln537_fu_104_p2);
    sensitive << ( i_0_reg_85 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_tmp_last_V_fu_136_p2);
    sensitive << ( i_0_reg_85 );
    sensitive << ( icmp_ln537_fu_104_p2 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_y_L3_address0);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( zext_ln542_fu_120_p1 );

    SC_METHOD(thread_y_L3_address1);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( zext_ln542_1_fu_131_p1 );

    SC_METHOD(thread_y_L3_ce0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_y_L3_ce1);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_zext_ln537_fu_116_p1);
    sensitive << ( i_0_reg_85 );

    SC_METHOD(thread_zext_ln542_1_fu_131_p1);
    sensitive << ( add_ln542_fu_125_p2 );

    SC_METHOD(thread_zext_ln542_fu_120_p1);
    sensitive << ( i_0_reg_85 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( icmp_ln537_fu_104_p2 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0_subdone );

    ap_CS_fsm = "001";
    ap_enable_reg_pp0_iter2 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter0 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "reconstruct_complex_s_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, y_L3_address0, "(port)y_L3_address0");
    sc_trace(mVcdFile, y_L3_ce0, "(port)y_L3_ce0");
    sc_trace(mVcdFile, y_L3_q0, "(port)y_L3_q0");
    sc_trace(mVcdFile, y_L3_address1, "(port)y_L3_address1");
    sc_trace(mVcdFile, y_L3_ce1, "(port)y_L3_ce1");
    sc_trace(mVcdFile, y_L3_q1, "(port)y_L3_q1");
    sc_trace(mVcdFile, DNN_out_TDATA, "(port)DNN_out_TDATA");
    sc_trace(mVcdFile, DNN_out_TVALID, "(port)DNN_out_TVALID");
    sc_trace(mVcdFile, DNN_out_TREADY, "(port)DNN_out_TREADY");
    sc_trace(mVcdFile, DNN_out_TLAST, "(port)DNN_out_TLAST");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, DNN_out_TDATA_blk_n, "DNN_out_TDATA_blk_n");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter2, "ap_enable_reg_pp0_iter2");
    sc_trace(mVcdFile, ap_block_pp0_stage0, "ap_block_pp0_stage0");
    sc_trace(mVcdFile, icmp_ln537_reg_159, "icmp_ln537_reg_159");
    sc_trace(mVcdFile, icmp_ln537_reg_159_pp0_iter1_reg, "icmp_ln537_reg_159_pp0_iter1_reg");
    sc_trace(mVcdFile, i_0_reg_85, "i_0_reg_85");
    sc_trace(mVcdFile, icmp_ln537_fu_104_p2, "icmp_ln537_fu_104_p2");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_block_state2_pp0_stage0_iter0, "ap_block_state2_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter1, "ap_block_state3_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_state4_pp0_stage0_iter2, "ap_block_state4_pp0_stage0_iter2");
    sc_trace(mVcdFile, ap_block_state4_io, "ap_block_state4_io");
    sc_trace(mVcdFile, ap_block_pp0_stage0_11001, "ap_block_pp0_stage0_11001");
    sc_trace(mVcdFile, i_fu_110_p2, "i_fu_110_p2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, tmp_last_V_fu_136_p2, "tmp_last_V_fu_136_p2");
    sc_trace(mVcdFile, tmp_last_V_reg_178, "tmp_last_V_reg_178");
    sc_trace(mVcdFile, tmp_last_V_reg_178_pp0_iter1_reg, "tmp_last_V_reg_178_pp0_iter1_reg");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_subdone, "ap_block_pp0_stage0_subdone");
    sc_trace(mVcdFile, ap_condition_pp0_exit_iter0_state2, "ap_condition_pp0_exit_iter0_state2");
    sc_trace(mVcdFile, zext_ln542_fu_120_p1, "zext_ln542_fu_120_p1");
    sc_trace(mVcdFile, zext_ln542_1_fu_131_p1, "zext_ln542_1_fu_131_p1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_01001, "ap_block_pp0_stage0_01001");
    sc_trace(mVcdFile, zext_ln537_fu_116_p1, "zext_ln537_fu_116_p1");
    sc_trace(mVcdFile, add_ln542_fu_125_p2, "add_ln542_fu_125_p2");
    sc_trace(mVcdFile, grp_fu_96_p1, "grp_fu_96_p1");
    sc_trace(mVcdFile, grp_fu_100_p1, "grp_fu_100_p1");
    sc_trace(mVcdFile, bitcast_ln162_1_fu_146_p1, "bitcast_ln162_1_fu_146_p1");
    sc_trace(mVcdFile, bitcast_ln162_fu_142_p1, "bitcast_ln162_fu_142_p1");
    sc_trace(mVcdFile, grp_fu_96_ce, "grp_fu_96_ce");
    sc_trace(mVcdFile, grp_fu_100_ce, "grp_fu_100_ce");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
#endif

    }
}

reconstruct_complex_s::~reconstruct_complex_s() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete DNN_wlo_hptosp_16cux_U411;
    delete DNN_wlo_hptosp_16cux_U412;
}

void reconstruct_complex_s::thread_ap_clk_no_reset_() {
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
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            if (esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state2.read())) {
                ap_enable_reg_pp0_iter1 = (ap_condition_pp0_exit_iter0_state2.read() ^ ap_const_logic_1);
            } else if (esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1)) {
                ap_enable_reg_pp0_iter1 = ap_enable_reg_pp0_iter0.read();
            }
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter2 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter2 = ap_enable_reg_pp0_iter1.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
            ap_enable_reg_pp0_iter2 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln537_fu_104_p2.read()))) {
        i_0_reg_85 = i_fu_110_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_0_reg_85 = ap_const_lv6_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        icmp_ln537_reg_159 = icmp_ln537_fu_104_p2.read();
        icmp_ln537_reg_159_pp0_iter1_reg = icmp_ln537_reg_159.read();
        tmp_last_V_reg_178_pp0_iter1_reg = tmp_last_V_reg_178.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln537_fu_104_p2.read()))) {
        tmp_last_V_reg_178 = tmp_last_V_fu_136_p2.read();
    }
}

void reconstruct_complex_s::thread_DNN_out_TDATA() {
    DNN_out_TDATA = esl_concat<32,32>(bitcast_ln162_1_fu_146_p1.read(), bitcast_ln162_fu_142_p1.read());
}

void reconstruct_complex_s::thread_DNN_out_TDATA_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(icmp_ln537_reg_159_pp0_iter1_reg.read(), ap_const_lv1_0))) {
        DNN_out_TDATA_blk_n = DNN_out_TREADY.read();
    } else {
        DNN_out_TDATA_blk_n = ap_const_logic_1;
    }
}

void reconstruct_complex_s::thread_DNN_out_TLAST() {
    DNN_out_TLAST = tmp_last_V_reg_178_pp0_iter1_reg.read();
}

void reconstruct_complex_s::thread_DNN_out_TVALID() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(icmp_ln537_reg_159_pp0_iter1_reg.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        DNN_out_TVALID = ap_const_logic_1;
    } else {
        DNN_out_TVALID = ap_const_logic_0;
    }
}

void reconstruct_complex_s::thread_add_ln542_fu_125_p2() {
    add_ln542_fu_125_p2 = (!zext_ln537_fu_116_p1.read().is_01() || !ap_const_lv7_34.is_01())? sc_lv<7>(): (sc_biguint<7>(zext_ln537_fu_116_p1.read()) + sc_biguint<7>(ap_const_lv7_34));
}

void reconstruct_complex_s::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[1];
}

void reconstruct_complex_s::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void reconstruct_complex_s::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[2];
}

void reconstruct_complex_s::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void reconstruct_complex_s::thread_ap_block_pp0_stage0_01001() {
    ap_block_pp0_stage0_01001 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void reconstruct_complex_s::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state4_io.read()));
}

void reconstruct_complex_s::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state4_io.read()));
}

void reconstruct_complex_s::thread_ap_block_state2_pp0_stage0_iter0() {
    ap_block_state2_pp0_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void reconstruct_complex_s::thread_ap_block_state3_pp0_stage0_iter1() {
    ap_block_state3_pp0_stage0_iter1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void reconstruct_complex_s::thread_ap_block_state4_io() {
    ap_block_state4_io = (esl_seteq<1,1,1>(icmp_ln537_reg_159_pp0_iter1_reg.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, DNN_out_TREADY.read()));
}

void reconstruct_complex_s::thread_ap_block_state4_pp0_stage0_iter2() {
    ap_block_state4_pp0_stage0_iter2 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void reconstruct_complex_s::thread_ap_condition_pp0_exit_iter0_state2() {
    if (esl_seteq<1,1,1>(icmp_ln537_fu_104_p2.read(), ap_const_lv1_1)) {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_1;
    } else {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_0;
    }
}

void reconstruct_complex_s::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void reconstruct_complex_s::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void reconstruct_complex_s::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void reconstruct_complex_s::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter2.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void reconstruct_complex_s::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void reconstruct_complex_s::thread_bitcast_ln162_1_fu_146_p1() {
    bitcast_ln162_1_fu_146_p1 = grp_fu_100_p1.read();
}

void reconstruct_complex_s::thread_bitcast_ln162_fu_142_p1() {
    bitcast_ln162_fu_142_p1 = grp_fu_96_p1.read();
}

void reconstruct_complex_s::thread_grp_fu_100_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        grp_fu_100_ce = ap_const_logic_1;
    } else {
        grp_fu_100_ce = ap_const_logic_0;
    }
}

void reconstruct_complex_s::thread_grp_fu_96_ce() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        grp_fu_96_ce = ap_const_logic_1;
    } else {
        grp_fu_96_ce = ap_const_logic_0;
    }
}

void reconstruct_complex_s::thread_i_fu_110_p2() {
    i_fu_110_p2 = (!i_0_reg_85.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(i_0_reg_85.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void reconstruct_complex_s::thread_icmp_ln537_fu_104_p2() {
    icmp_ln537_fu_104_p2 = (!i_0_reg_85.read().is_01() || !ap_const_lv6_34.is_01())? sc_lv<1>(): sc_lv<1>(i_0_reg_85.read() == ap_const_lv6_34);
}

void reconstruct_complex_s::thread_tmp_last_V_fu_136_p2() {
    tmp_last_V_fu_136_p2 = (!i_0_reg_85.read().is_01() || !ap_const_lv6_33.is_01())? sc_lv<1>(): sc_lv<1>(i_0_reg_85.read() == ap_const_lv6_33);
}

void reconstruct_complex_s::thread_y_L3_address0() {
    y_L3_address0 =  (sc_lv<7>) (zext_ln542_fu_120_p1.read());
}

void reconstruct_complex_s::thread_y_L3_address1() {
    y_L3_address1 =  (sc_lv<7>) (zext_ln542_1_fu_131_p1.read());
}

void reconstruct_complex_s::thread_y_L3_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        y_L3_ce0 = ap_const_logic_1;
    } else {
        y_L3_ce0 = ap_const_logic_0;
    }
}

void reconstruct_complex_s::thread_y_L3_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        y_L3_ce1 = ap_const_logic_1;
    } else {
        y_L3_ce1 = ap_const_logic_0;
    }
}

void reconstruct_complex_s::thread_zext_ln537_fu_116_p1() {
    zext_ln537_fu_116_p1 = esl_zext<7,6>(i_0_reg_85.read());
}

void reconstruct_complex_s::thread_zext_ln542_1_fu_131_p1() {
    zext_ln542_1_fu_131_p1 = esl_zext<64,7>(add_ln542_fu_125_p2.read());
}

void reconstruct_complex_s::thread_zext_ln542_fu_120_p1() {
    zext_ln542_fu_120_p1 = esl_zext<64,6>(i_0_reg_85.read());
}

void reconstruct_complex_s::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((!(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)) && !(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(icmp_ln537_fu_104_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
  esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
  esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
  esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
  esl_seteq<1,1,1>(icmp_ln537_fu_104_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)))) {
                ap_NS_fsm = ap_ST_fsm_state5;
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

