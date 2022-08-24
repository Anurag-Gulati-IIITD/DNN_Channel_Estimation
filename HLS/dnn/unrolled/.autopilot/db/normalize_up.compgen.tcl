# This script segment is generated automatically by AutoPilot

set id 4
set name DNN_up_fsub_32ns_cud
set corename simcore_fsub
set op fsub
set stage_num 5
set max_latency -1
set registered_input 1
set impl_style full_dsp
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fsub] == "ap_gen_simcore_fsub"} {
eval "ap_gen_simcore_fsub { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fsub, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fsub
set corename FAddSub
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 5
set name DNN_up_fdiv_32ns_dEe
set corename simcore_fdiv
set op fdiv
set stage_num 16
set max_latency -1
set registered_input 1
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fdiv] == "ap_gen_simcore_fdiv"} {
eval "ap_gen_simcore_fdiv { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fdiv, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fdiv
set corename FDiv
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 8
set hasByteEnable 0
set MemName normalize_up_meanbkb
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "10111011001101111001000011111011" "10111010101011001110001001001100" "00111010001000100100010001100011" "00111011000110010011100100100010" "00111011010101001010101000010001" "00111011001111100010111101111011" "00111010101000100110010111110001" "10111010100111110100000010100011" "10111011011000101000111011010110" "10111011100010101001001101101100" "10111011001111111000111111001101" "00110111111110111010100010000010" "00111011010100001101110011111101" "00111011100111110111001011110111" "00111011100001101011010110010001" "00111010101000111101011100001010" "10111011000100101111111101001100" "10111011100101110010100010100110" "10111011100110110001111110101100" "10111011001010100100001100110101" "00111010010001101111011110100001" "00111011011100010101111001111101" "00111011100111110111001011110111" "00111011011101100100100011000111" "00111010011100110100010100000111" "10111011000101011101000010110111" "10111011100100100010110110010101" "10111011001001000011101110110100" "00111010000101011111001001000101" "00111011010111100101110100011000" "00111011100110011001010101101000" "00111011011111001110011101000111" "00111010101000110010111101000101" "10111011000010001000001011110001" "10111011100101001000000100101100" "10111011100111111010110110110000" "10111011001100111101010010101110" "00111010011001001101101000001010" "00111011100001100110101000010010" "00111011101010010010010111111111" "00111011011000110110100011110001" "00110110111010101110000110001011" "10111011010100110011100011111000" "10111011100100100001010001101010" "10111011010101101101001110110111" "10111010001111011000011110110101" "00111010110110111111000001010110" "00111011001101100000111100011011" "00111011001001100101010010010011" "00111010110001101101011000010011" "00111001101101100111001111000101" "10111010001111011100101011010001" "00111010110001101101011000010011" "00111011001111010100010010011010" "00111011010000101100010111100011" "00111011000001010011110000010101" "00111001110000010111011001010111" "10111010111000101100000100101011" "10111011011000100110110101001000" "10111011011010010100111011100100" "10111011000100001101010110100110" "00111010001101110011110100011001" "00111011011000110000010001000111" "00111011100110101101110010010000" "00111011011011111010101001000111" "00111010001100001010111101100000" "10111011001100100111010001011100" "10111011101000001110110001110100" "10111011100101010101001011100011" "10111010111100110110011010010101" "00111010110100110010100000110001" "00111011100010000010011010101011" "00111011101000011100011010001111" "00111011010011011111101011001010" "00111001001000000110111010100000" "10111011010000101001001110001110" "10111011100101111111000111111010" "10111011100001101000001100111100" "00111010110010010101001110011100" "00111011011111101000101010110101" "00111011100101010110110000001101" "00111011010101110100100100101000" "00111001110101011110100011010101" "10111011001110000100100110001000" "10111011100101011110000101111110" "10111011100100110110001111110101" "10111011000000100110101010101001" "00111010101100111111011000111100" "00111011100011001100010101110110" "00111011101001011100111001011011" "00111011010011100011110111100110" "10111001111101110111011011000101" "10111011011100000101001000001101" "10111011100111111100011011011010" "10111011011010000110010000000010" "10111001111000011111011111010111" "00111011001010100010000110100111" "00111011011011101001110111011000" "00111011010001011100100110100011" "00111010100001101001110001100111" "10111010001000110000110110110111" "10111010110111011000001011111101" "10111011000001001011010111011101" "10111010111100111110110011001100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 9
set hasByteEnable 0
set MemName normalize_up_std_in
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "00111111001101001011101110010000" "00111111001101101000011000101111" "00111111001101110100101010111010" "00111111001101011101111111001010" "00111111001101001110010110000010" "00111111001101100010000010001010" "00111111001101110010001011110010" "00111111001101100101101001000111" "00111111001101010101101001001011" "00111111001101100001000100110100" "00111111001101101110001010111001" "00111111001101100111100010001110" "00111111001101011010010010111110" "00111111001101011110101001111001" "00111111001101101011010001100011" "00111111001101100110111101010000" "00111111001101011001010000111010" "00111111001101100000100100100100" "00111111001101101110000101001000" "00111111001101100110000011000100" "00111111001101010100010100001111" "00111111001101011101001111001100" "00111111001101110000001101001011" "00111111001101101001000101000011" "00111111001101010001000110001100" "00111111001101010111001101000011" "00111111001101110010000010100111" "00111111001101010010011100111101" "00111111001101001111110111110100" "00111111001101101111010110011001" "00111111001101110111101010100010" "00111111001101011001110100010011" "00111111001101001000110011010110" "00111111001101100010110100110000" "00111111001101110111001111100010" "00111111001101100000011111010101" "00111111001101000110010001110111" "00111111001101010001101000000000" "00111111001101101100011001011000" "00111111001101101001111110101110" "00111111001101001101100101010001" "00111111001101000101000011110000" "00111111001101011110010011010110" "00111111001101110000011100011000" "00111111001101011110111011001100" "00111111001101000011010110101101" "00111111001101010001010000001010" "00111111001101110000111100010111" "00111111001101101101100001001101" "00111111001101001010101011111100" "00111111001101000100110000010110" "00111111001101100111000110001011" "00111111001101110011000011010111" "00111111001101010111111010011001" "00111111001101001011100010001101" "00111111001101100100011100000010" "00111111001101110011111111111011" "00111111001101100001001110110010" "00111111001101010011110100110010" "00111111001101100000001000010000" "00111111001101110000010010011011" "00111111001101100111000001101101" "00111111001101011010001101011101" "00111111001101100000100011000000" "00111111001101101101000101011011" "00111111001101101000001000011111" "00111111001101011011001100011000" "00111111001101100000100011110010" "00111111001101101101001010111011" "00111111001101100101100100001000" "00111111001101010111011101110101" "00111111001101011101111000000101" "00111111001101101111110111001010" "00111111001101100101111001111000" "00111111001101010010111011011000" "00111111001101011001101111100101" "00111111001101110001100011101100" "00111111001101101011111000111000" "00111111001101010011001100001001" "00111111001101110001111110101100" "00111111001101110100011101000001" "00111111001101010110110001000000" "00111111001101001100111010000001" "00111111001101101010100011001010" "00111111001101110111110010001001" "00111111001101011110010010110100" "00111111001101000101110111011001" "00111111001101011010100001011000" "00111111001101110001100010000111" "00111111001101100011111101101000" "00111111001101000111110000001111" "00111111001101001001110110111111" "00111111001101100100110010010100" "00111111001101101100011001101001" "00111111001101010110101110111010" "00111111001101000100010001001010" "00111111001101010111000001010000" "00111111001101110001001110011101" "00111111001101100111111010110111" "00111111001101000110010000000010" "00111111001101001011000000011000" "00111111001101101100111111111010" "00111111001101110010011011000000" "00111111001101010000011010111100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 10 \
    name LS_data \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename LS_data \
    op interface \
    ports { LS_data_address0 { O 7 vector } LS_data_ce0 { O 1 bit } LS_data_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'LS_data'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


