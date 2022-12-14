// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _DNN_u_HH_
#define _DNN_u_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "reconstruct_complex_s.h"
#include "separate_complex_u.h"
#include "DNN_u_faddfsub_32bkb.h"
#include "DNN_u_fmul_32ns_3cud.h"
#include "DNN_u_fdiv_32ns_3dEe.h"
#include "DNN_u_fcmp_32ns_3eOg.h"
#include "DNN_u_mean_in.h"
#include "DNN_u_std_in.h"
#include "DNN_u_L1_BIAS.h"
#include "DNN_u_L1_WEIGHTS.h"
#include "DNN_u_L2_BIAS.h"
#include "DNN_u_L2_WEIGHTS.h"
#include "DNN_u_std_o.h"
#include "DNN_u_mean_o.h"
#include "DNN_u_LS_data.h"
#include "DNN_u_norm_LS_data.h"
#include "DNN_u_y_L2.h"
#include "DNN_u_denorm_DNN.h"

namespace ap_rtl {

struct DNN_u : public sc_module {
    // Port declarations 10
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_lv<64> > LS_stream_TDATA;
    sc_in< sc_logic > LS_stream_TVALID;
    sc_out< sc_logic > LS_stream_TREADY;
    sc_in< sc_lv<1> > LS_stream_TLAST;
    sc_out< sc_lv<64> > DNN_out_TDATA;
    sc_out< sc_logic > DNN_out_TVALID;
    sc_in< sc_logic > DNN_out_TREADY;
    sc_out< sc_lv<1> > DNN_out_TLAST;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_lv<32> > ap_var_for_const1;
    sc_signal< sc_lv<5> > ap_var_for_const2;


    // Module declarations
    DNN_u(sc_module_name name);
    SC_HAS_PROCESS(DNN_u);

