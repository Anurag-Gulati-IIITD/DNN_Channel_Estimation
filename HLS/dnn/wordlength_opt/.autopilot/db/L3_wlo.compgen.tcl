# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 305
set hasByteEnable 0
set MemName L3_wlo_L2_BIAS
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "0011000100001000" "0010110010011111" "1010100010001001" "1011000000001011" "1010110100111110" "1001100000000000" "0010110100111100" "0010100000111101" "1001110000001111" "1010011101011001" "0001010011001001" "0010100010100100" "0010100000000011" "1010001001010001" "1010110010111011" "1010110110011110" "1010100101101010" "0010101110000100" "0010110110111000" "0010110000010010" "0010010100000101" "1010010111000100" "0001110011011101" "0010001001010110" "0001111101100010" "1010100001001011" "1010101010101000" "0010100011000100" "0010110111101011" "0010111011001101" "0010100101001010" "1010100010100010" "1010110001110011" "1010110000001101" "1010101001010001" "0001110000100111" "0001110110110000" "0001100111000110" "0010011101010001" "0010011100111100" "0010010100001000" "0010000010011010" "0001110011101111" "0010011010110000" "1010010000101001" "1010010010011101" "1010110010111110" "1010110000011010" "1010000110101110" "0010111001111010" "0011000000111011" "0010110110100111" "0001111000100110" "1010110101110110" "1011000000100011" "1010100010000000" "0010110001010011" "0010110110000010" "0010011110111011" "1010010100110101" "1010100011111010" "1010001010110010" "0010100100101000" "1001000010110100" "1010100010101001" "1010110011100011" "1010100001101000" "0010100010000010" "0010111001111110" "0010110000111001" "0010010001110111" "1010010011101110" "1010100111110111" "0001111010100001" "0010001111011101" "1001111111001110" "1010101011011011" "1010100111111101" "0010110011111000" "0010111101100101" "0010110001101000" "1010100011101010" "1010110100101100" "1010110101111011" "1010101001000110" "0010001010000101" "0010011101010110" "0010011001000001" "0010010001110010" "0001111101101011" "0010101000000000" "0001100000001010" "1001100111111010" "0001101010101110" "1010000101000010" "1010011000011111" "1010100100111110" "1010100110110000" "0001101000110011" "0010110010001001" "0010111110111110" "0010101111110100" "1001010000001101" "1011000000000011" }
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
set ID 306
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTS_0
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "0001100101010011" "0001111110000010" "0001101011001011" "0001010100011100" "1001111011101000" "1001101111101011" "1010001001010100" "1001100001001011" "1001100101101111" "1000111100110001" "0001111000010101" "0010000101110010" "0001100000101001" "1001011000101011" "1010000001001001" "0001011000101010" "0001100001001100" "0001010100101100" "0001001100100111" "1010000101000000" "1001001000001100" "1001011010101111" "0001001000100001" "0010000101000100" "0001010010111110" "1001101000000010" "1010010011100001" "1001101011001110" "0001110010000101" "0010001010001111" "0010001001011000" "1000101100101101" "0001101110111101" "1000110110011010" "1001110010000100" "0001101010010111" "1001010011111010" "1001011101101011" "0001110111110011" "0001101111010110" "0001101011111100" "1001100000100111" "1010000000000110" "0001001010010110" "0010001011101001" "0010001000100100" "1001111011101001" "1010010011110101" "1010010100100001" "1001010011011101" "0010010110011111" "0010011000100100" "0010010011001101" "0001111010111010" "0001010001011111" "1010000011101001" "1001110110110101" "1001110011001111" "0001100001010110" "0001011011100010" "0010000000101111" "0001111101100001" "0010000110100010" "0001011011000001" "1001111000110000" "1001110100111000" "1001101111111111" "0001111011110101" "0001101010111110" "0001110011001010" "1001110110111000" "0000100001100100" "0001011100000111" "0010000110000111" "0001011001000010" "1001110111011100" "1010000110010100" "1010000010011001" "0001110011000000" "0001111100001011" "0001110110111110" "1001011010101000" "1001110011100111" "1001110111110100" "1001101001100000" "1001101010011000" "1000110100001100" "0000101011011001" "0001110100011010" "1010000001111000" "1001110000000101" "1000111111001000" "1001111101101010" "1010000000111100" "0001100101101110" "0001110110001001" "0001010010111100" "1010001000111011" "1010001011000111" "1001111111000010" "0010001100101100" "0010011110000111" "0010001100011010" "1010000000010011" }
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
set ID 307
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTS_1
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "1010110101001101" "0010100010011110" "0010111111010100" "0010111011100111" "0010100100011110" "1010101001001001" "1010111010111010" "1010110111011010" "1010010001101101" "0010101010110000" "0010110101111010" "0010101001011000" "1010000001100110" "1010110011010010" "1010110110100000" "1010100011111111" "0010011011101111" "0010111010000101" "0010111010000011" "0010010111000000" "1010110001000001" "1011000010001001" "1010111100111000" "1010000111111100" "0010111011110001" "0011000011000110" "1010100110011100" "1010111010010100" "1010111000000100" "1001110011100110" "0010110100100011" "0010110010000111" "0010010010011001" "1010101000111011" "1010110001000001" "1010001010000010" "0010011110100110" "0010101011100101" "0010100110111101" "1001110111110100" "1010100101001110" "1010100001111001" "1010010110110100" "0010010100101010" "0010011101111111" "0010011000110100" "1010010010110001" "1010101000000110" "1010010110010110" "0010010001101100" "0010101011111111" "0010101011111110" "0010111110111010" "0011000001000100" "0010101100010001" "1010100011100110" "1010111100000010" "1010111010100100" "1010100010110110" "0010100111110001" "0010111001010111" "0010101110111011" "0001110001010001" "1010101010101101" "1010110100011101" "1010101100100111" "0010010000001011" "0010110101001100" "0010110111011101" "0010101000001101" "1010101001100100" "1010111100110010" "1010111010111001" "1010000101010001" "0010110111001111" "0011000001011011" "0010110111110010" "1010011100100011" "1010111110000101" "1010101000010011" "0010101100101001" "0010110111001001" "0010101001101110" "1010001001110000" "1010110000110000" "1010101100100101" "0010001000100010" "0010110001011000" "0010101010010000" "1001110111000011" "1010100101101011" "1010101101011011" "1010010001001001" "0010000010111011" "0010100110100110" "0010011011001000" "0010000000000001" "1010100110000101" "1010010101001101" "0010001011010101" "0010100001100010" "0010100111111010" "0010011100000010" "1010011010111010" }
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
set ID 308
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTS_2
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "1000100101111001" "0001010101001110" "0001100101111000" "0001010100101110" "0001000010100101" "0000111111011001" "1001101001101000" "1001110100000100" "1001110100001000" "1001010011100001" "0001110000100011" "0001111100011111" "0001111001110101" "1001010100101101" "1001110111000111" "1001110111011101" "1001101000011011" "0001101111100110" "0001110111011000" "0001011011010111" "1001011100011000" "1001110001100101" "1001010111001001" "0001011001101011" "0001010100000000" "1000011110111100" "1001101110011110" "1000111010010010" "0001101000101011" "0001100001111101" "0001100010111100" "1001010100101000" "1001100110001001" "1001011001010001" "1000110001111101" "0000011000111010" "0001001010100001" "0001010111101000" "0001011001011101" "0001110000111100" "0001100001000111" "1001100001000011" "1001110101001100" "1001111000100010" "1001100111110110" "0001100010100100" "0001110100111101" "0001101100001101" "0001011000000010" "1001101001010010" "1001100111110110" "1001010100001101" "0001101100101110" "0001001011101110" "1001010001000011" "0001001000001010" "1001100110010101" "1001101001000101" "1001101110100100" "1001011110011111" "0001101110110110" "0001111101111010" "0001111010100101" "0001011000110100" "1001110100011111" "1001111011100011" "1001110100111101" "0001100110110101" "0001110100101011" "0001110011111000" "0001010100101110" "1001110011101001" "1001110010010001" "0000101011100010" "0001000110111100" "0001100000110101" "1001011110000100" "1001110000110110" "0001010010100111" "0001100111100100" "0001100010011010" "1001010000011100" "1001101001000011" "1001100011101101" "1001011000000010" "0001010011011010" "0001100110001100" "0001100001101001" "0001010111001001" "0001100000110000" "1000111011101010" "1001010110000100" "1001100111100011" "1001110111111000" "1001100101101111" "0001101000100100" "0001111011001011" "0001110010100111" "0001011110100001" "1001100000111111" "1001110110001100" "1001100100101000" "0001000010011001" "0001100110000100" }
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
set ID 309
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTS_3
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "0010000001011001" "1010000111010001" "1010000100010100" "1010001100001100" "1010010011010110" "0010000011100111" "0010001010111110" "0010001010001010" "0010010001101110" "1000110100011101" "1010010010100100" "1010001001101111" "1010000100010111" "1001101001111111" "0001110000010101" "0001100100101110" "0010000101000100" "0010000110001111" "0010000110111110" "1001110101101111" "1010001111111101" "1010001110111001" "0001000101111011" "1001110011101000" "0010001101111010" "0010001001101111" "0001110100010110" "1010000010000110" "1010000101011011" "1001111001110111" "1001101011010110" "1001010000100101" "0010000000101001" "0001111111100110" "0001111010110100" "0010010010111100" "1010001011000111" "1010000111001111" "1010001111111111" "1010010011010000" "0001101011100011" "0010001011111011" "0010001111101110" "0010001011001101" "0001111001110010" "1010000001000000" "1010001010110011" "1010000111010100" "1001111111111001" "1001010110101000" "0010000000100100" "0010000110110011" "1010000011100100" "1010001011001010" "1010010111010111" "0010001011110000" "0010000010111101" "0010001010000000" "0010010001101010" "1010001100010001" "1010001001010110" "1010000110111010" "1010000100001110" "0001011000101010" "0010000100000001" "0010000010100110" "0010000101110000" "0010000000011010" "0001110100111000" "1001000100011000" "1010000010000000" "1010001000001010" "1001010110010111" "0010000001110101" "0010000100101001" "0010001101101101" "0010000100100010" "0001100001110101" "1010001101000100" "1001110111110100" "1001110010111100" "1001000010111010" "0010000000111011" "0010000000010011" "0001110001010011" "0010001000100011" "1001110001110110" "1001111000101010" "1010001000010110" "1010010110110110" "0010000010110001" "0010010010000100" "0010010011101110" "0010001100001110" "0001101110111001" "1010000101110001" "1010001001110101" "1010001011110010" "1001111111100110" "0010000001110100" "0010000111000111" "0001111010001011" "0010010000001011" "0010010000010111" }
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
set ID 310
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTS_4
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "0010101011111101" "0011000010111000" "0011000001111111" "0010110011010110" "1010100011000011" "1010110101111001" "1010111000101000" "1010011001100000" "0001110100010000" "1001111100100011" "1001111001110111" "0010100000000110" "0010101101110100" "0010111001000110" "0010011000111000" "1010100111010010" "1010111011110101" "1010111000101110" "0010000000100100" "0010110011110010" "0010111011001010" "0010100010101010" "1010100111100000" "1010100111110101" "1010010100100010" "0010010110000001" "1010001100101101" "1010100101101001" "1000000001110101" "0010110000110100" "0010101111101110" "0010010011010001" "1010101110111011" "1010110111011111" "1010101000110001" "0010100110010000" "0010111011110010" "0010101111001110" "1010010010001100" "1010110011100001" "1010100010000110" "0010100111000110" "0010110110101001" "0010001100000010" "1010110001111001" "1011000001110011" "1010110001100001" "0010110101000001" "0011000110100001" "0011000111111011" "0010100110011100" "1011000000000000" "0011001000010101" "0010110111100110" "1010100010000111" "1011000010001111" "1010111100110000" "1010101001011110" "0010100010111111" "0010101000100101" "0010011111010101" "0010011001110011" "0010100110101001" "0010101011011101" "0010010110011100" "1010011110111110" "1010111011110011" "1010110111011001" "1010010001101011" "0010110101100101" "0010111001101010" "0010110000100101" "1010011110001000" "1010111000110101" "1010110000001100" "1010000010000110" "0010100110010001" "0010100100011000" "1010011100010000" "0001010000001101" "0010100111101000" "0010100011000101" "1010100000001101" "1010110100011001" "1010101111110100" "0010000110101011" "0010111000100101" "0010110100110100" "0010010011001101" "1010110110010111" "1010110110111011" "1010010101011011" "0010101000010100" "0010101110110011" "1010001111010010" "1010111001011100" "1010110111010000" "0010011111101011" "0011000001000101" "0011000011010010" "0010101000011101" "1010111001010001" "1011001011100001" "1011000110010111" }
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
set ID 311
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTS_5
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "1010101111001010" "1010100101111011" "0010010000010111" "0010101100111100" "0010110000011110" "0001011111100011" "1010010110110101" "1010100001001001" "0001110100000100" "0010100011010111" "0010011101001001" "1010010001101101" "1010101100110100" "1010100001010001" "0010010010100111" "0010101101100100" "0010101001001011" "0010010010000101" "1010010000011001" "1010011011011000" "0001000110100011" "0010010001101010" "0010000011100001" "1010010011111110" "1010011011010101" "1001110000111010" "0010101011011101" "0010100001100110" "1001111001001001" "1010011100100011" "1010100001001011" "1000111110010110" "0001110011100001" "1010000001010111" "1010010100011000" "1000110010010010" "0010011001101111" "0010100110100110" "0010011110100110" "1010000011010011" "1010100101011001" "1010100101011111" "1000110011100110" "0010011000001010" "0010000110101001" "1001110010011010" "1010001011000010" "0010001001100100" "0010010101101100" "0010011111010001" "0001011010111000" "1010011010111001" "1010000100111101" "0010101111110010" "0010110010011000" "0010011001111101" "1010011011001100" "1010101011111110" "1010100000101110" "0010010111100000" "0010100001110011" "0001110111001111" "1010100001010100" "1010100111000000" "1001110110110110" "0010101000101011" "0010110000110101" "0010011010111111" "1010011010101011" "1010101011101110" "1010011111101100" "0010000101001101" "0010001111010010" "0010001001101101" "1010000100001001" "1010001101001010" "0010001110111010" "0010100111111001" "0001110111010110" "1010011100000101" "1010100101101011" "1010011001101101" "0010001001010100" "0010000010010100" "0010000011010111" "1001010110010100" "0010000011011000" "0010011000111110" "0010011000011100" "1001110010110110" "1010011011111110" "1010101001000111" "1010010100100110" "0010010111010011" "0010011101000110" "0010010011011000" "1010000110000011" "1001110110011000" "1001101001010100" "0010010010111100" "0010001001100000" "1010011010010001" "1010011111000000" "1010100100000110" }
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
set ID 312
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTS_6
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "1010100010111001" "0010100001001111" "0010000001001000" "0010010000100001" "1001110100111000" "0010000111001100" "0010100100101001" "0010101001101001" "0001100011110001" "1001110110000111" "1010100101000101" "1010101011010011" "1010100000011011" "1010001010111100" "0010100110100010" "0010011000110000" "0010000011101001" "0001110100111110" "1010100001111100" "0010100101111000" "0010100010111011" "0001100000011111" "1010110010011001" "1010110001101110" "1010100000100110" "0001111100101100" "0010110100101110" "0010100111011100" "0010000001101011" "1010010111110001" "1010101000100001" "1010100011001111" "1010101101010000" "1010000111111011" "1010010000101001" "0010011001111100" "0010100101111010" "0010100000000111" "1001101101101011" "1010011000100010" "1010100011000000" "0010010111111111" "0010011011110010" "0010100000000000" "0001101101101101" "1010000111000001" "1010011100001111" "1010101010000111" "1010010101001100" "0010011100101000" "0010101100000111" "0010110100111011" "0010001100110101" "0010110000101000" "0010010001010100" "1010010110001010" "1001111110011101" "1001000100100111" "0010011001000000" "1001011101101100" "1010100100110111" "1010110010100100" "1010101010100101" "1010010110000110" "0010110001100100" "0010101000101110" "0010100001010100" "1010000100111110" "1010010001100011" "1010001111000000" "0010011101110101" "0010001000001100" "1010001100010011" "1010100111001110" "1001101110000011" "0010010011000000" "0010110000000101" "0010110100011000" "0010000101110100" "1010001111111110" "1010110000101000" "1010010101111100" "1010100000010011" "0001010101101010" "0010001010001110" "0010100001101101" "0010010000001100" "0010011010101110" "0000101011000000" "1010001001000110" "1010010110000010" "1010010000100000" "0010010010010101" "0010001101111111" "0001101101011100" "1010100100011110" "1010101101100000" "1010011010101000" "0001101100111100" "0010010110101101" "0010101111010011" "0010101001011000" "0010010010110100" "1010101010110011" }
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
set ID 313
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTS_7
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "1001101100001111" "0010100000010010" "0010000010011010" "1010100010010010" "1001100101101111" "0010010011100001" "0010111000101001" "0010101101001000" "1010100001000001" "1010110001101100" "1010101001111010" "0010001001101011" "0010110111101100" "0010110001000111" "0010011010111111" "1010110000000111" "1010110011010001" "0000100101101000" "0010110001111011" "0010110101000010" "0001110010101010" "1010101101100011" "1010110011111001" "1010100101110111" "0010101001010000" "0010110101101100" "1001101011011000" "1010101001100000" "1010101111011001" "1010100101111001" "0001101100101011" "0010100100001111" "0010011010011111" "0010011101000100" "0010101000001100" "0010011110011000" "1010100010000100" "1010110000000111" "1010110110010100" "1010011101011101" "0010100010000000" "0010110100101101" "0010110100100010" "0010010100100111" "1010101101001100" "1010110100011110" "1010101011110100" "1010001000101111" "0010010100111111" "0010001111110000" "0010100001001110" "0010011101101001" "1010010011000011" "1010010101001100" "1010001111011000" "0010001111010000" "0010100000010111" "0010100111100010" "1010010010110100" "1010101010110010" "1010110001011010" "1010011101000000" "0010011111110110" "0010110110001010" "0010100101101110" "1010100011000111" "1010110001000010" "1010101100111100" "0010001100010000" "0010110011000011" "0010101111000011" "1010100001011101" "1010110111101010" "1010100111011000" "0010011100011000" "0010110101011000" "0010110011001011" "0001101111110011" "1010101011101000" "1010010010010100" "0000111010011010" "0010100000001001" "0010100100110011" "0010010001000010" "0010100001011110" "0010000001000101" "1010011100000000" "1010100011001000" "1010110001011110" "1010000100000100" "0010011110111010" "0010110100011011" "0010110111001100" "0010010011001001" "1010101111001001" "1010110010001101" "1010101101100100" "1001111110000001" "0010001100000011" "0010101000100111" "0010100011001101" "0010001101001001" "0010001100101100" "1010101011001101" }
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
set ID 314
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTS_8
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "0010100010001110" "0010111000000111" "0010110000101111" "1010100000101100" "1010111000110100" "1010110101000100" "1010000010001010" "0010110011110111" "0010111001001100" "0010010100111010" "1010101101111000" "1010110110111000" "1010100110000111" "0010100110111110" "0010110000101010" "0010100100000000" "1010100100011110" "1010101011011111" "1010001010010101" "0010011001101011" "0010110011011000" "0010010010011001" "1010101011011100" "1010110011111101" "1010100010100100" "0010101001010101" "0010110001101100" "0001100000011001" "1010110011101011" "1010110011110110" "1010100001000110" "0010100100010100" "0010111000000001" "0010110010100101" "1001010000111111" "1010101101001000" "1010110111011001" "1010101010010000" "0010100111110011" "0010110111110000" "0010110100101001" "0010000011001010" "1010110100010100" "1010111000100001" "1010100001111110" "0010101010000000" "0010110101111111" "0010101000000100" "1010010011011110" "1010101011000110" "1010100011100111" "0001111011010011" "0010110111100000" "0010011001111011" "1010110011010100" "1010111010000111" "1010100000011111" "0010101100110010" "0010111010100001" "0010101100010010" "1010011011110011" "1010111001101000" "1010110000011110" "0010010101101110" "0010110010111110" "0010101110011101" "1010000000111010" "1010101001110101" "1010101010010110" "0010001110011110" "0010101001011001" "0010101010100111" "1010000100010111" "1010101101010100" "1010101100011010" "1001101100010001" "0010110011110001" "0010110100001100" "1010101011111100" "1010111010101011" "1010101101011010" "0010010001011010" "0010110100001111" "0010111000001110" "0010100000110101" "1010110000011101" "1010110110110001" "1010101101100100" "0010001101101110" "0010101110110001" "0010110110111111" "0010010100011101" "1010101011101110" "1010111001110111" "1010101011111111" "0010001011010101" "0010110110100110" "0010110000000010" "0010000001010011" "1010101000001011" "1010110010010110" "1010010011100001" "0010100110011100" "0010101011111000" }
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
set ID 315
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTS_9
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "0010011011100110" "1010100110010010" "1010101101100111" "1010100010110011" "1010001011101111" "0001111001110001" "0010000001100111" "0010001010001000" "0010100101101011" "0010101100110101" "0010011000110000" "1010100101100110" "1010111001101100" "1010111100110100" "1010100110011010" "0010101010010010" "0011000000101001" "0010111111011010" "0010100011101110" "1010101001011100" "1011000000011101" "1011000000001010" "1010101101110111" "0010010110100100" "0010111000000111" "0010111111000011" "0010000001011101" "1010110011111101" "1011000001000010" "1010111110100111" "1010011110100011" "0010110000101000" "0011000001011100" "0010111111101100" "0010100010001101" "1010110011100101" "1011000010010100" "1011000000111000" "1010100111100101" "0010110001101010" "0011000010101010" "0011000001110110" "0010100111010101" "1010110001011100" "1011000100001111" "1011000001110100" "1010100011101100" "0010110110011110" "0011000100011011" "0010111100111001" "1010000101011011" "1010111100111000" "1010110001101001" "1010101110110101" "1010001101110110" "0010100001100110" "0010100000100011" "0010011000111000" "0010010100110001" "0010010111111100" "0010000101100010" "1010011000110011" "1010110010000011" "1010110111110111" "1010100010011110" "0010101000001011" "0010111111010000" "0010111110011010" "0010101001010001" "1010110001010110" "1011000000011110" "1010111111101101" "1010101000100011" "0010100110111011" "0010111011111000" "0011000000101001" "0010110001110011" "1010001001001011" "1011000001010011" "1010111001110100" "1010010000100011" "0010110100000111" "0011000001111000" "0010111110110001" "0010010101101001" "1010110001111110" "1011000010011010" "1011000000011100" "1010100100100100" "0010110011100101" "0011000011000101" "0011000010000001" "0010101001011010" "1010110000001101" "1011000010110111" "1011000010010100" "1010100111110010" "0010110100010000" "0011000101101110" "0011000001100110" "0010010111101010" "1010111011111011" "1011000011001011" "1010110010101110" }
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
set ID 316
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTSbOq
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "1010011001100101" "1010101110111011" "1010110111001101" "1010110101101010" "1010100001011111" "0010100110111101" "0010111100101010" "0011000001011010" "0010111001000111" "1010011101101110" "1011000001000110" "1011000101011111" "1010111100111011" "0010011100011001" "0010111100100111" "0011000010010101" "0010111100000011" "0010101000010000" "1010100101011000" "1011000001110100" "1011000000101001" "1010110110011110" "0001100101010110" "0010111010001010" "0011000000101110" "0010111011000100" "1010101001101100" "1010110011100101" "1010101010000100" "0001100011100110" "1010010000001000" "1010010100001011" "1010010010101110" "0010010001001010" "0010110111010010" "0010111110111000" "0010101110011110" "1010101001011100" "1011000001101011" "1011000010100001" "1010101010101011" "0010110001011011" "0011000001010001" "0010111011000011" "0010100010100010" "1010101110110111" "1010110100010111" "1010110100011011" "1010100001010111" "0001000000101011" "0010101011001011" "0010101100100100" "1010110000101100" "1010100011110100" "1010010010110101" "0010100110110010" "0010111001001000" "0010111110000011" "0010110010101110" "1010100001001011" "1011000000001001" "1011000100010001" "1010111000011110" "0010011110011011" "0011000001000011" "0011000011110000" "0010111011110010" "0010011001001100" "1010110110111100" "1011000001101110" "1011000001000111" "1010110001100111" "0010100100001000" "0010111110100001" "0011000001011010" "0010111000100110" "0010100000010011" "1010110001110111" "1010110001111110" "1010011101011001" "0010011011000101" "0010011101101000" "0001010110010001" "0010010100101101" "0010110001001011" "0010110001100101" "0010101110110100" "1010100000011111" "1011000000000110" "1011000011100010" "1010101011101011" "0010110001100101" "0011000010100010" "0011000000100101" "0010100110110001" "1010110101110001" "1010111101100001" "1010111011011001" "1010100101001101" "0010100111111010" "0010101110100000" "0010110000010101" "0010110001000000" "0010100110010101" }
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
set ID 317
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTSbPq
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "1011001110111100" "1010111101101100" "0010110010100100" "0011000111001110" "0010110111011001" "1010101101010010" "1011000000001110" "1010101000101010" "0010101101010010" "0010111010010011" "0010100011110100" "1010100101111000" "1010110001111100" "1010000111101000" "0010101011110011" "0010101011100101" "0010001000000010" "1010101101000100" "1010101010011101" "0001110001111000" "0010011110110110" "0010100000100111" "1010010001110010" "1010100000000011" "1010000001001011" "0010100101100001" "0010010000010011" "1010110010101001" "1010110111011010" "1010101100000100" "0010000110101001" "0010110010000100" "0010101100010000" "0010011000111011" "0010001110010000" "1010000010011110" "1001111011100111" "1010011100000001" "1010110000111010" "1010100110001111" "0010000100001010" "0010101000011101" "0010101010000000" "1010001000001011" "1010010110100110" "1001101010000010" "0010110100001001" "0010110011100100" "1010100001010100" "1011000111010001" "1011001000110001" "1010100011110000" "1010000000111100" "0011000101011000" "0011000110110011" "0010010001010010" "1011000000001011" "1010111110101011" "0001100111010101" "0010111010011001" "0010110110001001" "0001110110001000" "1010110110011011" "1010110001110101" "0010000111110010" "0010110010100001" "0010100111011110" "1010011010011000" "1010110001001101" "1010100010001001" "0010011010100000" "0010100011001111" "0010001111110010" "1010100101001111" "1010100010011000" "0010010010011100" "0010101101011010" "0010100100100110" "1010110101011110" "1010110000010110" "0001101110010101" "0010110100111111" "0010110100010101" "0010011011001100" "1010001001111011" "1010011100101011" "1010011001001111" "1010011010001111" "1010011111110111" "1010010001111001" "1001111101010110" "0010101011011000" "0010101100101000" "0010011011111010" "1010011101111100" "1010100001001111" "0001100110001000" "0010101100001001" "0001000001001001" "1010111000110110" "1011000011010000" "1010110001001000" "0010111010100110" "0011010000011111" }
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
set ID 318
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTSbQq
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "1010110000001100" "1010100011011111" "1010011111010101" "0010010111110101" "0010111000100101" "0010110100101000" "0010101110101110" "0010000010101110" "1010110011111011" "1010110111001010" "1010110111011001" "1010000010111011" "0010101011000000" "0011000000001111" "0010111101011110" "0010110000011011" "1010011110111011" "1010110101011110" "1010111101100110" "1010101100101001" "1001110011010110" "0010101101101100" "0010111101110010" "0010101111111100" "0010100010000100" "0000101010001110" "1010101011111100" "1010110011000001" "1010101011010111" "1010100110100010" "0010100010011010" "0010111010100010" "0010111101000101" "0010110110101001" "0010001100011000" "1010110011100000" "1010110111101010" "1010101101010101" "1010100000010111" "0010101000010010" "0010110001011000" "0010101111001111" "0010100111110011" "0010001011100110" "1010100000110110" "1010110011010000" "1010110111111111" "1010011111010101" "0010010100010011" "0010110001111001" "0010111010001011" "0010110100110101" "0001101100110000" "0010101001010011" "0010110001001010" "0010110011110010" "0010001111011110" "1010101001110011" "1010111000011000" "1010111001110010" "1010110001001110" "0010000101011010" "0010111001100100" "0010111010010011" "0010111101001000" "0010110010000010" "1010101101111101" "1010111100110111" "1010111111110000" "1010100010100000" "0010101011000000" "0010111010000101" "0010111001001001" "0010111010010110" "0010010110111011" "1010100000001000" "1010111010010110" "1010101011110101" "1010101101101001" "1001001010110001" "0010100011010001" "0010110011100100" "0010111101100001" "0010011001011001" "1010100110000110" "1010110011100000" "1010111001110100" "1010110001111010" "1010000000100111" "0010100001011100" "0010110110010100" "0010101110101010" "0010001110001111" "1010100010101111" "1010101001011000" "1010100101001001" "1010100110001101" "1010010000110101" "1010001000101010" "0010101110001001" "0010110101001001" "0010101010100110" "1001110110011100" "1010101011110010" }
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
set ID 319
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTSbRq
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "0010100000000111" "1010011101100000" "1010101011111101" "1010010010101000" "0010010011111010" "0010001110000010" "1010100110101011" "1010100011000110" "1010000111001100" "0010100111010110" "0010110000001010" "0010001011111010" "1010100001100011" "1010101001011110" "0010000001001110" "0010110001111011" "0010100101111010" "1010100100001000" "1010110111111001" "1010110100000100" "0010010110110010" "0010110111111100" "0010110001011111" "1010000101111010" "1010110011101110" "1010110001100001" "0010101011110100" "0010101001001010" "1010001011001110" "1010101101111011" "1010011010101101" "0010010100011100" "0010101001001001" "0010100000110100" "1001010101001001" "1010010010101000" "1001110010001111" "0010011011101000" "0010010100101001" "1010010111010011" "1010101010010001" "1010010100111001" "0010011000110010" "0010101000011000" "0010100001101101" "1010100011101010" "1010101111010111" "1010010011000001" "0010110011001010" "0010110110001110" "0001111101111111" "1010111111001010" "1010111000100100" "1010110110100011" "0001010010001010" "0010100011110111" "0010000111111110" "1010011100111010" "1010011101010010" "0010001010010010" "0010110000111101" "0010100011000000" "1010011010101000" "1010100101010101" "1010100010101011" "0010010111110110" "0010100110001001" "0010000001100101" "1010110001000111" "1010101011011110" "1010001001011000" "0010110001000101" "0010111000000001" "0010011010110000" "1010110000001011" "1010111011101001" "1010100100111111" "0010100010001110" "0010100010110111" "1010101001101001" "1010110010110001" "1010010101000011" "0010011111110011" "0010110000011111" "0010011110101011" "1010100001110011" "1010100000011101" "0010001110011111" "0010011011111000" "0001100010011101" "1010101011110001" "1010101000100110" "0001110000001110" "0010100000011011" "0010101100000000" "0001110101000010" "1010100101000110" "1010101100100101" "0010000111011101" "0010110010001001" "0010100001101010" "1010100001110110" "1010111111011010" "1010110110011100" }
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
set ID 320
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTSbSr
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "1011000011001011" "1010111011111010" "0001101011101011" "0010110110111110" "0011000001010001" "0010111000100001" "1001111111101101" "1010110110100000" "1010111110111010" "1010110110100011" "1010001000011100" "0010100110000101" "0010110010000001" "0010100101101101" "0010001001001001" "0001111111101011" "1010011100110110" "1010100000111011" "1010011100011011" "1010011000011101" "0010000000011011" "0010001011010101" "0010011101100101" "0010011000000101" "0001110101000001" "1010100101000100" "1010100001111111" "0010101101111100" "0010111010011001" "0010110100000100" "0001110110000000" "1010111100000101" "1010111100110000" "1010100000001011" "0010101010110000" "0010111011111101" "0010101000110110" "1010100110101010" "1010101001111101" "1010000100100010" "0010110000010101" "0010110101101110" "1010000001111111" "1010110111111000" "1010111111010101" "1010010111010000" "0010110011001110" "0011000001101011" "0010110110110011" "1010000111011000" "1010111110100011" "1010111001010100" "1001111010101001" "0010111001111010" "0011000011101010" "0010111010010100" "0010000000101110" "1010111001111100" "1011000001111001" "1010111001001000" "0001000010011011" "0010101100100111" "0010111001100000" "0010110100110011" "0010001101000011" "1010011110000011" "1010101101101010" "1010101000000011" "1010010011111101" "0010001001011010" "0010000001011011" "0010100000111111" "0010011000011101" "0010011100000010" "0010000010100000" "1010100110101001" "1010110001001000" "1010100110110101" "0010110011011101" "0010110010000110" "0001111111100011" "1010110110110111" "1010111101101011" "1010101001011100" "0010100011001110" "0010111001111111" "0010110101100101" "0001110010111110" "1010110000110110" "1010110100001100" "1000100010100111" "0010101000101110" "0010100110110011" "1010101010000011" "1010111000010101" "1010101101111101" "0010101010001011" "0010111111001110" "0011000000101100" "0010000110011001" "1010111011100001" "1011000000000101" "1010101111000100" "0010100100001100" }
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
set ID 321
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTSbTr
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "1010100100101110" "0010101110011110" "0010111011110000" "0010111010000111" "0010011100110100" "1010110001000001" "1011000000000111" "1010111010010010" "1010000111101111" "0010110101101001" "0011000001011100" "0010111010110111" "0001001000101101" "1010110100000011" "1010111101110110" "1010110010001111" "0010000100011000" "0010110000100011" "0010110000010010" "0010010010010111" "0010000000111100" "0010000000010010" "0001000100011101" "1010010001110001" "1010101111001110" "1010101101101101" "0010110110101000" "0010111100010101" "0010101001010001" "1010110000001011" "1011000100100001" "1010111101000001" "0010010011101110" "0011000010101001" "0011000110010101" "0010110011001010" "1010110001100010" "1011000011100001" "1011000000110011" "1010100100001001" "0010101011110101" "0010110111110001" "0010110110001010" "0010100111111000" "0010010110010011" "1010100010000010" "1010110010110010" "1010111010111011" "1010110011111011" "0010001011101010" "0011000000000001" "0011000010111001" "0010111101111111" "0010111100101101" "0010011100010011" "1010110010001011" "1010111101111111" "1010111001010001" "1010001100110100" "0010110011111100" "0011000000101110" "0010111100000100" "0010001100011010" "1010110110000000" "1011000000110001" "1010110110111101" "0001101101100000" "0010110110011100" "0010110110011010" "0010100110010101" "1010001001100011" "1010100001100101" "1010010010010110" "1010010001011111" "1010011111010101" "1010100100010101" "0001101001111111" "0010101101110000" "0010110001010011" "1010100011100000" "1010111111101000" "1010111111001011" "1010011000111110" "0010111101000011" "0011000111010001" "0010111001000110" "1010100101100010" "1011000100111010" "1011000100010010" "1010101101100000" "0010110010100101" "0011000001000001" "0010111001100100" "0010100001110001" "1010010111100100" "1010110001000100" "1010110011111000" "1010110100001000" "1010101111111010" "0010001111001001" "0010110111111011" "0011000001011100" "0010110111001100" "1010011000110010" }
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
set ID 322
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTSbUr
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "0001110000011001" "0001100100100110" "0001111001011011" "1010000010110011" "1001101000100011" "1010010110101000" "1010000001110010" "1001111010000010" "0010001100111011" "0010001011111000" "0001101100111111" "1001111010000011" "0001010010111110" "1010010000000011" "1001001111111101" "1001011101110000" "1001110000101010" "1001100110010010" "1001111111001000" "0001011100011000" "0010000001110000" "0001110000100100" "1001100000110101" "1001110000011010" "0001111000010111" "1010000011001001" "0001001001011101" "1001110110000100" "0001001100011000" "0001100111111001" "0010001000111111" "0001110101000001" "0010001100111000" "1000110001001011" "1001111111000010" "1001110110101010" "0001100000011001" "0001100100100100" "1001110001000010" "1010001001000100" "1001111011010010" "0001110110001011" "0001110010000101" "0010010110001010" "0000110000011101" "0001000001101000" "1010000111000001" "1001000010101001" "0001101101111001" "1001001110110101" "1010010000100001" "1010001000101001" "1010001101111110" "0010000110000001" "0001000110111110" "1010010100011101" "1001111000011010" "0001100100001001" "0001111000100111" "0010000111010100" "0010001001110100" "0001100100010001" "1010000011110000" "0001111101111100" "1001011111100001" "0001100101000011" "1001100111110110" "1010000010001011" "1001110110111000" "0000110011000000" "0010010101100011" "0010001001101000" "0010001000100100" "0001010001101000" "1001101001001001" "1010000000100010" "0001100010101110" "1001010010101001" "0001011110011001" "1001110000100101" "0001110000110010" "0010000100100010" "0010010001000011" "1010000011110100" "1010000001011000" "1010001111101001" "0001111110100011" "1001101111011110" "0001010101101101" "0001100010000010" "1001110011111001" "0001111111100010" "0010000011010110" "1001111100001100" "1001110011110011" "1010000001001000" "1010001000111011" "1001110000000111" "0010000111110001" "0001111101010100" "0010000100100000" "0001110101101001" "1010001110110010" "1010000011101101" }
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
set ID 323
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTSbVr
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "1001110001111001" "1001101111110101" "1001101100011101" "1001110010011001" "0001100011000010" "0001110000001110" "0001110100010011" "0001110101110111" "1001001011101000" "1001101101011011" "1001101110000111" "1001110000101010" "1001101010000100" "0001010001011111" "1000100100001100" "0000110000101001" "0001110101000011" "0001101000101001" "0001100011111011" "1000010010010110" "1001100110101111" "1001011110101110" "1001100101100000" "1001011011010111" "0001001010100011" "0001011011100100" "0001111000101010" "0001100100011001" "1001011110101111" "1001111101101011" "1001111110010110" "1000110100001100" "0001110011010110" "0010000000000001" "0001100110000011" "1001111101111110" "1001111110001101" "1001110111111000" "0001110010101011" "0010000101101010" "0010000000011111" "0001100000100101" "1001111001101001" "1001111001111000" "1001011010110110" "0001101001001101" "0001100010110010" "1001011001101010" "1001101111010101" "1001100011001101" "0001110100000101" "0010000000010011" "1001100000000101" "0001010011001111" "0001101001101000" "0001100110111101" "0001110100110100" "0001110111101110" "1001010011110100" "1001101111111011" "1001110011010111" "1001110111010101" "1000001000011001" "0001101011110111" "0001100011010011" "0001100000101011" "0001110100100101" "0001011001011001" "0001010101001001" "0000101000111010" "1001110100111101" "1001100111111100" "1001010110011111" "1001000011111011" "0001100101100100" "0001001101110100" "0001110000111100" "0001110000010100" "1000111010100111" "1001111111100100" "1001111101110111" "1001011011100101" "0001100111011000" "0010000001011000" "0001111100010111" "1001110001111010" "1001110100011111" "1001111110010001" "0001001010000011" "0010000010100001" "0010000010111011" "0001110010100011" "1001110110100111" "1010000101101100" "1001111000000110" "1000110101101100" "0001110000111010" "0001100001010011" "1001010111011101" "1001100111000000" "0001100000100011" "0001110110111111" "0001110111010101" "0000110101110001" }
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
set ID 324
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTSbWr
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "1001011000010110" "0001010100001011" "0001100010011110" "1000111111100001" "0001100011100011" "0001001110000101" "0000111011001000" "1001101011110100" "0001000001111001" "0001100101100001" "0001011000100100" "0001000001101010" "0001101100010001" "0001100110010010" "0001000011111111" "1010000010001100" "1001100000100111" "0001110000100010" "1001111111001010" "1001100110101101" "1001111110010011" "0010000000100000" "0010000011011100" "0001110000101101" "1001111101001100" "1010000110011010" "0001100101011100" "0001111110011101" "0001111011110001" "0001011001111000" "1010000000011010" "1001101100010100" "1001111010000011" "1001100101011011" "0010001001000001" "0000001101011000" "0001000000111100" "0001100000110010" "0001000010101001" "0001010111100101" "1010000010100101" "1010001000010100" "1001111000000001" "1001110000011000" "0001100111001111" "0001010110100000" "0010000100110001" "1000111110011110" "0001110011001111" "1001111100011111" "1001101010110111" "1001110011001000" "1001101111101100" "1001110111101001" "1001110111111011" "0001101111010100" "1001110010100111" "0001101111111010" "1001011101111011" "1001100011001010" "0000011100010100" "0001110100001011" "1000010111000100" "1001000110010010" "0001100110001110" "1001111110111101" "0001010011101010" "1001110110100001" "1001011111000010" "1001110010001110" "1001100110011001" "1000110010000110" "0001110100100001" "0001111100001000" "1001101010100101" "1001101100111011" "1000101101101000" "1001111001010110" "0010001100010001" "0001101100110100" "0001010000101111" "1001101001110010" "1010000010111110" "1001100000000011" "0001111100101010" "0010000000110111" "0001111001011000" "1001101111111001" "1001110110010110" "0001111100001011" "0001110000111100" "1001100110110010" "1001110101000010" "1001000011011010" "0001101101011110" "0010000011001000" "0001111110110000" "0001101000111110" "1001000000010110" "0001101110101001" "1001011101000011" "1001111000101001" "0001011001011000" "0010000011110110" }
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
set ID 325
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTSbXr
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "0010010001011100" "0001111011101100" "1001010101000100" "1010000110110101" "1010001001100001" "1001101001010011" "0001111101001110" "0001111010100000" "0001010110101101" "1001101111111101" "1001110010100101" "0001101101001101" "0010000011001101" "0001010111101100" "0001101011000010" "1010000110101000" "1010000001000001" "1001110110010100" "0001110001100101" "0010001110010000" "0001110111100001" "1000110101110101" "1001110101111000" "1010000000101110" "0001011111100111" "0001110111101111" "0001110011110010" "1010010001010010" "1010010011011110" "1010001000100100" "0001110100000011" "0010010000111101" "0010001110100101" "0001110100110100" "1010001111010011" "1010010010001101" "1010000101000111" "0001101111000011" "0010001001001100" "0001110101101001" "1001010110000111" "1010001011011100" "1000110110100011" "0010000010100111" "0001110111110100" "1001101100100001" "1010001100000111" "1010000000000000" "1001010111001111" "0001110010010111" "0010001111001110" "1000100011001001" "1001100111010111" "1010001111010111" "1010001100011101" "1001110011001100" "0001100010111001" "0010000010000101" "0001111100101001" "1001010010010010" "1001111100000010" "0001100010000000" "0001011001010000" "0001011101001100" "0001100000100011" "1001110101110001" "1001110000000110" "1001110111011101" "0001100100101001" "0001110111011000" "0010000110111101" "0001101000100000" "1001111011010010" "1010000111001101" "1010000100011000" "0001111000100010" "0001111101010010" "0010000010010100" "1010010000101110" "1010000001110000" "1001000110001000" "0010001110000100" "0010010100011101" "0001101101101111" "1010001111010100" "1010001011001011" "1010000100101100" "0001100010001111" "0010001101100010" "0010010001111011" "0001101110111001" "1001010111101101" "1001110110000001" "0001101010111010" "0001110100111101" "0001111111101111" "1001111010100000" "1001111100110111" "1001111100000000" "0001101000110000" "0010010000000100" "0001110101001010" "1001110100110011" "1010001001011111" }
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
set ID 326
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTSbYs
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "1010001110001001" "1010000001101100" "0001101101110111" "0001110111011110" "0010000001010011" "0001110010000010" "1000101100101101" "1000111110001110" "1001010100001000" "0000100101100000" "1000100101100000" "1001101001100110" "0001100100111000" "1000111111001000" "0001110000001111" "0001011110000101" "0001010101011000" "1001011100100100" "0000111101111001" "1001100000011100" "1001111010101110" "1001110011000110" "1000110001110101" "0001110000000111" "0001100101110001" "1000011011100010" "0001011110110010" "0001100000101011" "1001100011100101" "1010000000001000" "1001101010101001" "1000001100010101" "1001011000111110" "0001100101111100" "1001010110000000" "0001100010000110" "1001010001100001" "0001010111000000" "1001010100000000" "1000100110000001" "0001111011000010" "0001011000101011" "0001101111100011" "1001101001000000" "1001110111010101" "1001101011101100" "1001000110110110" "1001011001010000" "1000011010011110" "0000000110100011" "1001001100000001" "0001000001011100" "0001110100011011" "0010000010101100" "0010001100101011" "0001110111011010" "1001110010000010" "1001010111111000" "1001110100110101" "1000111010100111" "0001011101110010" "0000111111000000" "0001000000111000" "1001100101000000" "0001100000001101" "0001101000000001" "0010000101110010" "1000101011000000" "1001110011101000" "1001100010101001" "1001111011111000" "0001010011011010" "0001010101111000" "0001100000100010" "0001101000110010" "0001100010010101" "1001011011010010" "1001100001110110" "1001011101110000" "1000001111101111" "1001110010001100" "1001100010010101" "0000111010110011" "0001110011101001" "0001000000110100" "0001010111011001" "0000100101110001" "0001101100000101" "1001110010101101" "0001000000110110" "0001011111111110" "1001010101000010" "0001110010010010" "0001100010001001" "1001110100110010" "1001100110111001" "1001110011000011" "0001100101110001" "0001000000001110" "1001010001010110" "0001010111101111" "0001101110111101" "1001110001101010" "1001101001000000" }
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
set ID 327
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTSbZs
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "0010010010010111" "0010001110110001" "0001100111010000" "1001111110110110" "1010000110111111" "1001111000011010" "0001011111011100" "0001111010100011" "0001101101100000" "1001110000000101" "1001100000010100" "1001101000001101" "0001001000111010" "0010000000100001" "1001101111100111" "1010000000001101" "1010000001111000" "1001011000011001" "0001111011000111" "0010001110000110" "0010001000101101" "0001100101000010" "1001101010110000" "1001100100010101" "0001110101101010" "0010000000010101" "1010000000010110" "1010001110010011" "1010000001010100" "0001110011101100" "0001110110011000" "0001111111111110" "0001000001111001" "1001101010111010" "0001010010000010" "0000111111100110" "0001110111010101" "1001111101111011" "1010001001000101" "1001110010000000" "1001100111000111" "1001001001101000" "0010000101100110" "0001011110001110" "0001110000011101" "1001010010111111" "1001110010111101" "1001110010111001" "1001111111111001" "1001101100101011" "1000111010101111" "0010000011100100" "0001101000111011" "1010000101110100" "1010001100100111" "1010000111010001" "0001011000110000" "0010000000010110" "0010000011101011" "0001100110100000" "1001111010111111" "1001110111011001" "0001001010010110" "0001110110101110" "1001101111010000" "1001100110011010" "1010001101000100" "1001100111100101" "0001111110100011" "0010000001111001" "0010000011010100" "1001011001101111" "1001111100010100" "1010000101110110" "0000110000010100" "0001010110111010" "0001110001110010" "1001001100111110" "1001110011010110" "0001010101001001" "0010000010101000" "0010001101010010" "0001110110100010" "1001001011010001" "1001001101111011" "1001101001111001" "0001000010110000" "1001111010111001" "1001100011000110" "1010000100111000" "1001110010001100" "0001101101101100" "0010000100101100" "0001110111101101" "0001100101110001" "1001000010001000" "1001111000110001" "1001110101011100" "1001110110011110" "0000101101001111" "1001110010000011" "0001111010010000" "0010000100011001" "0001011010100100" }
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
set ID 328
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTSb0s
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "0001101011011100" "1010011111101101" "1010000010000100" "0010100001111000" "0001100101111001" "1010010010110110" "1010111000000011" "1010101100011011" "0010100000100000" "0010110001001111" "0010101001010001" "1010001000111011" "1010110111000110" "1010110000101000" "1010011010001101" "0010101111011110" "0010110010110011" "1000110001101000" "1010110001100001" "1010110100100011" "1001110010011001" "0010101100111000" "0010110011011100" "0010100101011000" "1010101000100111" "1010110101001000" "0001101010110110" "0010101000110100" "0010101110100001" "0010100101010001" "1001101100110001" "1010100011101010" "1010011001101111" "1010011100001110" "1010100111100101" "1010011101101100" "0010100001100101" "0010101111011010" "0010110101110000" "0010011100110010" "1010100001100011" "1010110100001100" "1010110100000001" "1010010100001111" "0010101100011110" "0010110011111101" "0010101011001100" "0010001000001100" "1010010100011011" "1010001110111110" "1010100000110001" "1010011100111101" "0010010010101101" "0010010100101001" "0010001110100111" "1010001110010001" "1010011111111100" "1010100111000010" "0010010010001111" "0010101010000101" "0010110000111110" "0010011100010101" "1010011110111011" "1010110101101000" "1010100101001001" "0010100010101010" "0010110000100111" "0010101100001101" "1010001011110110" "1010110010100111" "1010101110010101" "0010100001000100" "0010110111000111" "0010100110110111" "1010011011101000" "1010110100110110" "1010110010101101" "1001101110111111" "0010101010111000" "0010010001101111" "1000111101011111" "1010011111010101" "1010100100001111" "1010010000011001" "1010100001000001" "1010000000110000" "0010011011001000" "0010100010101000" "0010110001000010" "0010000011100011" "1010011110000110" "1010110011111011" "1010110110100111" "1010010010101001" "0010101110011010" "0010110001110000" "0010101100110110" "0001111101010100" "1010001011100001" "1010101000000001" "1010100010110011" "1010001100101100" "1010001011111010" "0010101010100110" }
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
set ID 329
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTSb1s
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "0010110101010000" "1010100010001110" "1010111111001110" "1010111011100111" "1010100100100011" "0010101001000011" "0010111010111000" "0010110111011000" "0010010001101001" "1010101010110001" "1010110101111000" "1010101001010000" "0010000010000101" "0010110011001110" "0010110110011001" "0010100011110100" "1010011011110001" "1010111001111110" "1010111001111011" "1010010110111011" "0010110000111010" "0011000010000010" "0010111100101110" "0010001000001101" "1010111011100010" "1011000011000000" "0010100110001101" "0010111010001000" "0010110111111100" "0001110100000011" "1010110100011010" "1010110010000001" "1010010010010001" "0010101000110101" "0010110000111011" "0010001010000001" "1010011110011101" "1010101011011110" "1010100110110111" "0001110111100101" "0010100101000110" "0010100001110100" "0010010110101010" "1010010100011110" "1010011101101111" "1010011000011111" "0010010010101111" "0010100111111011" "0010010110000110" "1010010001101011" "1010101011111000" "1010101011110111" "1010111110110011" "1011000001000010" "1010101100011000" "0010100011011011" "0010111011111110" "0010111010100011" "0010100010110111" "1010100111110010" "1010111001010100" "1010101110110110" "1001110000101111" "0010101010110000" "0010110100011010" "0010101100011010" "1010010000011000" "1010110101000111" "1010110111010110" "1010101000000010" "0010101001011110" "0010111100101010" "0010111010110001" "0010000101011111" "1010110111000011" "1011000001010100" "1010110111101100" "0010011100001010" "0010111101111011" "0010101000001110" "1010101100011011" "1010110111000000" "1010101001100100" "0010001001100000" "0010110000101011" "0010101100011010" "1010001000011001" "1010110001010100" "1010101010001010" "0001110110101101" "0010100101100101" "0010101101010011" "0010010001000111" "1010000010111000" "1010100110011111" "1010011010111110" "1001111111101110" "0010100101111100" "0010010101000010" "1010001011011010" "1010100001011011" "1010100111101111" "1010011011111011" "0010011010101011" }
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
set ID 330
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTSb2s
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "1010001001010011" "1001010001110110" "0001111101010010" "0010001010111100" "0010001001000001" "0001001010100001" "1001110110010100" "1001100000011100" "1001110101110100" "0001001111111111" "0001110011101000" "1000111011100110" "1001100101101001" "0001110001000000" "0001100011111110" "0001110000011111" "0001101000001001" "1001100000011101" "1001101110111000" "0001100110100010" "0001001010000111" "1001110010010100" "1001111011011101" "1001111110100011" "1001101001011000" "0010000010110100" "0001100001110010" "1001110000110011" "1010001010011001" "1010000010110010" "0001111100110000" "0010001000100101" "0001110100000000" "1001110001110101" "1010000100010010" "1001111111011001" "0000110011110011" "0010000100111110" "0001111100010110" "0001110000110011" "1001011101000011" "1001110010010000" "1001110010101101" "1001110001001011" "1010000000110100" "1001110001110110" "1000101100101101" "0001110010110010" "0010000101100110" "0010000011101110" "0001100101011100" "1010000000110100" "0001111101010011" "0010000111001110" "0010001100001100" "0001010111010110" "1010000001011000" "1010000100100100" "1010000011100011" "1000101110101011" "0001110011100110" "0001000110100101" "1001011011111101" "1001000010100101" "1001010010101011" "0001101011110111" "0001111011010011" "1001100000101001" "1001111000111100" "0000110001111101" "1000111101101100" "0001010110111101" "1001100110000001" "1001101000100100" "1001101001000110" "0001111011001001" "0001110110100111" "0001110000110101" "1010000111101011" "1001111001000100" "1001010111110111" "0001111111001000" "0001111111110111" "0000100111110111" "1010000101110100" "1010000000011110" "1001101100000000" "0010000110000001" "0010000001110101" "0001110001100111" "1001100111010010" "1010000101000001" "1001111101000100" "1001100001010001" "0000011011100010" "0000111011101110" "0001100001000100" "0001110010010111" "0001111100111000" "0010000010001011" "0001011000010000" "1001111100110100" "1010001011011000" "1010000110111011" }
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
set ID 331
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTSb3s
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "1010011111110001" "0010011101001000" "0001101110011100" "0010100110110111" "1001010001010110" "1001110101110100" "1010000111000000" "1001110010010010" "0001110000010100" "1010000101101100" "0001011100000100" "0010010011000001" "1010010101001111" "0010100100100000" "0000100000010000" "1010011011100110" "1001110100011000" "0001111111011000" "0010001001100000" "1001100001101110" "0010010010010111" "1010010110111101" "0001111010011010" "1001101000001111" "1010001101101001" "1010000110010001" "0010011011110100" "0010011010111010" "1010000110111011" "1010011001001110" "1001110110111010" "0001111010111001" "1010010001001010" "1010011101111111" "0010001011000010" "0010001011011000" "0010011100000010" "0010010110000110" "1010010001111010" "0001100110100111" "1010010111111110" "0010000100010110" "0010010000110001" "0001011100111100" "1010010001110011" "0001110111100100" "0010100010100100" "1010010100100110" "1001110010011001" "0010010100010000" "0001101111101011" "1010010110100110" "0010100011101111" "1010001010111000" "1010010000111010" "0010010100000010" "1001111001011000" "0010000011011001" "1010000001111001" "1001100001110110" "1001110010001011" "1010010101100001" "0001101100100101" "1010000110100111" "0001101110111011" "1010001111111110" "1010010101001101" "0010010100111111" "1010000101011000" "0010100011101110" "1010011011101111" "0001111011111110" "0010010001101100" "1001101010111110" "0001110001100101" "1010001000011100" "1010001000101001" "1010100100010110" "1010011000011110" "0010001011010101" "0001110011111010" "0010000010011110" "0010001000000011" "0010010010111001" "0010100010100111" "0010000001010000" "0001110001110000" "0001111100011111" "1001111011010110" "0010100000011001" "0010001000000001" "1010100001011111" "1010100010111000" "0010100101100110" "0010010100000011" "0001101111100110" "1010011101000101" "0001111100000011" "0010001101001010" "1010010111110111" "1010001001110111" "1010010001011110" "0001111000110110" "0010010111101110" }
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
set ID 332
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTSb4t
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "1011000011010010" "1010110101110010" "1010011110000110" "0001111011101100" "0010010011111111" "0010100001000100" "0010101101100100" "0010111001011100" "0010110101001011" "0010010010000110" "1010101101000110" "1010110111001111" "1010110111001100" "1010101010011011" "1010010000001101" "0010011011101001" "0010101101111010" "0010110011000101" "0010110101001111" "0010101010101101" "0010000000001101" "1010100101111011" "1010110011101110" "1010110111010010" "1010110100010010" "1010100101010101" "0010101110100010" "0010110101101010" "0010111000000011" "0010101101010111" "0001111010100011" "1010100100110000" "1010110001001111" "1010110001110010" "1010100110010110" "1010100001001101" "0001100100010000" "0010100110110000" "0010110010101001" "0010110111110110" "0010110010001101" "0001111011110000" "1010101011000100" "1010110110010000" "1010101110111111" "1010100111110001" "1010011000000001" "1010010000111110" "1001011010011101" "0010100111000001" "0011000000100010" "0011000011110001" "0001111111111110" "0010110000111001" "0010110100101010" "0010101110101110" "0010101000001001" "0010101010010111" "0010100100110001" "1010001001011100" "1010110001100001" "1010111000100010" "1010110110010111" "1010011100011011" "0010010101110010" "0010110010010111" "0010110010001001" "0010110010101100" "0010100111000110" "0010100001010100" "1010010010100110" "1010110010001001" "1010110111011010" "1010110110011001" "1010101100110011" "1001001100001110" "0010101010010110" "0010110110111100" "0010110000101101" "0010001001001101" "1010100010011111" "1010110011110110" "1010110111001010" "1010110100001111" "1010011101101011" "0010000001010101" "0010101010100111" "0010110000100111" "0010110010111111" "0010110000000100" "0010011011100011" "1010001101110001" "1010110100001000" "1010111100011001" "1010110100100110" "1010010101101000" "0010011110111000" "0010100101110010" "0010011010101010" "0010100100001000" "0010110000110111" "0010111001001011" "0010101000111010" "1010100110010110" }
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
set ID 333
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTSb5t
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "0010010100001010" "0011000101101000" "0011000111110001" "0010101110110000" "1010110011101100" "1011000010000111" "1010110010100101" "0010011011010101" "0010110100000101" "0010110001110010" "1001111110101101" "1010110011110111" "1010110000000110" "1010010100010110" "0010110100011111" "0010111011111100" "0010101110011100" "1010100010010011" "1010111100111111" "1010111011010010" "1010101100000000" "0010101010100000" "0010111111011111" "0010111010110011" "0010100010111000" "1010110010010010" "1010111010011011" "1010000010000011" "0010110010100000" "0010110110011011" "0010110011011001" "0001110010000111" "1010100111111100" "1010101010010101" "1010100001111010" "1010010011001001" "1010010011001111" "1001010001100000" "0010011010001000" "0010110000010011" "0010110000110000" "0010011100100000" "1010100100101110" "1010110100010001" "1010110110001000" "1010011010010100" "0010010101001110" "0010101100010100" "0010101110001111" "0010100101000111" "0010010100101001" "0001011011111010" "0011000111111010" "0010111000001100" "1010101001101110" "1011000010111011" "1011000001001000" "1010010100011000" "0010110011000111" "0010111010001111" "0010100010010001" "1010101101111000" "1010110111011100" "1010100000111111" "0010100111110010" "0010111000010001" "0010110001110010" "1010011100111100" "1010111001000101" "1010111011011110" "1010100110101101" "0010100111011001" "0010111011011100" "0010111101111010" "0010100111100001" "1010101111001100" "1011000001101100" "1010111110110110" "0010110011110010" "0011000000011001" "0010110100100010" "0000100001111101" "1010101110011000" "1010110100100001" "1010101010101011" "1001110110000100" "0010000001011010" "0010011111001000" "0010011110100100" "0010101011100001" "0010100011100011" "0010001011001010" "1010011011010010" "1010110100101101" "1010110101011000" "1010001111110100" "0010100110011100" "0010110100100010" "0010110010110100" "0010011101010110" "1001110100110010" "1010011110100011" "1010101010001100" "1010110110010100" }
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
set ID 334
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTSb6t
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "0001010010111111" "1001101011100001" "1001110111100011" "1001110000010110" "1001100101000011" "0001011111101010" "0001101101010110" "0001101111001001" "0001100100001000" "0001010000001111" "1000111111110010" "1001010110111111" "1001100100011000" "1001001011100010" "1000100101010111" "0001000100010000" "1000111000101001" "0001001010010000" "0001010110100100" "0001011010010011" "0001100100010100" "0001010011011010" "0001000100111000" "1001010000010100" "1001101010010011" "1001010001001011" "1001001111000100" "0001001110011010" "0001001010111010" "0001011010011001" "0001000111110101" "0001010110001001" "1001001111100001" "1000111101000010" "1000110110111100" "1000111011100010" "1001100001001000" "1001100101001010" "1001010110000001" "0001000011100100" "0001100010010100" "0001101010000011" "0001101101110110" "0001010001011100" "1001000000010000" "1001100110000101" "1001100111010110" "1001101111100011" "1001100101100010" "1000010110110100" "0001101011000000" "0001110010010001" "1001110100111000" "1001111011101101" "1001100011010000" "0001101101000001" "0001110001110000" "0001101101111100" "0001100111001011" "0001000100111010" "1001100100100010" "1001101010100111" "1001100010001000" "1001110000000011" "1000010011001001" "0001001010101011" "0001011000100101" "0001100100101110" "0001010011000001" "0000111100111110" "1000001110111100" "1000011101111001" "1001011100001000" "1001011001111101" "1001100110110011" "1001011001010110" "1001010111001001" "0000110001100100" "0001011100011001" "0001100101000101" "0001010111011101" "1000101001101100" "1001100000111000" "1000000111000101" "1001010000000111" "1000101110110011" "1001100100010110" "1000110100111010" "1001000111010001" "1000100101000111" "0001100110111011" "0001100001111010" "0001100011111011" "0001101011110011" "1000110011101110" "1001100110111001" "1001101000101010" "1001101100011010" "1001011111001011" "0001001100111110" "0001100000011111" "0001100101101110" "0001110110010011" "0001101101110011" }
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
set ID 335
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTSb7t
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "0010110010110001" "0010101010001101" "1010010011101011" "1010110001100000" "1010110011111011" "1001101100001100" "0010011010101111" "0010100100011111" "1001110010110101" "1010100110100000" "1010100001000010" "0010010101000111" "0010110001001000" "0010100100001011" "1010010110111100" "1010110001110000" "1010101110001101" "1010010101100100" "0010010100000100" "0010100000100011" "1000110100011101" "1010010100110010" "1010000110111111" "0010010111100111" "0010100000010001" "0001110011011001" "1010110000011100" "1010100101000111" "0001111101111000" "0010100001001011" "0010100100110101" "0001001101010101" "1001110101100111" "0010000100001111" "0010011000000101" "0000111100000111" "1010011110100101" "1010101010111100" "1010100010011100" "0010000100111110" "0010101001001101" "0010101001100111" "0001010000001100" "1010011011011100" "1010001001010010" "0001110111001111" "0010001111000110" "1010001111111110" "1010011010101011" "1010100011000000" "1001100100110010" "0010100000000101" "0010000111011100" "1010110011001000" "1010110110001000" "1010011111110000" "0010100000001111" "0010110000111001" "0010100100011111" "1010011010111001" "1010100100110101" "1001111011100101" "0010100100010001" "0010101011000111" "0001110111111011" "1010101101101000" "1010110100000110" "1010011111110111" "0010100000001100" "0010110000101001" "0010100011001011" "1010001000110000" "1010010010101110" "1010001111011100" "0010000111000110" "0010010001000110" "1010010010011111" "1010101100100100" "1001111011100011" "0010100000110011" "0010101010001001" "0010011111001000" "1010001101010111" "1010000110100000" "1010001000000101" "0001010011111001" "1010000110101110" "1010011101110110" "1010011101001110" "0001110100011101" "0010100000011110" "0010101110000001" "0010011001010010" "1010011010100110" "1010100000111110" "1010010111000010" "0010001000111011" "0001110110000110" "0001101000110001" "1010010110111010" "1010001110000101" "0010011111111100" "0010100010110001" "0010101000010100" }
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
set ID 336
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTSb8t
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "0011000011001001" "0010111011110010" "1001101010011110" "1010110110111010" "1011000001001111" "1010111000100001" "0001111110010001" "0010110110011001" "0010111110111001" "0010110110100001" "0010001000011111" "1010100110000010" "1010110001111111" "1010100101100101" "1010001001000010" "1001111111000110" "0010011100101111" "0010100000110001" "0010011100011110" "0010011000001100" "1010000000101011" "1010001011001111" "1010011101001100" "1010010111111100" "1001110101000101" "0010100101000100" "0010100001110111" "1010101101111100" "1010111010011010" "1010110100000101" "1001110101110000" "0010111100000010" "0010111100110001" "0010100000001110" "1010101010100010" "1010111011110111" "1010101000110011" "0010100110100010" "0010101001110001" "0010000100000101" "1010110000010100" "1010110101101101" "0010000010001111" "0010110111110111" "0010111111010010" "0010010111000110" "1010110011001101" "1011000001100111" "1010110110101100" "0010000111010111" "0010111110011011" "0010111001000111" "0001111010111100" "1010111001111011" "1011000011101000" "1010111010001110" "1010000000110111" "0010111001111000" "0011000001110110" "0010111001000111" "1000111001100000" "1010101100011011" "1010111001011010" "1010110100101111" "1010001101010101" "0010011110000010" "0010101101100011" "0010100111111110" "0010010011110100" "1010001001100000" "1010000001101110" "1010100000111100" "1010011000011001" "1010011011111011" "1010000010111000" "0010100110100101" "0010110001000011" "0010100110101101" "1010110011100000" "1010110010001000" "1001111111000010" "0010110110110011" "0010111101101100" "0010101001011110" "1010100011001001" "1010111001111010" "1010110101100010" "1001110011100001" "0010110000110000" "0010110100000110" "1000001011100010" "1010101000101001" "1010100110101010" "0010101010001101" "0010111000010101" "0010101110000000" "1010101010000101" "1010111111001100" "1011000000101010" "1010000110010000" "0010111011011010" "0011000000000000" "0010101110110101" "1010100100000010" }
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
set ID 337
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTSb9t
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "0011000101100001" "0010111101011111" "1001100111000011" "1010101101001000" "1010101111110100" "1010111001010101" "1010011010100111" "0010100010110111" "0010110111100001" "0010111010011100" "0010101011011100" "0010100100010110" "1010011011101011" "1010110001100001" "1010101001110011" "1010100100100001" "0001110101110101" "0010110101100010" "0010110010111011" "0010110011011111" "0010010110110011" "1010101110001101" "1010100000110011" "1010111010010001" "1010110101000110" "1010011010101010" "0010110100111011" "0010110010111000" "0010100011100010" "1010011001000111" "1010110101010101" "1010110010000111" "1010101001111001" "0010100100011000" "0010110111111010" "0010111010011110" "0010110110011000" "0010100101010111" "1010100011101110" "1010011010001111" "1010110000010111" "1010110010110101" "1010110000000110" "1001110010101010" "0010011100010111" "0010110011000011" "0010110111100010" "0010110010110001" "0001111111111101" "1010110111100101" "1010111110010010" "1010111111111000" "0010001010011001" "1010110101101011" "1011000011110011" "1010110010100111" "1010110100001001" "1010001101011011" "0010110011111101" "0010110011111010" "0010101000110110" "0010010111110001" "1010010010010110" "1010111010011101" "1010101100000101" "1001100110100101" "0010000101010100" "0010110001100100" "0010101000010100" "0010111010011001" "0010110001010110" "1010000101000101" "1010110000000111" "1010010110001100" "1010101010010110" "0010000011110100" "0010000101101111" "0010111100011010" "1010000100101001" "1010101000010011" "1010111000000111" "1010111101110010" "1010100000101011" "1010001110111011" "0010110001001010" "0010111010110111" "0010110110010110" "0010100001111010" "1010101011100100" "1010111101010100" "1010110000101000" "1010100111001100" "1010100001101111" "1001111100001100" "0010100000011001" "0010110111001101" "0011000000001011" "0010101000111010" "1010101101000001" "1010110111010001" "1010111010001001" "1010111101100001" "0001101010100001" "0011000000110100" }
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
set ID 338
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTScau
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "1010011011001000" "1010110101011101" "1010110000101000" "1010101110010000" "0010010010110000" "1001110111110000" "0010011111001110" "1010000011010010" "0010011100001100" "0010100100111100" "0010010100010010" "1010011100011100" "1010011100100100" "1010111000110010" "1010010101000111" "0010010010000100" "0010101010001001" "0010101000000110" "1010011000101101" "1010100100010011" "1010100100010110" "1001110111110011" "0010011110110011" "0010001110110110" "0010010001010001" "1010100110010001" "0010000011111000" "0010010011010111" "0001111110000100" "1010100000110011" "1010000000000101" "0000000010010111" "0010110001101100" "0010101011001111" "0010000101000101" "1010100101111001" "1010110000101001" "1010011111100011" "0001110101110011" "0010011000110110" "0010000100100001" "1010010000101001" "1010101001000001" "0010100001111111" "0010100100010100" "0010110101100000" "0010001111000110" "1010101001100100" "1010111000101010" "1010111100111110" "1010101111101001" "0010101000100010" "1011000010010110" "1010011110110000" "0010011001101011" "0010100100111000" "0010101000010001" "0010011100111101" "1010001011010000" "0001100100010100" "0010010100001001" "1001010000000011" "1010100111111110" "1010010001001101" "1010011001100001" "0010010001101110" "0010101100010101" "0010011111111011" "1001100010011101" "1010100111101101" "1001111001111010" "1001110011010010" "0010101000110111" "0010101110011001" "0010010110001001" "1010010101100011" "1010011100110000" "1010011100010011" "0010011100111001" "1001110101101001" "1010010010010100" "1001100110110011" "0010101011101110" "0010011010000101" "0010010000001000" "1010100111000101" "1010100101111010" "1010101100111101" "1001101110010011" "0010110000011111" "0010100111110100" "0010011110111010" "1010000110100100" "1010101101011000" "1001110010001100" "0010100101100101" "0010100000100001" "1010011001000101" "1010101010011001" "1010110010001000" "1001110000101011" "0010110001111001" "0010111000110100" "0010110101000100" }
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
set ID 339
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTScbu
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "0001100000010110" "0001100111110111" "0001000100000011" "1000001001011100" "1001100000111000" "0001100011000011" "0001101100011001" "0001101000111000" "1001101001011100" "1001110010101111" "1001101000000100" "0000111011111111" "0001101011001100" "0001111011001100" "0001001000101011" "1001100110111011" "1001100111010110" "1001100110011101" "0001011111100101" "0001100111001011" "1001010011100010" "1001000100010100" "1001000001001111" "0000010010010110" "0000100011100010" "0001100110001110" "1000111111110010" "0000111000111010" "1000100110000001" "1000110100001000" "1001101000101000" "1001011110011100" "1001101001001011" "0000101100000011" "0001101011010101" "0001011100000011" "1001001111010011" "1001100101100100" "1001010000110001" "0001100011101101" "0001100111011010" "0001001000010000" "1001001111101010" "1001110011101000" "1001010100010001" "0000101001100100" "0001100110001010" "0000001110001010" "1001010111011010" "1001000101001101" "0001100110001001" "0001101110011011" "0001110100000010" "1001100111110101" "1001101010000001" "0001001101010111" "0001010111001111" "0001100001010000" "1000000100001100" "1001100011101000" "1001110010101010" "1001100010101110" "0001101101100111" "0001011111110000" "0001011110111110" "1001011111110011" "1001101000011111" "1001100101101010" "0001010110101110" "0001100110001101" "1001011100011011" "1001000100110100" "1001100110111001" "1001011100101001" "0001010000100010" "0001100110110111" "0001000100100101" "1001000000010000" "1001001101010001" "0001001111001010" "1000110011001101" "1001011001111000" "1001101010110101" "0001011001101010" "0001101000000101" "0001101101011100" "1001010000100000" "1001001110110101" "1001100100100000" "1000110100101101" "0001100100111101" "0001010011111001" "1001000011000101" "0000111111111011" "1001000110100011" "0001000001100010" "0001100100011101" "0001011001000011" "1001011000011000" "1001011010001011" "1001011100000111" "1000110001111101" "0001110000010011" "0001011001001111" }
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
set ID 340
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTSccu
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "1010100010010101" "1010101000010101" "0010000010011100" "1010001111011010" "1010100010011011" "1010011110111100" "0010000000111101" "0010100111000111" "0010110000111110" "0010010111011000" "1010101011110000" "1010111010110100" "1010110000001001" "1010010111111101" "0010101000001011" "0010110000011000" "0010010110101101" "1010011001111010" "1001110011010010" "0010100100100110" "0010010010001110" "1010011110001110" "1010110010100110" "1011000000011011" "1010101110010000" "0010101010001011" "0010111100011010" "0010101110001100" "1010101010111111" "1011000001001010" "1010110100111001" "1010110100001001" "0001100000000010" "0010101011001011" "0010110110110111" "0010111000000101" "0010101100010010" "1010010111011000" "1010110111001001" "1010111110100101" "1010110100010000" "0001100001001000" "0010110100111101" "0011000001000110" "0010110000011101" "0001011000001100" "1010111010011111" "1010111001110110" "1010101001111000" "0001110111111000" "0010100010011011" "0010110000110111" "1010001000001010" "1010010101001100" "0010000000101101" "0010011011110010" "0010000011101111" "0010100001111010" "0010100000100010" "0010010110001110" "1010011101000111" "1010110100100010" "1010110010011010" "1010001001101011" "0010100111110111" "0010110101100101" "0010101000011111" "1010010111001101" "1010011001111100" "1010001000101001" "0010000101110101" "0001110100011110" "1010101100111010" "1010110011111110" "1010101111101001" "0010100101000101" "0010110101010010" "0010111001010101" "1010110100010011" "1011000000011011" "1010111011100000" "1010110000010011" "0010100111001011" "0010110110000111" "0010110000100100" "0010110100011001" "0010011010100111" "1010011000010000" "1010110100111101" "1010111001111100" "1010110101100011" "0001110011100110" "0010111010010000" "0011000001100011" "0010110111011011" "0010010101101000" "1010110010101011" "1010111101001001" "1010100011111000" "0010001001100101" "0010110010011110" "0010110011100000" "0010100101111111" "0010001100001011" }
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
set ID 341
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTScdu
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "0010100111000001" "0010111000000010" "0010110001011111" "0010100110111011" "0010100010001010" "0010101001111101" "0010010111100110" "1010011001100000" "1010110111110100" "1010111101110001" "1010110010100011" "0010000101111000" "0010110010000110" "0010110001111000" "0010101000001001" "0010011111110000" "0010100010101100" "0010001011110000" "1010010011111101" "1010110000011101" "1010111000110001" "1010110011001100" "1010100010101000" "0010010000000001" "0010100101111011" "0010101101100010" "0010110110010101" "0010100100001001" "1010100001000111" "1010111110001101" "1011000001110011" "1010110110101001" "0010000110111111" "0010110100000010" "0010110110101000" "0010100010100111" "0010010101001011" "0010100001101111" "0010100111001100" "0010010111101010" "1010101000110000" "1011000000001101" "1011000001010001" "1010101111100100" "0010101110000010" "0010111100001111" "0010111001110001" "0010100110110010" "0010001110110111" "0010001001010010" "0010001101010011" "1010100110001101" "0011000001110000" "0010101000100010" "1001101110101011" "1010010110001011" "1010000110011101" "1010011010111101" "1010110001111000" "1010111001101001" "1010101111011001" "0010011111010010" "0010110111001100" "0010111101010001" "0010101110110111" "0010000101110101" "1010011000101011" "1010011011111001" "1010100010010011" "1010101010110110" "1010110001111110" "1010110000110110" "1001110101101111" "0010100001011100" "0010110010011010" "0010110011111000" "0010110000111011" "0010100011110111" "1010101011111010" "1010111101110011" "1011000000100101" "1010110010011010" "0010010101101010" "0010111010101110" "0011000000000110" "0010110010110110" "0010001000110000" "1010011110000101" "1010001100101001" "0001011010010111" "1010101000011110" "1010110101000001" "1010111011111101" "1010101101111010" "0010101011011010" "0011000001101110" "0011000000111101" "0010101101111100" "1010011011101101" "1010110000111101" "1010101000100111" "1010011010110001" "1010110100011111" "1010111010000101" }
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
set ID 342
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTSceu
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "0010000101101001" "0001011101000010" "1001111111100010" "0001010111000011" "0010001011111101" "0001101011001111" "0001100101100010" "1010000000110100" "1001110011110011" "1001011101100011" "0010010000000100" "0010010000101100" "0010001101010011" "0001110000100100" "1001100110001010" "1010000101110100" "1001110110110110" "0001110000110011" "0001110110001011" "1001100100011000" "0001111001101001" "1001101101001111" "0001100000011011" "1001010111100110" "1010000001000001" "1001110001000101" "1001101011110000" "1010000010010111" "1001101011011110" "0001101001101010" "0001100111011000" "0010000111111001" "0010001101000100" "1001100101111000" "0010000000001111" "0001111011001110" "1001101010101110" "0001011010100011" "1010001011111100" "1010000001100000" "1001011111100011" "0001010001011101" "0010001011001100" "0010000100111010" "1001101000000110" "1010001101100011" "1010001010011100" "0001110111111111" "0001111111011101" "0001101111100111" "1010001001000010" "1010010010110000" "1010000001010000" "1001110010010111" "1001100110001000" "0001010001101001" "0001110010111111" "1001110111001000" "1010000010110001" "1010000010001111" "0010000001010011" "0010001000001111" "0010000111010110" "0001110100001011" "1010001000010101" "1010001100010001" "1010000011000100" "1001011100001110" "1001101000110001" "0010001111011000" "0001111101111111" "0001001000000011" "0001010101010110" "0001100111110001" "1010000101100111" "1001101001110100" "0000011000111010" "1000011100100101" "0001010101010101" "0001100010000111" "0001101011100101" "0001100011111011" "0010000011111100" "1001111000011110" "0010000001000110" "1001100001010110" "1001100011000110" "0001110010100100" "1010000011110111" "1010000100000110" "1001001011001111" "0001001101101010" "0010001000000000" "0010000010100000" "1001010001010110" "1010000110111010" "1010000001101010" "1001100001110111" "0001000101101100" "0010000000111000" "1001100010001011" "1010000111011011" "1001100110100010" "0001010100110010" }
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
set ID 343
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTScfu
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "0010011001110010" "0010101111000111" "0010110111010100" "0010110101101110" "0010100001100000" "1010100111000111" "1010111100110010" "1011000001011111" "1010111001001110" "0010011101110101" "0011000001001011" "0011000101100101" "0010111101000101" "1010011100100011" "1010111100110000" "1011000010011011" "1010111100001100" "1010101000010101" "0010100101100001" "0011000001111001" "0011000000101101" "0010110110100011" "1001100110001011" "1010111010010001" "1011000000110010" "1010111011001011" "0010101001110010" "0010110011101010" "0010101010001101" "1001100011100001" "0010010000010001" "0010010100001101" "0010010010110011" "1010010001010000" "1010110111011001" "1010111111000000" "1010101110100110" "0010101001100011" "0011000001101111" "0011000010100110" "0010101010110011" "1010110001100000" "1011000001010110" "1010111011001010" "1010100010101000" "0010101111000010" "0010110100011101" "0010110100100010" "0010100001011100" "1001000010000001" "1010101011010101" "1010101100101100" "0010110000110001" "0010100011111010" "0010010010110101" "1010100110111101" "1010111001001110" "1010111110001001" "1010110010110011" "0010100001001111" "0011000000001101" "0011000100010111" "0010111000100101" "1010011110011101" "1011000001001000" "1011000011110110" "1010111011111011" "1010011001010101" "0010110111000100" "0011000001110011" "0011000001001100" "0010110001101100" "1010100100010000" "1010111110101010" "1011000001011110" "1010111000101011" "1010100000010110" "0010110001111011" "0010110010000011" "0010011101100001" "1010011011001001" "1010011101101111" "1001010101111000" "1010010100110111" "1010110001010001" "1010110001101010" "1010101110111010" "0010100000100010" "0011000000001011" "0011000011101000" "0010101011110011" "1010110001101010" "1011000010100111" "1011000000101010" "1010100110111000" "0010110101110111" "0010111101101010" "0010111011100001" "0010100101010101" "1010101000000001" "1010101110101001" "1010110000011010" "1010110001000110" "1010100110011101" }
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
set ID 344
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTScgu
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "1010010100101101" "1011000101111000" "1011001000000101" "1010101111000010" "0010110011111111" "0011000010011000" "0010110010111001" "1010011011100001" "1010110100011001" "1010110010000010" "0001111110110001" "0010110100000111" "0010110000010100" "0010010100100000" "1010110100101110" "1010111100010011" "1010101110110011" "0010100010101010" "0010111101010100" "0010111011101011" "0010101100011010" "1010101010110011" "1010111111111101" "1010111011001001" "1010100011001001" "0010110010011110" "0010111010110100" "0010000010100110" "1010110010101010" "1010110110101000" "1010110011101010" "1001110010010010" "0010101000000001" "0010101010100000" "0010100001111100" "0010010011001011" "0010010011100010" "0001010111010001" "1010011010000111" "1010110000011010" "1010110000111100" "1010011100110001" "0010100100111000" "0010110100011011" "0010110110010110" "0010011010100101" "1010010101010000" "1010101100101010" "1010101110100110" "1010100101010100" "1010010100101010" "1001010110101001" "1011001000001101" "1010111000010111" "0010101010001010" "0011000011001010" "0011000001010110" "0010010100100000" "1010110011010111" "1010111010100110" "1010100010100110" "0010101110001011" "0010110111101110" "0010100001001001" "1010100111111100" "1010111000100100" "1010110001111110" "0010011101011011" "0010111001011001" "0010111011110011" "0010100111000011" "1010100111101110" "1010111011110001" "1010111110010011" "1010100111101110" "0010101111100110" "0011000001111011" "0010111111010010" "1010110011111100" "1011000000100100" "1010110100110100" "1000011100000011" "0010101110100011" "0010110100101100" "0010101010111100" "0001110110000111" "1010000001100111" "1010011111001100" "1010011110101001" "1010101011101011" "1010100011101101" "1010001011110110" "0010011011010010" "0010110100110111" "0010110101100100" "0010001111101001" "1010100110101111" "1010110100101111" "1010110011000001" "1010011101100111" "0001110101100011" "0010011110111111" "0010101010100010" "0010110110100000" }
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
set ID 345
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTSchv
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "1011000101010101" "1011000000110100" "1010010000111100" "0010110100101010" "0010111100101100" "0011000000010111" "0010101011000100" "1010011100101100" "1010110111111100" "1011000000100011" "1010110100111001" "1010011001101011" "0010101010100110" "0010110010110010" "0010110101100000" "0010101111001011" "0001110100111000" "1010110100011000" "1010111000010100" "1010110111010111" "1010011111101010" "0010100000101101" "0010101100000010" "0010111010110000" "0010110011001011" "0001101110110011" "1010111010011100" "1010111001010110" "1010101101011001" "0010011111101100" "0010110111000101" "0010111011100111" "0010110111000110" "0010001001101100" "1010110101010110" "1010111111011100" "1010111110100101" "1010110010110100" "0010100001101001" "0010110010111011" "0010111010110000" "0010111000000100" "0010100111111001" "1001111111011001" "1010101010000101" "1010110101100011" "1010111010010010" "1010110101111111" "1010001101100011" "0010111011111101" "0011000011111111" "0011000010011110" "1001001110011000" "0010111000001000" "0011000100111011" "0010111100110011" "0010110001010101" "1010011010111000" "1010111000101100" "1010111110111100" "1010110100100110" "1010001001111110" "0010101001010101" "0010111100100100" "0010110010111001" "0010010111011011" "1010010011111101" "1010110011111111" "1010110101011000" "1010110101101011" "1010101000011110" "0010100001100011" "0010110101001000" "0010101101011100" "0010101011011000" "1010010010000101" "1010101010010100" "1010111011001011" "1010010001100111" "0010100101110101" "0010111001000010" "0010111101100011" "0010101111100100" "0010010100001001" "1010110001010100" "1011000000110101" "1010111111000100" "1010101001101101" "0010101011100000" "0010111111011101" "0010111010111001" "0010110011000001" "0010010010100011" "1010011111000111" "1010110101000001" "1010111001110100" "1010111000000010" "1010100011011001" "0010101011001011" "0010110111010010" "0011000010011100" "0011000000111000" "0010001011100010" "1011000000010100" }
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
set ID 346
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTSciv
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "1001111010010011" "1001111101100100" "0001101101101101" "0010000010000000" "0001110011010010" "1001010011100000" "1001111001101011" "1001110100111011" "1001100010010000" "0001101111001011" "0001100000001011" "0000100110001010" "0000110010110100" "1001010000011110" "1001010001001000" "0001101001000000" "0001110000011011" "1000011001111101" "1001011011010001" "1001101100111001" "1001111010101110" "1001100101011010" "0001010110010000" "0001110001011110" "0001010100110010" "0001010101000111" "1001110100111001" "1001110000100100" "1001100000001011" "0001011110111100" "0001101100011110" "0001011111000101" "0000010001100100" "1001011001011101" "1001010011001100" "0000101001100100" "0001100110000100" "0001101010100000" "0001000100001110" "1001010011010101" "1001100001010000" "1001100000010110" "1001100100000010" "1001001111100100" "0001010101110111" "0001101110001111" "0001110111011010" "0000110011010101" "1001101110000110" "1001101100101010" "1001110011110101" "0000111010010110" "0001011111000010" "0001101101011111" "0001111111000101" "0001011010011000" "1001110111000111" "1001111000011111" "1001101000111010" "0001100101101100" "0001110010000101" "0001101001010001" "0000110010011111" "1001101001101000" "1000001000111010" "0001011001001010" "0001110010100000" "1000111110000101" "1001010011100101" "1001110100100100" "1001110110011000" "1001011011001011" "0001010001000111" "0001001000000001" "0001011101111101" "0001100111100111" "1001101110100111" "1001110011011110" "1001110000111110" "0001110001000000" "0001110000011001" "0001100111100011" "1000100100110110" "1001100011110000" "1001100010101101" "1000111010101011" "0001100001000001" "0000100000100001" "0001000001111001" "0001100001011100" "1001101110010110" "1001011001101110" "1001011110111001" "0001001000001110" "0000110110111100" "0001100100000111" "0001110000110110" "0001100111101011" "0000111011010101" "1001110101110001" "1001110011101111" "0001011100101100" "0000101100110101" "0001101100110011" }
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
set ID 347
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTScjv
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "1010100101111100" "1010111011000110" "1010111101000000" "1010100100110010" "0010011101101001" "0010111011001111" "0010110110110010" "0010100011000001" "1010011101101011" "1010011010000011" "1010000001010010" "1010001100010100" "1010100111011100" "1010100010100001" "1010001000101001" "0010100011111011" "0010110110001000" "0010110011010101" "0010000101001010" "1010101110000011" "1010110111110011" "1010100011011101" "0010011110111101" "0010100101111001" "0010000010101111" "0010000100011010" "0010000001011000" "0010100001111011" "1001110111100101" "1010101010000100" "1010110001001111" "1010010110111100" "0010001101010100" "0010110000101001" "0010101001000111" "1010010000110111" "1010110011010111" "1010101000001001" "0010010001010100" "0010110010001111" "0010100001011111" "1010100100101000" "1010110000101010" "1010100111101000" "0010101001101010" "0010111000100011" "0010110001101110" "1010101100110110" "1011000000100110" "1011000000011111" "1001001011000100" "0010111011111110" "1010111011010111" "1010110101110100" "0010010101011111" "0011000001011010" "0010111000000101" "0010100010001010" "1010100000111111" "1010101110001010" "1010101010110101" "1010011101011100" "1010001011110011" "1010101001101101" "1001110111110010" "0010010101100001" "0010110101001111" "0010110101001011" "0010010111000111" "1010101111100000" "1010111101000111" "1010110010101001" "1001110101001110" "0010110000111010" "0010101101000011" "0010011100001100" "1010011101110001" "1010011001001001" "0010000100010111" "0001101111000001" "1010100100011110" "1010100101101000" "1001111111101101" "0010110010111001" "0010101111001000" "0010011000110100" "1010110100010001" "1010101001100000" "1010010011100011" "0010101010000110" "0010110001100001" "1000100011101010" "1010101000011001" "1010011000101110" "0010010110010100" "0010110101010111" "0010110100111101" "1010010000101100" "1010111101110010" "1010111110111010" "1010101011100001" "0010101110010110" "0011000110100011" "0011000001111100" }
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
set ID 348
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTSckv
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "1010011011011101" "0010100110001010" "0010101101011011" "0010100010101110" "0010001011110000" "1001111001100010" "1010000001100110" "1010001010010000" "1010100101101001" "1010101100101101" "1010011000100100" "0010100101100100" "0010111001100110" "0010111100101101" "0010100110010011" "1010101010001110" "1011000000100101" "1010111111010011" "1010100011101011" "0010101001010110" "0011000000011001" "0011000000000111" "0010101101110010" "1010010110011011" "1010111000000001" "1010111110111101" "1010000001011001" "0010110011111000" "0011000000111110" "0010111110100000" "0010011110011010" "1010110000100011" "1011000001011000" "1010111111100100" "1010100010001010" "0010110011100000" "0011000010001111" "0011000000110100" "0010100111011111" "1010110001100110" "1011000010100110" "1011000001110010" "1010100111001110" "0010110001011000" "0011000100001010" "0011000001110000" "0010100011101001" "1010110110011000" "1011000100010110" "1010111100110010" "0010000101001000" "0010111100101111" "0010110001100010" "0010101110101100" "0010001101110011" "1010100001100001" "1010100000011110" "1010011000110110" "1010010100110000" "1010010111110101" "1010000101010010" "0010011000110100" "0010110010000000" "0010110111110001" "0010100010011000" "1010101000001000" "1010111111001001" "1010111110010011" "1010101001001010" "0010110001010010" "0011000000011011" "0010111111100111" "0010101000100000" "1010100110110101" "1010111011110001" "1011000000100101" "1010110001110000" "0010001001000010" "0011000001001111" "0010111001101110" "0010010000100000" "1010110100000001" "1011000001110011" "1010111110101010" "1010010101100100" "0010110001111001" "0011000010010110" "0011000000011000" "0010100100011111" "1010110011100001" "1011000011000001" "1011000001111101" "1010101001010011" "0010110000001010" "0011000010110010" "0011000010001111" "0010100111101010" "1010110100001011" "1011000101101001" "1011000001100010" "1010010111101000" "0010111011110011" "0011000011000110" "0010110010101010" }
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
set ID 349
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTSclv
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "0010100011110101" "1010101101010110" "1010111010101110" "1010111001000110" "1010011011100001" "0010110000011010" "0010111111000001" "0010111001010011" "0010000110100011" "1010110100110110" "1011000000110010" "1010111001111000" "1001001101000010" "0010110011010010" "0010111100110001" "0010110001100110" "1010000011011001" "1010101111111000" "1010101111011101" "1010010001101101" "1010000000001011" "1001111111000001" "1001000111000000" "0010010001000011" "0010101110000100" "0010101100100111" "1010110101110001" "1010111011010010" "1010101000010101" "0010101111001010" "0011000011110001" "0010111011111110" "1010010011000001" "1011000001111110" "1011000101100011" "1010110010011111" "0010110000111010" "0011000010110101" "0011000000001110" "0010100011011101" "1010101010110101" "1010110110111001" "1010110101010111" "1010100111000100" "1010010101100110" "0010100001010111" "0010110010000110" "0010111001111101" "0010110011001110" "1010001010011001" "1010111110110111" "1011000010001101" "1010111100111001" "1010111011100100" "1010011010111110" "0010110001100000" "0010111100110111" "0010111000010001" "0010001011011101" "1010110011001101" "1011000000000110" "1010111011000001" "1010001011100101" "0010110101001100" "0011000000001011" "0010110110001000" "1001101010111101" "1010110101101000" "1010110101100111" "1010100101100011" "0010001000101100" "0010100000111110" "0010010001110001" "0010010000110100" "0010011110001101" "0010100011100100" "1001101000010010" "1010101100100110" "1010110000101010" "0010100010110010" "0010111110011100" "0010111110000011" "0010011000000101" "1010111100000000" "1011000110011011" "1010111000001101" "0010100100110000" "0011000100001010" "0011000011100100" "0010101100011111" "1010110001111010" "1011000000011010" "1010111000101011" "1010100001001101" "0010010110100110" "0010110000011011" "0010110011001001" "0010110011011011" "0010101110110101" "1010001101110101" "1010110111000010" "1011000000110011" "1010110110011001" "0010010111101001" }
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
set ID 350
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTScmv
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "0001111001001110" "1001011110010101" "0001101000001111" "0001111010011011" "0001001000000001" "1001110011110111" "0001100010001110" "1001110110011011" "1001100001010001" "0001010010000110" "0001101100011110" "0001101111011111" "0001111100110100" "0001111011001011" "1001101011000110" "1010001010000101" "1001101000111001" "1001001011111101" "0001100111001110" "0001110100101111" "1001111010110000" "1001100100000101" "0001111010011001" "0001110001100011" "1001000010110000" "0001100111101110" "1010000100010101" "0010000011001011" "1000111100100101" "0001111010001010" "0001110010110001" "1010000001110000" "1010000010000111" "1001110110110100" "0000111110010010" "0001010111110100" "0010000100110001" "0001100000001001" "1001011000110101" "1001010110010100" "0001101010010011" "1001001000010010" "1001100100110100" "1001110111101001" "1000101000111010" "0001001100111100" "0001110001011011" "0001111100110101" "0001111010101101" "1001110110011011" "1001100100101010" "1010000100100111" "0001110000011011" "0001000010110110" "1001110010110101" "1001010001000100" "1001100011000110" "1001101011010011" "1001010011110110" "0001110000011110" "0001011110100111" "0001011110101101" "0001110100100011" "0001110000011010" "1001100011011110" "1010000111011101" "1001100101010111" "1001001001010001" "0001101000111110" "0001111100001101" "1001110110011010" "1001100111110000" "0001110000010010" "1001011000010011" "0001100001001000" "0001101111111000" "1001101100010000" "1010000000111100" "1001100100100011" "0001110101110100" "0010000110100110" "1010000010001101" "1001111000011001" "1001110010001100" "1001010100100011" "0001101001001001" "0010001000011000" "0001100110110001" "1001100101010111" "0001010001101011" "1001100001000101" "1000110000001000" "1000001011100010" "0001001001111001" "0000101011000000" "0000110011100110" "0001100111110000" "0001110001111011" "1000000000000000" "1001101100111110" "1001100010101111" "1010000011110001" "1001110000010111" "0010000000101101" }
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
set ID 351
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTScnw
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "0010110011000101" "0010010100101000" "1010101101111101" "1010111010010101" "1010110111000101" "1010100000100010" "0010010101100010" "0010110111001111" "0010101110101100" "0010100100111001" "0010010010110111" "1010000011100111" "1010101110101010" "1010110111111100" "1010110001111010" "0010100100110001" "0010110111110111" "0010110111010111" "0010110010001011" "1001100000110001" "1010110001110010" "1010111000111101" "1010110010001000" "0010001010110010" "0010110100011001" "0010110000001111" "1010000010110010" "1010011101100001" "1010010111010010" "1010100001000100" "1010010011111100" "1010001010100101" "0010010101111011" "0010110001101100" "0010101100101101" "0010100100001110" "0001011111000101" "1010101100111000" "1010101010010110" "1010100101001000" "1001111000010000" "0010011000110011" "0010100011111101" "0010100101000111" "0010110000011000" "0010110001110000" "0010000010101101" "1010011010100100" "1010111110001010" "1010110101100011" "1010101111011010" "0010101100110111" "1010110000110000" "1010111010101110" "1010101011111111" "1010100101100110" "0010110000111001" "0010110101101011" "0010110100100011" "0010100001000000" "1010000110101001" "1010101001101100" "1010101101110001" "1010101010000110" "1010101100010101" "0010011100011101" "0010101011111101" "0010110101001111" "0010110010111111" "0010011000110010" "1010110110010011" "1010111001100110" "1010111000100001" "1010010100010001" "0010110110001100" "0010110001000001" "0010010101101000" "1001110001110001" "1010101011001101" "1010011110011111" "1010011001111111" "1001110011111110" "0010011111110110" "0010100110101000" "0010101000100111" "0010011011110001" "1010011000000111" "1010110001010010" "1010101011101100" "1010101011000111" "1010011001001101" "0010001000000111" "0010100101001000" "0010100001010101" "0010011010011001" "0010100110001001" "1010000001110010" "1010010011100010" "1010110100100011" "1010111111011101" "1010100111001010" "0010110001011011" "0010110101101010" "0010110000010110" }
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
set ID 352
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTScow
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "1010000010010011" "1010010010001011" "1010001010101010" "1001010001001101" "0010000111001011" "0010000011101011" "0001010010100001" "1001110010101100" "1001111010000001" "1001010111011000" "0001111100011001" "0010000001100111" "0001110000001110" "0000101011100010" "1001111000100011" "0001110001110000" "0010010000111000" "0001001000010010" "0001110011100100" "1010000101110100" "1010000011111101" "0001101100100110" "0010010001100101" "0001111110110011" "0001000111101000" "1010000000101111" "0001000101110101" "0001110101000011" "0010000000010011" "0001010100010010" "1001111110011011" "1001100111000011" "0001000111010111" "0001011111101000" "0001100100111111" "1000110111000000" "0001001010011000" "0001100111111110" "0001110000001101" "1001101000101110" "1001101101110010" "1010000001111100" "1001010101011000" "0001100010101011" "0001111011010001" "0001101100010100" "0000110011111111" "0001000110000001" "1001111001000111" "1001110001111010" "1001000000111010" "0001110001011111" "1010010001100111" "0000110010111000" "0010000011000101" "0010001111010001" "0010000100001100" "0001011000000000" "1010000100110111" "1001110110101010" "0001101111110011" "0010000110000011" "0001111101101001" "0001100100110100" "1010000011110001" "1000101001101100" "0010000110000001" "0001110111001011" "0001000110001100" "1001110100111101" "1010001110100110" "1001110101011000" "0010000010001010" "0010000010010000" "0001101110011001" "1001111001100111" "1010001101101001" "1001011000100110" "0010000011001101" "0001110100100100" "1001110101010110" "1010000011110000" "1001100101000011" "1001011111111011" "0010000100000101" "0001011110010101" "0001110000000101" "1001010101000011" "0001100100000010" "1001011000100000" "1001100000010110" "1001110010001100" "1001111001100100" "0001011101000100" "0001110010100100" "0010000001011011" "0001101001101011" "1001010001010101" "1010000100011110" "1001110111011000" "1001101000111000" "0001111001110111" "0010000000001001" "1001001111010101" }
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
set ID 353
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTScpw
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "0001011010001110" "0010001100011001" "0010000000100000" "0001101110000100" "1010000000100001" "1010000111110011" "1010001101000110" "1010000100001011" "0001100000010101" "0010000011111101" "0010000110100011" "0010000000110010" "0001000011001001" "1001110101101100" "1001111101011111" "1001100000011011" "1001010100100010" "1001101011011011" "1001111001011101" "0001101001110110" "1001100000001010" "1000110111001101" "0001010111101011" "1001011100111011" "0001001110100101" "0001010011001111" "1001101101000110" "1001110011011010" "1001010011110111" "0001010110100110" "0001110110111011" "0010001011110011" "0001101000101011" "0001011111001011" "1001110100100001" "1001111001011101" "1001111111111110" "1001111001001100" "1001010001110101" "0001010101101110" "0010000101100000" "0010001110001011" "0001111100011010" "1001100010000010" "1010001101001000" "1010001001000111" "1001011111101111" "0001110111000100" "0010000110001010" "0010000101110010" "1001101101111001" "1001101101000001" "0001111111001110" "0001110001011110" "1001100001001100" "1010001101000101" "1010001000101001" "1010000010011110" "0001111101000100" "0010000111001101" "0010000100110110" "0001110111100110" "1001100111101010" "1010000111110111" "1001111000100001" "1001111011110101" "1001001110010000" "0000101001000010" "0001000100100101" "0001100100101010" "1001100111111000" "0001101011011011" "0001110100100101" "1001101010011010" "0001101001001100" "0001010110111011" "1001101100100100" "1000110110000001" "0000000011011010" "0001101110100101" "0001110011100010" "0010001001001111" "0001010000101001" "1000110001110101" "1001110001101010" "1010000101011111" "1010000101010100" "0000101011000000" "1001100011011001" "0001101011111110" "0010000001101001" "0001111101101111" "0001111010010101" "1000011101000110" "1010000101100101" "1010001111100001" "1001111100100010" "0001101110000100" "0010001101100010" "0010001000110010" "1001011000011100" "1001110101100001" "1010000110100110" "1001111111110110" }
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
set ID 354
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTScqw
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "1010110011000010" "1010010100010011" "0010101101110110" "0010111010010000" "0010110111000000" "0010100000100000" "1010010101010101" "1010110111001000" "1010101110101001" "1010100100110101" "1010010010101111" "0010000011110100" "0010101110100011" "0010110111110100" "0010110001110101" "1010100100110001" "1010110111110010" "1010110111001111" "1010110010000111" "0001100010011011" "0010110001110000" "0010111000110110" "0010110010000000" "1010001010111010" "1010110100010100" "1010110000001100" "0010000010111011" "0010011101100000" "0010010111010111" "0010100001000101" "0010010011110100" "0010001010010101" "1010010110001000" "1010110001101000" "1010101100101010" "1010100100001000" "1001011101110001" "0010101100110011" "0010101010010001" "0010100101000111" "0001111000010011" "1010011000100001" "1010100011111010" "1010100101000111" "1010110000010110" "1010110001101010" "1010000010010100" "0010011010010111" "0010111110000000" "0010110101011011" "0010101111010100" "1010101100100101" "0010110000101101" "0010111010101101" "0010101011111011" "0010100101011100" "1010110000110110" "1010110101101000" "1010110100011110" "1010100000111101" "0010000110100000" "0010101001100100" "0010101101100111" "0010101001111011" "0010101100010001" "1010011100011110" "1010101011110110" "1010110101001000" "1010110010111000" "1010011000100011" "0010110110010000" "0010111001100000" "0010111000011001" "0010010100000110" "1010110110000100" "1010110000111101" "1010010101011101" "0001110010010010" "0010101011001110" "0010011110100110" "0010011001110011" "0001110011110100" "1010100000000000" "1010100110100111" "1010101000100001" "1010011011100101" "0010011000000010" "0010110001001111" "0010101011101000" "0010101011000011" "0010011001001101" "1010001000000010" "1010100101000100" "1010100001010111" "1010011010011111" "1010100110001010" "0010000001101010" "0010010011100011" "0010110100011110" "0010111111010100" "0010100111000101" "1010110001010100" "1010110101100001" "1010110000010011" }
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
set ID 355
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTScrw
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "0010101001001111" "0010011111101001" "1010001000100111" "0001111111100010" "0010100010011001" "0010011000010110" "1010011001001010" "1010110000001110" "1010110000010000" "1010010011101101" "0010110001011111" "0010111110111110" "0010110010100111" "0010011100001101" "1010110000000110" "1010110010000010" "1010011001100101" "0010010110001100" "0010010011011101" "1010101100011110" "1010100000010111" "0010011011110101" "0010111001001100" "0011000011001010" "0010110001101010" "1010101010010001" "1011000001101100" "1010110011000101" "0010100111101011" "0011000001011011" "0010111000110010" "0010110110111111" "0010010110010101" "1010100111001011" "1010110011110111" "1010111001011100" "1010110001111001" "0010000001010111" "0010110110010000" "0010111111011100" "0010110111000101" "1010000111111110" "1010110110101010" "1011000001110011" "1010101111110110" "0001101010011110" "0010111011111100" "0010111101110100" "0010101100110101" "1010010001011010" "1010101101000000" "1010111000100110" "0001110101101110" "1001111111001101" "1010001110011110" "1010010001000010" "1001111000100011" "1010100000101111" "1010100100101110" "1010010100000111" "0010100110011001" "0010111011000100" "0010110110111000" "0010010101001011" "1010110010100100" "1010111001100001" "1010101110010011" "0010011010010000" "0010011111110011" "0010010010001001" "1010010110100110" "1010000011011110" "0010101110001110" "0010110111101000" "0010101110100001" "1010100111111100" "1010111010110001" "1011000000001011" "0010110010000100" "0011000000010101" "0011000000011011" "0010110001101000" "1010011110010101" "1010110101000001" "1010110001000000" "1010110110111010" "1010011111110111" "0010000111101100" "0010110011110001" "0010111001110011" "0010110110101001" "0001100001100111" "1010111010101101" "1011000001010110" "1010110110011111" "1001101011011001" "0010110111110000" "0010111110010001" "0010100010000010" "1010010101011100" "1010110111111011" "1010110111101011" "1010101000101011" "0010000001110111" }
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
set ID 356
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTScsw
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "1010100010100101" "1010111000110101" "1010110001010100" "0010100000111110" "0010111001011101" "0010110101101011" "0010000010110001" "1010110100011100" "1010111001111011" "1010010101011101" "0010101110110111" "0010110111101001" "0010100110111100" "1010100111100111" "1010110001001110" "1010100100110010" "0010100100111010" "0010101100001101" "0010001011011100" "1010011010010010" "1010110011111011" "1010010010101000" "0010101100011100" "0010110100100101" "0010100011000101" "1010101010001101" "1010110010010000" "1001100001000111" "0010110100010010" "0010110100011101" "0010100001101001" "1010100100111000" "1010111000101101" "1010110011000111" "0001010100001110" "0010101101111110" "0010111000000100" "0010101010111110" "1010101000100110" "1010111000011110" "1010110101010001" "1010000011110010" "0010110100111100" "0010111001010000" "0010100010101001" "1010101010101010" "1010110110100110" "1010101000110101" "0010010011101011" "0010101011101000" "0010100100000000" "1001111100001101" "1010111000010011" "1010011011001011" "0010110011110010" "0010111010111000" "0010100001000101" "1010101101011110" "1010111011010000" "1010101101000101" "0010011100101101" "0010111010011101" "0010110001000001" "1010010110011011" "1010110011100110" "1010101111100010" "0010000000100100" "0010101010100111" "0010101011001111" "1010001110111001" "1010101010000100" "1010101011010100" "0010000101000011" "0010101110001011" "0010101101001100" "0001101011000111" "1010110100011100" "1010110100110100" "0010101100110110" "0010111011100001" "0010101110011001" "1010010001110110" "1010110100110101" "1010111000111101" "1010100001010101" "0010110000111100" "0010110111011100" "0010101110010111" "1010001110111100" "1010101111101100" "1010110111101010" "1010010100111101" "0010101100100110" "0010111010101101" "0010101100111001" "1010001011110110" "1010110111010000" "1010110000100011" "1010000010101011" "0010101000101010" "0010110010110011" "0010010100001010" "1010100110111101" "1010101100011100" }
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
set ID 357
set hasByteEnable 0
set MemName L3_wlo_L2_WEIGHTSctx
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 104
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "0010110111010001" "0010110011011001" "0010100101100110" "1010101101001011" "1011000001111100" "1010111101111001" "1010110100011011" "1001111001000110" "0010110101110001" "0010111111010110" "0010111100101010" "0001100100000111" "1010110010101000" "1010111110011111" "1011000001001111" "1010110100100101" "0010001011110101" "0010110100101111" "0011000000011100" "0010110011111100" "0010010010110110" "1010100000100111" "1010111110011110" "1010110011100010" "1010100100111011" "0010001111111110" "0010110101101110" "0010111001111110" "0010110001111111" "0010010100110111" "1010101100101111" "1011000001010001" "1011000001111001" "1010111100001001" "0001101110111001" "0010111010110101" "0011000000000111" "0010110110010000" "0010010010101011" "1010110111100100" "1010111100000111" "1010110110001010" "1010100010000011" "0001010010011010" "0010101100101011" "0010110110001010" "0010111011001011" "0010101100010110" "1001111001011001" "1010111000010001" "1011000010110111" "1010111101010111" "1010000111100010" "1010110001110101" "1010111001110010" "1010111110010101" "1010010101110010" "0010110011011010" "0010111100100110" "0011000010000010" "0010111000101011" "1010001001110001" "1010111100110111" "1010111101000100" "1010111110101101" "1010110011000101" "0010101100110111" "0010111100111100" "0011000010010100" "0010100010010110" "1010100101101001" "1010111010101011" "1010111100011001" "1010111110110001" "1010100000110000" "0010100001100111" "0010111111010010" "0010110000110010" "0010110001101011" "1001111100010111" "1010101101001011" "1010110110011011" "1011000000000100" "1010011100001100" "0010101010000010" "0010111100110011" "0011000001001100" "0010110011111011" "1001111111111110" "1010110000100100" "1010111111110010" "1010110110010000" "1001101100100001" "0010110000011000" "0010111000111000" "0010110000110011" "0010100000111001" "0010001101001110" "1001100010001110" "1010110001100101" "1011000000111100" "1010110110001100" "1010001000100110" "0010110010011010" }
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
    id 410 \
    name y_L3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename y_L3 \
    op interface \
    ports { y_L3_address0 { O 7 vector } y_L3_ce0 { O 1 bit } y_L3_we0 { O 1 bit } y_L3_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'y_L3'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 358 \
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
    id 359 \
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
    id 360 \
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
    id 361 \
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
    id 362 \
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
    id 363 \
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
    id 364 \
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
    id 365 \
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
    id 366 \
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
    id 367 \
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
    id 368 \
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
    id 369 \
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
    id 370 \
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
    id 371 \
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
    id 372 \
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
    id 373 \
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
    id 374 \
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
    id 375 \
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
    id 376 \
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
    id 377 \
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
    id 378 \
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
    id 379 \
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
    id 380 \
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
    id 381 \
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
    id 382 \
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
    id 383 \
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
    id 384 \
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
    id 385 \
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
    id 386 \
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
    id 387 \
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
    id 388 \
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
    id 389 \
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
    id 390 \
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
    id 391 \
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
    id 392 \
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
    id 393 \
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
    id 394 \
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
    id 395 \
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
    id 396 \
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
    id 397 \
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
    id 398 \
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
    id 399 \
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
    id 400 \
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
    id 401 \
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
    id 402 \
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
    id 403 \
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
    id 404 \
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
    id 405 \
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
    id 406 \
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
    id 407 \
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
    id 408 \
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
    id 409 \
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


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
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
    id -3 \
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


