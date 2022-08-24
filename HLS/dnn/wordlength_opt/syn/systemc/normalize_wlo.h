// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _normalize_wlo_HH_
#define _normalize_wlo_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "DNN_wlo_hsub_16nseOg.h"
#include "DNN_wlo_hdiv_16nsfYi.h"
#include "normalize_wlo_meacud.h"
#include "normalize_wlo_stddEe.h"

namespace ap_rtl {

struct normalize_wlo : public sc_module {
    // Port declarations 113
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<7> > LS_data_address0;
    sc_out< sc_logic > LS_data_ce0;
    sc_in< sc_lv<16> > LS_data_q0;
    sc_out< sc_lv<16> > ap_return_0;
    sc_out< sc_lv<16> > ap_return_1;
    sc_out< sc_lv<16> > ap_return_2;
    sc_out< sc_lv<16> > ap_return_3;
    sc_out< sc_lv<16> > ap_return_4;
    sc_out< sc_lv<16> > ap_return_5;
    sc_out< sc_lv<16> > ap_return_6;
    sc_out< sc_lv<16> > ap_return_7;
    sc_out< sc_lv<16> > ap_return_8;
    sc_out< sc_lv<16> > ap_return_9;
    sc_out< sc_lv<16> > ap_return_10;
    sc_out< sc_lv<16> > ap_return_11;
    sc_out< sc_lv<16> > ap_return_12;
    sc_out< sc_lv<16> > ap_return_13;
    sc_out< sc_lv<16> > ap_return_14;
    sc_out< sc_lv<16> > ap_return_15;
    sc_out< sc_lv<16> > ap_return_16;
    sc_out< sc_lv<16> > ap_return_17;
    sc_out< sc_lv<16> > ap_return_18;
    sc_out< sc_lv<16> > ap_return_19;
    sc_out< sc_lv<16> > ap_return_20;
    sc_out< sc_lv<16> > ap_return_21;
    sc_out< sc_lv<16> > ap_return_22;
    sc_out< sc_lv<16> > ap_return_23;
    sc_out< sc_lv<16> > ap_return_24;
    sc_out< sc_lv<16> > ap_return_25;
    sc_out< sc_lv<16> > ap_return_26;
    sc_out< sc_lv<16> > ap_return_27;
    sc_out< sc_lv<16> > ap_return_28;
    sc_out< sc_lv<16> > ap_return_29;
    sc_out< sc_lv<16> > ap_return_30;
    sc_out< sc_lv<16> > ap_return_31;
    sc_out< sc_lv<16> > ap_return_32;
    sc_out< sc_lv<16> > ap_return_33;
    sc_out< sc_lv<16> > ap_return_34;
    sc_out< sc_lv<16> > ap_return_35;
    sc_out< sc_lv<16> > ap_return_36;
    sc_out< sc_lv<16> > ap_return_37;
    sc_out< sc_lv<16> > ap_return_38;
    sc_out< sc_lv<16> > ap_return_39;
    sc_out< sc_lv<16> > ap_return_40;
    sc_out< sc_lv<16> > ap_return_41;
    sc_out< sc_lv<16> > ap_return_42;
    sc_out< sc_lv<16> > ap_return_43;
    sc_out< sc_lv<16> > ap_return_44;
    sc_out< sc_lv<16> > ap_return_45;
    sc_out< sc_lv<16> > ap_return_46;
    sc_out< sc_lv<16> > ap_return_47;
    sc_out< sc_lv<16> > ap_return_48;
    sc_out< sc_lv<16> > ap_return_49;
    sc_out< sc_lv<16> > ap_return_50;
    sc_out< sc_lv<16> > ap_return_51;
    sc_out< sc_lv<16> > ap_return_52;
    sc_out< sc_lv<16> > ap_return_53;
    sc_out< sc_lv<16> > ap_return_54;
    sc_out< sc_lv<16> > ap_return_55;
    sc_out< sc_lv<16> > ap_return_56;
    sc_out< sc_lv<16> > ap_return_57;
    sc_out< sc_lv<16> > ap_return_58;
    sc_out< sc_lv<16> > ap_return_59;
    sc_out< sc_lv<16> > ap_return_60;
    sc_out< sc_lv<16> > ap_return_61;
    sc_out< sc_lv<16> > ap_return_62;
    sc_out< sc_lv<16> > ap_return_63;
    sc_out< sc_lv<16> > ap_return_64;
    sc_out< sc_lv<16> > ap_return_65;
    sc_out< sc_lv<16> > ap_return_66;
    sc_out< sc_lv<16> > ap_return_67;
    sc_out< sc_lv<16> > ap_return_68;
    sc_out< sc_lv<16> > ap_return_69;
    sc_out< sc_lv<16> > ap_return_70;
    sc_out< sc_lv<16> > ap_return_71;
    sc_out< sc_lv<16> > ap_return_72;
    sc_out< sc_lv<16> > ap_return_73;
    sc_out< sc_lv<16> > ap_return_74;
    sc_out< sc_lv<16> > ap_return_75;
    sc_out< sc_lv<16> > ap_return_76;
    sc_out< sc_lv<16> > ap_return_77;
    sc_out< sc_lv<16> > ap_return_78;
    sc_out< sc_lv<16> > ap_return_79;
    sc_out< sc_lv<16> > ap_return_80;
    sc_out< sc_lv<16> > ap_return_81;
    sc_out< sc_lv<16> > ap_return_82;
    sc_out< sc_lv<16> > ap_return_83;
    sc_out< sc_lv<16> > ap_return_84;
    sc_out< sc_lv<16> > ap_return_85;
    sc_out< sc_lv<16> > ap_return_86;
    sc_out< sc_lv<16> > ap_return_87;
    sc_out< sc_lv<16> > ap_return_88;
    sc_out< sc_lv<16> > ap_return_89;
    sc_out< sc_lv<16> > ap_return_90;
    sc_out< sc_lv<16> > ap_return_91;
    sc_out< sc_lv<16> > ap_return_92;
    sc_out< sc_lv<16> > ap_return_93;
    sc_out< sc_lv<16> > ap_return_94;
    sc_out< sc_lv<16> > ap_return_95;
    sc_out< sc_lv<16> > ap_return_96;
    sc_out< sc_lv<16> > ap_return_97;
    sc_out< sc_lv<16> > ap_return_98;
    sc_out< sc_lv<16> > ap_return_99;
    sc_out< sc_lv<16> > ap_return_100;
    sc_out< sc_lv<16> > ap_return_101;
    sc_out< sc_lv<16> > ap_return_102;
    sc_out< sc_lv<16> > ap_return_103;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    normalize_wlo(sc_module_name name);
    SC_HAS_PROCESS(normalize_wlo);

