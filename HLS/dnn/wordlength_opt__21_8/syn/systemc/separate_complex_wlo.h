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

#include "DNN_wlo_218_fpextbkb.h"

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
    sc_out< sc_lv<7> > sep_V_address0;
    sc_out< sc_logic > sep_V_ce0;
    sc_out< sc_logic > sep_V_we0;
    sc_out< sc_lv<21> > sep_V_d0;
    sc_out< sc_lv<7> > sep_V_address1;
    sc_out< sc_logic > sep_V_ce1;
    sc_out< sc_logic > sep_V_we1;
    sc_out< sc_lv<21> > sep_V_d1;


    // Module declarations
    separate_complex_wlo(sc_module_name name);
    SC_HAS_PROCESS(separate_complex_wlo);

    ~separate_complex_wlo();

    sc_trace_file* mVcdFile;

    DNN_wlo_218_fpextbkb<1,2,32,64>* DNN_wlo_218_fpextbkb_U1;
    DNN_wlo_218_fpextbkb<1,2,32,64>* DNN_wlo_218_fpextbkb_U2;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > LS_stream_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln730_fu_135_p2;
    sc_signal< sc_lv<6> > i_0_reg_117;
    sc_signal< sc_lv<6> > i_0_reg_117_pp0_iter1_reg;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter3;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<6> > i_0_reg_117_pp0_iter2_reg;
    sc_signal< sc_lv<1> > icmp_ln730_reg_721;
    sc_signal< sc_lv<1> > icmp_ln730_reg_721_pp0_iter1_reg;
    sc_signal< sc_lv<1> > icmp_ln730_reg_721_pp0_iter2_reg;
    sc_signal< sc_lv<6> > i_fu_141_p2;
    sc_signal< sc_lv<6> > i_reg_725;
    sc_signal< sc_lv<64> > LS_stream_V_data_val_reg_730;
    sc_signal< sc_lv<64> > LS_stream_V_data_val_reg_730_pp0_iter1_reg;
    sc_signal< sc_lv<64> > LS_stream_V_data_val_reg_730_pp0_iter2_reg;
    sc_signal< sc_lv<54> > man_V_2_fu_227_p3;
    sc_signal< sc_lv<54> > man_V_2_reg_746;
    sc_signal< sc_lv<1> > icmp_ln571_fu_235_p2;
    sc_signal< sc_lv<1> > icmp_ln571_reg_751;
    sc_signal< sc_lv<1> > icmp_ln581_fu_247_p2;
    sc_signal< sc_lv<1> > icmp_ln581_reg_757;
    sc_signal< sc_lv<12> > sh_amt_fu_265_p3;
    sc_signal< sc_lv<12> > sh_amt_reg_763;
    sc_signal< sc_lv<1> > icmp_ln582_fu_273_p2;
    sc_signal< sc_lv<1> > icmp_ln582_reg_770;
    sc_signal< sc_lv<21> > trunc_ln583_fu_279_p1;
    sc_signal< sc_lv<21> > trunc_ln583_reg_776;
    sc_signal< sc_lv<21> > trunc_ln583_reg_776_pp0_iter2_reg;
    sc_signal< sc_lv<54> > man_V_5_fu_335_p3;
    sc_signal< sc_lv<54> > man_V_5_reg_782;
    sc_signal< sc_lv<1> > icmp_ln571_1_fu_343_p2;
    sc_signal< sc_lv<1> > icmp_ln571_1_reg_787;
    sc_signal< sc_lv<1> > icmp_ln581_1_fu_355_p2;
    sc_signal< sc_lv<1> > icmp_ln581_1_reg_793;
    sc_signal< sc_lv<12> > sh_amt_1_fu_373_p3;
    sc_signal< sc_lv<12> > sh_amt_1_reg_799;
    sc_signal< sc_lv<1> > icmp_ln582_1_fu_381_p2;
    sc_signal< sc_lv<1> > icmp_ln582_1_reg_806;
    sc_signal< sc_lv<21> > trunc_ln583_1_fu_387_p1;
    sc_signal< sc_lv<21> > trunc_ln583_1_reg_812;
    sc_signal< sc_lv<21> > trunc_ln583_1_reg_812_pp0_iter2_reg;
    sc_signal< sc_lv<32> > sext_ln581_fu_391_p1;
    sc_signal< sc_lv<32> > sext_ln581_reg_818;
    sc_signal< sc_lv<1> > and_ln603_fu_471_p2;
    sc_signal< sc_lv<1> > and_ln603_reg_823;
    sc_signal< sc_lv<1> > or_ln603_fu_477_p2;
    sc_signal< sc_lv<1> > or_ln603_reg_828;
    sc_signal< sc_lv<21> > select_ln603_1_fu_483_p3;
    sc_signal< sc_lv<21> > select_ln603_1_reg_833;
    sc_signal< sc_lv<1> > or_ln603_2_fu_496_p2;
    sc_signal< sc_lv<1> > or_ln603_2_reg_838;
    sc_signal< sc_lv<32> > sext_ln581_1_fu_502_p1;
    sc_signal< sc_lv<32> > sext_ln581_1_reg_843;
    sc_signal< sc_lv<1> > and_ln603_1_fu_582_p2;
    sc_signal< sc_lv<1> > and_ln603_1_reg_848;
    sc_signal< sc_lv<1> > or_ln603_3_fu_588_p2;
    sc_signal< sc_lv<1> > or_ln603_3_reg_853;
    sc_signal< sc_lv<21> > select_ln603_5_fu_594_p3;
    sc_signal< sc_lv<21> > select_ln603_5_reg_858;
    sc_signal< sc_lv<1> > or_ln603_5_fu_607_p2;
    sc_signal< sc_lv<1> > or_ln603_5_reg_863;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_lv<6> > ap_phi_mux_i_0_phi_fu_121_p4;
    sc_signal< sc_lv<64> > zext_ln733_fu_617_p1;
    sc_signal< sc_lv<64> > zext_ln734_fu_672_p1;
    sc_signal< sc_lv<32> > grp_fu_129_p0;
    sc_signal< sc_lv<32> > grp_fu_132_p0;
    sc_signal< sc_lv<32> > trunc_ln24_fu_151_p1;
    sc_signal< sc_lv<32> > v_assign_1_new8_fu_160_p4;
    sc_signal< sc_lv<64> > grp_fu_129_p1;
    sc_signal< sc_lv<64> > ireg_V_fu_175_p1;
    sc_signal< sc_lv<11> > exp_tmp_V_fu_191_p4;
    sc_signal< sc_lv<52> > trunc_ln565_fu_205_p1;
    sc_signal< sc_lv<53> > tmp_1_fu_209_p3;
    sc_signal< sc_lv<54> > p_Result_1_fu_217_p1;
    sc_signal< sc_lv<1> > p_Result_s_fu_183_p3;
    sc_signal< sc_lv<54> > man_V_1_fu_221_p2;
    sc_signal< sc_lv<63> > trunc_ln556_fu_179_p1;
    sc_signal< sc_lv<12> > zext_ln461_fu_201_p1;
    sc_signal< sc_lv<12> > F2_fu_241_p2;
    sc_signal< sc_lv<12> > add_ln581_fu_253_p2;
    sc_signal< sc_lv<12> > sub_ln581_fu_259_p2;
    sc_signal< sc_lv<64> > grp_fu_132_p1;
    sc_signal< sc_lv<64> > ireg_V_1_fu_283_p1;
    sc_signal< sc_lv<11> > exp_tmp_V_1_fu_299_p4;
    sc_signal< sc_lv<52> > trunc_ln565_1_fu_313_p1;
    sc_signal< sc_lv<53> > tmp_2_fu_317_p3;
    sc_signal< sc_lv<54> > p_Result_3_fu_325_p1;
    sc_signal< sc_lv<1> > p_Result_2_fu_291_p3;
    sc_signal< sc_lv<54> > man_V_4_fu_329_p2;
    sc_signal< sc_lv<63> > trunc_ln556_1_fu_287_p1;
    sc_signal< sc_lv<12> > zext_ln461_1_fu_309_p1;
    sc_signal< sc_lv<12> > F2_1_fu_349_p2;
    sc_signal< sc_lv<12> > add_ln581_1_fu_361_p2;
    sc_signal< sc_lv<12> > sub_ln581_1_fu_367_p2;
    sc_signal< sc_lv<54> > zext_ln586_fu_404_p1;
    sc_signal< sc_lv<54> > ashr_ln586_fu_408_p2;
    sc_signal< sc_lv<1> > xor_ln571_fu_417_p2;
    sc_signal< sc_lv<1> > or_ln582_fu_427_p2;
    sc_signal< sc_lv<1> > xor_ln582_fu_431_p2;
    sc_signal< sc_lv<1> > and_ln581_fu_437_p2;
    sc_signal< sc_lv<1> > icmp_ln585_fu_394_p2;
    sc_signal< sc_lv<1> > xor_ln585_fu_448_p2;
    sc_signal< sc_lv<1> > or_ln581_fu_460_p2;
    sc_signal< sc_lv<1> > icmp_ln603_fu_399_p2;
    sc_signal< sc_lv<1> > xor_ln581_fu_465_p2;
    sc_signal< sc_lv<1> > and_ln585_1_fu_454_p2;
    sc_signal< sc_lv<1> > and_ln585_fu_442_p2;
    sc_signal< sc_lv<21> > trunc_ln586_fu_413_p1;
    sc_signal< sc_lv<1> > and_ln582_fu_422_p2;
    sc_signal< sc_lv<1> > or_ln603_1_fu_490_p2;
    sc_signal< sc_lv<54> > zext_ln586_1_fu_515_p1;
    sc_signal< sc_lv<54> > ashr_ln586_1_fu_519_p2;
    sc_signal< sc_lv<1> > xor_ln571_1_fu_528_p2;
    sc_signal< sc_lv<1> > or_ln582_1_fu_538_p2;
    sc_signal< sc_lv<1> > xor_ln582_1_fu_542_p2;
    sc_signal< sc_lv<1> > and_ln581_1_fu_548_p2;
    sc_signal< sc_lv<1> > icmp_ln585_1_fu_505_p2;
    sc_signal< sc_lv<1> > xor_ln585_1_fu_559_p2;
    sc_signal< sc_lv<1> > or_ln581_1_fu_571_p2;
    sc_signal< sc_lv<1> > icmp_ln603_1_fu_510_p2;
    sc_signal< sc_lv<1> > xor_ln581_1_fu_576_p2;
    sc_signal< sc_lv<1> > and_ln585_3_fu_565_p2;
    sc_signal< sc_lv<1> > and_ln585_2_fu_553_p2;
    sc_signal< sc_lv<21> > trunc_ln586_1_fu_524_p1;
    sc_signal< sc_lv<1> > and_ln582_1_fu_533_p2;
    sc_signal< sc_lv<1> > or_ln603_4_fu_601_p2;
    sc_signal< sc_lv<1> > tmp_4_fu_622_p3;
    sc_signal< sc_lv<21> > sext_ln581cast_fu_637_p1;
    sc_signal< sc_lv<21> > shl_ln604_fu_640_p2;
    sc_signal< sc_lv<21> > select_ln588_fu_629_p3;
    sc_signal< sc_lv<21> > select_ln603_fu_645_p3;
    sc_signal< sc_lv<21> > select_ln603_2_fu_652_p3;
    sc_signal< sc_lv<7> > zext_ln730_fu_613_p1;
    sc_signal< sc_lv<7> > add_ln734_fu_666_p2;
    sc_signal< sc_lv<1> > tmp_6_fu_677_p3;
    sc_signal< sc_lv<21> > sext_ln581_1cast_fu_692_p1;
    sc_signal< sc_lv<21> > shl_ln604_1_fu_695_p2;
    sc_signal< sc_lv<21> > select_ln588_1_fu_684_p3;
    sc_signal< sc_lv<21> > select_ln603_4_fu_700_p3;
    sc_signal< sc_lv<21> > select_ln603_6_fu_707_p3;
    sc_signal< sc_logic > grp_fu_129_ce;
    sc_signal< sc_logic > grp_fu_132_ce;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state6;
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
    static const sc_lv<32> ap_const_lv32_34;
    static const sc_lv<32> ap_const_lv32_3E;
    static const sc_lv<54> ap_const_lv54_0;
    static const sc_lv<63> ap_const_lv63_0;
    static const sc_lv<12> ap_const_lv12_433;
    static const sc_lv<12> ap_const_lv12_D;
    static const sc_lv<12> ap_const_lv12_FF3;
    static const sc_lv<12> ap_const_lv12_36;
    static const sc_lv<12> ap_const_lv12_15;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<21> ap_const_lv21_1FFFFF;
    static const sc_lv<21> ap_const_lv21_0;
    static const sc_lv<7> ap_const_lv7_34;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_F2_1_fu_349_p2();
    void thread_F2_fu_241_p2();
    void thread_LS_stream_TDATA_blk_n();
    void thread_LS_stream_TREADY();
    void thread_add_ln581_1_fu_361_p2();
    void thread_add_ln581_fu_253_p2();
    void thread_add_ln734_fu_666_p2();
    void thread_and_ln581_1_fu_548_p2();
    void thread_and_ln581_fu_437_p2();
    void thread_and_ln582_1_fu_533_p2();
    void thread_and_ln582_fu_422_p2();
    void thread_and_ln585_1_fu_454_p2();
    void thread_and_ln585_2_fu_553_p2();
    void thread_and_ln585_3_fu_565_p2();
    void thread_and_ln585_fu_442_p2();
    void thread_and_ln603_1_fu_582_p2();
    void thread_and_ln603_fu_471_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state6();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_block_state5_pp0_stage0_iter3();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_i_0_phi_fu_121_p4();
    void thread_ap_ready();
    void thread_ashr_ln586_1_fu_519_p2();
    void thread_ashr_ln586_fu_408_p2();
    void thread_exp_tmp_V_1_fu_299_p4();
    void thread_exp_tmp_V_fu_191_p4();
    void thread_grp_fu_129_ce();
    void thread_grp_fu_129_p0();
    void thread_grp_fu_132_ce();
    void thread_grp_fu_132_p0();
    void thread_i_fu_141_p2();
    void thread_icmp_ln571_1_fu_343_p2();
    void thread_icmp_ln571_fu_235_p2();
    void thread_icmp_ln581_1_fu_355_p2();
    void thread_icmp_ln581_fu_247_p2();
    void thread_icmp_ln582_1_fu_381_p2();
    void thread_icmp_ln582_fu_273_p2();
    void thread_icmp_ln585_1_fu_505_p2();
    void thread_icmp_ln585_fu_394_p2();
    void thread_icmp_ln603_1_fu_510_p2();
    void thread_icmp_ln603_fu_399_p2();
    void thread_icmp_ln730_fu_135_p2();
    void thread_ireg_V_1_fu_283_p1();
    void thread_ireg_V_fu_175_p1();
    void thread_man_V_1_fu_221_p2();
    void thread_man_V_2_fu_227_p3();
    void thread_man_V_4_fu_329_p2();
    void thread_man_V_5_fu_335_p3();
    void thread_or_ln581_1_fu_571_p2();
    void thread_or_ln581_fu_460_p2();
    void thread_or_ln582_1_fu_538_p2();
    void thread_or_ln582_fu_427_p2();
    void thread_or_ln603_1_fu_490_p2();
    void thread_or_ln603_2_fu_496_p2();
    void thread_or_ln603_3_fu_588_p2();
    void thread_or_ln603_4_fu_601_p2();
    void thread_or_ln603_5_fu_607_p2();
    void thread_or_ln603_fu_477_p2();
    void thread_p_Result_1_fu_217_p1();
    void thread_p_Result_2_fu_291_p3();
    void thread_p_Result_3_fu_325_p1();
    void thread_p_Result_s_fu_183_p3();
    void thread_select_ln588_1_fu_684_p3();
    void thread_select_ln588_fu_629_p3();
    void thread_select_ln603_1_fu_483_p3();
    void thread_select_ln603_2_fu_652_p3();
    void thread_select_ln603_4_fu_700_p3();
    void thread_select_ln603_5_fu_594_p3();
    void thread_select_ln603_6_fu_707_p3();
    void thread_select_ln603_fu_645_p3();
    void thread_sep_V_address0();
    void thread_sep_V_address1();
    void thread_sep_V_ce0();
    void thread_sep_V_ce1();
    void thread_sep_V_d0();
    void thread_sep_V_d1();
    void thread_sep_V_we0();
    void thread_sep_V_we1();
    void thread_sext_ln581_1_fu_502_p1();
    void thread_sext_ln581_1cast_fu_692_p1();
    void thread_sext_ln581_fu_391_p1();
    void thread_sext_ln581cast_fu_637_p1();
    void thread_sh_amt_1_fu_373_p3();
    void thread_sh_amt_fu_265_p3();
    void thread_shl_ln604_1_fu_695_p2();
    void thread_shl_ln604_fu_640_p2();
    void thread_sub_ln581_1_fu_367_p2();
    void thread_sub_ln581_fu_259_p2();
    void thread_tmp_1_fu_209_p3();
    void thread_tmp_2_fu_317_p3();
    void thread_tmp_4_fu_622_p3();
    void thread_tmp_6_fu_677_p3();
    void thread_trunc_ln24_fu_151_p1();
    void thread_trunc_ln556_1_fu_287_p1();
    void thread_trunc_ln556_fu_179_p1();
    void thread_trunc_ln565_1_fu_313_p1();
    void thread_trunc_ln565_fu_205_p1();
    void thread_trunc_ln583_1_fu_387_p1();
    void thread_trunc_ln583_fu_279_p1();
    void thread_trunc_ln586_1_fu_524_p1();
    void thread_trunc_ln586_fu_413_p1();
    void thread_v_assign_1_new8_fu_160_p4();
    void thread_xor_ln571_1_fu_528_p2();
    void thread_xor_ln571_fu_417_p2();
    void thread_xor_ln581_1_fu_576_p2();
    void thread_xor_ln581_fu_465_p2();
    void thread_xor_ln582_1_fu_542_p2();
    void thread_xor_ln582_fu_431_p2();
    void thread_xor_ln585_1_fu_559_p2();
    void thread_xor_ln585_fu_448_p2();
    void thread_zext_ln461_1_fu_309_p1();
    void thread_zext_ln461_fu_201_p1();
    void thread_zext_ln586_1_fu_515_p1();
    void thread_zext_ln586_fu_404_p1();
    void thread_zext_ln730_fu_613_p1();
    void thread_zext_ln733_fu_617_p1();
    void thread_zext_ln734_fu_672_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
