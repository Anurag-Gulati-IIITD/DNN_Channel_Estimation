# This script segment is generated automatically by AutoPilot

set id 7
set name DNN_wlo_218_sdiv_eOg
set corename simcore_sdiv
set op sdiv
set stage_num 39
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 35
set in0_signed 0
set in1_width 14
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 21
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_sdiv] == "ap_gen_simcore_sdiv"} {
eval "ap_gen_simcore_sdiv { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
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
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_sdiv, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op sdiv
set corename DivnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_div] == "::AESL_LIB_VIRTEX::xil_gen_div"} {
eval "::AESL_LIB_VIRTEX::xil_gen_div { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
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
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_div, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 9
set hasByteEnable 0
set MemName normalize_wlo_218cud
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 7
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "1101001" "1110101" "0000101" "0010011" "0011010" "0010111" "0001010" "1110110" "1100011" "1011101" "1101000" "0000000" "0011010" "0100111" "0100001" "0001010" "1101101" "1011010" "1011001" "1101010" "0000110" "0011110" "0100111" "0011110" "0000111" "1101101" "1011011" "1101011" "0000100" "0011011" "0100110" "0011111" "0001010" "1101110" "1011010" "1011000" "1101001" "0000111" "0100001" "0101010" "0011100" "0000000" "1100101" "1011011" "1100101" "1111010" "0001101" "0010110" "0010100" "0001100" "0000010" "1111010" "0001100" "0010111" "0011000" "0010000" "0000011" "1110001" "1100011" "1100010" "1101101" "0000101" "0011100" "0100110" "0011101" "0000101" "1101001" "1010111" "1011010" "1110000" "0001101" "0100010" "0101000" "0011001" "0000001" "1100111" "1011010" "1011110" "0001100" "0011111" "0100101" "0011010" "0000011" "1101000" "1011010" "1011011" "1101111" "0001011" "0100011" "0101001" "0011001" "1111100" "1100001" "1011000" "1100010" "1111100" "0010101" "0011101" "0011000" "0001000" "1111010" "1110010" "1101111" "1110000" }
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
set ID 10
set hasByteEnable 0
set MemName normalize_wlo_218dEe
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 13
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "1011010010111" "1011011010000" "1011011101001" "1011010111011" "1011010011100" "1011011000100" "1011011100100" "1011011001011" "1011010101011" "1011011000010" "1011011011100" "1011011001111" "1011010110100" "1011010111101" "1011011010110" "1011011001101" "1011010110010" "1011011000001" "1011011011100" "1011011001100" "1011010101000" "1011010111010" "1011011100000" "1011011010010" "1011010100010" "1011010101110" "1011011100100" "1011010100100" "1011010011111" "1011011011110" "1011011101111" "1011010110011" "1011010010001" "1011011000101" "1011011101110" "1011011000000" "1011010001100" "1011010100011" "1011011011000" "1011011010011" "1011010011011" "1011010001010" "1011010111100" "1011011100000" "1011010111101" "1011010000110" "1011010100010" "1011011100001" "1011011011011" "1011010010101" "1011010001001" "1011011001110" "1011011100110" "1011010101111" "1011010010111" "1011011001000" "1011011100111" "1011011000010" "1011010100111" "1011011000000" "1011011100000" "1011011001110" "1011010110100" "1011011000001" "1011011011010" "1011011010000" "1011010110110" "1011011000001" "1011011011010" "1011011001011" "1011010101110" "1011010111011" "1011011011111" "1011011001011" "1011010100101" "1011010110011" "1011011100011" "1011011010111" "1011010100110" "1011011100011" "1011011101000" "1011010101101" "1011010011001" "1011011010101" "1011011101111" "1011010111100" "1011010001011" "1011010110101" "1011011100011" "1011011000111" "1011010001111" "1011010010011" "1011011001001" "1011011011000" "1011010101101" "1011010001000" "1011010101110" "1011011100010" "1011011001111" "1011010001100" "1011010010110" "1011011011001" "1011011100100" "1011010100000" }
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
    id 11 \
    name LS_data_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename LS_data_V \
    op interface \
    ports { LS_data_V_address0 { O 7 vector } LS_data_V_ce0 { O 1 bit } LS_data_V_q0 { I 21 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'LS_data_V'"
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