    ~DNN_u();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    DNN_u_mean_in* mean_in_U;
    DNN_u_std_in* std_in_U;
    DNN_u_L1_BIAS* L1_BIAS_U;
    DNN_u_L1_WEIGHTS* L1_WEIGHTS_U;
    DNN_u_L2_BIAS* L2_BIAS_U;
    DNN_u_L2_WEIGHTS* L2_WEIGHTS_U;
    DNN_u_std_o* std_o_U;
    DNN_u_mean_o* mean_o_U;
    DNN_u_LS_data* LS_data_U;
    DNN_u_norm_LS_data* norm_LS_data_U;
    DNN_u_y_L2* y_L2_U;
    DNN_u_norm_LS_data* y_L3_U;
    DNN_u_denorm_DNN* denorm_DNN_U;
    reconstruct_complex_s* grp_reconstruct_complex_s_fu_422;
    separate_complex_u* grp_separate_complex_u_fu_431;
    DNN_u_faddfsub_32bkb<1,5,32,32,32>* DNN_u_faddfsub_32bkb_U7;
    DNN_u_fmul_32ns_3cud<1,4,32,32,32>* DNN_u_fmul_32ns_3cud_U8;
    DNN_u_fdiv_32ns_3dEe<1,16,32,32,32>* DNN_u_fdiv_32ns_3dEe_U9;
    DNN_u_fcmp_32ns_3eOg<1,2,32,32,1>* DNN_u_fcmp_32ns_3eOg_U10;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_lv<64> > LS_stream_V_data_0_data_out;
    sc_signal< sc_logic > LS_stream_V_data_0_vld_in;
    sc_signal< sc_logic > LS_stream_V_data_0_vld_out;
    sc_signal< sc_logic > LS_stream_V_data_0_ack_in;
    sc_signal< sc_logic > LS_stream_V_data_0_ack_out;
    sc_signal< sc_lv<64> > LS_stream_V_data_0_payload_A;
    sc_signal< sc_lv<64> > LS_stream_V_data_0_payload_B;
    sc_signal< sc_logic > LS_stream_V_data_0_sel_rd;
    sc_signal< sc_logic > LS_stream_V_data_0_sel_wr;
    sc_signal< sc_logic > LS_stream_V_data_0_sel;
    sc_signal< sc_logic > LS_stream_V_data_0_load_A;
    sc_signal< sc_logic > LS_stream_V_data_0_load_B;
    sc_signal< sc_lv<2> > LS_stream_V_data_0_state;
    sc_signal< sc_logic > LS_stream_V_data_0_state_cmp_full;
    sc_signal< sc_lv<1> > LS_stream_V_last_V_0_data_out;
    sc_signal< sc_logic > LS_stream_V_last_V_0_vld_in;
    sc_signal< sc_logic > LS_stream_V_last_V_0_vld_out;
    sc_signal< sc_logic > LS_stream_V_last_V_0_ack_in;
    sc_signal< sc_logic > LS_stream_V_last_V_0_ack_out;
    sc_signal< sc_lv<1> > LS_stream_V_last_V_0_payload_A;
    sc_signal< sc_lv<1> > LS_stream_V_last_V_0_payload_B;
    sc_signal< sc_logic > LS_stream_V_last_V_0_sel_rd;
    sc_signal< sc_logic > LS_stream_V_last_V_0_sel_wr;
    sc_signal< sc_logic > LS_stream_V_last_V_0_sel;
    sc_signal< sc_logic > LS_stream_V_last_V_0_load_A;
    sc_signal< sc_logic > LS_stream_V_last_V_0_load_B;
    sc_signal< sc_lv<2> > LS_stream_V_last_V_0_state;
    sc_signal< sc_logic > LS_stream_V_last_V_0_state_cmp_full;
    sc_signal< sc_lv<64> > DNN_out_V_data_1_data_out;
    sc_signal< sc_logic > DNN_out_V_data_1_vld_in;
    sc_signal< sc_logic > DNN_out_V_data_1_vld_out;
    sc_signal< sc_logic > DNN_out_V_data_1_ack_in;
    sc_signal< sc_logic > DNN_out_V_data_1_ack_out;
    sc_signal< sc_lv<64> > DNN_out_V_data_1_payload_A;
    sc_signal< sc_lv<64> > DNN_out_V_data_1_payload_B;
    sc_signal< sc_logic > DNN_out_V_data_1_sel_rd;
    sc_signal< sc_logic > DNN_out_V_data_1_sel_wr;
    sc_signal< sc_logic > DNN_out_V_data_1_sel;
    sc_signal< sc_logic > DNN_out_V_data_1_load_A;
    sc_signal< sc_logic > DNN_out_V_data_1_load_B;
    sc_signal< sc_lv<2> > DNN_out_V_data_1_state;
    sc_signal< sc_logic > DNN_out_V_data_1_state_cmp_full;
    sc_signal< sc_lv<1> > DNN_out_V_last_V_1_data_out;
    sc_signal< sc_logic > DNN_out_V_last_V_1_vld_in;
    sc_signal< sc_logic > DNN_out_V_last_V_1_vld_out;
    sc_signal< sc_logic > DNN_out_V_last_V_1_ack_in;
    sc_signal< sc_logic > DNN_out_V_last_V_1_ack_out;
    sc_signal< sc_lv<1> > DNN_out_V_last_V_1_payload_A;
    sc_signal< sc_lv<1> > DNN_out_V_last_V_1_payload_B;
    sc_signal< sc_logic > DNN_out_V_last_V_1_sel_rd;
    sc_signal< sc_logic > DNN_out_V_last_V_1_sel_wr;
    sc_signal< sc_logic > DNN_out_V_last_V_1_sel;
    sc_signal< sc_logic > DNN_out_V_last_V_1_load_A;
    sc_signal< sc_logic > DNN_out_V_last_V_1_load_B;
    sc_signal< sc_lv<2> > DNN_out_V_last_V_1_state;
    sc_signal< sc_logic > DNN_out_V_last_V_1_state_cmp_full;
    sc_signal< sc_lv<7> > mean_in_address0;
    sc_signal< sc_logic > mean_in_ce0;
    sc_signal< sc_lv<32> > mean_in_q0;
    sc_signal< sc_lv<7> > std_in_address0;
    sc_signal< sc_logic > std_in_ce0;
    sc_signal< sc_lv<32> > std_in_q0;
    sc_signal< sc_lv<6> > L1_BIAS_address0;
    sc_signal< sc_logic > L1_BIAS_ce0;
    sc_signal< sc_lv<32> > L1_BIAS_q0;
    sc_signal< sc_lv<13> > L1_WEIGHTS_address0;
    sc_signal< sc_logic > L1_WEIGHTS_ce0;
    sc_signal< sc_lv<32> > L1_WEIGHTS_q0;
    sc_signal< sc_lv<7> > L2_BIAS_address0;
    sc_signal< sc_logic > L2_BIAS_ce0;
    sc_signal< sc_lv<32> > L2_BIAS_q0;
    sc_signal< sc_lv<13> > L2_WEIGHTS_address0;
    sc_signal< sc_logic > L2_WEIGHTS_ce0;
    sc_signal< sc_lv<32> > L2_WEIGHTS_q0;
    sc_signal< sc_lv<7> > std_o_address0;
    sc_signal< sc_logic > std_o_ce0;
    sc_signal< sc_lv<32> > std_o_q0;
    sc_signal< sc_lv<7> > mean_o_address0;
    sc_signal< sc_logic > mean_o_ce0;
    sc_signal< sc_lv<32> > mean_o_q0;
    sc_signal< sc_lv<32> > grp_fu_440_p2;
    sc_signal< sc_lv<32> > reg_460;
    sc_signal< sc_lv<69> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > ap_CS_fsm_state40;
    sc_signal< sc_logic > ap_CS_fsm_state55;
    sc_signal< sc_logic > ap_CS_fsm_state66;
    sc_signal< sc_lv<32> > grp_fu_446_p2;
    sc_signal< sc_lv<32> > reg_468;
    sc_signal< sc_logic > ap_CS_fsm_state35;
    sc_signal< sc_logic > ap_CS_fsm_state50;
    sc_signal< sc_logic > ap_CS_fsm_state61;
    sc_signal< sc_lv<7> > i_fu_480_p2;
    sc_signal< sc_lv<7> > i_reg_671;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<64> > zext_ln132_fu_486_p1;
    sc_signal< sc_lv<64> > zext_ln132_reg_676;
    sc_signal< sc_lv<1> > icmp_ln131_fu_474_p2;
    sc_signal< sc_lv<32> > LS_data_q0;
    sc_signal< sc_lv<32> > LS_data_load_reg_692;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<32> > mean_in_load_reg_697;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<32> > std_in_load_reg_707;
    sc_signal< sc_lv<32> > grp_fu_450_p2;
    sc_signal< sc_lv<32> > tmp_1_i_reg_712;
    sc_signal< sc_logic > ap_CS_fsm_state26;
    sc_signal< sc_lv<6> > i_1_fu_498_p2;
    sc_signal< sc_lv<6> > i_1_reg_720;
    sc_signal< sc_logic > ap_CS_fsm_state28;
    sc_signal< sc_lv<64> > zext_ln140_fu_504_p1;
    sc_signal< sc_lv<64> > zext_ln140_reg_725;
    sc_signal< sc_lv<1> > icmp_ln138_fu_492_p2;
    sc_signal< sc_lv<13> > zext_ln140_1_fu_509_p1;
    sc_signal< sc_lv<13> > zext_ln140_1_reg_735;
    sc_signal< sc_logic > ap_CS_fsm_state29;
    sc_signal< sc_lv<7> > j_fu_519_p2;
    sc_signal< sc_lv<7> > j_reg_748;
    sc_signal< sc_logic > ap_CS_fsm_state30;
    sc_signal< sc_lv<13> > add_ln142_1_fu_530_p2;
    sc_signal< sc_lv<13> > add_ln142_1_reg_753;
    sc_signal< sc_lv<1> > icmp_ln141_fu_513_p2;
    sc_signal< sc_lv<32> > norm_LS_data_q0;
    sc_signal< sc_lv<32> > norm_LS_data_load_reg_768;
    sc_signal< sc_logic > ap_CS_fsm_state31;
    sc_signal< sc_lv<32> > L1_WEIGHTS_load_reg_773;
    sc_signal< sc_lv<1> > grp_fu_454_p2;
    sc_signal< sc_lv<1> > tmp_1_reg_778;
    sc_signal< sc_logic > ap_CS_fsm_state41;
    sc_signal< sc_lv<7> > i_3_fu_602_p2;
    sc_signal< sc_lv<7> > i_3_reg_786;
    sc_signal< sc_logic > ap_CS_fsm_state43;
    sc_signal< sc_lv<64> > zext_ln153_fu_608_p1;
    sc_signal< sc_lv<64> > zext_ln153_reg_791;
    sc_signal< sc_lv<1> > icmp_ln151_fu_596_p2;
    sc_signal< sc_lv<13> > zext_ln153_1_fu_613_p1;
    sc_signal< sc_lv<13> > zext_ln153_1_reg_801;
    sc_signal< sc_logic > ap_CS_fsm_state44;
    sc_signal< sc_lv<6> > j_1_fu_623_p2;
    sc_signal< sc_lv<6> > j_1_reg_814;
    sc_signal< sc_logic > ap_CS_fsm_state45;
    sc_signal< sc_lv<13> > add_ln155_1_fu_634_p2;
    sc_signal< sc_lv<13> > add_ln155_1_reg_819;
    sc_signal< sc_lv<1> > icmp_ln154_fu_617_p2;
    sc_signal< sc_lv<32> > y_L2_q0;
    sc_signal< sc_lv<32> > y_L2_load_reg_834;
    sc_signal< sc_logic > ap_CS_fsm_state46;
    sc_signal< sc_lv<32> > L2_WEIGHTS_load_reg_839;
    sc_signal< sc_lv<7> > i_2_fu_656_p2;
    sc_signal< sc_lv<7> > i_2_reg_847;
    sc_signal< sc_logic > ap_CS_fsm_state56;
    sc_signal< sc_lv<64> > zext_ln165_fu_662_p1;
    sc_signal< sc_lv<64> > zext_ln165_reg_852;
    sc_signal< sc_lv<1> > icmp_ln164_fu_650_p2;
    sc_signal< sc_lv<32> > y_L3_q0;
    sc_signal< sc_lv<32> > y_L3_load_reg_868;
    sc_signal< sc_logic > ap_CS_fsm_state57;
    sc_signal< sc_lv<32> > std_o_load_reg_873;
    sc_signal< sc_logic > ap_CS_fsm_state60;
    sc_signal< sc_lv<32> > mean_o_load_reg_883;
    sc_signal< sc_lv<7> > LS_data_address0;
    sc_signal< sc_logic > LS_data_ce0;
    sc_signal< sc_logic > LS_data_we0;
    sc_signal< sc_logic > LS_data_ce1;
    sc_signal< sc_logic > LS_data_we1;
    sc_signal< sc_lv<7> > norm_LS_data_address0;
    sc_signal< sc_logic > norm_LS_data_ce0;
    sc_signal< sc_logic > norm_LS_data_we0;
    sc_signal< sc_lv<6> > y_L2_address0;
    sc_signal< sc_logic > y_L2_ce0;
    sc_signal< sc_logic > y_L2_we0;
    sc_signal< sc_lv<32> > y_L2_d0;
    sc_signal< sc_lv<7> > y_L3_address0;
    sc_signal< sc_logic > y_L3_ce0;
    sc_signal< sc_logic > y_L3_we0;
    sc_signal< sc_lv<7> > denorm_DNN_address0;
    sc_signal< sc_logic > denorm_DNN_ce0;
    sc_signal< sc_logic > denorm_DNN_we0;
    sc_signal< sc_lv<32> > denorm_DNN_q0;
    sc_signal< sc_logic > denorm_DNN_ce1;
    sc_signal< sc_lv<32> > denorm_DNN_q1;
    sc_signal< sc_logic > grp_reconstruct_complex_s_fu_422_ap_start;
    sc_signal< sc_logic > grp_reconstruct_complex_s_fu_422_ap_done;
    sc_signal< sc_logic > grp_reconstruct_complex_s_fu_422_ap_idle;
    sc_signal< sc_logic > grp_reconstruct_complex_s_fu_422_ap_ready;
    sc_signal< sc_lv<7> > grp_reconstruct_complex_s_fu_422_y_L3_address0;
    sc_signal< sc_logic > grp_reconstruct_complex_s_fu_422_y_L3_ce0;
    sc_signal< sc_lv<7> > grp_reconstruct_complex_s_fu_422_y_L3_address1;
    sc_signal< sc_logic > grp_reconstruct_complex_s_fu_422_y_L3_ce1;
    sc_signal< sc_lv<64> > grp_reconstruct_complex_s_fu_422_DNN_out_TDATA;
    sc_signal< sc_logic > grp_reconstruct_complex_s_fu_422_DNN_out_TVALID;
    sc_signal< sc_logic > grp_reconstruct_complex_s_fu_422_DNN_out_TREADY;
    sc_signal< sc_lv<1> > grp_reconstruct_complex_s_fu_422_DNN_out_TLAST;
    sc_signal< sc_logic > grp_separate_complex_u_fu_431_ap_start;
    sc_signal< sc_logic > grp_separate_complex_u_fu_431_ap_done;
    sc_signal< sc_logic > grp_separate_complex_u_fu_431_ap_idle;
    sc_signal< sc_logic > grp_separate_complex_u_fu_431_ap_ready;
    sc_signal< sc_logic > grp_separate_complex_u_fu_431_LS_stream_TVALID;
    sc_signal< sc_logic > grp_separate_complex_u_fu_431_LS_stream_TREADY;
    sc_signal< sc_lv<7> > grp_separate_complex_u_fu_431_sep_address0;
    sc_signal< sc_logic > grp_separate_complex_u_fu_431_sep_ce0;
    sc_signal< sc_logic > grp_separate_complex_u_fu_431_sep_we0;
    sc_signal< sc_lv<32> > grp_separate_complex_u_fu_431_sep_d0;
    sc_signal< sc_lv<7> > grp_separate_complex_u_fu_431_sep_address1;
    sc_signal< sc_logic > grp_separate_complex_u_fu_431_sep_ce1;
    sc_signal< sc_logic > grp_separate_complex_u_fu_431_sep_we1;
    sc_signal< sc_lv<32> > grp_separate_complex_u_fu_431_sep_d1;
    sc_signal< sc_lv<7> > i_0_i_reg_311;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state27;
    sc_signal< sc_lv<6> > i_0_i12_reg_322;
    sc_signal< sc_logic > ap_CS_fsm_state42;
    sc_signal< sc_lv<32> > x_assign_reg_334;
    sc_signal< sc_lv<7> > j_0_i_reg_344;
    sc_signal< sc_lv<13> > phi_mul_reg_355;
    sc_signal< sc_lv<7> > i_0_i14_reg_366;
    sc_signal< sc_lv<32> > before_relu_0_i17_reg_378;
    sc_signal< sc_lv<6> > j_0_i18_reg_389;
    sc_signal< sc_lv<13> > phi_mul1_reg_400;
    sc_signal< sc_lv<7> > i_0_i24_reg_411;
    sc_signal< sc_logic > ap_CS_fsm_state67;
    sc_signal< sc_logic > grp_reconstruct_complex_s_fu_422_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state68;
    sc_signal< sc_logic > grp_separate_complex_u_fu_431_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<64> > zext_ln142_1_fu_541_p1;
    sc_signal< sc_lv<64> > zext_ln142_fu_525_p1;
    sc_signal< sc_lv<64> > zext_ln155_1_fu_645_p1;
    sc_signal< sc_lv<64> > zext_ln155_fu_629_p1;
    sc_signal< sc_lv<32> > grp_fu_440_p0;
    sc_signal< sc_lv<32> > grp_fu_440_p1;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state36;
    sc_signal< sc_logic > ap_CS_fsm_state51;
    sc_signal< sc_logic > ap_CS_fsm_state62;
    sc_signal< sc_lv<32> > grp_fu_446_p0;
    sc_signal< sc_lv<32> > grp_fu_446_p1;
    sc_signal< sc_logic > ap_CS_fsm_state32;
    sc_signal< sc_logic > ap_CS_fsm_state47;
    sc_signal< sc_logic > ap_CS_fsm_state58;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<13> > add_ln142_fu_536_p2;
    sc_signal< sc_lv<32> > bitcast_ln110_fu_546_p1;
    sc_signal< sc_lv<8> > tmp_fu_550_p4;
    sc_signal< sc_lv<23> > trunc_ln110_fu_560_p1;
    sc_signal< sc_lv<1> > icmp_ln110_1_fu_570_p2;
    sc_signal< sc_lv<1> > icmp_ln110_fu_564_p2;
    sc_signal< sc_lv<1> > or_ln110_fu_576_p2;
    sc_signal< sc_lv<1> > and_ln110_fu_582_p2;
    sc_signal< sc_lv<13> > add_ln155_fu_640_p2;
    sc_signal< sc_lv<2> > grp_fu_440_opcode;
    sc_signal< sc_lv<69> > ap_NS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state69;
    sc_signal< bool > ap_block_state69;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<69> ap_ST_fsm_state1;
    static const sc_lv<69> ap_ST_fsm_state2;
    static const sc_lv<69> ap_ST_fsm_state3;
    static const sc_lv<69> ap_ST_fsm_state4;
    static const sc_lv<69> ap_ST_fsm_state5;
    static const sc_lv<69> ap_ST_fsm_state6;
    static const sc_lv<69> ap_ST_fsm_state7;
    static const sc_lv<69> ap_ST_fsm_state8;
    static const sc_lv<69> ap_ST_fsm_state9;
    static const sc_lv<69> ap_ST_fsm_state10;
    static const sc_lv<69> ap_ST_fsm_state11;
    static const sc_lv<69> ap_ST_fsm_state12;
    static const sc_lv<69> ap_ST_fsm_state13;
    static const sc_lv<69> ap_ST_fsm_state14;
    static const sc_lv<69> ap_ST_fsm_state15;
    static const sc_lv<69> ap_ST_fsm_state16;
    static const sc_lv<69> ap_ST_fsm_state17;
    static const sc_lv<69> ap_ST_fsm_state18;
    static const sc_lv<69> ap_ST_fsm_state19;
    static const sc_lv<69> ap_ST_fsm_state20;
    static const sc_lv<69> ap_ST_fsm_state21;
    static const sc_lv<69> ap_ST_fsm_state22;
    static const sc_lv<69> ap_ST_fsm_state23;
    static const sc_lv<69> ap_ST_fsm_state24;
    static const sc_lv<69> ap_ST_fsm_state25;
    static const sc_lv<69> ap_ST_fsm_state26;
    static const sc_lv<69> ap_ST_fsm_state27;
    static const sc_lv<69> ap_ST_fsm_state28;
    static const sc_lv<69> ap_ST_fsm_state29;
    static const sc_lv<69> ap_ST_fsm_state30;
    static const sc_lv<69> ap_ST_fsm_state31;
    static const sc_lv<69> ap_ST_fsm_state32;
    static const sc_lv<69> ap_ST_fsm_state33;
    static const sc_lv<69> ap_ST_fsm_state34;
    static const sc_lv<69> ap_ST_fsm_state35;
    static const sc_lv<69> ap_ST_fsm_state36;
    static const sc_lv<69> ap_ST_fsm_state37;
    static const sc_lv<69> ap_ST_fsm_state38;
    static const sc_lv<69> ap_ST_fsm_state39;
    static const sc_lv<69> ap_ST_fsm_state40;
    static const sc_lv<69> ap_ST_fsm_state41;
    static const sc_lv<69> ap_ST_fsm_state42;
    static const sc_lv<69> ap_ST_fsm_state43;
    static const sc_lv<69> ap_ST_fsm_state44;
    static const sc_lv<69> ap_ST_fsm_state45;
    static const sc_lv<69> ap_ST_fsm_state46;
    static const sc_lv<69> ap_ST_fsm_state47;
    static const sc_lv<69> ap_ST_fsm_state48;
    static const sc_lv<69> ap_ST_fsm_state49;
    static const sc_lv<69> ap_ST_fsm_state50;
    static const sc_lv<69> ap_ST_fsm_state51;
    static const sc_lv<69> ap_ST_fsm_state52;
    static const sc_lv<69> ap_ST_fsm_state53;
    static const sc_lv<69> ap_ST_fsm_state54;
    static const sc_lv<69> ap_ST_fsm_state55;
    static const sc_lv<69> ap_ST_fsm_state56;
    static const sc_lv<69> ap_ST_fsm_state57;
    static const sc_lv<69> ap_ST_fsm_state58;
    static const sc_lv<69> ap_ST_fsm_state59;
    static const sc_lv<69> ap_ST_fsm_state60;
    static const sc_lv<69> ap_ST_fsm_state61;
    static const sc_lv<69> ap_ST_fsm_state62;
    static const sc_lv<69> ap_ST_fsm_state63;
    static const sc_lv<69> ap_ST_fsm_state64;
    static const sc_lv<69> ap_ST_fsm_state65;
    static const sc_lv<69> ap_ST_fsm_state66;
    static const sc_lv<69> ap_ST_fsm_state67;
    static const sc_lv<69> ap_ST_fsm_state68;
    static const sc_lv<69> ap_ST_fsm_state69;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_27;
    static const sc_lv<32> ap_const_lv32_36;
    static const sc_lv<32> ap_const_lv32_41;
    static const sc_lv<32> ap_const_lv32_22;
    static const sc_lv<32> ap_const_lv32_31;
    static const sc_lv<32> ap_const_lv32_3C;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<32> ap_const_lv32_28;
    static const sc_lv<32> ap_const_lv32_2A;
    static const sc_lv<32> ap_const_lv32_2B;
    static const sc_lv<32> ap_const_lv32_2C;
    static const sc_lv<32> ap_const_lv32_2D;
    static const sc_lv<32> ap_const_lv32_37;
    static const sc_lv<32> ap_const_lv32_38;
    static const sc_lv<32> ap_const_lv32_3B;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_29;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<13> ap_const_lv13_0;
    static const sc_lv<32> ap_const_lv32_42;
    static const sc_lv<32> ap_const_lv32_43;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_23;
    static const sc_lv<32> ap_const_lv32_32;
    static const sc_lv<32> ap_const_lv32_3D;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_2E;
    static const sc_lv<32> ap_const_lv32_39;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<7> ap_const_lv7_68;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<6> ap_const_lv6_34;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<13> ap_const_lv13_34;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<23> ap_const_lv23_0;
    static const sc_lv<13> ap_const_lv13_68;
    static const sc_lv<5> ap_const_lv5_4;
    static const sc_lv<32> ap_const_lv32_44;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const2();
    void thread_ap_clk_no_reset_();
    void thread_DNN_out_TDATA();
    void thread_DNN_out_TLAST();
    void thread_DNN_out_TVALID();
    void thread_DNN_out_V_data_1_ack_in();
    void thread_DNN_out_V_data_1_ack_out();
    void thread_DNN_out_V_data_1_data_out();
    void thread_DNN_out_V_data_1_load_A();
    void thread_DNN_out_V_data_1_load_B();
    void thread_DNN_out_V_data_1_sel();
    void thread_DNN_out_V_data_1_state_cmp_full();
    void thread_DNN_out_V_data_1_vld_in();
    void thread_DNN_out_V_data_1_vld_out();
    void thread_DNN_out_V_last_V_1_ack_in();
    void thread_DNN_out_V_last_V_1_ack_out();
    void thread_DNN_out_V_last_V_1_data_out();
    void thread_DNN_out_V_last_V_1_load_A();
    void thread_DNN_out_V_last_V_1_load_B();
    void thread_DNN_out_V_last_V_1_sel();
    void thread_DNN_out_V_last_V_1_state_cmp_full();
    void thread_DNN_out_V_last_V_1_vld_in();
    void thread_DNN_out_V_last_V_1_vld_out();
    void thread_L1_BIAS_address0();
    void thread_L1_BIAS_ce0();
    void thread_L1_WEIGHTS_address0();
    void thread_L1_WEIGHTS_ce0();
    void thread_L2_BIAS_address0();
    void thread_L2_BIAS_ce0();
    void thread_L2_WEIGHTS_address0();
    void thread_L2_WEIGHTS_ce0();
    void thread_LS_data_address0();
    void thread_LS_data_ce0();
    void thread_LS_data_ce1();
    void thread_LS_data_we0();
    void thread_LS_data_we1();
    void thread_LS_stream_TREADY();
    void thread_LS_stream_V_data_0_ack_in();
    void thread_LS_stream_V_data_0_ack_out();
    void thread_LS_stream_V_data_0_data_out();
    void thread_LS_stream_V_data_0_load_A();
    void thread_LS_stream_V_data_0_load_B();
    void thread_LS_stream_V_data_0_sel();
    void thread_LS_stream_V_data_0_state_cmp_full();
    void thread_LS_stream_V_data_0_vld_in();
    void thread_LS_stream_V_data_0_vld_out();
    void thread_LS_stream_V_last_V_0_ack_in();
    void thread_LS_stream_V_last_V_0_ack_out();
    void thread_LS_stream_V_last_V_0_data_out();
    void thread_LS_stream_V_last_V_0_load_A();
    void thread_LS_stream_V_last_V_0_load_B();
    void thread_LS_stream_V_last_V_0_sel();
    void thread_LS_stream_V_last_V_0_state_cmp_full();
    void thread_LS_stream_V_last_V_0_vld_in();
    void thread_LS_stream_V_last_V_0_vld_out();
    void thread_add_ln142_1_fu_530_p2();
    void thread_add_ln142_fu_536_p2();
    void thread_add_ln155_1_fu_634_p2();
    void thread_add_ln155_fu_640_p2();
    void thread_and_ln110_fu_582_p2();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state26();
    void thread_ap_CS_fsm_state27();
    void thread_ap_CS_fsm_state28();
    void thread_ap_CS_fsm_state29();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state30();
    void thread_ap_CS_fsm_state31();
    void thread_ap_CS_fsm_state32();
    void thread_ap_CS_fsm_state35();
    void thread_ap_CS_fsm_state36();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state40();
    void thread_ap_CS_fsm_state41();
    void thread_ap_CS_fsm_state42();
    void thread_ap_CS_fsm_state43();
    void thread_ap_CS_fsm_state44();
    void thread_ap_CS_fsm_state45();
    void thread_ap_CS_fsm_state46();
    void thread_ap_CS_fsm_state47();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state50();
    void thread_ap_CS_fsm_state51();
    void thread_ap_CS_fsm_state55();
    void thread_ap_CS_fsm_state56();
    void thread_ap_CS_fsm_state57();
    void thread_ap_CS_fsm_state58();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state60();
    void thread_ap_CS_fsm_state61();
    void thread_ap_CS_fsm_state62();
    void thread_ap_CS_fsm_state66();
    void thread_ap_CS_fsm_state67();
    void thread_ap_CS_fsm_state68();
    void thread_ap_CS_fsm_state69();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_state69();
    void thread_ap_rst_n_inv();
    void thread_bitcast_ln110_fu_546_p1();
    void thread_denorm_DNN_address0();
    void thread_denorm_DNN_ce0();
    void thread_denorm_DNN_ce1();
    void thread_denorm_DNN_we0();
    void thread_grp_fu_440_opcode();
    void thread_grp_fu_440_p0();
    void thread_grp_fu_440_p1();
    void thread_grp_fu_446_p0();
    void thread_grp_fu_446_p1();
    void thread_grp_reconstruct_complex_s_fu_422_DNN_out_TREADY();
    void thread_grp_reconstruct_complex_s_fu_422_ap_start();
    void thread_grp_separate_complex_u_fu_431_LS_stream_TVALID();
    void thread_grp_separate_complex_u_fu_431_ap_start();
    void thread_i_1_fu_498_p2();
    void thread_i_2_fu_656_p2();
    void thread_i_3_fu_602_p2();
    void thread_i_fu_480_p2();
    void thread_icmp_ln110_1_fu_570_p2();
    void thread_icmp_ln110_fu_564_p2();
    void thread_icmp_ln131_fu_474_p2();
    void thread_icmp_ln138_fu_492_p2();
    void thread_icmp_ln141_fu_513_p2();
    void thread_icmp_ln151_fu_596_p2();
    void thread_icmp_ln154_fu_617_p2();
    void thread_icmp_ln164_fu_650_p2();
    void thread_j_1_fu_623_p2();
    void thread_j_fu_519_p2();
    void thread_mean_in_address0();
    void thread_mean_in_ce0();
    void thread_mean_o_address0();
    void thread_mean_o_ce0();
    void thread_norm_LS_data_address0();
    void thread_norm_LS_data_ce0();
    void thread_norm_LS_data_we0();
    void thread_or_ln110_fu_576_p2();
    void thread_std_in_address0();
    void thread_std_in_ce0();
    void thread_std_o_address0();
    void thread_std_o_ce0();
    void thread_tmp_fu_550_p4();
    void thread_trunc_ln110_fu_560_p1();
    void thread_y_L2_address0();
    void thread_y_L2_ce0();
    void thread_y_L2_d0();
    void thread_y_L2_we0();
    void thread_y_L3_address0();
    void thread_y_L3_ce0();
    void thread_y_L3_we0();
    void thread_zext_ln132_fu_486_p1();
    void thread_zext_ln140_1_fu_509_p1();
    void thread_zext_ln140_fu_504_p1();
    void thread_zext_ln142_1_fu_541_p1();
    void thread_zext_ln142_fu_525_p1();
    void thread_zext_ln153_1_fu_613_p1();
    void thread_zext_ln153_fu_608_p1();
    void thread_zext_ln155_1_fu_645_p1();
    void thread_zext_ln155_fu_629_p1();
    void thread_zext_ln165_fu_662_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
