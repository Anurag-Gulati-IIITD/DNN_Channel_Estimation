# This script segment is generated automatically by AutoPilot

set id 14
set name DNN_wlo_hadd_16nsbLp
set corename simcore_hadd
set op hadd
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
if {[info proc ap_gen_simcore_hadd] == "ap_gen_simcore_hadd"} {
eval "ap_gen_simcore_hadd { \
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
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_hadd, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op hadd
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


set id 40
set name DNN_wlo_hmul_16nsbMq
set corename simcore_hmul
set op hmul
set stage_num 4
set max_latency -1
set registered_input 1
set impl_style max_dsp
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
if {[info proc ap_gen_simcore_hmul] == "ap_gen_simcore_hmul"} {
eval "ap_gen_simcore_hmul { \
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
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_hmul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op hmul
set corename HMul
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


set id 66
set name DNN_wlo_hcmp_16nsbNq
set corename simcore_hcmp
set op hcmp
set stage_num 2
set max_latency -1
set registered_input 1
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 16
set in0_signed 0
set in1_width 16
set in1_signed 0
set ce_width 1
set ce_signed 0
set opcode_width 5
set opcode_signed 0
set out_width 1
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_hcmp] == "ap_gen_simcore_hcmp"} {
eval "ap_gen_simcore_hcmp { \
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
    opcode_width ${opcode_width} \
    opcode_signed ${opcode_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_hcmp, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op hcmp
set corename HCmp
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
    opcode_width ${opcode_width} \
    opcode_signed ${opcode_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 70
set hasByteEnable 0
set MemName L2_wlo_L1_BIAS
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1011010000011111" "0010000110011100" "1011011011010101" "1011100101100110" "1001101000111111" "1011010110101110" "1010010010000011" "0010100110111011" "1010000111100000" "1010000101110011" "0010110000100010" "0011101010000001" "0010010001110111" "0011100001100011" "0001111011101011" "1010101011100000" "1010011010110010" "1011011110111001" "1010111110000010" "1011010000100100" "1011010100100011" "1011011011100000" "1010100111010011" "1010000110001101" "1011001100001011" "1010110010001110" "0010111101000111" "1010000000011100" "1011010011000010" "0011010011100010" "1001111011001111" "1010010100111011" "1001100011110000" "1011010100011110" "1010100000011111" "0011011101001101" "1011001010110000" "1010110000011111" "0001111110111111" "0010011010110011" "1011010000010100" "0001111000000001" "0010000110001101" "0010101100100010" "1011000110001010" "0010100000010010" "1011100101011000" "1011011011010010" "1010100000010100" "0010100010001010" "0010000110110101" "1010010111101001" }
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
set ID 71
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTS_0
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010010000000000" "1010111110010001" "1011001011101100" "0010110110011010" "0010111010011110" "1011010000011101" "1011000010110001" "0010110001111001" "0010001100010011" "0010001100110000" "1010100100011111" "1011010000001101" "1010110001110000" "0010111000011100" "1011000110001010" "1010110101111000" "0010100010110111" "0010111111010001" "1010110000111111" "1010110011010000" "0010000010111101" "0011000010101101" "1010010100001000" "0011000010001100" "0010011100000111" "0010100000000011" "1011001110110100" "0010101011100011" "0010111111001011" "0010111110100001" "0011001110000100" "0010111111001000" "0010010011011111" "1011000000110101" "1010101010111100" "0011000100001111" "1010100001000001" "1010100110011001" "1010111101001110" "1011000011001010" "0010100100000000" "1010101100101101" "1010101111100110" "0010101010001111" "0011000001010000" "0010111001100111" "1011000010010010" "1010101000110101" "1010110101101110" "0010111010000000" "1010100011000001" "0010110110100111" }
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
set ID 72
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTS_1
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010110001101001" "0010101001001000" "0010001100111100" "1010111010110000" "0011000011001010" "1011001010000010" "0001010000001111" "1010100101000101" "0011000001101111" "1010100111010111" "0001110011110010" "1011000001110000" "1010110011001110" "1011000010101110" "1011000111111011" "0010111000001000" "0010011110001111" "0010111010011110" "1010101010111011" "0010101001101100" "0000101010101111" "0010100110100101" "1010100001111001" "1010001101110100" "0010101111011000" "0010100100000110" "1011000001001110" "0011010101111110" "0010010110010010" "0011001010111001" "0011000101111010" "0010101001111010" "1010111100101101" "1010100100111010" "0010101111011001" "0011001010110000" "1010100011001000" "0010101101011100" "1011010100110010" "1011000010001110" "0010010011110001" "1010111111100001" "0010111111001010" "1010110011100100" "1010100011101110" "1010100110000011" "0010110100101000" "0001011110111011" "1010101010111111" "1010011100001000" "1011000001000111" "0010101001110101" }
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
set ID 73
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTS_2
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010110000001100" "0011001100001100" "1010101111100110" "1010101111101111" "0011000101111001" "1010110101100110" "1010101100001001" "1010011100100000" "0010101101101100" "1010111111001001" "1010010001111100" "0010111001110011" "1001100001010000" "1011000101110100" "1010110001011011" "0011000011110100" "1010100100001000" "1010000110001100" "1010001011100000" "0010100010100001" "0010110010001101" "1010100110101001" "1010101110111001" "1011010001100100" "0010111010001001" "1010010110111110" "1010111000010111" "0011010101100111" "1010011000011101" "0010110001111101" "0010111100111010" "1010101000000101" "1010110100100111" "0001111000011001" "0010110011000010" "0011001010101110" "0010110011100110" "0010100010010110" "1011010000001001" "1010101000100001" "0010011101110000" "1010110010010110" "0010110001000011" "1011001100100000" "1010100110011000" "1010101000101011" "0010011010001100" "1010101011110000" "0010110001101011" "0001101111010110" "1010111111001011" "1010010100110010" }
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
set ID 74
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTS_3
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010110001001101" "0011010000111100" "0011001000010001" "1010000001100101" "0010110001010010" "0011000110111110" "0010010100010110" "0010011100110101" "1010100011011011" "1010110001000010" "1010101010011101" "0011001010011000" "0010101010100101" "1010101010011011" "0011000110011000" "0010111110000011" "0001101100111101" "1011000111110110" "1011000000110001" "1010000011000001" "0011000011111100" "1010111110001111" "1010100110010011" "1011000011000110" "0010101100101111" "0010101110100011" "1010101101100001" "1010000010001111" "1000100010011111" "1010111100111000" "1010111100011101" "1010111000000100" "1010110001110101" "1010011000110110" "1010101011011100" "0010101000001011" "1010110001001011" "0010011111011100" "1010110010000110" "0010110100011111" "1010100000111011" "1010100001011011" "0010110100111110" "1010111000011011" "1010101101010001" "1011000000101111" "0010000100110100" "0010011111010001" "0010110111111110" "1010110100111011" "0010110000000010" "1011000010111001" }
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
set ID 75
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTS_4
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010010010000100" "0010111110100110" "0011000111110000" "1010011100001100" "1010110001010100" "0011010011101011" "0010110010111010" "1010101010010010" "1010110101111011" "0001100100100111" "1010101011101100" "0011000001010010" "0010111100101001" "0010001001100111" "0011000000110011" "1010110001100100" "0010011001001111" "1011001010101110" "1001100100000101" "0010110110100100" "1010011001101101" "1011000100110011" "0010100100100111" "1010110011111110" "0010000100000010" "0010100001100001" "0011000100001010" "1010110001110010" "1010110111001100" "1011001101001100" "1011001010011001" "1010110100010101" "0010101001100111" "0010011001111101" "0010110000101111" "0011000000010110" "0010100001000011" "0011000100001000" "0010110111000101" "0010011100010001" "1010110101100010" "0010011101001010" "0010100101100011" "0010011110010011" "1010110101011100" "1010111110101010" "0001100011111010" "0001110111110110" "0010110010110011" "0010100001010011" "0011000101000011" "1011000011010010" }
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
set ID 76
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTS_5
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010010111101000" "1010111001011010" "0010111011100110" "0010010100101110" "1011000000110010" "0011000100001010" "0010100111001010" "1010100011000000" "1010011001001111" "1010101101010000" "1001110111000010" "0001110111111100" "0010101101110100" "0010110001010100" "0011001010001001" "1011000100110001" "1010011101010011" "0001111010011001" "0010011010001111" "0010111010011110" "1010011001001101" "1010100100011010" "1010110110100100" "0010100001100110" "0010110011110011" "1010101000110111" "0010011001001111" "1011010010010011" "1010011110000001" "1010111000000011" "1010111110100010" "1010101010001010" "0010110111000100" "0010011111011100" "1010101011011000" "0011000011001110" "0010100001110100" "0010001100111011" "0011001101101111" "0010110010111000" "0010101101101001" "0011000000000110" "1001110110010101" "0011000101000000" "1010101111000100" "1010011110001100" "1011000101111010" "0010001101000100" "0010101111011011" "1001110000101010" "0010110010111101" "0010000100001100" }
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
set ID 77
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTS_6
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010011010110100" "1010111000000000" "1010110001111001" "1010001100111110" "1010101100001100" "1010111111010101" "0010100110010000" "0010111101111010" "1010110111001111" "1010110000000010" "0010111111001000" "1011001001100111" "0010010110111110" "1010101111011100" "0010100111000100" "1011000010100011" "1010100111101111" "0011000001100100" "1010011101011011" "1010101101101010" "1010101010111101" "0010010000100110" "1011000001111001" "0010111101111001" "1010010100111000" "1010101010001000" "0011000010001101" "1011001100111010" "1010101100111001" "0010110110100100" "1010100010111100" "1010010100110001" "0010101000001111" "0010010001101000" "1010100011100100" "0010011110110011" "0010000011000011" "1010100100110101" "0011000000110101" "0010101001010001" "1010011101001010" "0010111010001101" "1000101110001001" "0011000000010010" "1010011000111011" "0011000000111010" "1010101000011001" "0010110000000111" "1010101110001110" "1010001001011011" "0010001010010110" "1010111001100110" }
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
set ID 78
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTS_7
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010110001101110" "1011000010101010" "1010110001110000" "1010100111001010" "1010010010101001" "1010111101011000" "0010100000100100" "0010100010000010" "0011000110111001" "1010101000000001" "0011000000111001" "0010101100101101" "1010110110011100" "1010110001000010" "1010110001100011" "1011001001101100" "0010110100010111" "1001111001100110" "0010010100110100" "1010101101000010" "0010011010001010" "1010000000010011" "0001110101011010" "0011000001101111" "0001101111100100" "0001110010001011" "0010111110001011" "0010011101110110" "1010111001110011" "0010110111100100" "0010111100001011" "1010001100001110" "1010010110011000" "0010010001101111" "0010010110100010" "1010101001010101" "0010101111101110" "1011000000010001" "1010110110111111" "1010111101100010" "0010101000010100" "0010010110010010" "0010000010011100" "0011000000100101" "1010101011010110" "0000100111110111" "0010111011101011" "1010110100011000" "1010100100101110" "1010110010100011" "1011001000001001" "0010110001100000" }
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
set ID 79
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTS_8
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010110000000101" "1010111001010101" "1010101110000111" "1010110101101000" "0001000000011111" "1010011001110101" "0010101011110100" "1010000110111111" "0011000101011111" "0010100000110111" "0010111100000110" "0001111000110100" "1010101001010010" "0010010000101111" "1011000010001101" "0010101000100110" "0010010111001010" "0010110000100101" "1010001011011110" "0010000011101010" "1010100101111011" "1010101101111011" "0010011001111001" "0010110100111111" "1010101101011001" "1010100111101110" "0011000011101001" "0011000111100011" "0010111100010011" "0010111000011100" "0011000000111101" "0010110010101010" "1010001011000011" "1010100000111010" "0010011111001011" "1011000100111010" "0010010111001000" "1010100110010100" "1010111100001101" "1001000011111111" "0010000100100110" "1010101001010011" "1010110000001111" "0010111000010101" "1010100010001000" "0010111100011101" "0011000011111001" "1010100110110011" "1010101000010110" "1010110100000110" "1010111000100101" "0010101101100101" }
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
set ID 80
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTS_9
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010101101010011" "0010010010101000" "0010100100110110" "1010110001111010" "1010001100000000" "0011000100111101" "0010100110100010" "1011000001010100" "1010100100011011" "0010101111111111" "1010101100000101" "0010110101110100" "1010110100101100" "0011001000100100" "1010111000011000" "0010101001011110" "0010110011011101" "1010010001001111" "0010001001111001" "0010100011110101" "1001101100001110" "1010100011001001" "0011000111010001" "1010100001110010" "1010101000110101" "0010010010011100" "1010011011000110" "0010100111100111" "0011000001010110" "1011000110010010" "0011001001010010" "0010110010000000" "1010110000111111" "1010111011101001" "0010101011001011" "1011001000110011" "1010110010100100" "0010111010101001" "1011000010010010" "1010101000011001" "0010101001110110" "1000010110010010" "1010110110001011" "1000110101000111" "0010011000001100" "0010101100111100" "0010111000010011" "0001100101100100" "1010110010111010" "1010101010000101" "0010000100100010" "0010110000010000" }
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
set ID 81
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSg8j
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010110101101011" "0011000000101001" "1010110001010010" "0010110001001101" "1010011001111100" "0010111001100011" "1010110011110011" "1010111101110000" "1011000001100011" "0010010100100110" "1010111110010100" "0010110000100101" "1010011000110100" "0011001010101100" "1010000110010111" "0011000100010000" "0010011000011001" "0010110001100011" "0010100111100111" "0010100011010011" "0010110000101011" "0010101000011010" "0010110000000001" "1011000001001101" "1010010011111101" "1010110101011000" "1010110010110101" "1010100001000001" "0011000101111110" "1010111001011011" "0010111101010010" "0010100110010100" "0010110111000110" "0010010110011111" "1011000010001010" "1011000000110100" "0010101010110110" "0011000100001100" "1010011000001101" "1010110111111111" "0010100001010010" "1010011110100111" "1010110110010001" "1010111110110111" "0010000111011101" "1010101000011101" "1010110010011100" "0010101000111000" "0010100101010100" "0010111001011011" "0011000010111111" "0010110111001110" }
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
set ID 82
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTShbi
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010110011001010" "0010111100101010" "1010100110010100" "0011000101010010" "1010010110010100" "1010100001110001" "1011000001011100" "0010101011111011" "1011001101011011" "1010110101010100" "1011000011000011" "1011000000011100" "1010011110111011" "0010110010101111" "0010100100000001" "0010110011010000" "1010101001111111" "0010110011011100" "0010100001101110" "0010010101001000" "1010110101111010" "0010010001111101" "0010100001100010" "1010111010010011" "1010110011101011" "0010101011010011" "1011001100010000" "1011000110100110" "0010100000010111" "0011000000111101" "1010111000000011" "0010101011101011" "0010010100111110" "1010101110010001" "1011000000011110" "1010101001100110" "0010101010111100" "0011001000011111" "0010101010001011" "1010000011100001" "0010101000000001" "1010010101101101" "1010011000100101" "1010111101100011" "0010101000101000" "0010010011101111" "1010111100001100" "0010101010101010" "0010100011010000" "0010110110100000" "0011000001011110" "1010000000110010" }
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
set ID 83
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSibs
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010011011001111" "1010100100000001" "1011000000111101" "0011000001000101" "0010100000010101" "1011001100010001" "0010011110110001" "0011000101010011" "1010100000010010" "1010110100001001" "1011000001000011" "1010111100000110" "1001001111110000" "1010100101101011" "0010111010000100" "1010010011101011" "0001110011111011" "0010111011111110" "0010010001000010" "1001101010011111" "0010110010010011" "0010011110010111" "1010110110101101" "1010101011101001" "0010110011011000" "1010110110001001" "1010111110110110" "1010100010110001" "0010000101111101" "0011000011010001" "1010100000110111" "1010100000001010" "1010110001011000" "1010101011011011" "0010100011110100" "0011000000000111" "1010111000100011" "0001111111011011" "0010111111111001" "0010100110011000" "1010010000100000" "1010101111010011" "0010100100011010" "0001101011101001" "0010010110001110" "1010111001000101" "1010000110100001" "1010010010100110" "1001100111010000" "1010001101101111" "0010011111101100" "1010101101101100" }
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
set ID 84
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSjbC
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010101011111001" "1010111110001001" "0010000011011101" "1010110110010111" "0011000101111100" "1011000011101010" "0001110100000101" "0011000010000000" "0011000100001111" "1010111001000110" "0010101001001001" "0010011100010100" "0010111101101001" "1010101100001110" "0010111011001011" "1010110000110101" "0010010010110001" "0010111001001001" "1010110100101010" "0010101110111101" "0010110100100110" "1010000001100001" "1011000110100010" "0010111111101011" "1010011100011100" "1010011100000101" "1011000011111111" "1010110110000011" "0010010001101101" "0010110110001011" "0010100000010111" "1010010010010101" "1011000011000101" "0001110000010100" "0010101000011100" "0010101111010101" "0010000001101100" "0010001100001011" "1010001110001001" "0010110100100000" "1001111001011110" "1010110010111001" "0011000000011001" "0010101001000110" "1010110100000111" "1010111000110111" "0010111110011100" "1010101110010111" "0010101001101010" "1010101111110000" "1011000001001101" "1010111111110010" }
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
set ID 85
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSkbM
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010101010000111" "1010101111000111" "0010110011101010" "1010111100101101" "0010111110000100" "0010111110100001" "0010010100010000" "0010001101111000" "0011000100011001" "1011000000001100" "0011000101001101" "0011000100011001" "0010101110011011" "1010110001101110" "0010011100001000" "1010110000010010" "0010011101010010" "1010100101100010" "1010110001100001" "0010110111111011" "0010111110000011" "1011000100011001" "0010100011011001" "0010111101011010" "0010111011111000" "0010011111001000" "1010010001001000" "0010100110011101" "0010110011101110" "1011000010011011" "0010101001000100" "1010100001001001" "1010000011001011" "1010100010001011" "0010110011111101" "0010101000010011" "0000001010001110" "1011000000001000" "1010111100001101" "0011000101000101" "1010111010110000" "1011000000001010" "0010101111010000" "0011000010100110" "0010010011111010" "1010110010101000" "0011000011000111" "1010110100101111" "0010101100111011" "1011001001101010" "1011000111110001" "1001100100011000" }
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
set ID 86
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSlbW
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010101001001100" "1011000000100011" "0010111011000000" "1010110010011110" "1001110011001101" "0011001101001100" "0011000001011001" "1010111101100101" "1010011010011100" "1001110010111101" "0011001000011110" "0010110111100001" "1010100101000011" "0010111111001011" "1010101101000110" "1010101011000001" "1010101000000110" "1010100001111000" "0010010011001011" "0010010100101100" "0001110011101011" "1000111100100001" "0010111010100100" "0010100011001111" "0010111000011000" "0010100110100110" "0010101001001111" "0011000101001101" "0010000011011000" "1011000111111001" "1010000011010101" "1010111100001100" "1001100011000001" "1010110000001000" "0011000001010110" "0010111001011010" "0010101010111100" "1010111000000111" "1011001101110001" "0010011010100001" "1010101011010011" "0010101110001011" "1010010111001000" "0010100011011001" "1001101001010101" "0010000100100011" "0010011000000111" "1010110000100111" "1010100100011100" "0010010101111011" "0010001100010000" "1010101111101001" }
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
set ID 87
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSmb6
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010010111101101" "0010001111111100" "0010111110000000" "0010100100110000" "1011000101101110" "0011000110001010" "1010101100110000" "1011000100011010" "1010110011000101" "0011000001010110" "0010110100011000" "1010100110011010" "1010101101010010" "0010100001111100" "0010100001110001" "1010000101001010" "1010010100101100" "1010110010001011" "0010100010010111" "0010001000101110" "1010100011100001" "1010101011000000" "0011000010110010" "0010000011111011" "0010100101000111" "1010011000100010" "0010111010001111" "0011001000001001" "1010000011000001" "1011001101110111" "0010111001011101" "0010010100100101" "0010101110110101" "1010100111010001" "1010101100101000" "0010000110101110" "0010101110001011" "1011000011001111" "1011000111000111" "0010110000101110" "1010100111000101" "0011000000010000" "1010111000001110" "1010110100111001" "1010100001001011" "1010100100110001" "1010101100110110" "1010010111010101" "1000111010000101" "1010001101110110" "0010110110101000" "1010010111010001" }
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
set ID 88
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSncg
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010101000011001" "0011001010101000" "0010110000110011" "0010110011010100" "1010111101110001" "0011000000101010" "1010010011010100" "1010110010101111" "1011001001011100" "0011000000110001" "0010111101010011" "1010100110001111" "1011000000101010" "1010010001110001" "0010011000001011" "0010100111110010" "1010011011011100" "1010111100011001" "0010011101100111" "1010110100101110" "1010100110010000" "1010110100001111" "1010010001110000" "1011001000101010" "0010010010101101" "1010101101010110" "0010111000010110" "0010111001010101" "1011000011100010" "1011000001010110" "1010110100000010" "0011000011010101" "0011000000100001" "0010110111010011" "1010110000011010" "0010100011110111" "0001110010111111" "1010110101101100" "1010101000110111" "1010111111100001" "0010001000011110" "0011001000011101" "1011001010101001" "1001110111101110" "0010001010011101" "0011000000100000" "1010110000011001" "0010001101100110" "1010110100111001" "0010100101001010" "0011000011100000" "0011000010011000" }
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
set ID 89
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSocq
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010101100101101" "0010111100011101" "1010101000110100" "1010100101101001" "1010100101011010" "1011000011000110" "0010101001100000" "0010110100001100" "1001111101101010" "0010110001001111" "1010111111001000" "1010011000100111" "1011000101100100" "1011000100111111" "0010011010010001" "0010101001000011" "1010111011001011" "1010100000110010" "1010101010101001" "1010101000000100" "0001110000001111" "0010100101101000" "1010100101100101" "1010110001000101" "0010101011010010" "1010011000000011" "0011001001111011" "1010110011000101" "1010110000100001" "0010110010110110" "1010010111001100" "0010011011001101" "1010101011001101" "0010110000010001" "0010000101011011" "1010110011101000" "0010110000011010" "0010110011011011" "0010110111011001" "1010111110111110" "1010100010110110" "0010010110000100" "1010001100100100" "1010010011111011" "1010010100110101" "0010000110001001" "1010110100100110" "1010001011011111" "1010110011001111" "0010111000100011" "0010110000110000" "0011000001101100" }
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
set ID 90
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSpcA
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010001010110101" "1001100010110110" "1010101011111000" "1010100001010010" "0010111101110110" "1011001000111010" "0010110111111101" "0011001010001111" "0010101010001110" "1010101101000111" "1011000111000000" "0010110010110001" "1010011000010010" "1010111010100000" "0010001000010110" "0010000001000111" "0010000000110100" "0010110011111001" "0001100101001110" "1010110100010110" "1010001100101100" "0010110100100000" "1010111110001101" "1010111001100010" "0001011100000001" "1001010001001101" "0010111111000000" "1010111110000011" "1001100100001000" "0011000010101001" "0010110000110001" "0010100010001000" "1010100010101000" "0010110010100101" "0010000000011100" "1010110011101001" "0001110100000001" "0011001111010101" "0010111100010011" "0010000010110111" "1001111110010010" "1010110011110001" "0010011110101001" "1010010101100111" "0010100100001110" "1010101010000101" "0010001111010001" "1010101100000000" "0010110011101100" "1010100000000111" "1010110100101101" "1010100111010101" }
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
set ID 91
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSqcK
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010010011010010" "1011000000111001" "1010100110111100" "1010110101100001" "0010110100000010" "1010101000111011" "0001111000111010" "1010000101000011" "0011001111010110" "1011001010010110" "1010111101111110" "0011000011010010" "1010110001010010" "0011000110010001" "1010100110001000" "1010001000110100" "0010100101000000" "0010001100110010" "0010110010111010" "1001010001100000" "0010000010111101" "1010011001001111" "1010111000000110" "0011000101100111" "1010101110111100" "1010010111110000" "0010101111001001" "1011000000101001" "1010100011011100" "0010100101010100" "1010001010110111" "1001001011100010" "0010000110111100" "1010111010100111" "0011000010000001" "1011001111011110" "1001101100101010" "0010111111101000" "0011001010011000" "1010101011000111" "0010101001110010" "1011000001011101" "0010110111111111" "1010011001000010" "0010100110110111" "1010110110000011" "0010100001110011" "1010111011110100" "0010110011011010" "1011000101110101" "1011001110001011" "0010010010111011" }
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
set ID 92
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSrcU
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010100011001101" "1011010010001011" "1010100101110111" "0010101011100110" "1010011111010100" "0010110111000101" "1010101001001000" "1011000001110101" "0010111101111001" "1010111000000001" "1010110110111101" "1001011000001001" "0010101100110110" "0010111000011000" "1010010101100010" "0010011111110110" "0010101110111000" "0010110011011101" "1001010000001111" "0010100001100001" "1010110001110010" "0010100001100100" "0010111111001111" "0011001110010000" "0001110101111101" "1010100010100101" "1010100111100000" "0000010111100110" "0010110100101000" "1010111010111111" "0010011011111011" "1010011111100100" "1010000000011000" "1010111000001001" "0010110000101101" "1011000110010101" "1010110011010110" "0010110100100100" "1010100111011000" "0010011010001011" "0010111000111000" "0001110100101111" "0010101000000001" "1010100000101011" "0010111100111100" "1010101110111101" "1010010111010111" "1010010110001001" "0011000000110010" "1010100011111011" "1010110000011011" "1010101110010100" }
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
set ID 93
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSsc4
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010100000111100" "1011000111000000" "1010100001000010" "0011000010111111" "1010110001001000" "0010110111101101" "1010110011101100" "1011000011100001" "1010101011000110" "1010110110110100" "1010110010000001" "0001111000000110" "0010010001010010" "0011000010111001" "0010111100111111" "0010010100110010" "0010101100001000" "0010101010010100" "1010110001001000" "1010100010010111" "1010101010100110" "0010111000100111" "0011000100001011" "0011001101001110" "1010101010101100" "0010110101010111" "1011000110111101" "0011000011011001" "0010111000001010" "1011000110000010" "1010101111010001" "0010100110100011" "0010111000011010" "0010001001001010" "1010110100111010" "0010011011101101" "0010011010111101" "1010100011000001" "1011000101101010" "0010110010000101" "0010110001011111" "0010111011101010" "0010110001101000" "1011000001010000" "0010101011011010" "1001110101111001" "1011000011011000" "1010000111101010" "1010100000011001" "1010000101011001" "1010010000011110" "1010010110100001" }
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
set ID 94
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTStde
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010000111111000" "0001110001110011" "0010010011100001" "0011000011001101" "1011000001110110" "1010100101000110" "1010110000101001" "1011000100000011" "1011000111000101" "1010000000000111" "0011000111010000" "1010000110010100" "0010111011000100" "0010100101110000" "0010110001100101" "0010100001110101" "1011000011011101" "1010000101001000" "1010000001110010" "0001110100011000" "1010100000000011" "0010001110111101" "0010111110101011" "1010010100010101" "0010110011101001" "1010011000000001" "1011000111001001" "0011001010100100" "1001010100110001" "0010101010010000" "1010101001011111" "1001100010111100" "0010011111111110" "0010010111101101" "1011000001000100" "1001100100101001" "1010010100010001" "1010110011001010" "1011001000100001" "1010011010101011" "1001110010010001" "0010111110101000" "0010100001010001" "1010010001111011" "0010100101110000" "0010110101011110" "1011000111111111" "0010000111110000" "0010011011111010" "0011001101110111" "0011000110101011" "1010101100100011" }
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
set ID 95
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSudo
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010100101011111" "0011000001110100" "0010101110101110" "0010011100001000" "1001010011011101" "1010111110000110" "1010111011010111" "1010011001001010" "1010110111010011" "0011000001011010" "0011000000111100" "1010000100111011" "0010101111101111" "1010111110111001" "1010010000110000" "1010101000100110" "0010101001011100" "1010100001010110" "1010100111001000" "0010011100010000" "0010110001010101" "1010000001111010" "1010100010101100" "1011010001011001" "0010000011001010" "1010101111100011" "1010111101000001" "0011000111111000" "0010110100001001" "0010110100001011" "1001111111010010" "1010100100100101" "1010100101001000" "1010010101010010" "1010111011000110" "0010101001101000" "0010101100101011" "1010111100101111" "1010100100111101" "1001100010010111" "0010011010111010" "0010000101111010" "1010110111110010" "0010110000110001" "0010101001000011" "0010110101101111" "0010010011001011" "1010000100010101" "1011000011001011" "0010110111111011" "0011000010001101" "1010101001110111" }
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
set ID 96
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSvdy
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010110110011001" "0011010000010001" "0010111101100000" "1010101110101011" "0010101011011001" "1010000001110101" "0010101111000011" "0010111111010001" "0010100000111100" "0010100001010111" "0010101000100100" "0010111110001011" "0010000011101101" "1011000100011001" "1001111011010010" "1011000101001010" "0001111111010110" "1011000011100011" "1010011101011011" "0010110001001011" "0010111101110010" "1010110100010101" "1010100011110011" "1011001101000101" "1001110101100101" "1010001011001101" "0010010110000100" "1011000110010010" "0001110000101111" "1010010100010011" "1001100110010010" "1010100111101001" "1010110001111000" "0010011101100010" "0010110010000010" "0010111010010110" "0010100000001100" "1010110001010000" "0011000010001000" "1010011110000101" "1010110110011100" "1011000000011001" "1010100000101011" "0010111000110001" "1010111000101000" "1001100011011101" "0010010111111101" "1010110110011010" "1010111111110110" "1011000100100010" "1010101111000100" "0010101011010110" }
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
set ID 97
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSwdI
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010110011000111" "1011000111011111" "0010111110101000" "1010101110110100" "0010000100110001" "0011010010100001" "0010110000011011" "0010001010001011" "0010111011110101" "0010110011000011" "1011000000011001" "0010111010010010" "1010001101101011" "0010111110011100" "1010100010101000" "0010100111010010" "1010000010001111" "1010110101011110" "1010110011000110" "0010101011110110" "1010010010110110" "1010110111110011" "0010010011011001" "0010111101110011" "0010101111010000" "1010000101101100" "0010111000000011" "1011000101111011" "1010101001111000" "1011010011011011" "0010100100111000" "0001010110010100" "1010101011000111" "1010100001001110" "0011001000000101" "0010110000000011" "1010010110110011" "0010111000000110" "0011000110011010" "1010110011101011" "1010110101011001" "1010011011101110" "0010010111101111" "1000101101111001" "1010110101011010" "1001111110011111" "0010001111011111" "1011000011000110" "0001010100001011" "1010111111100101" "1011000000110011" "0010111000010110" }
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
set ID 98
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSxdS
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010101111111010" "1011000110111100" "0010010110000000" "0001110010000101" "1010101101100100" "0010101000001111" "0010101101110011" "0010000111110100" "1010110100010111" "1010101010000110" "1010111000100011" "1011001001000011" "1010110010100010" "0010111111100101" "0010101111110010" "0011000011111000" "1010110101111100" "0010010101101000" "0010011111011111" "1010110001101110" "1010111101110010" "1010111011001101" "0010100010101001" "0011001000111010" "0010101100011101" "1010001000001011" "0011000100000111" "1010100000100111" "1010101100000100" "1010110001000110" "1010111000110111" "1010100100000001" "0010100101110000" "0010101101111001" "0011000000010010" "1010001110010100" "0010010001011101" "0011000110011000" "1010010111001110" "1010111001111010" "1010100100001101" "0010101000000110" "1010011110110011" "1011001100011011" "1010010100101110" "1010110011111100" "1010110010110011" "1000101011111011" "1001110011110111" "1010100100101001" "1010101111010010" "0010101101101001" }
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
set ID 99
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSyd2
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010101111011010" "1010110111011100" "1010101011110111" "0010110101100101" "1010100110101000" "1010110111000011" "1010110100101111" "1010111001000001" "1010110111111001" "1010101110001011" "1010110101111011" "1011000010110111" "1010110101010100" "1010100000010100" "0010110111101000" "0010110111011011" "1010101100110100" "0010110001000100" "0010000011110100" "1010100111111110" "1010111000010100" "0010101000100000" "1010101110000010" "0011000011011000" "1010010100100010" "1010101010111010" "0010111110110011" "0011001000110101" "1010110110110001" "0010100011011111" "1010111010101011" "0010100011001110" "0010110000101101" "0010111000010010" "1010111110011001" "1010111100111010" "0010111000001010" "1001111101011011" "1011000001010011" "1011000001101010" "0010011011001000" "0010100001001111" "0010101111111111" "1011000101110111" "1010100111111111" "1010000000110110" "1010101000110011" "1010100100000110" "0010000101011001" "0010011000001000" "0010111111010110" "0010110011100010" }
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
set ID 100
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSzec
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010010001011010" "0010110111010110" "1001111100010001" "1000010001100100" "0010011101110100" "1010111010010000" "0010100110010011" "1010001011001011" "1011001000011001" "1010111011100100" "1010001001101000" "0010011001000111" "1010100101110100" "1010110101011100" "0010110100000001" "1010110101011000" "0010011111101111" "0010110010100111" "0010010111001001" "1010101000001000" "1010101010000100" "0010011000111001" "1001111111101111" "0010101101111100" "0010000011100101" "0010101001011010" "0011000100010000" "0011000001111011" "1010110100001000" "0010110110000010" "1010111110101011" "1010101011000101" "0010100111011000" "1010010011010010" "1010101101110001" "1011001101000110" "1010100101000011" "1010010100100001" "1011001010101111" "1010010001010011" "0010110001101111" "1001100010010000" "0010111110000110" "0010110010111110" "1010100111011101" "0010010101001011" "1010001001111001" "0010101100101100" "1001111000000011" "0010110110011111" "0011000000100100" "0010100100010001" }
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
set ID 101
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSAem
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010111110011011" "0011000001010100" "1010110010011110" "1011000010000010" "0010101110010110" "1011000100010010" "1010101010111110" "0010101000110011" "1011000011101111" "1010111101100000" "0001111000101010" "0010110000011111" "0010101001000001" "1001001100001110" "1010100011000111" "1011001000101100" "0000101000101001" "0010010001000001" "1001110000011111" "1010101001000000" "0010010000110100" "0010100011100100" "1010010000001100" "1011000100101111" "1010101011010010" "0001010000100011" "1010000011111000" "1010100001111101" "0010111100110011" "0011000111101010" "0010110110010001" "1010101101111100" "1010110000011110" "1010110011000100" "1010110111000011" "1010111111000010" "1010110010001110" "0010100010001100" "1010101111011101" "0010110011010011" "1010100100111010" "1010101011011100" "0010100011100110" "0011000011100111" "1010110000010001" "1010111011110000" "0010110001000010" "0010110101001100" "0001100010101100" "0010110100111000" "0010110100001100" "1010110100011100" }
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
set ID 102
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSBew
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0001100101000100" "0011001100011010" "1010011001101111" "1010100100001010" "0001101111111100" "1010110100001000" "1001101111000110" "0010110000000101" "0010111011010000" "0010101101111001" "1011000010110111" "0010110000010110" "0011000100110101" "1010001110101000" "1011010101000101" "1011000001110101" "0011000011111001" "0010000101110011" "0010110011001010" "1010000011100100" "1010011010101100" "1010010000110100" "1010111001011101" "1010110001000010" "1010011000010011" "0010010111000011" "1011001000111110" "1010111010111110" "0010101100111100" "0010110000100110" "0011010011011110" "1010110101111111" "0010101101000001" "1010110100001111" "1010110011110111" "1010111101010001" "1010011010001100" "0010110011110100" "0010000011010110" "0010101110100100" "1010011000100000" "0001010110101111" "1010010101110110" "0011000011010010" "0010110110110001" "1001010101101101" "0001111101100100" "1010001110110110" "1010010001101111" "0010100101010011" "1010101000111000" "1010111100001000" }
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
set ID 103
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSCeG
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010100001111100" "0010100001010010" "1010010101110110" "0010010100111100" "0010011010111001" "0010111001000011" "1010110100000100" "1010100011111111" "0011000110100001" "0011000011011100" "1010111000000101" "0010101011110001" "0010110101001000" "0011001101111100" "1011001010110011" "0010000100100101" "0010110000011010" "1010010110100000" "1010000011001111" "0010111000011111" "0001011111101010" "1010100100000000" "1010011100111000" "1010000100111011" "0010000101001001" "0010110100110110" "1011001101010111" "1010101000000101" "0010010110100100" "1010111000011111" "0011000010011100" "1010111010100100" "0010110101101110" "1010111101001001" "0010110010111010" "1010101100100011" "1010100010000110" "0011000001011101" "0010011000011001" "0010100110111010" "0010101011110011" "0010111001011010" "1010100110100110" "1001111000100000" "0010110000100000" "0010011000001010" "0000110111110111" "0010011111100101" "1010000100110111" "0010000111101100" "1011001000001111" "1011000010001101" }
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
set ID 104
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSDeQ
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010010100101111" "1010110010100101" "1010100000111110" "0010110000011100" "1010110101101110" "1010110000110000" "1010100010010111" "0010100100010111" "0010111010000001" "0011000100101001" "0010010011011100" "0010000101110111" "0010111001100110" "0011000000001111" "0010100110100110" "0011001100001101" "0001111010000110" "1010100000101101" "0010000010000000" "0010010001000011" "0010101110111110" "0010101011010110" "1010100010111010" "0010111101101001" "1010010001101001" "1010000101011011" "1011010000010111" "0010010111001000" "1010100011010111" "0001100101001100" "0010100011101100" "1010100011010010" "0010111011111111" "1010100111010100" "0010010000011000" "0011001010111010" "1001001111101000" "0010110010101000" "0010001101001010" "0011000001011011" "0010111000010000" "0010100000111101" "1011000101111010" "1011001100111110" "1010000111000100" "0010001111100110" "1010111010111100" "1010101001001101" "0001101111011110" "1010100011110001" "1010110101111011" "1011000010100011" }
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
set ID 105
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSEe0
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010101011001010" "1011001110011101" "0010101111110111" "0010111001101011" "1010100110110111" "1010100101000001" "0010111010000010" "0010111001010001" "0001110000111001" "1001101111101001" "0010111111101011" "0001100100100110" "0010101011010010" "1010110101011010" "0010100111100110" "0011000110111001" "1001111100101000" "1001110010001100" "1010101000001110" "0010100101111100" "0010110000001010" "1010001110100110" "1010101000000001" "0011000110111101" "0011000000000101" "1001010001100111" "1010111100100001" "1001111110100110" "1010100000011001" "0010110100000001" "1011000110101111" "0010111100110001" "0001110011001100" "0010100011111100" "0010101001010000" "0011000100101100" "1010010110101100" "1010110111110111" "1010111100101110" "1010110011110100" "1010010100100000" "0010110000001100" "1010101010000001" "1011001011110010" "0010100010101101" "1010000100000100" "1010111000011111" "0010111010100111" "1010111010100010" "1010110110001101" "1010101000100101" "0010110010001000" }
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
set ID 106
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSFfa
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010010101011110" "1010100111100100" "1010100100101001" "0010000100110010" "0010111110000100" "1011000111001011" "0010111001000010" "0010111010011011" "1011000000101001" "1010100001000111" "0011000011100100" "0010100000100010" "1001100000111110" "1010101100011101" "0011000011001111" "0010110011011001" "1010011001111001" "1010011011000111" "1010111001001111" "1010101101001100" "0010110101001111" "1010000100010111" "1010000110011001" "0010111111010000" "1010100110110101" "0010011010010011" "1010111010011110" "1010101110001010" "1010000101000001" "0010111100111011" "1011001100111010" "0010111011111001" "1010110001110011" "0010101010001011" "0010101000000100" "0010111110110110" "1010100111110001" "1011001000100011" "1010101000001000" "1010111000001101" "1010101001110011" "1010110010101001" "1010010101010111" "1010110001000110" "0010010010100000" "0010001000100100" "1010100100110000" "1010001011100100" "1010101011111110" "1010101010000111" "0011000001110110" "0010110110010001" }
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
set ID 107
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSGfk
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010101001101110" "0010100010100011" "0010111111010010" "1010110100000111" "0011001001000001" "0010100011011110" "0010110001001000" "0010100101100011" "1011001100110001" "1010111111011010" "0010101101111110" "0001111101001001" "1010110011111110" "1010100001010010" "0011000100100011" "1010111101111010" "1010000001101110" "1010001000010101" "1010101111011010" "0010010001010100" "0010110101011101" "1010111000110010" "1010110011011011" "1010111000010000" "0010010001111011" "0001101100001011" "1010011010010011" "1010110001111001" "0010100011011101" "1010100110101111" "1010110001000000" "0010001011010001" "1010110101110101" "1010110110011010" "0010110000111111" "0010101100010011" "0010110010010011" "1011000010101100" "1010001000110010" "1010111111100100" "1010100011001101" "1010110101010110" "0011000000001000" "0010111011111111" "1010101001011101" "1010101000100001" "1010010011111100" "1010100000101000" "1010010101100101" "1010110000001010" "0011000111100000" "0010110110010100" }
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
set ID 108
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSHfu
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010110001101001" "0010101011101100" "0010010101011001" "1010100011011000" "0010111110101011" "0011001000010110" "0010010000000101" "1010011101011100" "1010111110000100" "1010110011100011" "1010000111100011" "0010010111001010" "0001110110000111" "0010111101110110" "1010110101111111" "1011010000001110" "0010110110011101" "1010111100001101" "0010000001111101" "0001100111101011" "0010111000010111" "1010111110010000" "0010100000111001" "1011000010111011" "0011000010100110" "0010101010110101" "0010110011111111" "1010011001001101" "0010101000100011" "1011001100010010" "0010110000100100" "0010011010010010" "1000111001001111" "1010010010011101" "1010100101000011" "0010100101110000" "0010100010000001" "0010111001100111" "0010100101101001" "1010001111010011" "1010111100001001" "1000111110011110" "0010111111000011" "0011010001011111" "1010110011001111" "0010001111100101" "0010101100001011" "0010011101111101" "0010100111100101" "1001101010101010" "0010111100010001" "0010011111010110" }
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
set ID 109
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSIfE
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010100001101000" "0011000111000100" "0010000111110110" "1010010110001001" "1010111001100000" "0010100111001010" "0010010001101010" "1010011010110000" "0010110001011000" "1010100000011110" "1010110100001101" "1010111010111001" "0010100001110000" "0010101111001100" "1011000001111100" "1011000001101101" "1010101001011000" "1010011000011101" "1010100000101111" "1010110000111110" "1010111010000001" "1010110001100010" "0010111111111110" "1011000001010001" "0010010111011011" "1010101101010111" "0010111110011011" "1010010110000110" "1010110001000001" "1010110101000101" "0010111001011011" "1010010011001000" "0001111000101001" "0010110011010110" "1010111001100110" "0010110111100001" "1001110101011010" "0011000111011101" "1010010101111111" "0011000010001101" "1010010101101000" "1010000100010001" "1010100001100101" "0011000110111010" "1010001000010001" "1010110111011101" "1010010111101101" "1010100011100000" "1010110000100000" "0010111010011001" "1010111100111001" "1010010000010110" }
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
set ID 110
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSJfO
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010111001110101" "1010001011111000" "1010110110010000" "0010110111001101" "1011000100101100" "1010010010101011" "1010110000110011" "1010001111101101" "0010111000010111" "0010111111011100" "1011001011010100" "1011000000101001" "0010110111100110" "1010100011101001" "1010110010100111" "1001100100001011" "1010110101000100" "0010100010000010" "0001110001000111" "1011000100000101" "1010110111110011" "0010110011101010" "0010110101111110" "0000100010010110" "1010101000111010" "0010010000101001" "0011000111110010" "0010101000100100" "1010111000111110" "0010000100010010" "0010010000101000" "1010100010000100" "0010000001000100" "0011000110100111" "1011000100010011" "0010110011010100" "1010000010100001" "0011000101011001" "1010110010011111" "0010101000001100" "0010011110100100" "0010110110001111" "1011000101110010" "1010100011011100" "0010110010001100" "1010010000111101" "1010111011100100" "0001111100010100" "0010101110110100" "0010111110111000" "1011000100010111" "1010011001000110" }
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
set ID 111
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSKfY
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0001010000110001" "1011000010101111" "1010111111000101" "1001111000010001" "1010101100100000" "1011000001101101" "1010010010101010" "0010101011110011" "0010110100010001" "0011000110001110" "1010110001001010" "0010010011011011" "0010110000100111" "1010111011101010" "0011000010100111" "0010110111010010" "1010111111110011" "0010110110001110" "0010110100110010" "1010110010101100" "1010011010100011" "1010010001111010" "1010100101001101" "0010111001001000" "1010001111001001" "1010100111010011" "0011001011011110" "0010100000010011" "1010111001000100" "0011000011100100" "1011001000101100" "0001001100100101" "0010100110100110" "0011000101000101" "1010111001110101" "1010111111101100" "0010110011010001" "0010111101110010" "1010110000011100" "0010110110001011" "0010100100110101" "0010111011110110" "1011000011110010" "1010111110000111" "1010011010111110" "0010000111101000" "1010010100000010" "0010000011100010" "0010100101000110" "0011000000110101" "1011000000101100" "1010110010001101" }
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
set ID 112
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSLf8
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010100000100011" "0010001001010110" "1010111011110101" "1010111100010011" "1010010011000111" "1011000110011101" "1010100001101110" "0011000010111110" "0010110110010011" "0011000000100000" "0001111001111000" "0010010000000100" "0001010101010101" "1010111101010101" "0010111000111000" "0011000010011000" "0010101101011111" "0010110101010110" "0010110111001010" "1001111000010101" "1010011111001100" "0010110001001101" "1010111011000011" "0010110101011111" "1010110011010001" "1001110101010001" "0010110011101100" "0010111010101110" "0010101101000011" "0011000011010111" "1011000100111001" "1010100101110101" "0010010001100010" "0001111000010001" "0010110011111001" "1011000100010110" "1010100101100111" "1010111100111101" "1010110000101000" "0010110000011010" "0010011111011110" "1010101111011110" "1010111010010111" "1011000001001110" "0010100101111110" "0010101100110011" "0010110100100100" "0010010011001101" "0010011011001100" "1010110100110011" "0010101110000001" "1010110000001000" }
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
set ID 113
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSMgi
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010100101111001" "1010110011001011" "1010101000001001" "1010011001111010" "0010111000011101" "1011000011010111" "1010001011011101" "0010110001110001" "1011000101111010" "0011000001111011" "0010110101000111" "0010101110011111" "0010011101100101" "1010001111001010" "0010010010100011" "0010101001000101" "0010111100110001" "0010110101010110" "0010110000010001" "0010110010011100" "1010000101110010" "1010010101000111" "1010111001111100" "1010100010001010" "0010011010100000" "1010110000000111" "1010101101010010" "1010111101100111" "0010110001001110" "0011000111110101" "1010011011101110" "1010010101100100" "1010110101001011" "1010110111110110" "0010110100101111" "1011000101001011" "1010111101001110" "1011000010101110" "0010010111000101" "1010000101010110" "0010001010110011" "1011000000000010" "1010111010101000" "1010110110100111" "0010101011011111" "0010011010010010" "0010010001011101" "0010110110011000" "1010011100010000" "1001111101001000" "0011000011000010" "0010010111010010" }
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
set ID 114
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSNgs
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010011100101111" "0010111010111001" "0010100001001101" "0010010101101001" "0010110110100111" "1010100100000010" "1010100110100000" "0010101101001011" "1011000000011100" "1010111100001100" "0010111100111101" "1010101001010011" "0010011001110000" "0010111011110101" "1010111110110000" "0010101001001100" "0010101101000110" "1010110010000001" "0010010001110010" "0001110011000010" "0010100010110110" "0010011000111111" "1001111100101101" "1010110001001011" "0010010110000011" "1010000000001000" "1011001000001011" "0001101110110111" "0011010001000110" "1010010000110001" "0010111001010110" "0010001101000101" "1010010010101010" "1011000100011100" "0011000100101111" "1010110110100001" "0010101000101001" "1010011100001110" "0010110010110100" "0010011010101101" "0010110001101001" "1010111010101001" "0011000101011111" "0010010111110011" "0010100111111010" "0001011111000110" "0010111001011010" "0010110000001010" "1010101111111011" "1010111111101110" "0010110111010010" "0001111001100010" }
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
set ID 115
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSOgC
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010101111000101" "0010111101101000" "0010010010010110" "1010100001110101" "1011000011100001" "0011000010010111" "0010010110101011" "1011000010010100" "1010100100110111" "1010111110011111" "1010100100100010" "1010001100011010" "1010010010010010" "0011000100001100" "1011000010001101" "0010011101110000" "0001111111100011" "1010110000101001" "1010111000101101" "0010101011010101" "0010001001110100" "0001011100000010" "0011000110010001" "1010101011111110" "0010110000100111" "1010001010101000" "1010111110100001" "1010100111111011" "0010000000100000" "1011000001001011" "0011001011101101" "0010110001111001" "0011001000011101" "1010010111011001" "0010111111111111" "0010100111010111" "1010011110001001" "1010011001000010" "0010111011001110" "0010010000111101" "1001100111011001" "0010111100100111" "0011001010111010" "1010001111101110" "0010101110001111" "0010110110101010" "1010011101010010" "1010101110111001" "0010011011100011" "1010110101001110" "0010011110101101" "1010111010100100" }
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
set ID 116
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSPgM
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010011110110101" "0010111100010010" "0010110000001100" "0010110011101100" "1011010000011101" "1010101100111101" "1010111010000010" "1010111111110110" "0011000011100000" "1011000010011101" "1010111101101010" "0010011100110011" "1010100110001010" "1010110000000001" "1010111010011110" "1010101000110010" "1010101111101110" "1010010101111001" "0010101001100000" "0001100011001011" "0010110001001110" "1010011000110111" "0010010100000010" "1010101111011011" "1010101000010010" "1010001101111000" "1011000010011110" "1010000010011111" "1010110101010100" "1010010011100100" "0010110110000111" "0010011111111101" "0011000001111100" "0010111100011000" "1010100100111100" "0010111101000010" "0010011100000011" "0010110010110111" "0010100010001011" "1010110011110101" "0010101111101000" "0011000110000101" "0011000100000010" "1010000111011101" "0001011111111010" "0010011111100110" "1010111110000111" "0010001101000000" "1010100111101010" "1001110000001101" "1010100101110111" "0010110000000010" }
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
set ID 117
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSQgW
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010011000110101" "1010111011010000" "0011000011100100" "0010011101110101" "1010101101000101" "1010101111100011" "1010101100010010" "1010110001010000" "0011000000011110" "1010100111100001" "1010011100110011" "0010111011110110" "1010110011011001" "1011000011011100" "0010110101001101" "1010111111100000" "1010101100101001" "1010111001011000" "1010010011111010" "0010000001100010" "0001101100001100" "1010111100010101" "0010010100100100" "0010110101100010" "1001110010101101" "0010010111010001" "0010001110110100" "0010101001010001" "1010011110110110" "1010010000000001" "1011000101100100" "0010110011100110" "0010111111111011" "0010101100101000" "1010110110011111" "0011000110011001" "0010011011100111" "0010111110000011" "1010101001010000" "1010111101101010" "1010110110101011" "0010110001000000" "0010101011010110" "0010111111101010" "0010110111111010" "0010101101011110" "1010100101010011" "1010011110101110" "0010100100001111" "0010111111100110" "1010100111111001" "0011000011111010" }
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
set ID 118
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSRg6
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010010001110011" "1010111000100001" "0001100011001000" "1001111100111011" "0010101111111001" "0010000110111011" "1010111000111100" "0010110111001011" "0010110001111111" "0011001000010010" "1010111101101010" "0010100010001000" "1011000010100111" "0001110010111001" "0011001100001110" "1011000001101110" "0010101101110111" "1010010110000010" "1010110001010010" "0010100000101111" "0010111000000100" "1010100001010000" "1010001101111101" "0010110011001011" "1010000001011010" "0001111011110101" "1010110101110100" "0010010100011000" "1010010001110101" "1010110010100100" "1011001000010100" "0011000110101001" "0010100101101100" "1010100001000101" "1010110101111111" "0010110101110000" "1010100000101100" "0010101100111110" "0001100011101101" "1011000010110010" "1010010101100110" "1010000001110000" "1011000101110010" "0010101010100101" "1010001101100001" "0010011100011001" "1010100001001111" "1010100011001111" "1001100111001101" "0011000101011110" "1010100000000011" "0011000001111011" }
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
set ID 119
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSShg
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010000001111110" "1010111011000101" "0010110110010101" "1010010000011010" "0011000110111010" "0011000110111101" "0010111011110100" "0010100000111100" "1010111010001111" "0011010000110010" "0010100011001000" "1010001010000011" "1010110001001000" "0010111111001101" "0010110111000001" "1010110000000100" "0001110100110000" "1011000110010001" "0010011111011000" "0010110000000101" "0010011111001110" "1010101110010100" "1010000110000101" "0010110110111011" "0010110100111000" "1010101101101010" "0010110110001011" "0010110001000010" "0010110010001011" "1011001000001000" "1010100011001111" "0010100000101111" "1011000000101010" "1010111101111001" "1010101101001011" "0010100011110010" "0001111010001101" "0010100011011010" "0001111110110100" "1010101111000000" "1010101101001100" "1010111110010000" "1011010000100110" "0011000010101111" "0000110001011100" "1010111100000011" "0010110100000001" "1010010001110010" "0011000001001000" "0001100010101001" "0010101100010011" "0010110100110101" }
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
set ID 120
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSThq
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010101101100010" "1010111000011111" "0010110011001101" "1010101110010111" "0011001010100100" "0011001111111011" "0010001000110001" "1010000001110101" "1011000000101001" "0010110010101010" "1010100010111100" "1011010011100110" "1010100010010111" "0011000001010011" "1010111011011101" "1010100100110111" "0010111000010110" "1010101110011001" "1010100101001011" "1010110100011111" "1010011001000100" "1010110101101111" "0010011001010110" "1010010110011111" "1010000011110001" "1010010101001001" "0010100001110100" "0010010101110000" "0011000001000111" "1011000011011011" "0010101000111011" "1010001101010111" "1011000100111010" "1010101000101010" "1010000101011010" "0010101000100101" "0010100001011110" "1010100101011100" "1010110110001011" "0010100000111010" "1011000000110101" "1011001100010011" "1011001000111000" "1010100110011010" "1010110101011001" "1011000010011010" "0010000100111011" "1010110001011001" "0011000110011000" "0010011001001010" "0011000001011011" "1010101111110000" }
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
set ID 121
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSUhA
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010000010000000" "0010111001111001" "1010100110110000" "0010101010011011" "1010100011100000" "0010101001011001" "0010110111111000" "1010100001010000" "1010101101001001" "1010110010100001" "1010110011001100" "1011010001010000" "0010110001101101" "1010001110000111" "1011001011111111" "0011000000110100" "1010110001000101" "0010101100000110" "1010011101101100" "1011000001000000" "1010100011110111" "0010100111111000" "0010011110100101" "1010011000111101" "1010001111100111" "0010100000000111" "0011001011010101" "0010101100000000" "1010111011111010" "1011000110000001" "0011001100100110" "1010110101010101" "1010110001101001" "0011000011011110" "0010011000010101" "0010110100110101" "0010100011101100" "0010001001000001" "1010101100001000" "0010110100010011" "1010010101101011" "0010100101100010" "0010100110000110" "1011000110111100" "1010110100000011" "1010110000000001" "0010101111000000" "0010101100001001" "1001111110011110" "1011000101110001" "0010100110001011" "1010111000010100" }
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
set ID 122
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSVhK
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010111010101100" "0011000011100110" "1011000100100101" "1010110101001000" "1010111101000001" "1011000110110010" "0010110110011110" "0010101111100100" "0010110000001000" "1011001101000011" "0010110110011000" "1010010100001001" "0010111100010001" "1011001110000001" "1011000011001110" "0011001001111110" "1010111001110001" "0010111100111100" "0010100110011101" "1011000001011111" "1010111010000110" "0010110111100000" "1010100000100011" "1011000101001100" "1010011010001011" "1010011001111101" "0011010100110011" "0010110110100010" "1011001010111110" "0010110010101111" "0011000011000111" "1011000111000001" "0011000001110000" "0011000010011110" "0010101010011110" "1001110111111010" "0001011010011100" "1010101100110101" "1010001001110110" "0011010011110111" "0010100011101100" "0010111111110111" "0011010010010111" "1011001101111001" "1010100111100110" "0010111100101111" "0010000000110000" "1010110001010101" "0010000111011010" "1010100000101011" "1010101000101011" "1011001010001011" }
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
set ID 123
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSWhU
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010100111111100" "0011000100001001" "0010110001110000" "1010111011100001" "0011000011010100" "1010110010000001" "0010010011111010" "1010101100110010" "0011001011101000" "1010101110011011" "0001000011110001" "1010100011010010" "0010111101010011" "1011001100111000" "1010100001000111" "0011001010001111" "0001101110101011" "0010001111101110" "1010101110011111" "0010101101010110" "0010100000001110" "1010100001110101" "0010100000011111" "1011000001101000" "0010100000011001" "1001111000110011" "0010101100111111" "0011010000011110" "1010111000100000" "0010101011001000" "1010000101111101" "1010110011100101" "1011000011110011" "0010110111101100" "0010101000001000" "0011001100110101" "0010101000011000" "1010100010100110" "1011011000011100" "0010100011110100" "0010000111110110" "1010100011001100" "0010110101000011" "1011000101111001" "1010011100111111" "0010011100100110" "0010000101010100" "1010100010110010" "0010110001001010" "1010011100011110" "1011000000011000" "1001110011101101" }
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
set ID 124
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSXh4
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010000001110111" "0011001010010111" "0011010000101010" "1011000101001000" "0010101011100101" "0010111010100010" "0011000010001010" "0010001010100010" "1010010100011011" "1010110011100010" "1010010100101101" "0011001100101011" "0010011100110000" "1011001000011101" "0011000001001100" "0010111001101001" "1010011001000001" "1011001011011111" "1010101110100001" "1010010000001110" "1010100011011101" "1010111001111001" "0010011100101000" "1011001010101011" "0010011111110100" "1010101010111011" "0010111100011110" "0011000101101111" "1010111110111011" "1011000000110010" "1010111011011111" "1010101111011100" "1010100111110110" "1001001111000010" "0010111100111010" "0011000100001000" "0010101000101010" "1010100111011110" "1011000100000000" "0010101011011011" "1010010111010010" "1010101010010110" "0010111110001000" "1010110100100010" "1010110001010010" "1011000000110011" "0010111111010000" "1010111100000100" "0010101000001011" "1010111111101010" "1010110100001110" "1010110100000010" }
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
set ID 125
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSYie
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010010100010001" "0011000110011011" "0011000101110110" "0001110100011011" "1010011111101101" "0011010000010110" "0001111110010101" "1010110110010001" "1010110111000101" "1010110001100010" "0010101000011000" "0011001011010011" "1010001110110001" "1010011001100101" "0011000111001110" "1010001100011010" "0010101111111010" "1011001001110110" "1010101000001011" "0010010100110000" "1010011000001100" "1011000100101110" "0010100011000000" "1010111101111010" "1001011000010111" "1010010100111001" "0011000101110101" "1010110000001010" "0010011000110101" "1011010010100110" "1011001101011111" "1001111101110110" "0010010110101111" "0010011101100001" "0010101100011111" "1010100111100010" "0010111000011110" "1010110011111010" "1001101001101100" "0011000010101111" "1010100111100000" "0010110011011101" "0010110000110110" "1010100101110110" "1010100000100011" "1010111101110000" "0010110100010110" "1010110000100111" "0011000110111010" "1011000010000100" "0010101010011011" "1010110001110100" }
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
set ID 126
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSZio
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010100010100101" "1010101010000010" "0010111111011101" "0010100111000010" "1011000110000101" "0010111011001000" "0001100001000111" "1010001010000001" "1010111101001101" "0010100010110000" "0010110101101001" "0010110001110000" "0001111011001010" "0001111011100011" "0011001000100110" "1010111010101111" "1010110100000111" "1010110110101110" "1010000000100100" "0010100010110110" "0010000110001010" "1010011001111110" "0010111001011101" "0010101100001101" "0010110110001101" "0010100100101100" "0011000001111111" "1011010101111000" "1010001101001001" "1010110111101011" "1010110111011110" "1011000001101110" "0010100011011001" "0010100000001110" "1010011011100011" "0001100011111001" "0010100111000111" "1010110010001010" "0011010001100101" "0011000000000100" "0001101001010001" "0011000011110111" "1010110011111100" "0011000101010111" "1010110101001001" "1010101101001110" "1001111100111111" "1010110011100110" "1010010010000101" "0010100101001010" "0010111101100000" "1010101100000100" }
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
set ID 127
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTS0iy
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010001000110010" "1010111111010010" "1010101101110100" "0010111110000000" "1010110111011010" "1010100111111010" "1010100101001010" "0010100010011111" "1011000010110100" "0010111111011100" "0010110101001011" "1011000011101000" "1010010000100101" "0011000010001111" "1010010000110101" "1011000011110111" "1010100110011001" "0010111101000110" "0010010011111110" "1010110110110011" "1010110001101001" "1010001011001100" "1010110100010110" "0011000011110011" "1010110000111100" "1010110011011000" "0010111001011011" "1011001111101010" "0000111111010001" "0010110110111010" "1010100001110000" "1010101001001001" "0010110111000000" "1001111011111000" "1010101100111111" "0010011100100010" "1010100010011100" "1010111000101110" "0011000011010010" "0001111111111011" "0010001000010111" "0010110111111110" "1010010011111101" "0011000110111110" "1010010010110001" "0010101011011000" "1010101100101100" "0010000101001001" "0001111011111001" "0010101110010100" "0011000110001000" "1010001101100100" }
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
set ID 128
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTS1iI
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010001110000001" "1011000001000000" "1010111010111000" "1010011100000111" "1010000111001011" "1011000011011000" "0000110000110110" "0010010110101001" "0010110111001110" "0010110001101001" "0010101010111011" "1011000011100001" "1010100010110101" "1010010000011001" "1010100100001010" "1011000010011101" "1010011001000101" "0011001011110111" "0010101101000101" "1010101110000010" "0001100001100010" "0010110110000010" "1010111110011010" "0011000111101001" "1010110100111110" "0010001111101101" "0010100101110011" "0010110010110111" "0010010100000010" "0011001001101010" "0010000011110100" "0010011101001010" "0001100000100111" "1010001011111011" "0010110011000101" "1011000010001100" "1001100111110011" "0001111001011001" "1010010001000000" "1010110101110110" "0010111000101010" "1010010100000111" "1010110011101000" "0010111111010000" "1010011101000100" "1010000110110001" "0010100111000011" "0010100000010101" "1010111010100101" "0010010100010111" "1010110100110110" "0010111101100011" }
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
set ID 129
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTS2iS
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010111001100101" "1010110101010000" "1010111010000101" "1011000011100110" "0010100110110001" "1010111011111101" "0010100010011111" "0010100011100001" "0011000001010111" "1010110101010110" "0010110111110001" "0010100110001000" "1010111001011111" "1010110110011001" "1010111001000000" "1010110011010001" "0010110001011111" "0011000101010001" "0010110100101001" "1010100000100000" "1010110001101100" "0010101101000111" "1010101101100100" "0010110010100111" "1010110001100010" "1010110011000001" "0010011111111000" "0010110110001010" "0010001100000110" "0011001000111110" "0010110011000000" "0010110101000011" "1010111111011100" "1010101001011001" "1010010100000010" "1011000001001110" "0010100000101101" "1011000010011100" "1011000111010010" "1010111100110101" "0010100101001010" "1011000101001111" "0010100000110000" "0010110101000100" "1001110011001101" "1010100001110100" "0011000010111110" "0010011010011011" "1010010100111111" "1010110000010010" "1011000011101100" "0010101011101000" }
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
set ID 130
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTS3i2
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010110001110100" "0010010000011000" "1001110010110110" "1010100011111010" "1010010010011000" "0010111001101010" "0010011101101111" "1010111010100011" "0010011101100101" "0010100110110111" "0010001111010011" "0010110011011110" "1010110011001011" "0010110011111101" "1010111011101111" "1010011010000001" "0010110001001110" "0010010011010111" "1010100100010000" "0010101001100001" "1010100101100111" "1010110001000110" "0011000001001011" "1010100100011101" "1010100110011101" "1010001111011010" "0010010010111100" "0010110001101111" "0010111000001110" "1010101110011010" "0011000010110111" "0010111100001000" "1010110001001000" "1010110101101101" "0010100100010111" "1010111101001100" "1010110111101111" "0001111100111011" "1011000111100110" "1010100011010111" "0010101001000010" "1010111000111000" "1010101010010000" "1010101011001100" "1010110010001011" "0010100111101101" "0001010011101110" "1010011011111010" "1010101110111011" "1010110101011011" "1010011011000111" "0010111000111001" }
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
set ID 131
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTS4jc
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0001110110100110" "0011001001100101" "0010110101110111" "1010110001110100" "0010110011110000" "0011000110110110" "1010100001001000" "1010101001110001" "1010110100001001" "0001110100000001" "1010101110101101" "0010111111101001" "1010000100110111" "0011000000010111" "0001100011010001" "0010110001011111" "0010100111001000" "1010100111111111" "0010100111010110" "0010100111110100" "1001100111100100" "1010011100011000" "0010010100011001" "1011000111011111" "1010010011101001" "0010010001011110" "1011000010101000" "0010010111110000" "0010110101111100" "1010110011101110" "1010100000111010" "0010100001101010" "0010011010100000" "1010111100010010" "0010101011111000" "1010110010010100" "1010110010110000" "0011000100011000" "1010100110010111" "1010111100111001" "0001110110101010" "1010110010111011" "1010101111101010" "1010110111111110" "0010010111100101" "1010100000001110" "0010100001000010" "1010011000011111" "0010000100111100" "0010110101001000" "0010111101011000" "0010111000000111" }
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
set ID 132
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTS5jm
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010101001001100" "0010111000001101" "0000010111000100" "0011000110000000" "1010110001110101" "0010000101111010" "1011000101111100" "1010110100000100" "1011001011010110" "0010001110001000" "1011000001100010" "1010000100110101" "0010110110010011" "0011000110011110" "1010010101011010" "0011000111000010" "0010000111100100" "0010101011101011" "0010010010001110" "0010011000111000" "0010100000011001" "0010110100001010" "0010101010000000" "1011001010011110" "1010101010110100" "1010010011001000" "1011001000100011" "1010110110010000" "0010101000011001" "1010000100100101" "1010101001010111" "0010000001110010" "0010101000001011" "1001101100000010" "1011000111101010" "1010011011111101" "0010101010110010" "0011000111100110" "0010111011010101" "0010010001000100" "0010011111011001" "0010001110001111" "1010110001010001" "1011000101010010" "0010111001100000" "0010000101010011" "1010111000101000" "0001110010001010" "1010100110010011" "0011001001110010" "0011010000110101" "1010001111001000" }
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
set ID 133
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTS6jw
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010110010110000" "1010011101000101" "0010011111010101" "0011000011011001" "1010110100010010" "1011000010001001" "1010111000000110" "0010001111110011" "1011000100101100" "1010110110111001" "1011000011110011" "1011001100001101" "0010100101010111" "1010010111101001" "0010101000011001" "0010011111010000" "1001011000110110" "1010011110101111" "1001100111110101" "1010000010101100" "1010110011010110" "0010011111001011" "1010111110110101" "0001111110001100" "1010101011101001" "0010110001011100" "1010110011001101" "1011000100010101" "1010110001010000" "0010111011111001" "1010110000001011" "1010111011011010" "1010110001011101" "1010101010111111" "1010100011001111" "0011001000111100" "1001101001001010" "0010110110010101" "0010111000110001" "0010011011001000" "0010110000110100" "0010011110010011" "0010111010011010" "0010011001011100" "0010111100111111" "1010111000001011" "1010111110010011" "0010110100101101" "1010101000110000" "0010110111010111" "0010111110001000" "1010110101100101" }
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
set ID 134
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTS7jG
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1001110110001100" "0010001111100001" "1010100110101011" "0010010111111100" "0001110010100100" "1011000101011011" "0010101001101001" "0010110010001100" "0010100101000011" "1011000010100110" "1010011100000100" "1010110000001000" "0011000000010111" "1010111000111010" "0010110010010001" "1010101000101111" "0010110010011110" "0010100111010101" "1010110101011101" "1010011001000101" "0010100111110000" "1010101001111100" "1011000100110110" "0010001100101001" "0011000000010000" "0010100110000011" "1010110101110100" "1001100000111011" "0001101000001100" "0011000110010000" "1010110101111001" "1010100000001101" "1010110101110110" "0010001110001001" "0010110111001010" "0011000011001100" "1001111100011100" "0010010011011011" "0010110100100100" "0001111001011010" "1010100000110010" "1010110011001000" "0010100011100100" "0010111110001111" "1010110110011011" "1010001110010100" "1010110100101011" "1010001101001101" "0010100000011000" "0010001000010001" "1010100111111001" "1010111101010000" }
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
set ID 135
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTS8jQ
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010110101101110" "1010100101001001" "0010110111011101" "1010111010101010" "0010111100001000" "1010101110011101" "1001010100011100" "0010010101111000" "0011000011001010" "1010110011000100" "0011000001001010" "0001011001101100" "0010110000011111" "1011000000001000" "0010001101111101" "1011000000011111" "0010110001111010" "1011000100011110" "1010100110100000" "0010000001011111" "1001111110000010" "1010011000011101" "1000100100111110" "0010101100001011" "0010001011001100" "0010010101000010" "1010011010001001" "0010110100100100" "0010100010010001" "1010001001000101" "1010011110101100" "0010100011010100" "1010100000111100" "0010110011111100" "0010111010011111" "0010111101101100" "0010111011101010" "1010111010010001" "1010111001011100" "0010100111010001" "1010110000111011" "1010100101111001" "0010111111001011" "0011000001110010" "1010110011100101" "1010111001100011" "0010111111010001" "1010110010110101" "0011000000010110" "1010111010100101" "1011000101001100" "1010110101111100" }
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
set ID 136
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTS9j0
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010010011010111" "1010111010101100" "0010111110110010" "1010110101110000" "1001111110110101" "0011001010100001" "0010110110110000" "1010110000010001" "0010110110000111" "0010011011110001" "0010110111111011" "0010100100111001" "1010011011000001" "0011000001110001" "1010110100001101" "1010110101010010" "1010001001010110" "1010111000010100" "1010001101000110" "0010110010111110" "0010010101000010" "1010010111011101" "0010101010100000" "0010110000101011" "0010011100110010" "0010110010011011" "0011000011110010" "0010111101001001" "1010001001010010" "1011001010100101" "0010001100011010" "1010110010000000" "0010101000110011" "1001111111111100" "0010101010010111" "0010110000011011" "1001100100101001" "1011000000101100" "1010111110000100" "1001111011101010" "1010110000100000" "0010000110001011" "1010011000110111" "0011000001111100" "1010110110010000" "1010110111100111" "0010111010111110" "1010101001011010" "1010110000011011" "1011000111010010" "1010110110000010" "0010101011111011" }
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
set ID 137
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbak
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010011010100011" "0010010000111111" "0011000101010101" "0010100111001101" "1011000001011111" "0011001111010101" "0010110110010110" "1011010001101001" "1010000000010100" "0011000110001011" "0010000010010011" "1010110000110110" "1010110110101101" "0010110100100010" "0010001010101000" "1010101110001001" "0010101011110110" "1011000011100111" "1001111100001010" "1010100000111001" "1010110111111010" "1010010010010000" "0011000100011111" "1010110000101010" "0010001001101101" "0010110010111101" "0011000010010011" "0011000101101010" "1010001101100101" "1011010101100101" "1010000101010100" "0010111100010111" "0010110010000010" "1010011011101011" "0010101100000010" "1010100100111111" "0010110111111001" "1010111100101010" "1010110101110111" "1010111101100101" "1010011100101010" "0011000100000100" "1011001011101101" "1010010101110111" "1010101100000011" "0010111000110110" "1010100010010110" "1010110101001011" "1010110011011101" "1010010001100010" "0010111111111010" "0010111001111010" }
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
set ID 138
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbbk
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010010011001011" "0011000000010011" "0010110001100000" "0011000100010101" "1010111010110000" "0011000100110100" "1010010100001000" "1010110100110111" "1011001101110001" "0011000101011001" "1010100010010010" "0010010010111110" "1010100111000100" "0010011100111010" "1010101001110001" "0010111000000101" "0010000010001100" "0010011001010011" "1010101010001110" "1011000010011101" "1010110010001110" "1010110010100001" "0010111010101111" "1010100011010101" "1010110000001000" "0001111011010001" "0010111011101011" "1010110001111001" "1010110011000101" "1010110111101101" "0010011011010100" "0010110010011010" "0011000001010000" "0010110001010011" "1010101010010001" "1010100000010100" "0010101101111100" "0010010100101000" "0010110011111001" "1011000010100111" "0010011101010110" "0010110011100010" "1010111110010100" "1010101011000110" "1010100110001000" "0010110100111000" "1010110111111000" "0001010001100011" "1010111110111110" "0010111010000001" "0010110111011100" "0010110011111100" }
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
set ID 139
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbck
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010111011110000" "0010101110110011" "1010110000100011" "0010001111010101" "0010110110101100" "1011000111000100" "1010000110111000" "0010111001011100" "1010100110001000" "0010110111110101" "1011000000111100" "1010101110010111" "1010100111111100" "1011000010010110" "0010011001111010" "0010111101100101" "0010010001110100" "0011000101011011" "0010110010110011" "1010110111110111" "1010101101101001" "1010010011111001" "1011000011111001" "1010111100010011" "1010110000010101" "1010010100000001" "0010111111100110" "1011000100110011" "1010110110001110" "0011000111101000" "0010100001010001" "0010101110101100" "1010101000001010" "0011000011001101" "1010111100011110" "1010111010000111" "0010011111101001" "0011000001101011" "0011001000100110" "1010100000011011" "0010000101010001" "1010000000000010" "1010111010001110" "1010111000010111" "1010011011011101" "0010110001011000" "1010000111010110" "1010010111101111" "1010111100011111" "0010101111100010" "0010010100000101" "0011000011111100" }
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
set ID 140
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbdk
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010110000100010" "0010110000101010" "1011000010110110" "0010110100010010" "0010110101100000" "1011010011110010" "1010110001111110" "0011000111001101" "0010000000111010" "0010110001100100" "1010111010111100" "1010011100110010" "1010110001010011" "1010111011000100" "0001111000111000" "0010110001110001" "0001101001101101" "0010110000110011" "0010100000010100" "1001110100010000" "1010110010110100" "0010100111111001" "1010111001111110" "0010000000111100" "1011000010011000" "0010101101100101" "0010100111000111" "1011010000010111" "1010110101100111" "0011000010011101" "0010100100000010" "0010110000110011" "1010011110101101" "0010101001001010" "1010101100000111" "1010110001110101" "1000111111110110" "0011000010001000" "0011000010101101" "1010101001000000" "0010110011001001" "1010110011010100" "0010111001000011" "1010111011100010" "0010100110100001" "0010011000000000" "1001111100011000" "0010000101000001" "1001110011000000" "0001111111010100" "0010011001111001" "0010101010010001" }
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
set ID 141
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbek
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010010000111011" "1010110000111111" "1010110001101100" "1011000001001001" "0010110111001111" "1010110101101111" "0010101010011111" "1001110111111001" "0011000011001000" "1011000000011001" "1010110111010010" "0010101100000111" "0010000011000110" "1010101110100010" "0010000001000100" "1010101100011011" "0010111110001110" "0010110010001111" "0010101010110001" "1010100110111100" "1010101010111111" "0010110011101101" "1010100100010110" "0010110000010010" "1010100010101010" "1010100011110110" "1010111000111100" "1010011000011010" "0010010011100101" "0010111001111000" "1001011000011011" "0010001111100001" "1010110011111000" "0010011000010011" "0010001010111000" "1011000010000101" "0010010110111111" "0010110010111101" "0011001011000111" "0010110011000100" "1010101010011110" "1010111100001001" "0011000101001010" "1010101010000101" "0010101011110011" "1010110111110011" "0010101100010010" "1010111000001011" "0010110010110011" "1010100101111010" "1011000000000110" "1010010001101010" }
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
set ID 142
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbfk
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010011111110001" "1011001100001010" "0001111011111111" "1010110001010011" "0010101011101100" "0010011101111100" "1001110000010111" "0010100111010110" "0010110011001110" "1011000100011010" "1010010001110011" "0010111011000011" "0010110011000111" "0010111111111100" "0010001101001011" "0010000010111000" "0010110110010110" "0010101111100011" "0010101110000110" "1001110001011000" "0010111010110001" "0010101010010010" "0010000011011111" "0011000011110001" "1010101101011111" "0010100000100001" "1010111010000111" "1010010000111001" "0010111111100111" "0010101011010101" "1010010000000001" "0010010010011000" "1010000011100100" "1010110010111101" "0010110010011000" "1010111100010111" "1010010101101011" "0010110010110000" "0010000011010001" "0010101010000111" "0001101101011011" "1010101011100100" "0011001110000111" "0010010101000110" "0010100101010010" "1011000001100011" "0010110011101101" "1010110111111001" "0010111011010101" "0001101100010010" "1010111001000111" "1001111010111110" }
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
set ID 143
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbgk
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010101100101001" "1011000011011110" "1010100110010101" "0010110100000001" "1010111011110100" "0011001100000100" "1010101001100011" "1011000110001110" "1010100110011000" "1010110011111010" "0010110000101000" "0010111000010111" "0011000000010010" "0010111000100010" "1010101001001011" "0010011111001011" "1010101010101101" "1010011001100000" "1001111100001000" "0010001100011011" "0010110000111110" "1010011011100010" "0011001101111011" "0011000101010001" "1010100110100110" "1010110000101100" "1011001000010101" "0011000000100111" "0010101010110010" "1011000000000101" "0010100110110001" "1010101001001001" "0010111011011000" "1010111011010110" "1010101011111000" "0010100000111001" "1010100011001000" "0010011011110101" "1010111010011101" "0010111000100011" "0010110000101011" "0010110110101000" "1001100000110011" "1010100000100110" "0001110100000100" "1010010110010111" "1010110100010111" "1000101101001111" "0010110001111111" "0011000010100110" "0010100000100111" "1010110110101101" }
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
set ID 144
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbhl
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010000011111000" "0010111011011000" "1010100010101001" "0010100110001100" "1010111111100110" "1001010111001010" "1010110101011000" "1010000010010001" "1011000110010101" "0010010010011001" "0010111000111101" "1001010010011011" "0010110011101010" "0001110111101110" "0010110101011001" "0010101001000100" "1010101110010101" "1001110101101000" "1010101100101010" "0010110001101100" "0010001110000111" "1010000100000000" "0011000001010100" "1010100001011100" "0010010101110100" "1010011010000010" "1011000011100111" "0011010000000100" "0010011011011011" "0010100000110011" "0010110001100001" "1010110001101000" "0010001110100101" "0010001110000010" "1011000001010111" "0010111101010100" "1010101001110000" "1011001100110111" "1010111110100110" "1010011111100101" "0010001011010000" "0010110000110110" "0010101101101101" "1010111000010010" "0010111101100001" "0010100011111000" "1010101100011000" "1010000011100111" "1010110111001101" "0011000010011100" "0010111010110101" "1011000011000011" }
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
set ID 145
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbil
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010011111001100" "0010111000110010" "0010001000110100" "0010100110111110" "1010101101000000" "1010110100011111" "1011000010001100" "0010101011100000" "1011000110101110" "0010100111000100" "0011001010010001" "1010101101111011" "0010011010110001" "1010111111100010" "0010011110011110" "1010110000000000" "1010101100010011" "1010100011101011" "0001101100001101" "0001111101010111" "0001100000100110" "1010100001001001" "0010100011101011" "1011001001101010" "0010100010110011" "1010100110111101" "1011000000110101" "0010110100001111" "1010111100000111" "0010110101111100" "1010001101000100" "0010110001110110" "1010010001100111" "1010101101001101" "1011001000101000" "0010111110100111" "1001111100011110" "1010111011100100" "1010111110100011" "0010110010111001" "1010101111001100" "0010101000111110" "1010111000111010" "0010011011111111" "0010111000000100" "0010111010111010" "1011000000101001" "1001110100011101" "1011000001001100" "0011000111001100" "0011001011010111" "1010010001110011" }
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
set ID 146
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbjl
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1001110001110111" "0011001110111000" "0010110101010011" "0010101111110100" "0011000000000011" "1010011001001111" "1010010001111011" "0011000000011010" "1010111100101111" "0011000011001100" "0010111011101101" "1010011111101011" "1010101101001001" "1011001001001010" "0000011000001000" "1010110001100001" "1001101001110110" "1010011010011011" "1010100010000001" "0010101110001100" "1001001111101110" "0010001001110111" "1010111010110000" "1011001011111011" "0010111010010111" "0010111000011010" "0010010111011001" "1010110111011101" "0010001000011111" "1010010011001101" "0010001000111010" "0010110010111011" "1010111000100000" "0010110100111001" "1010110101011001" "0011000100111001" "0010101110111111" "1010001010111110" "0010110001111001" "1010110011000100" "0010010001100111" "1010000111110000" "1010111111110100" "0010101111000010" "0010011110100000" "0011000000111111" "1010011101101000" "1010110000000100" "1010110000011000" "0010110011100010" "0010110001011010" "0010110000111110" }
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
set ID 147
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbkl
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010101010111101" "0011000010010011" "0010100101000001" "1010111010001000" "0010111110011000" "0011000000100011" "0010111111011001" "0010110011111110" "0010010000001011" "0010000110011010" "1010100010011110" "0010110111011000" "1010000001011110" "1010010101001101" "1001011010000001" "1011000001110000" "1010011001010001" "1010110111110010" "1010100000000011" "1010001001111001" "0010010011001100" "1010110011100100" "1010111111111111" "1010111100101000" "0010100100100111" "0010100100011110" "0011000011001100" "1011000011010111" "0001101100110111" "1010101111111010" "0010011011001010" "0010011110111001" "1010110001001110" "1010011010000011" "0011000100010111" "0010111010001001" "1010010011110101" "0010010100000001" "0011000011000100" "0010010110011111" "1010110100100100" "1010011001011111" "1011000110101011" "0010110110101011" "1010110110010000" "0010101001101100" "0011000001000110" "0010010011101111" "0010011101111011" "1010110110111111" "1010110111110101" "0010010010111110" }
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
set ID 148
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbll
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010011011101111" "1010111000001010" "0010110101100001" "1010011101110101" "0011000000100101" "0011010100101101" "0010011111010111" "0001110111111011" "0011001000011111" "0010101110011111" "1011000110101101" "1001001000000011" "1010101000110001" "0010100101111101" "0010011001111010" "1010100111010100" "0010110010001011" "1010011110110100" "1001110110101010" "0001010101010000" "1010110011000010" "1001101000110100" "0000101101101000" "0010111100011001" "1010010101100101" "1010101011001110" "0010111101000101" "1010101110001001" "1010000101001111" "1011010000011110" "0010100110011110" "0010110110100110" "1010110100110010" "0010100011011101" "0010101010100101" "0010010000111101" "1010100110001111" "0011001001001101" "0011000001000101" "1010111011111010" "1010101110010001" "1010100000001111" "1010010001110110" "0010100111101001" "1010101001010001" "1010101001110111" "0010111000100101" "1010101000111010" "0010100001100101" "1011000010001000" "1010111101100110" "1010000001101010" }
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
set ID 149
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbml
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010101111110001" "1011000001001011" "1011000010111110" "0010111010001010" "1010111010001001" "1010010111100001" "1001100000001110" "1010110110011100" "1010111001010011" "1010100100011111" "1010110110101111" "1011001010100100" "1010000111000100" "0010110101010001" "0010110101100011" "0011000100010101" "1001110101010010" "0010110000000111" "0010100111011010" "1010111100101011" "1010110011011100" "0010100111000010" "0011000011000101" "0011000101001001" "1010101100011011" "1010110001101011" "0011001011000010" "0011000101100110" "0010100010001111" "1010001100000011" "1010011001111110" "0010010010001000" "0010110010111000" "0010011111100110" "1010110001000101" "1011001000110101" "0010011110001111" "0011000000100010" "1011000000001110" "1010111000000101" "0010110010101101" "0010111101001000" "0010110101101001" "1010110110010101" "0010110110100011" "1010111100011111" "1010111100110101" "0010001110010101" "0010011000111000" "0010101100110001" "0010110000110010" "0010101100011001" }
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
set ID 150
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbnm
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010011110010100" "1010111000111011" "1011000001101110" "1010001101010110" "0010010001001011" "1011001011001100" "1010111110000011" "1010110000000001" "1011000111011000" "1010111011100110" "0010100100101010" "1010111000101011" "1010110010011111" "1011000111111000" "0010100001110001" "0010010001100010" "0010101000010000" "0010110111000010" "1010000111111100" "1010110011011010" "1010110000000001" "0010101101100011" "0010101110011010" "0001111011100101" "1010111000110111" "0010010110100111" "0001001011000000" "0011001001001000" "1010100101111000" "0011001010011101" "1010110001101000" "0010000000111100" "1010100011001110" "0010100111010011" "1010110100101111" "1010111001101000" "1010100001011010" "0010010111111101" "1011001110000111" "0010101101010110" "0010111100000111" "0010101100111110" "0011000110001011" "0010010001111111" "1010100001000111" "0010110000110011" "0010110000111100" "0010111111110010" "1010100011000100" "0011000001100110" "0011000110010111" "1010110010110101" }
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
set ID 151
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbom
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010100101100110" "0010111100101111" "1010110101001001" "1010110010100010" "0010110011100110" "1011010101100010" "1010101011111100" "1010000101100100" "1010111100001110" "1010110011001110" "0011000100001011" "0010100011100001" "0010111001101001" "1010110000110001" "1010100010111110" "1010110111011101" "0010101110011111" "0010001011000101" "0010011101111101" "1010001100010011" "0010011100010100" "0010011100001110" "1000111101101100" "1011000000101111" "1010111000011011" "1010010010000000" "1010110001100010" "0011000011100010" "0010111001100001" "0011010010001100" "0001100100101010" "1010010011001000" "0010000000100010" "1010010010101000" "0001100110110101" "1011001101001111" "1010011101110100" "1010110111101001" "1010110010011101" "0010000000111110" "0010101001111010" "1010111011010000" "0010110011110000" "0011000010011000" "0010111000101101" "1010011101011001" "0010111111010010" "1001110101011101" "1001100010000100" "0010110110100000" "0011000001011001" "1010110001100011" }
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
set ID 152
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbpm
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010101100101100" "0011001101110100" "0010100010100000" "0010100111000010" "0010101110111000" "1010111100110101" "1010111100010111" "0010011000011101" "1001011010000101" "0010001110010110" "1010110001011101" "0011000101100000" "0010111011101001" "1010100001011000" "1011000101101000" "1011001011111101" "0010100011101111" "0010111110101011" "1010101000011011" "0010110000111110" "0010100000001100" "0010100101101101" "1010010011101101" "1011001001111101" "1010101011000110" "1010100101000110" "1010110111101101" "1010100101111010" "0010010111111011" "0010101100000001" "0011001001111000" "1010100111001010" "0010110111011000" "1010010001111100" "1010110001010010" "1011000110010000" "1010101010010111" "0010011101110110" "0010110000011000" "1010100100111110" "0010100001101111" "1010110000011111" "1011000000001101" "0011001010001101" "0010101100000111" "0010101101000100" "0010100110000011" "0010101011101111" "1010110010111111" "0011000010101010" "1010101011001000" "1010101110101101" }
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
set ID 153
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbqm
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010011010000011" "0010110111110100" "0010100111010001" "0010000100000001" "1001101111000010" "0010110010011010" "1010111011110000" "1001111100111101" "0011000100011010" "0010100011000100" "1010111000000001" "0010010001110001" "0010110010110011" "0011000101011110" "1010110110110100" "1010101001110111" "0001011100010000" "1010110100000111" "1010011000011100" "0010100110100011" "0010110100000110" "1010010101000101" "1010111001011000" "1010100100111010" "0010110000000100" "1010011101000000" "1011000111110100" "1011000101100001" "0001101011111010" "1010110100010101" "0011000010101001" "1010110001010001" "1010100011101100" "1010111000010000" "0010100000111110" "1001100011011011" "1010010101111010" "0010101000011001" "0011000011010111" "0010111101101110" "1010110000111100" "0001110101001100" "1010110101000011" "0010111001011111" "0010100111101010" "0010000100010010" "1010111001011001" "0010001001100100" "0010000001110011" "0010100100010111" "1011000010010000" "1011001000101110" }
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
set ID 154
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbrm
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010011000110000" "1010110000101011" "1001111000001000" "0010110101100111" "1010111011110110" "1010010100110011" "0010011011110000" "0010100011010100" "0011001000011101" "0010000110001111" "1010010010000010" "1010011001000101" "0010111101011001" "0010110111100100" "1010011000000110" "0011000010111010" "1010001001110100" "1010000111001001" "1010111110010011" "0010111000010101" "0010110111000010" "1010100010001101" "1010110010110111" "0010101101110010" "0001110101001110" "0010101010100010" "1011000101111010" "1010111111111001" "0010101000101000" "1010011101011000" "0010100000011001" "1010100110011001" "1010001011011110" "0010101011100101" "0010110101110010" "0011001111101101" "1010101101100001" "1010001101111100" "0011000010100001" "1010000000010011" "0010011011001111" "0010110001000000" "1010010011010100" "1011000111111110" "0010000111011101" "1010011000010001" "1001110100110110" "1010000111100011" "1010101111111001" "1011000001110000" "1011001111101100" "1010110100001011" }
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
set ID 155
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbsm
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010100010101110" "1010111100011111" "0010101000001011" "0011001000101101" "1010110011110010" "0010101101000001" "0010101011011001" "0010010101110011" "0010101000000010" "0010100100010101" "0001111001000101" "0010100000101001" "1010000100011010" "1010000111000111" "0010101100100100" "0011010000111000" "1010111001000110" "1010101101000001" "1010110100010110" "1010110010001101" "1010101001001111" "0010010011001101" "0001111001100010" "0010110001010111" "0010111011000110" "0010011011111001" "1010010010001100" "0001011001101010" "1010011011101001" "1010010111001000" "1010101111001010" "0010010011100110" "0010110101110011" "0010100101100111" "0010101010110001" "0010110000001101" "0010110111001011" "1010100110011000" "1010010001100100" "1010110010111001" "1010100000111101" "0010111001001100" "1001011001000101" "1011001101101011" "0010011000000110" "1010010101111110" "1010111010101001" "1010001001111001" "0010101011010011" "0001111100001111" "1010110000010111" "1010010110001101" }
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
set ID 156
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbtn
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1001011110010010" "1010110000010110" "1001111101010101" "0010010011000101" "0010110010011100" "1010111000110000" "1001010101110100" "1001100101010001" "1001100010101011" "1010111110001000" "0011001000010011" "1011000001000001" "1010100010110110" "1010111101111001" "0011010000101001" "0010111100100001" "1010010010110100" "1010111100001011" "1010110001100101" "0010101010111100" "0010010110001010" "0010100001010011" "1010110110111010" "0011000101101101" "0001010100111001" "0010000111000000" "1010101000101110" "0010110101001011" "1010110011001110" "1010011000100110" "1011000101010000" "0010111001000011" "1010110100010010" "0001000011100000" "0011000001111010" "0011001001011111" "0010001100001011" "1010111110101101" "0010010111100001" "1010110101100111" "1010011011111001" "0010000101110111" "0010110111100010" "1010111000011111" "1010100100110010" "0010100001101000" "0010000111101111" "0010100100100011" "1010010010001110" "1011000000011100" "0010111111011111" "0011000011011011" }
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
set ID 157
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbun
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010001101111001" "0010010110110000" "0010111010101101" "1010010011001000" "0010100101011001" "0010101101110110" "0010110110111001" "1010101001110010" "1011001000000000" "1011000001110111" "0011000011101111" "1010001011001100" "1010110001010110" "1010011111001101" "0011000110000110" "1010101111000101" "0010011000011011" "1010111110100101" "0010100110010111" "0010011001000110" "1010100001000100" "1010001001101011" "0010100011010101" "0010011111100011" "0010001111100101" "0010101100000100" "0010101101101111" "0010100111111000" "0010010011101010" "1001001111101100" "1010110011101110" "0010101110001110" "1010111000111010" "1001011000000001" "0010010001110110" "0010101111110100" "1010110010101001" "1011000010011000" "1010100001011101" "1010101111001100" "1010101111111000" "1010111000111111" "0010100010010010" "0010101000010000" "1010110010000001" "1010100010011100" "0010111100100010" "1001011101011000" "0010100001000001" "1010111000011000" "0011001001011101" "0010101110111100" }
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
set ID 158
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbvn
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010100011000000" "0011000010111110" "0010111111011001" "1010111011010110" "0010110011000101" "0011000010010100" "0010010100110001" "1010100001100101" "1011000110010010" "1011000000101010" "0010001001001111" "1010001110100111" "1010101001100101" "0010100110111001" "1010100100110001" "1011001010011000" "1010011100111110" "1010110110010111" "1010011111110011" "0010010000001001" "0001110011011110" "1001101000001111" "0010010000001101" "1011000001110101" "0010101000101111" "1010100000010011" "0011000110110011" "0010100000111100" "0010110100010010" "1011000011001011" "1010001011000110" "0010110111101110" "1010100101110001" "1011000000111011" "1001111111011010" "1010100101100111" "0010001011111011" "1010110010111001" "1010011101100010" "1010110011001010" "1010111100100110" "1010101111110111" "0011000100001000" "0011010000001101" "1010101100110101" "0010010001001011" "0010111100110011" "0010110001001100" "0010110010001101" "0010001101010011" "0011000011110111" "0010000100011100" }
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
set ID 159
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbwn
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1001110110100010" "0011000001010010" "1010010000000101" "1010110100001000" "1010011101101001" "0010110110100001" "0010101000100101" "1010111110111111" "0010101010100010" "1010110001101000" "1010111001101000" "1010010011110101" "0010101101100011" "0010110111010001" "1010111000011111" "1011001011011110" "0001111010011010" "1001111110101110" "1010101000100100" "1010100001010001" "1010111011100011" "0010100100110010" "0010110011111011" "1011000100001011" "0010011110011010" "1010010000100101" "0011000101010001" "1010100111010100" "1010001001110000" "1010111100011111" "0010110111101010" "1010101011001010" "0010011101000100" "1010000010010001" "1010100101101100" "0001100100101101" "1010111001101100" "0010110100111001" "0010101001111010" "0010101010110001" "1010011000110010" "1010110000110011" "0010101011110011" "0011001100100111" "1010011110110110" "1010010100100100" "1010100110001001" "1010010101010110" "0010000100110001" "0001101010101011" "1010100011001000" "1001111111100101" }
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
set ID 160
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbxn
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010110111000001" "0010010111101000" "1010111111110100" "0010101000000100" "1011000001111100" "0010110000111000" "0010110001110101" "1010110111110000" "0011001000010000" "0010111110111000" "1011001011101010" "1010111110101001" "0010111001011010" "0010011001001011" "1010110001011001" "1010011000100001" "1010110110011001" "0010110011100100" "1010100110000111" "1010011110010011" "1010100100011011" "0010111000100000" "0010110001100000" "0010110000010000" "1010101010111101" "1010010001000001" "0010101111011110" "0010011000110110" "1010101011100100" "1010110011110010" "0011000110010010" "1011000001111111" "0011000001000001" "0010010110010000" "1010110001100111" "1010010011000100" "0010110110000111" "0010111100110001" "0010110011000110" "0010111101100010" "0010110100000101" "0011000000111001" "1010010110011001" "1010010011011011" "0010000000111001" "1010100100010011" "1001110110000111" "1010010010101101" "0010011011000111" "0011000001111100" "1010111011001110" "1010111110101001" }
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
set ID 161
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbyn
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010100000010100" "1010110101101011" "1010111000011110" "0010010010100001" "1010110010001011" "1011000100110000" "1010011010011101" "0010100110000010" "0011000110010010" "0010110101000010" "1010110001010100" "1010100011110011" "0010101110110011" "1010111011011001" "0010101011001000" "0011001000100011" "1010101001100101" "0011000000000001" "1001111111001011" "1010110101001101" "1010110011101000" "0010011000111010" "1010110000100000" "0010110100001101" "1011000001011100" "1010001010000001" "0010100101000010" "0010101101001000" "1011000110010010" "0011001010011011" "0010010000001010" "1011000000000010" "0010110110000110" "0010101111010110" "1011000010000001" "1010111111101111" "1010010100101111" "0011000011000111" "1011000010010001" "0010110010110010" "0010100000100000" "0010110011111101" "1011000011000000" "1011000001001000" "0010011010010101" "0010100101100100" "1010001111111001" "1010011100110100" "1010011110011011" "0010100100011000" "1011001001001110" "1010111001100010" }
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
set ID 162
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbzo
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010110101101100" "1010111001101011" "1010100101001111" "1010011100010000" "0010011100000100" "1011001101001110" "0001101011000111" "0010110001100011" "0010111010100110" "0010110001101110" "0010110011101101" "0010101000001011" "0010110101110101" "1010110010001001" "0010110000110100" "0011000101111111" "0010100111011011" "0010110011101110" "0010010010000100" "1010110010000110" "1010100010110101" "0010110101101110" "1011000011110111" "0010111111111101" "1010101001001000" "1010110100001001" "1010100001110011" "1010000001000001" "1001010101000010" "0011000011111000" "1010110010111011" "0010011011110110" "0010100000111111" "0010011001100100" "0010100010001011" "1010011111011010" "1010110001010111" "1010011110111101" "1010110000000100" "0010101110000110" "0010101001100001" "0001011000100011" "1011000010000011" "1011000000111011" "0010110011011010" "0010100110000011" "1010100000100101" "1010010110000000" "1010101111100011" "1010010101001010" "1010011100011111" "1010110010010111" }
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
set ID 163
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbAo
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010101100110010" "1010000101011011" "1010111011001101" "1010010100010100" "0010110010000110" "1011000001110101" "0001100011011100" "1010000110101001" "1010111100110100" "0010111011110000" "0010101011100110" "0010111111110100" "0001111011100100" "0010101111100010" "0010110111011101" "0010101001000100" "0010101010011111" "0001010100010010" "1010100111100110" "0010101011101101" "0010110001111011" "0010010000101011" "1010110111000001" "0010111010000101" "0001110011100110" "0010011110100111" "1011000010001000" "1010010110110110" "0010011010100000" "0010110101111111" "1010100010110011" "0001110111010011" "0010100010100001" "1011001000000110" "0010100101011101" "1011010011000010" "1010111110010111" "1011000110001010" "0010100010110001" "1010111010010100" "0010100101101110" "1010111100010010" "0010001100111000" "1010110000010011" "0010100101100000" "1010011111010001" "1010100011111100" "0010111100101000" "1010011001011101" "1010101011100100" "0010100001001001" "0010101111010110" }
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
set ID 164
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbBo
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010110010101010" "0010111001100010" "0010010100001110" "1010110111101000" "0010111001110100" "0010100010001011" "0001100011011011" "1010010000110011" "1011000111111111" "1010100010100110" "0011001000011100" "1010011100001000" "0010110000100011" "0010111100100110" "1010110001001011" "0010100111110010" "0010110110011000" "1010101011011000" "1010111000110001" "0010110111001101" "0010110100100011" "1010111000001001" "0001100000101010" "1010101010001100" "1010001010001001" "1010100111100101" "1011000011001010" "1010110101001000" "0011001000001111" "1010101000111000" "0010100001110111" "0010010111100011" "1010110011101000" "1011001011000011" "0010110011011100" "1010111101110100" "0001111101000000" "1010110101110110" "0010110000000010" "1010110000110010" "1010011010011000" "1011000110000110" "0010110101010110" "1010101010000001" "0010111111111101" "0010110000011000" "1010011010011101" "0010101011111011" "0010011100101011" "1010010000011111" "0011000110100110" "0001110001101101" }
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
set ID 165
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbCo
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010110011010010" "0010111011101101" "0010100001110100" "1010110011110010" "1010110011111011" "0010110110100101" "1001111110010100" "1010111011101001" "1010101101110010" "1011000111111111" "0010110011011110" "1001011001100111" "0010101110011110" "0011000011010110" "1011010000010101" "1010101000011010" "0010010001011011" "1010110101010101" "1010100100110100" "0010111001011000" "0010100100011001" "1010011111010010" "0010110110110001" "1011000001011001" "0010100101101101" "1010101000001111" "1011001010100010" "1010100001001011" "0010100110110000" "1010110000000001" "0011001011000100" "0010110010000001" "1001111000011111" "1010110101000110" "0010111110011010" "0010011010010100" "0010001101011010" "1010011110111001" "1001100100100100" "1010110101000100" "1010010001101001" "0010110111011100" "0011000010011011" "0010100010111110" "0010111000111000" "0010110101101101" "0001011111011101" "1010101100001000" "1010010001001001" "1011000010111001" "0010110101110000" "1010100111111010" }
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
set ID 166
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbDo
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010100100010100" "0010101010101101" "0010110111111000" "0010010011000000" "1010111101011101" "0011000010101010" "0010111000000001" "1010111100111100" "0010110011011010" "1011000011001101" "1010101110001100" "1010110111011000" "0001101101001110" "1010110010011011" "1011000101100011" "1011000001011011" "1010100101000001" "1010110101001000" "1010101110110101" "0010010011000101" "0010011111001111" "0001100101001101" "0010110011111001" "1010110100011110" "0010110001001001" "0010100010111100" "1010110010101100" "1010101101001000" "1010101100011110" "1011000010100001" "0010111101001001" "0010000101010100" "0010101111101101" "1010011110101110" "0010101010010110" "0011001101101111" "1010011011110001" "0010101100000101" "1010101001010101" "1010000111001110" "1010100010001000" "0011001000101000" "0011001010010010" "0011000011010110" "1010010001111010" "1010011011001011" "1010110010110101" "1010001010100110" "1010100001101100" "1010011101101110" "1010010001111110" "0010010110011000" }
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
set ID 167
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbEo
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010100110100110" "0010000111110111" "0010000000101010" "0011000000001001" "1010111110011000" "0010111100100001" "1010110101011110" "1001100000011011" "0010110000010101" "0010001101010110" "1010110110001101" "1010101100010000" "1010100110010100" "1010011101111101" "0010110101110111" "1010011001101011" "1010100100011101" "0001110110010011" "1010101001010011" "0010101010111001" "0010010000001100" "1010111100111110" "0010100101000000" "0010100110011100" "0010110000000011" "1010110100011001" "0010100000011000" "0010101110111011" "1010110111000010" "0001111010101110" "1010110101000011" "0010111111111110" "0010110001100111" "0010110011100101" "1011001010010100" "0011000101000000" "0010110110101101" "0010100010001100" "1011000001010111" "1010011101100000" "0010010010100010" "0011000011010011" "0010101010111010" "0011000101101100" "1010001110000001" "0010000011011100" "0010010001001001" "0010011101011011" "0010000010100111" "0011001011010110" "1010100000111001" "0010111011001011" }
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
set ID 168
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbFp
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010010010010010" "1011000000110011" "0010101010110100" "1010001001110001" "1001111110101010" "1010101001001010" "0010000000110010" "0010100010110000" "0010111011011011" "0011000101001111" "1010100011000000" "0010110110011011" "1010111001101111" "1011000100110101" "0010111010101110" "1010011111110011" "1010000011011110" "1011000000011111" "1010110010010011" "0010000010011110" "0010110000001000" "0001000000111110" "1010010110001101" "0010011100000100" "0000011011010001" "0000111011101110" "0010011010101000" "0010100000001011" "1011000101101100" "0010001011111001" "1010111000100000" "0010111101001100" "1010101000000010" "0010111101100101" "0001110101110001" "0010111100111111" "1001011001011001" "0010100110100010" "1010011111110100" "1010111110011000" "1001011110110000" "0010010100100001" "1011000011010101" "1010011011111111" "1010010011011100" "1010101101010001" "1001111011111111" "1010010010100011" "0010100101010111" "0010110010001101" "1011000010011111" "0010100011010100" }
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
set ID 169
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbGp
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010110100101111" "1011000000001100" "0010110000000101" "1001100111110011" "0010111000101001" "1010010000100010" "1010000010111011" "0010100010001001" "1001100101001010" "0011010001111001" "1001111110010001" "0010101101001000" "1010110000110001" "0011000000111100" "0011001000011101" "1010110010010111" "1010100111000001" "1010111000100101" "0010010110100110" "0010010010000001" "0010101101011010" "0001101101001101" "1010110110001000" "0011000101111101" "0010100100101110" "0001100100010110" "0010110011000001" "0010110001101000" "0010100110101100" "1010111000101010" "1011000110000100" "1001011000001001" "1010110100010111" "1010000010100110" "1010111001011001" "1010111110011100" "0010011001001001" "0010111000001110" "1010011110010100" "0010100001010101" "1010110100001010" "1010111010111011" "1011000111011110" "0011000001101101" "1010010011110101" "1010111000010011" "1010101000111000" "0010000000010000" "0010111100010001" "0010100001100100" "0010001000001000" "1001101010011000" }
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
set ID 170
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbHp
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010011001100000" "0001011101000011" "1010010110011011" "1010110011101110" "0011010000111000" "0010110101011101" "0010000010000010" "0010111100110101" "1010111001100011" "0011000101100100" "0010101000111000" "1010011001100101" "0010101010110100" "0010111101001110" "1010100101100111" "0010110101000101" "0010110011001010" "0010101111000110" "1010101111111111" "1010110010110100" "0000100000111010" "1010101010100011" "1010110010100100" "1010110011101010" "1010000110100011" "1000111100100101" "0010110010010011" "0010101000011100" "0010110101001111" "1010111000000001" "1001100101101100" "0010010011001101" "1010111101010001" "1010111001001001" "0011000010111011" "0010000000101010" "0010100011100101" "1010001011000101" "1001111000010011" "0010111100111100" "1010011111110001" "1011010011111101" "1011000111101011" "1010110100011000" "0010001000001110" "1010110000011000" "0010111101011110" "1010010110000001" "0010111100010010" "1010100110011011" "0011000011101111" "1010100011000101" }
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
set ID 171
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbIp
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010100111000011" "0010100000001010" "1010111000100011" "0010001011110011" "0011000001000101" "0010111111100000" "0010111000101110" "0001110110110010" "1010101001001111" "0010010111001011" "0010010101001100" "1011001000011111" "0010011011001010" "0011000110001111" "1011001001001011" "0011000100000100" "1001110011111100" "0010100110111110" "0010011000000010" "1010110001010001" "1010111011111011" "0010110011010111" "0010110011001100" "1010111000011110" "1010101100101111" "1010011100001101" "0010111010110011" "1010011111000001" "1010000110100010" "1010100000001100" "0011000101001010" "1010111011000111" "1010010110100110" "1010000011010000" "0010110111111110" "0010001011111010" "1001000111000100" "0010100000001010" "0010000111011100" "0011000110101010" "0010010100110101" "0001111001011101" "0010010110011001" "1011000110101000" "0010000011010010" "1010110001001111" "1010110000001010" "1010100011010100" "0010101101001001" "1011000000001011" "0011000011000101" "1010111101101100" }
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
set ID 172
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbJp
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0010101111000100" "0010010100000001" "1010111010010000" "0010001000100000" "1010111010110101" "1010010100100100" "0010011100101010" "1010100110101101" "1010111001100010" "1011001000100110" "0010011111010000" "1011000101111000" "0010110111000111" "1011000101000101" "1010111110000011" "0011010000100000" "1010110110011000" "0011000010010111" "0010101111101111" "1010111110100110" "1011000111101011" "0010101000110110" "0010101000000010" "1011000000000000" "1011000110100001" "1010100011011001" "0011000000001111" "0010011110100010" "1001100101011010" "0010111000110010" "0010111010010110" "1011000011111010" "0011000010011001" "0010111010111010" "0010111011101001" "1011000001101011" "1010000100010011" "0001111110010010" "1010110001000001" "0011001111011100" "0010101010100111" "0010111110000101" "0011001101111011" "1011001001001001" "0010010011101101" "1001101111000001" "0010010110010101" "0001011001100000" "1010010000100101" "1010101001011001" "0010100111010011" "1011000010000000" }
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
set ID 173
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTSbKp
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010100110001010" "0010100101111011" "1010110110110101" "1010100000001100" "1011010010011011" "1011001100000010" "1010000100000011" "0001110010010010" "0010110110011110" "1011010101111011" "0010011011100101" "0011001010010001" "0010100001101100" "1011000011010000" "1010011001000000" "0010111100010100" "1010101111000111" "0010100010111110" "0010100001011010" "1011000110011110" "0010100000101111" "0010100111000111" "0010110000010111" "1010111011000110" "1010110111101101" "0001111001110000" "0010100010010001" "1001010001101010" "1011000110001101" "0011000110110100" "0010111100110000" "1001011000100110" "0010111111000000" "0011001110110011" "1010010110001110" "1010100010001111" "1010101010100001" "1001010011101100" "0010011011011010" "0010110100101010" "0010110010010110" "0011000000001011" "0011000001101101" "1011000011100000" "0010101001011011" "0010101111010011" "0010111011011101" "0010011000000011" "1010101100110000" "0010101110111001" "1010101111110111" "1010111011110000" }
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
set ID 174
set hasByteEnable 0
set MemName L2_wlo_L1_WEIGHTS
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 52
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1010111010000101" "1010111101101110" "1010100011110100" "1010100101101010" "1011010000111001" "1011000100101100" "1010110001011011" "1010101100010110" "0010110111001101" "1010111110101110" "0010101011101111" "0011011001110001" "1010110111001010" "1010111001011110" "0011000000100100" "1010110110100011" "0010000110110100" "0010010011110010" "0001110110101110" "0001011000010110" "0010010100000011" "0010101111000100" "0010111100011110" "0001100101010111" "1011000001110100" "1010110001010010" "1010111000000111" "1010100111101000" "0010000000110100" "0011001000110010" "1011001010010110" "0010100001011000" "0011001101001111" "0010101100000000" "1001101110100100" "1011000100111010" "1010100111010011" "1010111011101000" "0010101110110110" "1011000100100010" "0001111110100010" "0011001100110111" "0011000100001001" "0010110000111100" "0010101110111101" "0010110011001111" "0001111000001000" "1010101100010001" "1010111100111111" "0010100000010100" "1011000010111110" "0010110111001111" }
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

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name p_read1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read1 \
    op interface \
    ports { p_read1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name p_read2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read2 \
    op interface \
    ports { p_read2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name p_read3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read3 \
    op interface \
    ports { p_read3 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name p_read4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read4 \
    op interface \
    ports { p_read4 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name p_read5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read5 \
    op interface \
    ports { p_read5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name p_read6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read6 \
    op interface \
    ports { p_read6 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name p_read7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read7 \
    op interface \
    ports { p_read7 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name p_read8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read8 \
    op interface \
    ports { p_read8 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name p_read9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read9 \
    op interface \
    ports { p_read9 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name p_read10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read10 \
    op interface \
    ports { p_read10 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name p_read11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read11 \
    op interface \
    ports { p_read11 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name p_read12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read12 \
    op interface \
    ports { p_read12 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name p_read13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read13 \
    op interface \
    ports { p_read13 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name p_read14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read14 \
    op interface \
    ports { p_read14 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name p_read15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read15 \
    op interface \
    ports { p_read15 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name p_read16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read16 \
    op interface \
    ports { p_read16 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name p_read17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read17 \
    op interface \
    ports { p_read17 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name p_read18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read18 \
    op interface \
    ports { p_read18 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name p_read19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read19 \
    op interface \
    ports { p_read19 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name p_read20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read20 \
    op interface \
    ports { p_read20 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name p_read21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read21 \
    op interface \
    ports { p_read21 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name p_read22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read22 \
    op interface \
    ports { p_read22 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name p_read23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read23 \
    op interface \
    ports { p_read23 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name p_read24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read24 \
    op interface \
    ports { p_read24 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name p_read25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read25 \
    op interface \
    ports { p_read25 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name p_read26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read26 \
    op interface \
    ports { p_read26 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name p_read27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read27 \
    op interface \
    ports { p_read27 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name p_read28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read28 \
    op interface \
    ports { p_read28 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name p_read29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read29 \
    op interface \
    ports { p_read29 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name p_read30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read30 \
    op interface \
    ports { p_read30 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name p_read31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read31 \
    op interface \
    ports { p_read31 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name p_read32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read32 \
    op interface \
    ports { p_read32 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name p_read33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read33 \
    op interface \
    ports { p_read33 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name p_read34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read34 \
    op interface \
    ports { p_read34 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name p_read35 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read35 \
    op interface \
    ports { p_read35 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name p_read36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read36 \
    op interface \
    ports { p_read36 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name p_read37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read37 \
    op interface \
    ports { p_read37 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name p_read38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read38 \
    op interface \
    ports { p_read38 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name p_read39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read39 \
    op interface \
    ports { p_read39 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name p_read40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read40 \
    op interface \
    ports { p_read40 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name p_read41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read41 \
    op interface \
    ports { p_read41 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name p_read42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read42 \
    op interface \
    ports { p_read42 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name p_read43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read43 \
    op interface \
    ports { p_read43 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name p_read44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read44 \
    op interface \
    ports { p_read44 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name p_read45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read45 \
    op interface \
    ports { p_read45 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name p_read46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read46 \
    op interface \
    ports { p_read46 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name p_read47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read47 \
    op interface \
    ports { p_read47 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name p_read48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read48 \
    op interface \
    ports { p_read48 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name p_read49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read49 \
    op interface \
    ports { p_read49 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name p_read50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read50 \
    op interface \
    ports { p_read50 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name p_read51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read51 \
    op interface \
    ports { p_read51 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name p_read52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read52 \
    op interface \
    ports { p_read52 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name p_read53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read53 \
    op interface \
    ports { p_read53 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name p_read54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read54 \
    op interface \
    ports { p_read54 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name p_read55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read55 \
    op interface \
    ports { p_read55 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name p_read56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read56 \
    op interface \
    ports { p_read56 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name p_read57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read57 \
    op interface \
    ports { p_read57 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name p_read58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read58 \
    op interface \
    ports { p_read58 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 234 \
    name p_read59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read59 \
    op interface \
    ports { p_read59 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name p_read60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read60 \
    op interface \
    ports { p_read60 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name p_read61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read61 \
    op interface \
    ports { p_read61 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 237 \
    name p_read62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read62 \
    op interface \
    ports { p_read62 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 238 \
    name p_read63 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read63 \
    op interface \
    ports { p_read63 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name p_read64 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read64 \
    op interface \
    ports { p_read64 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
    name p_read65 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read65 \
    op interface \
    ports { p_read65 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 241 \
    name p_read66 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read66 \
    op interface \
    ports { p_read66 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 242 \
    name p_read67 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read67 \
    op interface \
    ports { p_read67 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 243 \
    name p_read68 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read68 \
    op interface \
    ports { p_read68 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 244 \
    name p_read69 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read69 \
    op interface \
    ports { p_read69 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 245 \
    name p_read70 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read70 \
    op interface \
    ports { p_read70 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 246 \
    name p_read71 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read71 \
    op interface \
    ports { p_read71 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 247 \
    name p_read72 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read72 \
    op interface \
    ports { p_read72 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 248 \
    name p_read73 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read73 \
    op interface \
    ports { p_read73 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 249 \
    name p_read74 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read74 \
    op interface \
    ports { p_read74 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 250 \
    name p_read75 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read75 \
    op interface \
    ports { p_read75 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 251 \
    name p_read76 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read76 \
    op interface \
    ports { p_read76 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 252 \
    name p_read77 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read77 \
    op interface \
    ports { p_read77 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 253 \
    name p_read78 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read78 \
    op interface \
    ports { p_read78 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 254 \
    name p_read79 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read79 \
    op interface \
    ports { p_read79 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 255 \
    name p_read80 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read80 \
    op interface \
    ports { p_read80 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 256 \
    name p_read81 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read81 \
    op interface \
    ports { p_read81 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 257 \
    name p_read82 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read82 \
    op interface \
    ports { p_read82 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 258 \
    name p_read83 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read83 \
    op interface \
    ports { p_read83 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 259 \
    name p_read84 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read84 \
    op interface \
    ports { p_read84 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 260 \
    name p_read85 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read85 \
    op interface \
    ports { p_read85 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 261 \
    name p_read86 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read86 \
    op interface \
    ports { p_read86 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 262 \
    name p_read87 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read87 \
    op interface \
    ports { p_read87 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 263 \
    name p_read88 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read88 \
    op interface \
    ports { p_read88 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 264 \
    name p_read89 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read89 \
    op interface \
    ports { p_read89 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 265 \
    name p_read90 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read90 \
    op interface \
    ports { p_read90 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 266 \
    name p_read91 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read91 \
    op interface \
    ports { p_read91 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 267 \
    name p_read92 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read92 \
    op interface \
    ports { p_read92 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 268 \
    name p_read93 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read93 \
    op interface \
    ports { p_read93 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 269 \
    name p_read94 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read94 \
    op interface \
    ports { p_read94 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 270 \
    name p_read95 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read95 \
    op interface \
    ports { p_read95 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 271 \
    name p_read96 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read96 \
    op interface \
    ports { p_read96 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 272 \
    name p_read97 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read97 \
    op interface \
    ports { p_read97 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 273 \
    name p_read98 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read98 \
    op interface \
    ports { p_read98 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 274 \
    name p_read99 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read99 \
    op interface \
    ports { p_read99 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 275 \
    name p_read100 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read100 \
    op interface \
    ports { p_read100 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 276 \
    name p_read101 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read101 \
    op interface \
    ports { p_read101 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 277 \
    name p_read102 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read102 \
    op interface \
    ports { p_read102 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 278 \
    name p_read103 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read103 \
    op interface \
    ports { p_read103 { I 16 vector } } \
} "
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