    ~normalize_wlo();

    sc_trace_file* mVcdFile;

    normalize_wlo_meacud* mean_in_U;
    normalize_wlo_stddEe* std_in_U;
    DNN_wlo_hsub_16nseOg<1,5,16,16,16>* DNN_wlo_hsub_16nseOg_U7;
    DNN_wlo_hdiv_16nsfYi<1,7,16,16,16>* DNN_wlo_hdiv_16nsfYi_U8;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<7> > mean_in_address0;
    sc_signal< sc_logic > mean_in_ce0;
    sc_signal< sc_lv<16> > mean_in_q0;
    sc_signal< sc_lv<7> > std_in_address0;
    sc_signal< sc_logic > std_in_ce0;
    sc_signal< sc_lv<16> > std_in_q0;
    sc_signal< sc_lv<7> > i_0_reg_599;
    sc_signal< sc_lv<1> > icmp_ln490_fu_930_p2;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter4;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter5;
    sc_signal< bool > ap_block_state8_pp0_stage0_iter6;
    sc_signal< bool > ap_block_state9_pp0_stage0_iter7;
    sc_signal< bool > ap_block_state10_pp0_stage0_iter8;
    sc_signal< bool > ap_block_state11_pp0_stage0_iter9;
    sc_signal< bool > ap_block_state12_pp0_stage0_iter10;
    sc_signal< bool > ap_block_state13_pp0_stage0_iter11;
    sc_signal< bool > ap_block_state14_pp0_stage0_iter12;
    sc_signal< bool > ap_block_state15_pp0_stage0_iter13;
    sc_signal< bool > ap_block_state16_pp0_stage0_iter14;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<7> > i_fu_936_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<6> > lshr_ln_reg_3379;
    sc_signal< sc_lv<6> > lshr_ln_reg_3379_pp0_iter1_reg;
    sc_signal< sc_lv<6> > lshr_ln_reg_3379_pp0_iter2_reg;
    sc_signal< sc_lv<6> > lshr_ln_reg_3379_pp0_iter3_reg;
    sc_signal< sc_lv<6> > lshr_ln_reg_3379_pp0_iter4_reg;
    sc_signal< sc_lv<6> > lshr_ln_reg_3379_pp0_iter5_reg;
    sc_signal< sc_lv<6> > lshr_ln_reg_3379_pp0_iter6_reg;
    sc_signal< sc_lv<6> > lshr_ln_reg_3379_pp0_iter7_reg;
    sc_signal< sc_lv<6> > lshr_ln_reg_3379_pp0_iter8_reg;
    sc_signal< sc_lv<6> > lshr_ln_reg_3379_pp0_iter9_reg;
    sc_signal< sc_lv<6> > lshr_ln_reg_3379_pp0_iter10_reg;
    sc_signal< sc_lv<6> > lshr_ln_reg_3379_pp0_iter11_reg;
    sc_signal< sc_lv<6> > lshr_ln_reg_3379_pp0_iter12_reg;
    sc_signal< sc_lv<6> > lshr_ln_reg_3379_pp0_iter13_reg;
    sc_signal< sc_lv<1> > trunc_ln492_fu_959_p1;
    sc_signal< sc_lv<1> > trunc_ln492_reg_3383;
    sc_signal< sc_lv<1> > trunc_ln492_reg_3383_pp0_iter1_reg;
    sc_signal< sc_lv<1> > trunc_ln492_reg_3383_pp0_iter2_reg;
    sc_signal< sc_lv<1> > trunc_ln492_reg_3383_pp0_iter3_reg;
    sc_signal< sc_lv<1> > trunc_ln492_reg_3383_pp0_iter4_reg;
    sc_signal< sc_lv<1> > trunc_ln492_reg_3383_pp0_iter5_reg;
    sc_signal< sc_lv<1> > trunc_ln492_reg_3383_pp0_iter6_reg;
    sc_signal< sc_lv<1> > trunc_ln492_reg_3383_pp0_iter7_reg;
    sc_signal< sc_lv<1> > trunc_ln492_reg_3383_pp0_iter8_reg;
    sc_signal< sc_lv<1> > trunc_ln492_reg_3383_pp0_iter9_reg;
    sc_signal< sc_lv<1> > trunc_ln492_reg_3383_pp0_iter10_reg;
    sc_signal< sc_lv<1> > trunc_ln492_reg_3383_pp0_iter11_reg;
    sc_signal< sc_lv<1> > trunc_ln492_reg_3383_pp0_iter12_reg;
    sc_signal< sc_lv<1> > trunc_ln492_reg_3383_pp0_iter13_reg;
    sc_signal< sc_lv<16> > LS_data_load_reg_3491;
    sc_signal< sc_lv<16> > mean_in_load_reg_3496;
    sc_signal< sc_lv<16> > std_in_load_reg_3501;
    sc_signal< sc_lv<16> > std_in_load_reg_3501_pp0_iter2_reg;
    sc_signal< sc_lv<16> > std_in_load_reg_3501_pp0_iter3_reg;
    sc_signal< sc_lv<16> > std_in_load_reg_3501_pp0_iter4_reg;
    sc_signal< sc_lv<16> > std_in_load_reg_3501_pp0_iter5_reg;
    sc_signal< sc_lv<16> > std_in_load_reg_3501_pp0_iter6_reg;
    sc_signal< sc_lv<16> > grp_fu_610_p2;
    sc_signal< sc_lv<16> > tmp_reg_3506;
    sc_signal< sc_lv<16> > grp_fu_614_p2;
    sc_signal< sc_lv<16> > norm_data_reg_3511;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
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
    sc_signal< sc_lv<64> > zext_ln492_fu_942_p1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<16> > norm_data5158_0104_fu_144;
    sc_signal< sc_lv<16> > select_ln492_1_fu_2091_p3;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<16> > norm_data3540_0105_fu_148;
    sc_signal< sc_lv<16> > select_ln492_73_fu_1299_p3;
    sc_signal< sc_lv<16> > norm_data51_0106_fu_152;
    sc_signal< sc_lv<16> > select_ln492_fu_2085_p3;
    sc_signal< sc_lv<16> > norm_data5057_0107_fu_156;
    sc_signal< sc_lv<16> > select_ln492_103_fu_969_p3;
    sc_signal< sc_lv<16> > norm_data3541_0108_fu_160;
    sc_signal< sc_lv<16> > select_ln492_72_fu_1293_p3;
    sc_signal< sc_lv<16> > norm_data50_0109_fu_164;
    sc_signal< sc_lv<16> > select_ln492_102_fu_963_p3;
    sc_signal< sc_lv<16> > norm_data4956_0110_fu_168;
    sc_signal< sc_lv<16> > select_ln492_101_fu_991_p3;
    sc_signal< sc_lv<16> > norm_data36_0111_fu_172;
    sc_signal< sc_lv<16> > select_ln492_75_fu_1277_p3;
    sc_signal< sc_lv<16> > norm_data49_0112_fu_176;
    sc_signal< sc_lv<16> > select_ln492_100_fu_985_p3;
    sc_signal< sc_lv<16> > norm_data4855_0113_fu_180;
    sc_signal< sc_lv<16> > select_ln492_99_fu_1013_p3;
    sc_signal< sc_lv<16> > norm_data3642_0114_fu_184;
    sc_signal< sc_lv<16> > select_ln492_74_fu_1271_p3;
    sc_signal< sc_lv<16> > norm_data48_0115_fu_188;
    sc_signal< sc_lv<16> > select_ln492_98_fu_1007_p3;
    sc_signal< sc_lv<16> > norm_data4754_0116_fu_192;
    sc_signal< sc_lv<16> > select_ln492_97_fu_1035_p3;
    sc_signal< sc_lv<16> > norm_data37_0117_fu_196;
    sc_signal< sc_lv<16> > select_ln492_77_fu_1255_p3;
    sc_signal< sc_lv<16> > norm_data47_0118_fu_200;
    sc_signal< sc_lv<16> > select_ln492_96_fu_1029_p3;
    sc_signal< sc_lv<16> > norm_data4653_0119_fu_204;
    sc_signal< sc_lv<16> > select_ln492_95_fu_1057_p3;
    sc_signal< sc_lv<16> > norm_data3743_0120_fu_208;
    sc_signal< sc_lv<16> > select_ln492_76_fu_1249_p3;
    sc_signal< sc_lv<16> > norm_data4652_0121_fu_212;
    sc_signal< sc_lv<16> > select_ln492_94_fu_1051_p3;
    sc_signal< sc_lv<16> > norm_data4551_0122_fu_216;
    sc_signal< sc_lv<16> > select_ln492_93_fu_1079_p3;
    sc_signal< sc_lv<16> > norm_data38_0123_fu_220;
    sc_signal< sc_lv<16> > select_ln492_79_fu_1233_p3;
    sc_signal< sc_lv<16> > norm_data45_0124_fu_224;
    sc_signal< sc_lv<16> > select_ln492_92_fu_1073_p3;
    sc_signal< sc_lv<16> > norm_data4450_0125_fu_228;
    sc_signal< sc_lv<16> > select_ln492_91_fu_1101_p3;
    sc_signal< sc_lv<16> > norm_data3844_0126_fu_232;
    sc_signal< sc_lv<16> > select_ln492_78_fu_1227_p3;
    sc_signal< sc_lv<16> > norm_data44_0127_fu_236;
    sc_signal< sc_lv<16> > select_ln492_90_fu_1095_p3;
    sc_signal< sc_lv<16> > norm_data4349_0128_fu_240;
    sc_signal< sc_lv<16> > select_ln492_89_fu_1123_p3;
    sc_signal< sc_lv<16> > norm_data39_0129_fu_244;
    sc_signal< sc_lv<16> > select_ln492_81_fu_1211_p3;
    sc_signal< sc_lv<16> > norm_data43_0130_fu_248;
    sc_signal< sc_lv<16> > select_ln492_88_fu_1117_p3;
    sc_signal< sc_lv<16> > norm_data4248_0131_fu_252;
    sc_signal< sc_lv<16> > select_ln492_87_fu_1145_p3;
    sc_signal< sc_lv<16> > norm_data3945_0132_fu_256;
    sc_signal< sc_lv<16> > select_ln492_80_fu_1205_p3;
    sc_signal< sc_lv<16> > norm_data42_0133_fu_260;
    sc_signal< sc_lv<16> > select_ln492_86_fu_1139_p3;
    sc_signal< sc_lv<16> > norm_data4147_0134_fu_264;
    sc_signal< sc_lv<16> > select_ln492_85_fu_1167_p3;
    sc_signal< sc_lv<16> > norm_data40_0135_fu_268;
    sc_signal< sc_lv<16> > select_ln492_83_fu_1189_p3;
    sc_signal< sc_lv<16> > norm_data41_0136_fu_272;
    sc_signal< sc_lv<16> > select_ln492_84_fu_1161_p3;
    sc_signal< sc_lv<16> > norm_data4046_0137_fu_276;
    sc_signal< sc_lv<16> > select_ln492_82_fu_1183_p3;
    sc_signal< sc_lv<16> > norm_data3439_0138_fu_280;
    sc_signal< sc_lv<16> > select_ln492_71_fu_1321_p3;
    sc_signal< sc_lv<16> > norm_data18_0139_fu_284;
    sc_signal< sc_lv<16> > select_ln492_39_fu_1673_p3;
    sc_signal< sc_lv<16> > norm_data34_0140_fu_288;
    sc_signal< sc_lv<16> > select_ln492_70_fu_1315_p3;
    sc_signal< sc_lv<16> > norm_data3338_0141_fu_292;
    sc_signal< sc_lv<16> > select_ln492_69_fu_1343_p3;
    sc_signal< sc_lv<16> > norm_data1822_0142_fu_296;
    sc_signal< sc_lv<16> > select_ln492_38_fu_1667_p3;
    sc_signal< sc_lv<16> > norm_data33_0143_fu_300;
    sc_signal< sc_lv<16> > select_ln492_68_fu_1337_p3;
    sc_signal< sc_lv<16> > norm_data3237_0144_fu_304;
    sc_signal< sc_lv<16> > select_ln492_67_fu_1365_p3;
    sc_signal< sc_lv<16> > norm_data19_0145_fu_308;
    sc_signal< sc_lv<16> > select_ln492_41_fu_1651_p3;
    sc_signal< sc_lv<16> > norm_data32_0146_fu_312;
    sc_signal< sc_lv<16> > select_ln492_66_fu_1359_p3;
    sc_signal< sc_lv<16> > norm_data3136_0147_fu_316;
    sc_signal< sc_lv<16> > select_ln492_65_fu_1387_p3;
    sc_signal< sc_lv<16> > norm_data1923_0148_fu_320;
    sc_signal< sc_lv<16> > select_ln492_40_fu_1645_p3;
    sc_signal< sc_lv<16> > norm_data31_0149_fu_324;
    sc_signal< sc_lv<16> > select_ln492_64_fu_1381_p3;
    sc_signal< sc_lv<16> > norm_data3035_0150_fu_328;
    sc_signal< sc_lv<16> > select_ln492_63_fu_1409_p3;
    sc_signal< sc_lv<16> > norm_data20_0151_fu_332;
    sc_signal< sc_lv<16> > select_ln492_43_fu_1629_p3;
    sc_signal< sc_lv<16> > norm_data30_0152_fu_336;
    sc_signal< sc_lv<16> > select_ln492_62_fu_1403_p3;
    sc_signal< sc_lv<16> > norm_data2934_0153_fu_340;
    sc_signal< sc_lv<16> > select_ln492_61_fu_1431_p3;
    sc_signal< sc_lv<16> > norm_data2024_0154_fu_344;
    sc_signal< sc_lv<16> > select_ln492_42_fu_1623_p3;
    sc_signal< sc_lv<16> > norm_data29_0155_fu_348;
    sc_signal< sc_lv<16> > select_ln492_60_fu_1425_p3;
    sc_signal< sc_lv<16> > norm_data2833_0156_fu_352;
    sc_signal< sc_lv<16> > select_ln492_59_fu_1453_p3;
    sc_signal< sc_lv<16> > norm_data21_0157_fu_356;
    sc_signal< sc_lv<16> > select_ln492_45_fu_1607_p3;
    sc_signal< sc_lv<16> > norm_data28_0158_fu_360;
    sc_signal< sc_lv<16> > select_ln492_58_fu_1447_p3;
    sc_signal< sc_lv<16> > norm_data2732_0159_fu_364;
    sc_signal< sc_lv<16> > select_ln492_57_fu_1475_p3;
    sc_signal< sc_lv<16> > norm_data2125_0160_fu_368;
    sc_signal< sc_lv<16> > select_ln492_44_fu_1601_p3;
    sc_signal< sc_lv<16> > norm_data27_0161_fu_372;
    sc_signal< sc_lv<16> > select_ln492_56_fu_1469_p3;
    sc_signal< sc_lv<16> > norm_data2631_0162_fu_376;
    sc_signal< sc_lv<16> > select_ln492_55_fu_1497_p3;
    sc_signal< sc_lv<16> > norm_data22_0163_fu_380;
    sc_signal< sc_lv<16> > select_ln492_47_fu_1585_p3;
    sc_signal< sc_lv<16> > norm_data26_0164_fu_384;
    sc_signal< sc_lv<16> > select_ln492_54_fu_1491_p3;
    sc_signal< sc_lv<16> > norm_data2530_0165_fu_388;
    sc_signal< sc_lv<16> > select_ln492_53_fu_1519_p3;
    sc_signal< sc_lv<16> > norm_data2226_0166_fu_392;
    sc_signal< sc_lv<16> > select_ln492_46_fu_1579_p3;
    sc_signal< sc_lv<16> > norm_data25_0167_fu_396;
    sc_signal< sc_lv<16> > select_ln492_52_fu_1513_p3;
    sc_signal< sc_lv<16> > norm_data2429_0168_fu_400;
    sc_signal< sc_lv<16> > select_ln492_51_fu_1541_p3;
    sc_signal< sc_lv<16> > norm_data23_0169_fu_404;
    sc_signal< sc_lv<16> > select_ln492_49_fu_1563_p3;
    sc_signal< sc_lv<16> > norm_data2428_0170_fu_408;
    sc_signal< sc_lv<16> > select_ln492_50_fu_1535_p3;
    sc_signal< sc_lv<16> > norm_data2327_0171_fu_412;
    sc_signal< sc_lv<16> > select_ln492_48_fu_1557_p3;
    sc_signal< sc_lv<16> > norm_data1721_0172_fu_416;
    sc_signal< sc_lv<16> > select_ln492_37_fu_1695_p3;
    sc_signal< sc_lv<16> > norm_data13_0173_fu_420;
    sc_signal< sc_lv<16> > select_ln492_5_fu_2047_p3;
    sc_signal< sc_lv<16> > norm_data17_0174_fu_424;
    sc_signal< sc_lv<16> > select_ln492_36_fu_1689_p3;
    sc_signal< sc_lv<16> > norm_data1620_0175_fu_428;
    sc_signal< sc_lv<16> > select_ln492_35_fu_1717_p3;
    sc_signal< sc_lv<16> > norm_data2_0176_fu_432;
    sc_signal< sc_lv<16> > select_ln492_7_fu_2025_p3;
    sc_signal< sc_lv<16> > norm_data16103_0177_fu_436;
    sc_signal< sc_lv<16> > select_ln492_34_fu_1711_p3;
    sc_signal< sc_lv<16> > norm_data1519_0178_fu_440;
    sc_signal< sc_lv<16> > select_ln492_33_fu_1739_p3;
    sc_signal< sc_lv<16> > norm_data24_0179_fu_444;
    sc_signal< sc_lv<16> > select_ln492_6_fu_2019_p3;
    sc_signal< sc_lv<16> > norm_data1595_0180_fu_448;
    sc_signal< sc_lv<16> > select_ln492_32_fu_1733_p3;
    sc_signal< sc_lv<16> > norm_data1418_0181_fu_452;
    sc_signal< sc_lv<16> > select_ln492_31_fu_1761_p3;
    sc_signal< sc_lv<16> > norm_data3_0182_fu_456;
    sc_signal< sc_lv<16> > select_ln492_9_fu_2003_p3;
    sc_signal< sc_lv<16> > norm_data14_0183_fu_460;
    sc_signal< sc_lv<16> > select_ln492_30_fu_1755_p3;
    sc_signal< sc_lv<16> > norm_data1317_0184_fu_464;
    sc_signal< sc_lv<16> > select_ln492_29_fu_1783_p3;
    sc_signal< sc_lv<16> > norm_data35_0185_fu_468;
    sc_signal< sc_lv<16> > select_ln492_8_fu_1997_p3;
    sc_signal< sc_lv<16> > norm_data1316_0186_fu_472;
    sc_signal< sc_lv<16> > select_ln492_28_fu_1777_p3;
    sc_signal< sc_lv<16> > norm_data1215_0187_fu_476;
    sc_signal< sc_lv<16> > select_ln492_27_fu_1805_p3;
    sc_signal< sc_lv<16> > norm_data4_0188_fu_480;
    sc_signal< sc_lv<16> > select_ln492_11_fu_1981_p3;
    sc_signal< sc_lv<16> > norm_data1214_0189_fu_484;
    sc_signal< sc_lv<16> > select_ln492_26_fu_1799_p3;
    sc_signal< sc_lv<16> > norm_data1113_0190_fu_488;
    sc_signal< sc_lv<16> > select_ln492_25_fu_1827_p3;
    sc_signal< sc_lv<16> > norm_data46_0191_fu_492;
    sc_signal< sc_lv<16> > select_ln492_10_fu_1975_p3;
    sc_signal< sc_lv<16> > norm_data11_0192_fu_496;
    sc_signal< sc_lv<16> > select_ln492_24_fu_1821_p3;
    sc_signal< sc_lv<16> > norm_data1012_0193_fu_500;
    sc_signal< sc_lv<16> > select_ln492_23_fu_1849_p3;
    sc_signal< sc_lv<16> > norm_data5_0194_fu_504;
    sc_signal< sc_lv<16> > select_ln492_13_fu_1959_p3;
    sc_signal< sc_lv<16> > norm_data10_0195_fu_508;
    sc_signal< sc_lv<16> > select_ln492_22_fu_1843_p3;
    sc_signal< sc_lv<16> > norm_data911_0196_fu_512;
    sc_signal< sc_lv<16> > select_ln492_21_fu_1871_p3;
    sc_signal< sc_lv<16> > norm_data57_0197_fu_516;
    sc_signal< sc_lv<16> > select_ln492_12_fu_1953_p3;
    sc_signal< sc_lv<16> > norm_data9_0198_fu_520;
    sc_signal< sc_lv<16> > select_ln492_20_fu_1865_p3;
    sc_signal< sc_lv<16> > norm_data810_0199_fu_524;
    sc_signal< sc_lv<16> > select_ln492_19_fu_1893_p3;
    sc_signal< sc_lv<16> > norm_data6_0200_fu_528;
    sc_signal< sc_lv<16> > select_ln492_15_fu_1937_p3;
    sc_signal< sc_lv<16> > norm_data8_0201_fu_532;
    sc_signal< sc_lv<16> > select_ln492_18_fu_1887_p3;
    sc_signal< sc_lv<16> > norm_data79_0202_fu_536;
    sc_signal< sc_lv<16> > select_ln492_17_fu_1915_p3;
    sc_signal< sc_lv<16> > norm_data68_0203_fu_540;
    sc_signal< sc_lv<16> > select_ln492_14_fu_1931_p3;
    sc_signal< sc_lv<16> > norm_data7_0204_fu_544;
    sc_signal< sc_lv<16> > select_ln492_16_fu_1909_p3;
    sc_signal< sc_lv<16> > norm_data12_0205_fu_548;
    sc_signal< sc_lv<16> > select_ln492_4_fu_2041_p3;
    sc_signal< sc_lv<16> > norm_data16_0206_fu_552;
    sc_signal< sc_lv<16> > select_ln492_3_fu_2069_p3;
    sc_signal< sc_lv<16> > norm_data_0207_fu_556;
    sc_signal< sc_lv<16> > select_ln492_2_fu_2063_p3;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state17;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<6> ap_const_lv6_3F;
    static const sc_lv<6> ap_const_lv6_3E;
    static const sc_lv<6> ap_const_lv6_3D;
    static const sc_lv<6> ap_const_lv6_3C;
    static const sc_lv<6> ap_const_lv6_3B;
    static const sc_lv<6> ap_const_lv6_3A;
    static const sc_lv<6> ap_const_lv6_39;
    static const sc_lv<6> ap_const_lv6_38;
    static const sc_lv<6> ap_const_lv6_37;
    static const sc_lv<6> ap_const_lv6_36;
    static const sc_lv<6> ap_const_lv6_35;
    static const sc_lv<6> ap_const_lv6_34;
    static const sc_lv<6> ap_const_lv6_33;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<6> ap_const_lv6_23;
    static const sc_lv<6> ap_const_lv6_32;
    static const sc_lv<6> ap_const_lv6_31;
    static const sc_lv<6> ap_const_lv6_24;
    static const sc_lv<6> ap_const_lv6_30;
    static const sc_lv<6> ap_const_lv6_2F;
    static const sc_lv<6> ap_const_lv6_25;
    static const sc_lv<6> ap_const_lv6_2E;
    static const sc_lv<6> ap_const_lv6_2D;
    static const sc_lv<6> ap_const_lv6_26;
    static const sc_lv<6> ap_const_lv6_2C;
    static const sc_lv<6> ap_const_lv6_2B;
    static const sc_lv<6> ap_const_lv6_27;
    static const sc_lv<6> ap_const_lv6_2A;
    static const sc_lv<6> ap_const_lv6_29;
    static const sc_lv<6> ap_const_lv6_28;
    static const sc_lv<6> ap_const_lv6_22;
    static const sc_lv<6> ap_const_lv6_12;
    static const sc_lv<6> ap_const_lv6_21;
    static const sc_lv<6> ap_const_lv6_20;
    static const sc_lv<6> ap_const_lv6_13;
    static const sc_lv<6> ap_const_lv6_1F;
    static const sc_lv<6> ap_const_lv6_1E;
    static const sc_lv<6> ap_const_lv6_14;
    static const sc_lv<6> ap_const_lv6_1D;
    static const sc_lv<6> ap_const_lv6_1C;
    static const sc_lv<6> ap_const_lv6_15;
    static const sc_lv<6> ap_const_lv6_1B;
    static const sc_lv<6> ap_const_lv6_1A;
    static const sc_lv<6> ap_const_lv6_16;
    static const sc_lv<6> ap_const_lv6_19;
    static const sc_lv<6> ap_const_lv6_18;
    static const sc_lv<6> ap_const_lv6_17;
    static const sc_lv<6> ap_const_lv6_11;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<6> ap_const_lv6_10;
    static const sc_lv<6> ap_const_lv6_2;
    static const sc_lv<6> ap_const_lv6_F;
    static const sc_lv<6> ap_const_lv6_E;
    static const sc_lv<6> ap_const_lv6_3;
    static const sc_lv<6> ap_const_lv6_D;
    static const sc_lv<6> ap_const_lv6_C;
    static const sc_lv<6> ap_const_lv6_4;
    static const sc_lv<6> ap_const_lv6_B;
    static const sc_lv<6> ap_const_lv6_A;
    static const sc_lv<6> ap_const_lv6_5;
    static const sc_lv<6> ap_const_lv6_9;
    static const sc_lv<6> ap_const_lv6_8;
    static const sc_lv<6> ap_const_lv6_6;
    static const sc_lv<6> ap_const_lv6_7;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<7> ap_const_lv7_68;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<32> ap_const_lv32_6;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_LS_data_address0();
    void thread_LS_data_ce0();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state17();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state10_pp0_stage0_iter8();
    void thread_ap_block_state11_pp0_stage0_iter9();
    void thread_ap_block_state12_pp0_stage0_iter10();
    void thread_ap_block_state13_pp0_stage0_iter11();
    void thread_ap_block_state14_pp0_stage0_iter12();
    void thread_ap_block_state15_pp0_stage0_iter13();
    void thread_ap_block_state16_pp0_stage0_iter14();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_block_state5_pp0_stage0_iter3();
    void thread_ap_block_state6_pp0_stage0_iter4();
    void thread_ap_block_state7_pp0_stage0_iter5();
    void thread_ap_block_state8_pp0_stage0_iter6();
    void thread_ap_block_state9_pp0_stage0_iter7();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_ap_return_10();
    void thread_ap_return_100();
    void thread_ap_return_101();
    void thread_ap_return_102();
    void thread_ap_return_103();
    void thread_ap_return_11();
    void thread_ap_return_12();
    void thread_ap_return_13();
    void thread_ap_return_14();
    void thread_ap_return_15();
    void thread_ap_return_16();
    void thread_ap_return_17();
    void thread_ap_return_18();
    void thread_ap_return_19();
    void thread_ap_return_2();
    void thread_ap_return_20();
    void thread_ap_return_21();
    void thread_ap_return_22();
    void thread_ap_return_23();
    void thread_ap_return_24();
    void thread_ap_return_25();
    void thread_ap_return_26();
    void thread_ap_return_27();
    void thread_ap_return_28();
    void thread_ap_return_29();
    void thread_ap_return_3();
    void thread_ap_return_30();
    void thread_ap_return_31();
    void thread_ap_return_32();
    void thread_ap_return_33();
    void thread_ap_return_34();
    void thread_ap_return_35();
    void thread_ap_return_36();
    void thread_ap_return_37();
    void thread_ap_return_38();
    void thread_ap_return_39();
    void thread_ap_return_4();
    void thread_ap_return_40();
    void thread_ap_return_41();
    void thread_ap_return_42();
    void thread_ap_return_43();
    void thread_ap_return_44();
    void thread_ap_return_45();
    void thread_ap_return_46();
    void thread_ap_return_47();
    void thread_ap_return_48();
    void thread_ap_return_49();
    void thread_ap_return_5();
    void thread_ap_return_50();
    void thread_ap_return_51();
    void thread_ap_return_52();
    void thread_ap_return_53();
    void thread_ap_return_54();
    void thread_ap_return_55();
    void thread_ap_return_56();
    void thread_ap_return_57();
    void thread_ap_return_58();
    void thread_ap_return_59();
    void thread_ap_return_6();
    void thread_ap_return_60();
    void thread_ap_return_61();
    void thread_ap_return_62();
    void thread_ap_return_63();
    void thread_ap_return_64();
    void thread_ap_return_65();
    void thread_ap_return_66();
    void thread_ap_return_67();
    void thread_ap_return_68();
    void thread_ap_return_69();
    void thread_ap_return_7();
    void thread_ap_return_70();
    void thread_ap_return_71();
    void thread_ap_return_72();
    void thread_ap_return_73();
    void thread_ap_return_74();
    void thread_ap_return_75();
    void thread_ap_return_76();
    void thread_ap_return_77();
    void thread_ap_return_78();
    void thread_ap_return_79();
    void thread_ap_return_8();
    void thread_ap_return_80();
    void thread_ap_return_81();
    void thread_ap_return_82();
    void thread_ap_return_83();
    void thread_ap_return_84();
    void thread_ap_return_85();
    void thread_ap_return_86();
    void thread_ap_return_87();
    void thread_ap_return_88();
    void thread_ap_return_89();
    void thread_ap_return_9();
    void thread_ap_return_90();
    void thread_ap_return_91();
    void thread_ap_return_92();
    void thread_ap_return_93();
    void thread_ap_return_94();
    void thread_ap_return_95();
    void thread_ap_return_96();
    void thread_ap_return_97();
    void thread_ap_return_98();
    void thread_ap_return_99();
    void thread_i_fu_936_p2();
    void thread_icmp_ln490_fu_930_p2();
    void thread_mean_in_address0();
    void thread_mean_in_ce0();
    void thread_select_ln492_100_fu_985_p3();
    void thread_select_ln492_101_fu_991_p3();
    void thread_select_ln492_102_fu_963_p3();
    void thread_select_ln492_103_fu_969_p3();
    void thread_select_ln492_10_fu_1975_p3();
    void thread_select_ln492_11_fu_1981_p3();
    void thread_select_ln492_12_fu_1953_p3();
    void thread_select_ln492_13_fu_1959_p3();
    void thread_select_ln492_14_fu_1931_p3();
    void thread_select_ln492_15_fu_1937_p3();
    void thread_select_ln492_16_fu_1909_p3();
    void thread_select_ln492_17_fu_1915_p3();
    void thread_select_ln492_18_fu_1887_p3();
    void thread_select_ln492_19_fu_1893_p3();
    void thread_select_ln492_1_fu_2091_p3();
    void thread_select_ln492_20_fu_1865_p3();
    void thread_select_ln492_21_fu_1871_p3();
    void thread_select_ln492_22_fu_1843_p3();
    void thread_select_ln492_23_fu_1849_p3();
    void thread_select_ln492_24_fu_1821_p3();
    void thread_select_ln492_25_fu_1827_p3();
    void thread_select_ln492_26_fu_1799_p3();
    void thread_select_ln492_27_fu_1805_p3();
    void thread_select_ln492_28_fu_1777_p3();
    void thread_select_ln492_29_fu_1783_p3();
    void thread_select_ln492_2_fu_2063_p3();
    void thread_select_ln492_30_fu_1755_p3();
    void thread_select_ln492_31_fu_1761_p3();
    void thread_select_ln492_32_fu_1733_p3();
    void thread_select_ln492_33_fu_1739_p3();
    void thread_select_ln492_34_fu_1711_p3();
    void thread_select_ln492_35_fu_1717_p3();
    void thread_select_ln492_36_fu_1689_p3();
    void thread_select_ln492_37_fu_1695_p3();
    void thread_select_ln492_38_fu_1667_p3();
    void thread_select_ln492_39_fu_1673_p3();
    void thread_select_ln492_3_fu_2069_p3();
    void thread_select_ln492_40_fu_1645_p3();
    void thread_select_ln492_41_fu_1651_p3();
    void thread_select_ln492_42_fu_1623_p3();
    void thread_select_ln492_43_fu_1629_p3();
    void thread_select_ln492_44_fu_1601_p3();
    void thread_select_ln492_45_fu_1607_p3();
    void thread_select_ln492_46_fu_1579_p3();
    void thread_select_ln492_47_fu_1585_p3();
    void thread_select_ln492_48_fu_1557_p3();
    void thread_select_ln492_49_fu_1563_p3();
    void thread_select_ln492_4_fu_2041_p3();
    void thread_select_ln492_50_fu_1535_p3();
    void thread_select_ln492_51_fu_1541_p3();
    void thread_select_ln492_52_fu_1513_p3();
    void thread_select_ln492_53_fu_1519_p3();
    void thread_select_ln492_54_fu_1491_p3();
    void thread_select_ln492_55_fu_1497_p3();
    void thread_select_ln492_56_fu_1469_p3();
    void thread_select_ln492_57_fu_1475_p3();
    void thread_select_ln492_58_fu_1447_p3();
    void thread_select_ln492_59_fu_1453_p3();
    void thread_select_ln492_5_fu_2047_p3();
    void thread_select_ln492_60_fu_1425_p3();
    void thread_select_ln492_61_fu_1431_p3();
    void thread_select_ln492_62_fu_1403_p3();
    void thread_select_ln492_63_fu_1409_p3();
    void thread_select_ln492_64_fu_1381_p3();
    void thread_select_ln492_65_fu_1387_p3();
    void thread_select_ln492_66_fu_1359_p3();
    void thread_select_ln492_67_fu_1365_p3();
    void thread_select_ln492_68_fu_1337_p3();
    void thread_select_ln492_69_fu_1343_p3();
    void thread_select_ln492_6_fu_2019_p3();
    void thread_select_ln492_70_fu_1315_p3();
    void thread_select_ln492_71_fu_1321_p3();
    void thread_select_ln492_72_fu_1293_p3();
    void thread_select_ln492_73_fu_1299_p3();
    void thread_select_ln492_74_fu_1271_p3();
    void thread_select_ln492_75_fu_1277_p3();
    void thread_select_ln492_76_fu_1249_p3();
    void thread_select_ln492_77_fu_1255_p3();
    void thread_select_ln492_78_fu_1227_p3();
    void thread_select_ln492_79_fu_1233_p3();
    void thread_select_ln492_7_fu_2025_p3();
    void thread_select_ln492_80_fu_1205_p3();
    void thread_select_ln492_81_fu_1211_p3();
    void thread_select_ln492_82_fu_1183_p3();
    void thread_select_ln492_83_fu_1189_p3();
    void thread_select_ln492_84_fu_1161_p3();
    void thread_select_ln492_85_fu_1167_p3();
    void thread_select_ln492_86_fu_1139_p3();
    void thread_select_ln492_87_fu_1145_p3();
    void thread_select_ln492_88_fu_1117_p3();
    void thread_select_ln492_89_fu_1123_p3();
    void thread_select_ln492_8_fu_1997_p3();
    void thread_select_ln492_90_fu_1095_p3();
    void thread_select_ln492_91_fu_1101_p3();
    void thread_select_ln492_92_fu_1073_p3();
    void thread_select_ln492_93_fu_1079_p3();
    void thread_select_ln492_94_fu_1051_p3();
    void thread_select_ln492_95_fu_1057_p3();
    void thread_select_ln492_96_fu_1029_p3();
    void thread_select_ln492_97_fu_1035_p3();
    void thread_select_ln492_98_fu_1007_p3();
    void thread_select_ln492_99_fu_1013_p3();
    void thread_select_ln492_9_fu_2003_p3();
    void thread_select_ln492_fu_2085_p3();
    void thread_std_in_address0();
    void thread_std_in_ce0();
    void thread_trunc_ln492_fu_959_p1();
    void thread_zext_ln492_fu_942_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif