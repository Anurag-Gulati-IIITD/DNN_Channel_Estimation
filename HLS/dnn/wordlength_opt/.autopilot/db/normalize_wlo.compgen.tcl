# This script segment is generated automatically by AutoPilot

set id 7
set name DNN_wlo_hsub_16nseOg
set corename simcore_hsub
set op hsub
set stage_num 5
set max_latency -1
set registered_input 1
set impl_style full_dsp
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set din0_width 16
set din0_signed 0
set din1_width 16
set din1_signed 0
set ce_width 1
set ce_signed 0
set dout_width 16
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_hsub] == "ap_gen_simcore_hsub"} {
eval "ap_gen_simcore_hsub { \
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
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_hsub, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op hsub
set corename HAddSub
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
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 8
set name DNN_wlo_hdiv_16nsfYi
set corename simcore_hdiv
set op hdiv
set stage_num 7
set max_latency -1
set registered_input 1
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set din0_width 16
set din0_signed 0
set din1_width 16
set din1_signed 0
set ce_width 1
set ce_signed 0
set dout_width 16
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_hdiv] == "ap_gen_simcore_hdiv"} {
eval "ap_gen_simcore_hdiv { \
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
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_hdiv, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op hdiv
set corename HDiv
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
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 11
set hasByteEnable 0
set MemName normalize_wlo_meacud
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "1001100110111101" "1001010101100111" "0001000100010010" "0001100011001010" "0001101010100101" "0001100111110001" "0001010100010011" "1001010011111010" "1001101100010100" "1001110001010101" "1001100111111100" "0000000111110111" "0001101010000111" "0001110011111100" "0001110000110110" "0001010100011111" "1001100010011000" "1001110010111001" "1001110011011001" "1001100101010010" "0001001000111000" "0001101110001011" "0001110011111100" "0001101110110010" "0001001110011010" "1001100010101111" "1001110010010001" "1001100100100010" "0001000010110000" "0001101011110011" "0001110011001101" "0001101111100111" "0001010100011001" "1001100001000100" "1001110010100100" "1001110011111101" "1001100110011111" "0001001100100111" "0001110000110011" "0001110101001001" "0001101100011011" "0000000001110101" "1001101010011010" "1001110010010001" "1001101010110111" "1001000111101100" "0001011011100000" "0001100110110000" "0001100100110011" "0001011000110111" "0000110110110100" "1001000111101110" "0001011000110111" "0001100111101010" "0001101000010110" "0001100000101010" "0000111000001100" "1001011100010110" "1001101100010011" "1001101101001010" "1001100010000111" "0001000110111010" "0001101100011000" "0001110011010111" "0001101101111101" "0001000110000101" "1001100110010100" "1001110100000111" "1001110010101011" "1001011110011011" "0001011010011001" "0001110001000001" "0001110100001110" "0001101001110000" "0000100100000011" "1001101000010101" "1001110011000000" "1001110000110100" "0001011001001011" "0001101111110100" "0001110010101011" "0001101010111010" "0000111010101111" "1001100111000010" "1001110010101111" "1001110010011011" "1001100000010011" "0001010110100000" "0001110001100110" "0001110100101110" "0001101001110010" "1000111110111100" "1001101110000011" "1001110011111110" "1001101101000011" "1000111100010000" "0001100101010001" "0001101101110101" "0001101000101110" "0001010000110101" "1001000100011000" "1001011011101100" "1001100000100110" "1001011110011111" }
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
set ID 12
set hasByteEnable 0
set MemName normalize_wlo_stddEe
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "0011100110100110" "0011100110110100" "0011100110111010" "0011100110101111" "0011100110100111" "0011100110110001" "0011100110111001" "0011100110110011" "0011100110101011" "0011100110110001" "0011100110110111" "0011100110110100" "0011100110101101" "0011100110101111" "0011100110110110" "0011100110110011" "0011100110101101" "0011100110110000" "0011100110110111" "0011100110110011" "0011100110101010" "0011100110101111" "0011100110111000" "0011100110110101" "0011100110101001" "0011100110101100" "0011100110111001" "0011100110101001" "0011100110101000" "0011100110111000" "0011100110111100" "0011100110101101" "0011100110100100" "0011100110110001" "0011100110111100" "0011100110110000" "0011100110100011" "0011100110101001" "0011100110110110" "0011100110110101" "0011100110100111" "0011100110100011" "0011100110101111" "0011100110111000" "0011100110101111" "0011100110100010" "0011100110101001" "0011100110111000" "0011100110110111" "0011100110100101" "0011100110100010" "0011100110110100" "0011100110111010" "0011100110101100" "0011100110100110" "0011100110110010" "0011100110111010" "0011100110110001" "0011100110101010" "0011100110110000" "0011100110111000" "0011100110110100" "0011100110101101" "0011100110110000" "0011100110110111" "0011100110110100" "0011100110101110" "0011100110110000" "0011100110110111" "0011100110110011" "0011100110101100" "0011100110101111" "0011100110111000" "0011100110110011" "0011100110101001" "0011100110101101" "0011100110111001" "0011100110110110" "0011100110101010" "0011100110111001" "0011100110111010" "0011100110101011" "0011100110100110" "0011100110110101" "0011100110111100" "0011100110101111" "0011100110100011" "0011100110101101" "0011100110111001" "0011100110110010" "0011100110100100" "0011100110100101" "0011100110110010" "0011100110110110" "0011100110101011" "0011100110100010" "0011100110101100" "0011100110111001" "0011100110110100" "0011100110100011" "0011100110100110" "0011100110110110" "0011100110111001" "0011100110101000" }
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
    id 13 \
    name LS_data \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename LS_data \
    op interface \
    ports { LS_data_address0 { O 7 vector } LS_data_ce0 { O 1 bit } LS_data_q0 { I 16 vector } } \
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


